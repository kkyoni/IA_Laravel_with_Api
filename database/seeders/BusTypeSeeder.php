<?php

namespace Database\Seeders;

use App\Models\BusType;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BusTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        BusType::create([
            'type' => 'semiseater',
            'status' => 'active',
        ]);
        BusType::create([
            'type' => 'seater',
            'status' => 'active',
        ]);
        BusType::create([
            'type' => 'sleeper',
            'status' => 'active',
        ]);
    }
}
