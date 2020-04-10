<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
class Lens extends Model
{
    public function product()
    {
        return $this->morphOne('App\Models\Product','productable');
    }
}
