<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use App\Models\Setting;
use App\Models\Currency;
use App\Models\Gateway;
use App\Models\Category;
use App\Models\Provider;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class ProductionSeeder extends Seeder
{
    /**
     * Run the database seeds for production environment.
     */
    public function run(): void
    {
        // Create admin role and permissions
        $adminRole = Role::firstOrCreate(['name' => 'admin']);
        $userRole = Role::firstOrCreate(['name' => 'user']);
        $affiliateRole = Role::firstOrCreate(['name' => 'affiliate']);

        // Create permissions
        $permissions = [
            'view_admin_panel',
            'manage_users',
            'manage_games',
            'manage_transactions',
            'manage_settings',
            'view_reports',
            'manage_affiliates',
            'manage_gateways',
        ];

        foreach ($permissions as $permission) {
            Permission::firstOrCreate(['name' => $permission]);
        }

        // Assign all permissions to admin role
        $adminRole->syncPermissions(Permission::all());

        // Create admin user
        $admin = User::firstOrCreate(
            ['email' => 'admin@andam168.com'],
            [
                'name' => 'Administrator',
                'password' => Hash::make('admin123456'),
                'email_verified_at' => now(),
                'is_admin' => true,
                'status' => 1,
                'language' => 'pt',
            ]
        );
        $admin->assignRole('admin');

        // Create default currency
        Currency::firstOrCreate(
            ['code' => 'BRL'],
            [
                'name' => 'Real Brasileiro',
                'symbol' => 'R$',
                'rate' => 1.00,
                'status' => 1,
            ]
        );

        // Create basic settings
        $settings = [
            ['key' => 'site_name', 'value' => 'Andam168 Casino'],
            ['key' => 'site_description', 'value' => 'O melhor cassino online do Brasil'],
            ['key' => 'site_logo', 'value' => '/assets/images/logo.png'],
            ['key' => 'site_favicon', 'value' => '/assets/images/favicon.ico'],
            ['key' => 'maintenance_mode', 'value' => '0'],
            ['key' => 'registration_enabled', 'value' => '1'],
            ['key' => 'min_deposit', 'value' => '10'],
            ['key' => 'max_deposit', 'value' => '10000'],
            ['key' => 'min_withdrawal', 'value' => '20'],
            ['key' => 'max_withdrawal', 'value' => '5000'],
            ['key' => 'affiliate_commission', 'value' => '5'],
            ['key' => 'vip_enabled', 'value' => '1'],
            ['key' => 'disable_spin', 'value' => '0'],
            ['key' => 'rollover_protection', 'value' => '1'],
            ['key' => 'baseline', 'value' => '100'],
            ['key' => 'default_gateway', 'value' => 'pix'],
        ];

        foreach ($settings as $setting) {
            Setting::firstOrCreate(
                ['key' => $setting['key']],
                ['value' => $setting['value']]
            );
        }

        // Create game categories
        $categories = [
            ['name' => 'Slots', 'description' => 'Jogos de caça-níqueis', 'image' => '/assets/images/slots.png'],
            ['name' => 'Table Games', 'description' => 'Jogos de mesa', 'image' => '/assets/images/table.png'],
            ['name' => 'Live Casino', 'description' => 'Cassino ao vivo', 'image' => '/assets/images/live.png'],
            ['name' => 'Sports', 'description' => 'Apostas esportivas', 'image' => '/assets/images/sports.png'],
        ];

        foreach ($categories as $category) {
            Category::firstOrCreate(
                ['name' => $category['name']],
                $category
            );
        }

        // Create game providers
        $providers = [
            ['name' => 'Pragmatic Play', 'code' => 'pragmatic', 'status' => 1],
            ['name' => 'Evolution Gaming', 'code' => 'evolution', 'status' => 1],
            ['name' => 'NetEnt', 'code' => 'netent', 'status' => 1],
            ['name' => 'Play\'n GO', 'code' => 'playngo', 'status' => 1],
        ];

        foreach ($providers as $provider) {
            Provider::firstOrCreate(
                ['code' => $provider['code']],
                $provider
            );
        }

        // Create default payment gateway
        Gateway::firstOrCreate(
            ['name' => 'PIX'],
            [
                'code' => 'pix',
                'status' => 1,
                'min_amount' => 10,
                'max_amount' => 10000,
                'fee' => 0,
                'type' => 'both', // deposit and withdrawal
            ]
        );

        $this->command->info('Production seeder completed successfully!');
    }
}