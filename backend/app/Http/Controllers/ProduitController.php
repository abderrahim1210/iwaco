<?php

namespace App\Http\Controllers;

use App\Models\Produit;
use Illuminate\Http\Request;

class ProduitController extends Controller
{
    public function getProducts()
    {
        $products = Produit::with(['category'])->get();
        return response()->json([
            'success' => true,
            'produits' => $products
        ]);
    }
}
