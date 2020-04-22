<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Frame extends Model
{
    public function product()
    {
        return $this->morphOne('App\Models\Product','productable');
    }

    public function images()
    {
        return $this->morphMany('App\Models\Image','imageable');
    }
}
