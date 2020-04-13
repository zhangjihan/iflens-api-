<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserAddress extends Model
{
    protected $fillable = [
        'user_id',
        'contact_name',//联系人姓名
        'contact_phone',//联系人电话
        'address',
        'last_used_at',
    ];

    protected $dates = ['last_used_at'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

//    public function getFullAddressAttribute()
//    {
//        return "{$this->province}{$this->city}{$this->district}{$this->address}";
//    }
//    public function own(User $user, UserAddress $address)
//    {
//        return $address->user_id == $user->id;
//    }

}
