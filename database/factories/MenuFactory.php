<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Category;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\=menus>
 */
class MenuFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
           'name' => $this->faker->word(),
            'price' => $this->faker->randomFloat(2, 5, 100), // بين 5 و100
            'category_id' => Category::inRandomOrder()->first()->id ?? Category::factory(),
        ];
    }
}
