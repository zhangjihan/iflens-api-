<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductSku extends Model
{
<<<<<<< HEAD
    protected $fillable = ['title', 'description', 'price', 'stock'];
=======
    protected $fillable = ['title', 'description', 'price'];
>>>>>>> 72a7088e3600c195b142cc6b9317d11d0f68bce5

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
