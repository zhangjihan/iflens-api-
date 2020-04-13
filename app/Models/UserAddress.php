<?php

namespace App\Models;

use App\Models\User;

use Illuminate\Database\Eloquent\Model;

class UserAddress extends Model
{
    //

    protected $fillable = [
        'address',
        'contact_name',
        'contact_phone',
        'last_used_at',
    ];
    protected $dates = ['last_used_at'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

}
