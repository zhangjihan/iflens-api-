<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductSku extends Model
{



    protected $fillable = ['title', 'description', 'price'];


    protected $with = "product";

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
