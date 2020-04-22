<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $attributes = [
        'image' => '/image/product/example.jpg'
    ];

    protected $fillable = [
        'title', 'description', 'image', 'on_sale',
        'rating', 'price'

    ];
    protected $casts = [
        'on_sale' => 'boolean', // on_sale 是一个布尔类型的字段

    ];

    protected $with = "images";

    public function productable()
    {
        return $this->morphTo();
    }

    // 与商品SKU关联
    public function sku()
    {
        return $this->hasMany("App\Models\ProductSku");
    }

    public function images()
    {
        return $this->morphMany("App\Models\Image", "imageable");
    }

//    protected static function booted()
//    {
//        static::created(function ($product) {
//        });
//    }

    public function items()
    {
        return $this->hasMany("App\Models\OrderItem");
    }

    public function setImageAttribute($image)
    {
        if (is_array($image)) {
            $this->attributes['image'] = json_encode($image);
        }

    }

    public function getImageAttribute($image)
    {
        return json_decode($image, true);
    }


}

