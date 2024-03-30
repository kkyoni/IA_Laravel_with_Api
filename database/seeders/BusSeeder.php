<?php

namespace Database\Seeders;

use App\Models\Bus;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Bus::create([
            'from' => 'mumbai',
            'to' => 'surat',
            'bus_operators' => '1',
            'time' => '12:00',
            'duration' => '06h 32m',
            'Arrival' => '05:15',
            'price' => '250',
            'bus_type' => '1',
        ]);
        Bus::create([
            'from' => 'mumbai',
            'to' => 'surat',
            'bus_operators' => '3',
            'time' => '12:00',
            'duration' => '06h 32m',
            'Arrival' => '05:15',
            'price' => '195',
            'bus_type' => '2',
        ]);
        Bus::create([
            'from' => 'mumbai',
            'to' => 'surat',
            'bus_operators' => '4',
            'time' => '12:00',
            'duration' => '06h 32m',
            'Arrival' => '05:15',
            'price' => '221',
            'bus_type' => '3',
        ]);
        Bus::create([
            'from' => 'mumbai',
            'to' => 'surat',
            'bus_operators' => '2',
            'time' => '12:00',
            'duration' => '06h 32m',
            'Arrival' => '05:15',
            'price' => '245',
            'bus_type' => '3',
        ]);
        Bus::create([
            'from' => 'mumbai',
            'to' => 'surat',
            'bus_operators' => '5',
            'time' => '12:00',
            'duration' => '06h 32m',
            'Arrival' => '05:15',
            'price' => '199',
            'bus_type' => '2',
        ]);
    }
}
