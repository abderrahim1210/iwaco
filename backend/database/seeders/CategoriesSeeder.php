<?php

namespace Database\Seeders;

use App\Models\Categorie;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Categorie::factory(10)->create();

        $categories = [
            [
                'nom' => 'Smartphones',
                'description' => 'Découvrez les derniers smartphones des plus grandes marques mondiales.',
                'slug' => 'smartphones'
            ],
            [
                'nom' => 'Accessoires',
                'description' => 'Large gamme d\'accessoires : chargeurs, écouteurs, et protections.',
                'slug' => 'accessoires'
            ],
            [
                'nom' => 'Informatique',
                'description' => 'Laptops, desktops et composants informatiques de haute performance.',
                'slug' => 'informatique'
            ],
            [
                'nom' => 'Tablettes',
                'description' => 'Tablettes polyvalentes pour le travail et le divertissement.',
                'slug' => 'tablettes'
            ],
            [
                'nom' => 'Objets Connectés',
                'description' => 'Montres intelligentes et gadgets high-tech pour votre quotidien.',
                'slug' => 'smart-devices'
            ]
        ];

        Categorie::insert($categories);
    }
}
