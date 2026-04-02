<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Produit extends Model
{
    use HasFactory;
    protected $fillable = ['category_id','nom','description','prix','image_url'];

    public function categories()
    {
        return $this->belongsTo(Categorie::class);
    }
}
