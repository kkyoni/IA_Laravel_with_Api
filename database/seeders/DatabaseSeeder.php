<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call(UserSeeder::class);
        $this->call(BusSeeder::class);
        $this->call(BusTypeSeeder::class);
        $this->call(BusOperatorsSeeder::class);
    }
}
