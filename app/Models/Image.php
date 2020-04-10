<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\Relation;

class Image extends Model
{

    /**
     * @var array 默认插入值
     */
    protected $attributes = [
        'image_url' => '/image/user/default.jpg'
    ];


    /**
     * 获取拥有此图片的模型
     */
    public function imageable()
    {
        return $this->morphTo();
    }
}
