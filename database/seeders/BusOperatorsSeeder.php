<?php

namespace Database\Seeders;

use App\Models\BusOperators;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BusOperatorsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        BusOperators::create([
            'operators_name' => 'AK Tour & Travels',
            'status' => 'active',
        ]);
        BusOperators::create([
            'operators_name' => 'Vikas Travels',
            'status' => 'active',
        ]);
        BusOperators::create([
            'operators_name' => 'Gujarat Travels',
            'status' => 'active',
        ]);
        BusOperators::create([
            'operators_name' => 'Shrinath Travel Agency',
            'status' => 'active',
        ]);
        BusOperators::create([
            'operators_name' => 'Indian Travels Agency',
            'status' => 'active',
        ]);
    }
}
