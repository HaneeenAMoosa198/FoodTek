<?php

namespace Database\Factories;
Use APp\Models\staff;
use App\Models\user;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Call>
 */
class CallFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'user_id' => User::inRandomOrder()->first()->id ?? User::factory(),
            'staff_id' => Staff::inRandomOrder()->first()->id ?? Staff::factory(),
        ];
    }
}
