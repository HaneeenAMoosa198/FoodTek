<?php

namespace Database\Factories;
Use App\Models\USER;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Notification>
 */
class NotificationFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
          "user_id" => User::inRandomOrder()->first()?->id ?? User::factory(),
            'message' => fake()->sentence(),
        ];
    }

        }