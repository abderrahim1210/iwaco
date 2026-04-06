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

        // $phones = [
        //     [
        //         'name' => 'Infinix Note 40 Pro',
        //         'description' => 'Ecran AMOLED 120Hz, Charge Rapide 70W, MagCharge.',
        //         'price' => 2800.00,
        //         'image' => 'infinix_note40_pro.png',
        //         'brand' => 'Infinix',
        //         'category_id' => 1,
        //     ],
        //     [
        //         'name' => 'Infinix Hot 40i',
        //         'description' => '8GB RAM, 256GB Stockage, Caméra 50MP Dual AI.',
        //         'price' => 1450.00,
        //         'image' => 'infinix_hot40i.png',
        //         'brand' => 'Infinix',
        //         'category_id' => 1,
        //     ],
        //     [
        //         'name' => 'Infinix Smart 8',
        //         'description' => 'Design brillant, Batterie 5000mAh, Ecran 90Hz.',
        //         'price' => 1100.00,
        //         'image' => 'infinix_smart8.png',
        //         'brand' => 'Infinix',
        //         'category_id' => 1,
        //     ],
        //     // --- SAMSUNG ---
        //     [
        //         'name' => 'Samsung Galaxy S24 Ultra',
        //         'description' => 'Le summum de la technologie avec Galaxy AI et stylet S Pen.',
        //         'price' => 13500.00,
        //         'image' => 'samsung_s24_ultra.png',
        //         'brand' => 'Samsung',
        //         'category_id' => 1,
        //     ],
        //     [
        //         'name' => 'Samsung Galaxy A55 5G',
        //         'description' => 'Design premium en métal et verre, résistant à l\'eau IP67.',
        //         'price' => 4200.00,
        //         'image' => 'samsung_a55.png',
        //         'brand' => 'Samsung',
        //         'category_id' => 1,
        //     ],
        //     // --- OPPO ---
        //     [
        //         'name' => 'Oppo Reno 11 5G',
        //         'description' => 'Expert en portrait, design incurvé ultra mince.',
        //         'price' => 4500.00,
        //         'image' => 'oppo_reno11.png',
        //         'brand' => 'Oppo',
        //         'category_id' => 1,
        //     ],
        //     [
        //         'name' => 'Oppo A78',
        //         'description' => 'Charge SUPERVOOC 67W, double haut-parleurs stéréo.',
        //         'price' => 2300.00,
        //         'image' => 'oppo_a78.png',
        //         'brand' => 'Oppo',
        //         'category_id' => 1,
        //     ],
        //     // --- REALME ---
        //     [
        //         'name' => 'Realme C67',
        //         'description' => 'Appareil photo 108MP, Snapdragon 685 ultra fluide.',
        //         'price' => 1950.00,
        //         'image' => 'realme_c67.png',
        //         'brand' => 'Realme',
        //         'category_id' => 1,
        //     ],
        // ];

        $phones = [
            [
                'name' => 'Infinix Zero 30',
                'description' => 'Ecran incurvé 144Hz AMOLED, Caméra 108MP, 45W Super Charge.',
                'price' => 3100.00,
                'image' => 'infinix_zero30.png',
                'category_id' => 1,
                'brand' => 'Infinix'
            ],
            [
                'name' => 'Realme 12 Pro+ 5G',
                'description' => 'Design Premium cuir végétal, Caméra périscope portrait, Snapdragon 7s Gen 2.',
                'price' => 4800.00,
                'image' => 'realme_12pro_plus.png',
                'category_id' => 1,
                'brand' => 'Realme'
            ],
            [
                'name' => 'Xiaomi Redmi Note 13 Pro',
                'description' => 'Ultra-clarté 200MP avec OIS, Ecran 1.5K AMOLED, 67W Turbo Charge.',
                'price' => 3450.00,
                'image' => 'redmi_note13.png',
                'category_id' => 1,
                'brand' => 'Xiaomi'
            ],
            [
                'name' => 'Realme 11 5G',
                'description' => 'Charge 67 SUPERVOOC, Appareil photo 108MP avec zoom 3x, Ecran 120Hz.',
                'price' => 2600.00,
                'image' => 'realme_11.png',
                'category_id' => 1,
                'brand' => 'Realme'
            ]
        ];

        $laptops = [

            // --- HP ---
            [
                'name' => 'HP Victus 15',
                'description' => 'Processeur i5-13th, 16GB RAM, RTX 3050. Parfait pour le gaming et design.',
                'price' => 8500.00,
                'image' => 'hp_victus.png',
                'category_id' => 3,
                'brand' => 'HP'
            ],
            [
                'name' => 'HP Laptop 15-dw',
                'description' => 'Intel Core i3, 8GB RAM, 256GB SSD. Idéal pour la bureautique simple.',
                'price' => 3800.00,
                'image' => 'hp_15dw.png',
                'category_id' => 3,
                'brand' => 'HP'
            ],
            [
                'name' => 'HP Pavilion x360',
                'description' => 'Écran tactile convertible, Intel i5, 8GB RAM. Flexible et performant.',
                'price' => 6900.00,
                'image' => 'hp_x360.png',
                'category_id' => 3,
                'brand' => 'HP'
            ],

            // --- Lenovo ---
            [
                'name' => 'Lenovo IdeaPad 3',
                'description' => 'Ryzen 5, 8GB RAM, 512GB SSD. Excellent rapport qualité/prix.',
                'price' => 4600.00,
                'image' => 'lenovo_ip3.png',
                'category_id' => 3,
                'brand' => 'Lenovo'
            ],
            [
                'name' => 'Lenovo ThinkPad E14',
                'description' => 'Intel i7, 16GB RAM, Sécurité renforcée. Conçu pour les professionnels.',
                'price' => 9500.00,
                'image' => 'lenovo_e14.png',
                'category_id' => 3,
                'brand' => 'Lenovo'
            ],
            [
                'name' => 'Lenovo Legion 5',
                'description' => 'Ryzen 7, RTX 4060, Écran 165Hz. Performance extrême pour gaming.',
                'price' => 13500.00,
                'image' => 'lenovo_legion5.png',
                'category_id' => 3,
                'brand' => 'Lenovo'
            ],

            // --- ASUS (Design et Innovation) ---
            [
                'name' => 'Asus Vivobook 15',
                'description' => 'Écran OLED, Intel i5, 16GB RAM. Couleurs éclatantes et design fin.',
                'price' => 7200.00,
                'image' => 'asus_vivo.png',
                'category_id' => 3,
                'brand' => 'Asus'
            ],
            [
                'name' => 'Asus TUF Gaming F15',
                'description' => 'Intel i5-12th, RTX 3050, Robuste et puissant pour les joueurs.',
                'price' => 8900.00,
                'image' => 'asus_tuf.png',
                'category_id' => 3,
                'brand' => 'Asus'
            ],
            [
                'name' => 'Asus Zenbook 14',
                'description' => 'Intel i7 Evo, 16GB RAM, Écran 2.8K. Ultra-portable haut de gamme.',
                'price' => 11800.00,
                'image' => 'asus_zenbook.png',
                'category_id' => 3,
                'brand' => 'Asus'
            ],

            // --- Dell ---
            [
                'name' => 'Dell Latitude 3540',
                'description' => 'Intel i5, 8GB RAM, Clavier rétroéclairé. Fiabilité pour l entreprise.',
                'price' => 7800.00,
                'image' => 'dell_lat.png',
                'category_id' => 3,
                'brand' => 'Dell'
            ],
            [
                'name' => 'Dell Vostro 3510',
                'description' => 'Intel i3, 4GB RAM, 256GB SSD. Solution économique pour le bureau.',
                'price' => 3950.00,
                'image' => 'dell_vostro.png',
                'category_id' => 3,
                'brand' => 'Dell'
            ],
            [
                'name' => 'Dell Inspiron 15',
                'description' => 'Intel i7-13th, 16GB RAM, SSD 512GB. Polyvalence et rapidité.',
                'price' => 10200.00,
                'image' => 'dell_inspiron.png',
                'category_id' => 3,
                'brand' => 'Dell'
            ],
        ];

        $accessories = [
            // --- Audio (Casques & Écouteurs) ---
            [
                'name' => 'Logitech G435 Wireless',
                'description' => 'Casque Gamer ultra-léger, Bluetooth et Lightspeed. Son immersif.',
                'price' => 950.00,
                'image' => 'logi_g435.png',
                'category_id' => 2,
                'brand' => 'Logitech'
            ],
            [
                'name' => 'Sony WH-CH520',
                'description' => 'Casque sans fil, Autonomie 50h, Connexion multipoint. Design élégant.',
                'price' => 650.00,
                'image' => 'sony_ch520.png',
                'category_id' => 2,
                'brand' => 'Sony'
            ],
            [
                'name' => 'JBL Tune 520BT',
                'description' => 'Son JBL Pure Bass, Bluetooth 5.3, Appels mains libres.',
                'price' => 580.00,
                'image' => 'jbl_520bt.png',
                'category_id' => 2,
                'brand' => 'JBL'
            ],

            // --- Périphériques (Souris & Claviers) ---
            [
                'name' => 'Logitech G502 Hero',
                'description' => 'Souris Gamer haute performance, Capteur 25K DPI, 11 boutons programmables.',
                'price' => 750.00,
                'image' => 'logi_g502.png',
                'category_id' => 2,
                'brand' => 'Logitech'
            ],
            [
                'name' => 'Razer DeathAdder V2',
                'description' => 'Souris ergonomique, Switch optique, Capteur 20K DPI Focus+.',
                'price' => 820.00,
                'image' => 'razer_deathadder.png',
                'category_id' => 2,
                'brand' => 'Razer'
            ],
            [
                'name' => 'Mechanical Keyboard RGB',
                'description' => 'Clavier mécanique Red Switches, Anti-ghosting, Rétroéclairage RGB personnalisable.',
                'price' => 1200.00,
                'image' => 'mech_kb.png',
                'category_id' => 2,
                'brand' => 'Generic'
            ],

            // --- Connectivité & Stockage ---
            [
                'name' => 'SanDisk Extreme SSD 1TB',
                'description' => 'SSD externe portable, Vitesse 1050Mo/s, Résistant aux chutes et à l eau.',
                'price' => 1450.00,
                'image' => 'sandisk_ssd.png',
                'category_id' => 2,
                'brand' => 'SanDisk'
            ],
            [
                'name' => 'Hub USB-C 7-en-1',
                'description' => 'Adaptateur avec HDMI 4K, Lecteur SD, Ports USB 3.0. Idéal pour Laptops.',
                'price' => 450.00,
                'image' => 'hub_usb.png',
                'category_id' => 2,
                'brand' => 'Generic'
            ],

            // --- Gaming Essentials ---
            [
                'name' => 'HyperX QuadCast S',
                'description' => 'Microphone USB à condensateur, Éclairage RGB, Support anti-vibration.',
                'price' => 1800.00,
                'image' => 'hyperx_mic.png',
                'category_id' => 2,
                'brand' => 'HyperX'
            ],
            [
                'name' => 'SteelSeries Arctis 7+',
                'description' => 'Casque sans fil multi-plateforme, Audio 7.1 spatial, Micro ClearCast.',
                'price' => 2100.00,
                'image' => 'ss_arctis7.png',
                'category_id' => 2,
                'brand' => 'SteelSeries'
            ],
            [
                'name' => 'Logitech MX Master 3S',
                'description' => 'Souris bureautique haute précision, Silencieuse, Défilement ultra-rapide.',
                'price' => 1100.00,
                'image' => 'logi_mx3s.png',
                'category_id' => 2,
                'brand' => 'Logitech'
            ],
            [
                'name' => 'Tapis de Souris XXL RGB',
                'description' => 'Surface micro-texturée, Base antidérapante, Contour éclairé RGB.',
                'price' => 350.00,
                'image' => 'rgb_mousepad.png',
                'category_id' => 2,
                'brand' => 'Generic'
            ],
        ];

        $tablettes = [
            // --- Apple (Premium) ---
            [
                'name' => 'iPad Air M2',
                'description' => 'Puce M2 surpuissante, Écran Liquid Retina 11", Compatible Apple Pencil Pro.',
                'price' => 7900.00,
                'image' => 'ipad_air.png',
                'brand' => 'Apple',
                'category_id' => 4
            ],
            [
                'name' => 'iPad 10th Gen',
                'description' => 'Écran 10.9", Puce A14 Bionic, Idéal pour les étudiants et le multimédia.',
                'price' => 4800.00,
                'image' => 'ipad_10.png',
                'brand' => 'Apple',
                'category_id' => 4
            ],

            // --- Samsung (Android High-end) ---
            [
                'name' => 'Samsung Galaxy Tab S9 FE',
                'description' => 'Écran 90Hz, S Pen inclus dans la boîte, Résistant à l eau et à la poussière IP68.',
                'price' => 5200.00,
                'image' => 'tab_s9fe.png',
                'brand' => 'Samsung',
                'category_id' => 4
            ],
            [
                'name' => 'Samsung Galaxy Tab A9+',
                'description' => 'Écran 11" fluide 90Hz, 4 haut-parleurs Dolby Atmos. Parfait pour le streaming.',
                'price' => 2400.00,
                'image' => 'tab_a9.png',
                'brand' => 'Samsung',
                'category_id' => 4
            ],

            // --- Infinix & Realme (Distribution Favorites) ---
            [
                'name' => 'Infinix XPAD',
                'description' => 'Écran 11" 90Hz, Design élégant en métal, Idéal pour le divertissement familial.',
                'price' => 1900.00,
                'image' => 'infinix_xpad.png',
                'brand' => 'Infinix',
                'category_id' => 4
            ],
            [
                'name' => 'Realme Pad 2',
                'description' => 'Écran 2K 120Hz, Charge rapide 33W, 4 haut-parleurs stéréo ultra-puissants.',
                'price' => 2800.00,
                'image' => 'realme_pad2.png',
                'brand' => 'Realme',
                'category_id' => 4
            ],
            [
                'name' => 'Realme Pad Mini',
                'description' => 'Format compact 8.7", Batterie longue durée 6400mAh, Design ultra-fin.',
                'price' => 1550.00,
                'image' => 'realme_pad_mini.png',
                'brand' => 'Realme',
                'category_id' => 4
            ],

            // --- Xiaomi & Lenovo (Performance/Prix) ---
            [
                'name' => 'Xiaomi Pad 6',
                'description' => 'Écran 144Hz WQHD+, Snapdragon 870, Finition premium en aluminium.',
                'price' => 4100.00,
                'image' => 'xiaomi_pad6.png',
                'brand' => 'Xiaomi',
                'category_id' => 4
            ],
            [
                'name' => 'Redmi Pad SE',
                'description' => 'Écran 11" 90Hz Eye Care, Batterie 8000mAh, Très bon rapport qualité/prix.',
                'price' => 2100.00,
                'image' => 'redmi_pad_se.png',
                'brand' => 'Xiaomi',
                'category_id' => 4
            ],
            [
                'name' => 'Lenovo Tab P11 Gen 2',
                'description' => 'Écran 2K, Stylet et clavier en option, Parfait pour la productivité mobile.',
                'price' => 3600.00,
                'image' => 'lenovo_p11.png',
                'brand' => 'Lenovo',
                'category_id' => 4
            ],
            [
                'name' => 'Lenovo Tab M10 Plus',
                'description' => 'Écran 10.6" 2K, Mode lecture spécial, Système audio à 4 haut-parleurs.',
                'price' => 2300.00,
                'image' => 'lenovo_m10.png',
                'brand' => 'Lenovo',
                'category_id' => 4
            ],
            [
                'name' => 'Huawei MatePad 11.5',
                'description' => 'Écran 120Hz sans scintillement, Design monocoque, Super Device integration.',
                'price' => 3300.00,
                'image' => 'huawei_matepad.png',
                'brand' => 'Huawei',
                'category_id' => 4
            ],
        ];


        $objets_connectés = [
            // --- Montres Connectées (Smartwatches) ---
            [
                'name' => 'Apple Watch Series 9',
                'description' => 'Écran Retina toujours activé, Capteur d oxygène sanguin, Suivi avancé du sommeil.',
                'price' => 4600.00,
                'image' => 'apple_watch_s9.png',
                'brand' => 'Apple',
                'category_id' => 5
            ],
            [
                'name' => 'Samsung Galaxy Watch 6',
                'description' => 'Suivi de la composition corporelle, Coaching de sommeil personnalisé, Design iconique.',
                'price' => 2800.00,
                'image' => 'galaxy_watch6.png',
                'brand' => 'Samsung',
                'category_id' => 5
            ],
            [
                'name' => 'Huawei Watch GT 4',
                'description' => 'Autonomie jusqu à 14 jours, Gestion de la santé Pro, Compatible iOS et Android.',
                'price' => 2200.00,
                'image' => 'huawei_gt4.png',
                'brand' => 'Huawei',
                'category_id' => 5
            ],
            [
                'name' => 'Xiaomi Watch S3',
                'description' => 'Lunette interchangeable, Écran AMOLED 1.43", Plus de 150 modes sportifs.',
                'price' => 1450.00,
                'image' => 'xiaomi_s3.png',
                'brand' => 'Xiaomi',
                'category_id' => 5
            ],

            // --- Bracelets Connectés (Smart Bands) ---
            [
                'name' => 'Xiaomi Smart Band 8',
                'description' => 'Écran AMOLED fluide 60Hz, Plus de 150 modes sport, Charge rapide en 1h.',
                'price' => 450.00,
                'image' => 'mi_band8.png',
                'brand' => 'Xiaomi',
                'category_id' => 5
            ],
            [
                'name' => 'Huawei Band 9',
                'description' => 'Design ultra-fin, Suivi scientifique du sommeil, Autonomie de 2 semaines.',
                'price' => 490.00,
                'image' => 'huawei_band9.png',
                'brand' => 'Huawei',
                'category_id' => 5
            ],

            // --- Audio Smart (True Wireless) ---
            [
                'name' => 'AirPods Pro (2nd Gen)',
                'description' => 'Réduction active du bruit, Audio spatial personnalisé, Boîtier de charge USB-C.',
                'price' => 2600.00,
                'image' => 'airpods_pro2.png',
                'brand' => 'Apple',
                'category_id' => 5
            ],
            [
                'name' => 'Samsung Galaxy Buds2 Pro',
                'description' => 'Son Hi-Fi 24 bits, Réduction active du bruit intelligente, Confort ergonomique.',
                'price' => 1800.00,
                'image' => 'buds2_pro.png',
                'brand' => 'Samsung',
                'category_id' => 5
            ],
            [
                'name' => 'Xiaomi Buds 5',
                'description' => 'Son haute résolution, Annulation active du bruit, Design semi-intra-auriculaire.',
                'price' => 950.00,
                'image' => 'xiaomi_buds5.png',
                'brand' => 'Xiaomi',
                'category_id' => 5
            ],

            // --- Smart Home & Lifestyle ---
            [
                'name' => 'Xiaomi Smart Camera C400',
                'description' => 'Vision nocturne 2.5K, Rotation 360°, Détection humaine par IA.',
                'price' => 550.00,
                'image' => 'mi_camera_c400.png',
                'brand' => 'Xiaomi',
                'category_id' => 5
            ],
            [
                'name' => 'Huawei FreeClip',
                'description' => 'Design C-bridge innovant, Écoute à oreilles libres, Confort toute la journée.',
                'price' => 1900.00,
                'image' => 'huawei_freeclip.png',
                'brand' => 'Huawei',
                'category_id' => 5
            ],
            [
                'name' => 'Xiaomi Mi Smart Scale 2',
                'description' => 'Analyse précise de la composition corporelle, Synchronisation avec Mi Fit.',
                'price' => 350.00,
                'image' => 'mi_scale2.png',
                'brand' => 'Xiaomi',
                'category_id' => 5
            ],
        ];

        // Produit::insert($produits);
        Produit::insert($objets_connectés);
    }
}
