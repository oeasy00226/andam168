<?php

namespace Database\Seeders;

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Schema;

class AddColunsSaldoAgente extends Seeder
{
    /**
    * Run the database seeds.
    */
    public function run(): void
    {
        Schema::table('games_keys', function (Blueprint $table) {
            $table->decimal('saldo_agente', 10, 2)->nullable()->default(0);
        });
    }
}