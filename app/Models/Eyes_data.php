<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Eyes_data extends Model
{
<<<<<<< HEAD
    //
=======
    protected $fillable = [
        'status', 'left', 'right', 'cylinder',
        'pd','axis','visual_acuity'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
>>>>>>> 72a7088e3600c195b142cc6b9317d11d0f68bce5
}
