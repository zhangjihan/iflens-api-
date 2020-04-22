<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use http\Env\Response;
use Illuminate\Http\Request;
use App\Models\UserAddress;
use JWTAuth;

class AddressController extends Controller
{
    public function addAddress(Request $request)
    {
        $newAddress= $request->address;
        if($address=($request->address['id']?UserAddress::find( $newAddress['id']):null)){
            $address->update( $newAddress);
            $message="更新成功";
        }else{
            $user=JWTAuth::authenticate($request->token);
            unset($newAddress['id']);
            $user->addresses()->create($newAddress);
            $message="添加成功";
        }
        return $this->AddressInfo($request->token,$message);
    }

    public function deleteAddress(Request $request)
    {
        if($address=UserAddress::find($request->id)){
            $address->delete();
            $message="删除成功";
        }else{
            $message="删除失败";
        }

        return $this->AddressInfo($request->token,$message);
    }

    public function AddressInfo($token,$message)
    {
        $addresses=JWTAuth::authenticate($token)->addresses()->get();
        return response()->json(["message"=>$message,"addresses"=>$addresses,"status"=>200]);
    }
}
