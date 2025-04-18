<?php

namespace Database\Factories;
use App\Models\staff;
Use App\Models\order;
use Illuminate\Support\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Delivery>
 */
class DeliveryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'order_id' => Order::factory(),
            'staff_id' => Staff::factory(),
            'driver_name' => fake()->name(),
            'status' => fake()->randomElement(['pending', 'in_progress', 'delivered', 'cancelled']),
            'status_time' => Carbon::now()->subMinutes(rand(0, 1440)), // any time within past 24 hours
            'delivery_address' => fake()->address(),
        ];
    }
}
