<?php

namespace Database\Factories;
use App\Models\Staff;
use App\Models\user;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Chat>
 */
class ChatFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
         'user_id' => User::inRandomOrder()->first()?->id ?? User::factory(),
    'staff_id' => Staff::inRandomOrder()->first()?->id ?? Staff::factory(),
    'message' => fake()->sentence,
        ];
    }
}
