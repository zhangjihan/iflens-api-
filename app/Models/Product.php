<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'title', 'description', 'image', 'on_sale',
<<<<<<< HEAD
        'rating', 'price'
=======
        'rating',
>>>>>>> 72a7088e3600c195b142cc6b9317d11d0f68bce5
    ];
    protected $casts = [
        'on_sale' => 'boolean', // on_sale 是一个布尔类型的字段
    ];


    public function productable()
    {
        return $this->morphTo();
    }

    // 与商品SKU关联
    public function sku()
    {
        return $this->hasMany("App\Models\ProductSku");
    }

<<<<<<< HEAD
=======
//    public function items()
//    {
//        return $this->hasOne(OrderItem::class);
//    }

>>>>>>> 72a7088e3600c195b142cc6b9317d11d0f68bce5
    public function images()
    {
        return $this->morphMany("App\Models\Image", "imageable");
    }

    protected static function booted()
    {
        static::created(function ($product) {

<<<<<<< HEAD

        });
    }

}
=======
        });
    }

}
>>>>>>> 72a7088e3600c195b142cc6b9317d11d0f68bce5
