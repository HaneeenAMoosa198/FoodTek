<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Menu;
use App\Models\Order;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\=Order_item>
 */
class Order_itemFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
          'order_id' => Order::inRandomOrder()->first()->id ?? Order::factory(),
            'menu' => Menu::inRandomOrder()->first()->id ?? Menu::factory(),
            'quantity' => $this->faker->numberBetween(1, 5),
        ];
    }
}
