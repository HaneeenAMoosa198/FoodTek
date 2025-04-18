<?php

namespace Database\Seeders;
use App\Models\Call;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class Callseeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {Call::factory()->count(20)->create();
        
    }
}
