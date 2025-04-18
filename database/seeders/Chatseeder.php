<?php

namespace Database\Seeders;
Use App\Models\Chat;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class Chatseeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Chat::factory()->count(50)->create();
    }
        
    }
