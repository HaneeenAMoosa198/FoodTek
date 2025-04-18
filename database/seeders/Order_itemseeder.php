<?php

namespace Database\Seeders;
use App\Models\Order_item;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class Order_itemseeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Order_item::factory()->count(50)->create();
    }
}
