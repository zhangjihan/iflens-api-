<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    protected $fillable = ['amount', 'price', 'rating', 'review', 'reviewed_at','product_id','product_sku_id'];
    protected $dates = ['reviewed_at'];
    //这个模型没有创建和更新时间戳
    public $timestamps = false;

    protected $with=["productSku","product"];
    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function productSku()
    {
        return $this->belongsTo(ProductSku::class);
    }

    public function order()
    {
        return $this->belongsTo(Order::class);
    }
}
