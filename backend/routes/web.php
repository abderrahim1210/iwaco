<?php

use App\Http\Controllers\ProduitController;
use Illuminate\Support\Facades\Route;

Route::get('/get_all_products',[ProduitController::class, 'getProducts']);