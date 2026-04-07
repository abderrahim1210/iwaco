<?php

use App\Http\Controllers\ProduitController;
use App\Http\Controllers\SendMessage;
use App\Models\Categorie;
use Illuminate\Support\Facades\Route;

Route::get('/get_all_products',[ProduitController::class, 'getProducts']);

Route::get('/get_categories',function(){
    $categories = Categorie::all();
    return response()->json([
        'success' => true,
        'categories' => $categories
    ]);
});


Route::post('/send_message',[SendMessage::class, 'sendMessage']);