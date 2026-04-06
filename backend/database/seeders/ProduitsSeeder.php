<?php

namespace Database\Seeders;

use App\Models\Produit;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProduitsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Produit::factory(10)->create();

        $produits = [
            [
                'name' => 'Infinix Note 40 Pro',
                'description' => 'Ecran AMOLED 120Hz, Charge Rapide 70W, MagCharge.',
                'price' => 2800.00,
                'image' => 'infinix_note40_pro.png',
                'brand' => 'Infinix',
                'category_id' => 1,
            ],
            [
                'name' => 'Infinix Hot 40i',
                'description' => '8GB RAM, 256GB Stockage, Caméra 50MP Dual AI.',
                'price' => 1450.00,
                'image' => 'infinix_hot40i.png',
                'brand' => 'Infinix',
                'category_id' => 1,
            ],
            [
                'name' => 'Infinix Smart 8',
                'description' => 'Design brillant, Batterie 5000mAh, Ecran 90Hz.',
                'price' => 1100.00,
                'image' => 'infinix_smart8.png',
                'brand' => 'Infinix',
                'category_id' => 1,
            ],
            // --- SAMSUNG ---
            [
                'name' => 'Samsung Galaxy S24 Ultra',
                'description' => 'Le summum de la technologie avec Galaxy AI et stylet S Pen.',
                'price' => 13500.00,
                'image' => 'samsung_s24_ultra.png',
                'brand' => 'Samsung',
                'category_id' => 1,
            ],
            [
                'name' => 'Samsung Galaxy A55 5G',
                'description' => 'Design premium en métal et verre, résistant à l\'eau IP67.',
                'price' => 4200.00,
                'image' => 'samsung_a55.png',
                'brand' => 'Samsung',
                'category_id' => 1,
            ],
            // --- OPPO ---
            [
                'name' => 'Oppo Reno 11 5G',
                'description' => 'Expert en portrait, design incurvé ultra mince.',
                'price' => 4500.00,
                'image' => 'oppo_reno11.png',
                'brand' => 'Oppo',
                'category_id' => 1,
            ],
            [
                'name' => 'Oppo A78',
                'description' => 'Charge SUPERVOOC 67W, double haut-parleurs stéréo.',
                'price' => 2300.00,
                'image' => 'oppo_a78.png',
                'brand' => 'Oppo',
                'category_id' => 1,
            ],
            // --- REALME ---
            [
                'name' => 'Realme C67',
                'description' => 'Appareil photo 108MP, Snapdragon 685 ultra fluide.',
                'price' => 1950.00,
                'image' => 'realme_c67.png',
                'brand' => 'Realme',
                'category_id' => 1,
            ],
        ];

        Produit::insert($produits);
    }
}
