<?php

namespace Database\Factories;

use App\Models\Model;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Model>
 */
class ProduitFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'category_id' => \App\Models\Categorie::factory(),
            'nom' => fake()->words(3,true),
            'description' => fake()->paragraph(),
            'image' => 'https://picsum.photos/400/300',
            'prix' => fake()->randomFloat(2,100,5000),
        ];
    }
}
