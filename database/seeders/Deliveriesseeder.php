<?php

namespace Database\Seeders;
use App\Models\Delivery;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class Deliveriesseeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Delivery::factory()->count(20)->create();
    }
}
