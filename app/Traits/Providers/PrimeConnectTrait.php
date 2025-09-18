<?php

namespace App\Traits\Providers;

use App\Helpers\Core as Helper;
use App\Models\Game;
use App\Models\GamesKey;
use App\Models\Order;
use App\Models\Provider;
use App\Models\User;
use App\Models\Wallet;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Storage;

trait PrimeConnectTrait
{
    /**
     * @var string
     */
    public static $endpoint = '';

    public static function authentication()
    {
        $gateway = GamesKey::first();
        if(!empty($gateway)) {
            self::$endpoint = $gateway->getAttributes()['primeconnect_endpoint'];
            $basicToken = base64_encode($gateway->getAttributes()['primeconnect_token'].':'.$gateway->getAttributes()['primeconnect_secret_key']);
            $response = Http::withHeaders([
                'Authorization' => 'Bearer  '.$basicToken,
            ])->post(self::$endpoint.'auth/authentication');
            \Log::debug($response);
            if($response->successful()) {
                $json = $response->json();

                return $json['access_token'];
            }
            return false;
        }
        return false;
    }

    /**
     * @return void
     */
    public static function getProvider()
    {
        \Log::info('Importando provedores...');
        if($token = self::authentication()) {
            $response = Http::withToken($token)->get(self::$endpoint.'games/provider');
            \Log::debug("response: $response");
            if($response->successful()) {
                $json = $response->json();
                if($json['status']) {
                    foreach($json['providers'] as $provider) {

                        $data = [
                            'code'          => $provider['code'],
                            'name'          => $provider['name'],
                            'rtp'           => 80,
                            'status'        => 1,
                            'distribution'  => 'primeconnect',
                        ];

                        $providerCheck = Provider::where('code', $provider['code'])->where('distribution', 'primeconnect')->first();
                        if(empty($providerCheck)) {
                            Provider::create($data);
                            \Log::info("Provedor {$data['name']} salvo com sucesso");
                        }
                    }
                }
            }
        }
    }

    /**
     * @return void
     * @throws \GuzzleHttp\Exception\GuzzleException
     */
    public static function getGames()
    {
        \Log::info('Importando jogos...');
        if($token = self::authentication()) {
            $response = Http::withToken($token)->get(self::$endpoint.'games/all');

            if($response->successful()) {
                $json = $response->json();
                if ($json['status'] == "success") {
                    foreach($json['games'] as $game) {

                        // echo "\n";
                        \Log::debug($game['provider_game']. " | " . $game['game_name']);
                        // echo "\n";

                        $provider = Provider::where('distribution', 'primeconnect')->where('name', $game['provider_game'])->first();
                        if(!empty($provider)) {
                            self::createGame($provider, $game);
                        }else{
                            $providerLabel = $game['provider_game'];
                            $providerTitle = $game['provider_game'];

                            $providerCreated = Provider::create([
                                'code' => $providerLabel,
                                'name' => $providerTitle,
                                'rtp' => 98,
                                'status' => 1,
                                'distribution' => 'primeconnect',
                            ]);

                            self::createGame($providerCreated, $game);
                        }
                    }
                    \Log::info('loadGames executado até o final.');
                }
            }
        }
    }

    /**
     * @param $provider
     * @param $game
     * @return void
     * @throws \GuzzleHttp\Exception\GuzzleException
     */
    private static function createGame($provider, $game)
    {
        $checkGame = Game::where('provider_id', $provider->id)->where('game_code', $game['game_id'])->where('distribution', 'primeconnect')->first();
        if(empty($checkGame)) {

            echo "\n";
            print_r($game['game_name']);
            echo "\n";

            if(isset($game['banner']) && !empty($game['banner'])) {
                $image = self::uploadFromUrl($game['banner'], $game['provider_game'].'/'.$game['game_id']);
            }

            $data = [
                'provider_id' => $provider->id,
                'game_id' => $game['game_id'],
                'game_code' => $game['game_id'],
                'game_name' => $game['game_name'],
                'technology' => 'html5',
                'distribution' => 'primeconnect',
                'rtp' => 95,
                'cover' => $image ?? null,
                'status' => 1,
            ];

            Game::create($data);
            echo "jogo salvo com sucesso \n";
        }
    }

    /**
     * @param Game $game
     * @return false|mixed
     */
    public static function gameLaunch(Game $game)
    {
        if($token = self::authentication()) {
            $gateway = GamesKey::first();
            // \Log::debug($gateway);
            if(!empty($gateway)) {
                $request = Http::withToken($token)
                    ->withQueryParameters([
                        'agent_code' => $gateway->getAttributes()['primeconnect_code'],
                        'agent_token' => $gateway->getAttributes()['primeconnect_token'],
                        'game_id' => $game->game_id,
                        'type' => 'CHARGED',
                        'currency' => 'BRL',
                        'lang' => 'pt',
                        'user_id' => auth('api')->user()->id,
                        'is_influencer' => auth('api')->user()->is_demo_agent
                    ])->get(self::$endpoint.'games/game_launch');
                \Log::debug($request);
                if($request->successful()) {
                    $data = $request->json();
                    if(!empty($data['game_url'])) {
                        return $data['game_url'];
                    }
                }
            }
        }
        return false;
    }


    /**
     * @param $request
     * @return \Illuminate\Http\JsonResponse|void
     */

    public static function webhook($request)
    {
        if (!empty($request->method)) {
            switch ($request->method) {
                case 'account_details':
                    return self::accountDetails($request);
                case 'user_balance':
                    return self::getBalance($request);
                case 'transaction':
                    return self::setTransaction($request);
                case 'refund':
                    return self::setRefund($request);
                default:
                    return response()->json(['error' => 'Método desconhecido'], 400);
            }
        }
    }

    /**
     * @param $request
     * @return \Illuminate\Http\JsonResponse
     */
    private static function accountDetails($request)
    {
        $user = User::find($request->user_id);
        if(!empty($user)) {
            return response()->json([
                'email' => $user->email,
                'date' => $user->created_at,
            ]);
        }

        return response()->json([
            'status' => false,
            'error' => 'INVALID_USER'
        ], 400);
    }

    /**
     * @param $request
     * @return \Illuminate\Http\JsonResponse
     */
    private static function getBalance($request)
    {
        // \Log::info("USER: ".$request->user_id);
        $walletResp = Wallet::where('user_id', $request->user_id)->first();
        if($walletResp) {
            return response()->json([
                'status' => 1,
                'balance' => $walletResp->total_balance,
            ]);
        }

        return response()->json([
            'status' => 0,
            'error' => 'INVALID_USER'
        ], 400);
    }

    private static function setTransaction($request)
    {
        if(isset($request->user_id)) {
            $user = User::with(['wallet'])->find($request->user_id);
            $wallet = Wallet::where('user_id', $user->id)->first();

            if(!empty($user) && !empty($wallet)) {
                $bet = $request->bet;
                $win = $request->win;

                if($request->type == 'win') {
                    $checkTransaction = Order::where('type', 'bet')->where('transaction_id', $request->transaction_id_old)->first();

                    if(!empty($checkTransaction)) {
                        $transactionCreated = self::createTransactions($request->user_id, $request->session_id, $checkTransaction->transaction_id, 'check', $checkTransaction->type_money, $win, $request->game);

                        if(!empty($transactionCreated)) {
                            if($win >= 0) {
                                $result_bet = 'win';
                                Helper::generateGameHistory(
                                    $wallet->user_id,
                                    $result_bet,
                                    $win,
                                    $checkTransaction->amount,
                                    $checkTransaction->type_money,
                                    $checkTransaction->transaction_id
                                );
                            }
                        }
                    }
                }else{
                    $changeBonus = Helper::DiscountBalance($wallet, $bet);
                    if($changeBonus != 'no_balance') {
                        if($request->type == 'bet') {
                            $checkTransaction = Order::where('type', 'bet')->where('transaction_id', $request->transaction_id)->first();

                            if(!empty($checkTransaction)) {
                                return response()->json([
                                    'status' => 0,
                                    'error' => 'DOUBLED_BET'
                                ], 400);
                            }else{

                                /// cria uma transação
                                $transactionCreated = self::createTransactions($request->user_id, $request->session_id, $request->transaction_id, 'check', $changeBonus, $bet, $request->game);

                                if(!empty($transactionCreated)) {
                                    $result_bet = 'bet';
                                    Helper::generateGameHistory(
                                        $wallet->user_id,
                                        $result_bet,
                                        0,
                                        $bet,
                                        $changeBonus,
                                        $request->transaction_id
                                    );
                                }

                                $walletResp = Wallet::where('user_id', $request->user_id)->first();
                                return response()->json([
                                    'status' => 1,
                                    'balance' => $walletResp->total_balance,
                                ]);
                            }
                        }
                    }else{
                        return response()->json([
                            'status' => 0,
                            'error' => 'NO_BALANCE'
                        ], 400);
                    }
                }
            }
            return response()->json([
                'status' => 0,
                'error' => 'INVALID_USER'
            ], 400);
        }
    }

    /**
     * Create Transactions
     * Metodo para criar uma transação
     *
     * @return false|Order
     */
    private static function createTransactions($playerId, $betReferenceNum, $transactionID, $type, $changeBonus, $amount, $game)
    {
        $order = Order::create([
            'user_id'       => $playerId,
            'session_id'    => $betReferenceNum,
            'transaction_id'=> $transactionID,
            'type'          => $type,
            'type_money'    => $changeBonus,
            'amount'        => $amount,
            'providers'     => 'primeconnect',
            'game'          => $game,
            'game_uuid'     => $game,
            'round_id'      => 1,
        ]);

        // \Log::info('Order: '. $order);

        if($order) {
            return $order;
        }

        return false;
    }

    private static function setRefund($request)
    {
        return response()->json([
            'status' => 1,
        ]);
    }


    /**
     * @param $url
     * @return string|null
     * @throws \GuzzleHttp\Exception\GuzzleException
     */
    private static function uploadFromUrl($url, $name = null)
    {
        try {
            $client = new \GuzzleHttp\Client();
            $response = $client->get($url);

            if ($response->getStatusCode() === 200) {
                $fileContent = $response->getBody();

                // Extrai o nome do arquivo e a extensão da URL
                $parsedUrl = parse_url($url);
                $pathInfo = pathinfo($parsedUrl['path']);
                //$fileName = $pathInfo['filename'] ?? 'file_' . time(); // Nome do arquivo
                $fileName  = $name ?? $pathInfo['filename'] ;
                $extension = $pathInfo['extension'] ?? 'png'; // Extensão do arquivo

                // Monta o nome do arquivo com o prefixo e a extensão
                $fileName = 'primeconnect/'.$fileName . '.' . $extension;

                // Salva o arquivo usando o nome extraído da URL
                Storage::disk('public')->put($fileName, $fileContent);

                return $fileName;
            }

            return null;
        } catch (\Exception $e) {
            return null;
        }
    }
}
