<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    /**
     * @var array 默认插入值
     */
    protected $attributes = [
        'image_url' => 'user/image/default.jpg'
    ];


    /**
     * 获取拥有此图片的模型
     */
    public function imageable()
    {
        return $this->morphTo();
    }
}
