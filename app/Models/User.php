<?php

namespace App\Models;

use App\Models\UserAddress;
use App\Models\Eyes_data;
use App\Models\Order;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Tymon\JWTAuth\Contracts\JWTSubject;

class User extends Authenticatable implements JWTSubject
{
    use Notifiable;

    /**?
     * @var array 默认预加载
     */
    protected $with = ['image'];
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


    /**
     * Get the identifier that will be stored in the subject claim of the JWT.
     *
     * @return mixed
     */
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    /**
     * Return a key value array, containing any custom claims to be added to the JWT.
     *
     * @return array
     */
    public function getJWTCustomClaims()
    {
        return [];
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     * 关联用户地址
     */
    public function addresses()
    {
        return $this->hasMany(UserAddress::class);
    }

    public function cartItems()
    {
        return $this->hasMany(CartItem::class);
    }


    public function eyesData()
    {
        return $this->hasOne(Eyes_data::class);
    }

    public function orders()
    {
        return $this->hasMany(Order::class);

    }

    public function image()
    {
        return $this->morphOne('App\Models\Image', 'imageable');
    }

    public function eyes_data()
    {
        return $this->hasOne('App\Models\Eyes_data', 'user_id');
    }
}
