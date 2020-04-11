<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Eyes_data extends Model
{
    protected $fillable = [
        'status', 'left', 'right', 'cylinder',
        'pd','axis','visual_acuity'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
