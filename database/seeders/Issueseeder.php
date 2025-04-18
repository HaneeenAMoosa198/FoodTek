<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Issue;

class Issueseeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
       Issue::factory(50)->create();
    }
}
