<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CartItem;
use JWTAuth;

class CartController extends Controller
{
    public function addToCart(Request $request)
    {

        $user = JWTAuth::authenticate($request->token);


        if ($cart = CartItem::where(['product_sku_id' => $request->skuId, 'user_id' => $user->id])->first()) {
            $cart->amount += $request->amount;
            $cart->save();
        } else {
            CartItem::create(['user_id' => $user->id, 'product_sku_id' => $request->skuId, 'amount' => $request->amount]);
        }
        return response()->json(["message" => "已添加至购物车", "status" => 200]);
    }

    public function deleteCartItems(Request $request)
    {
        foreach ($request->cartItems as $index => $cartItem) {
            CartItem::where("id", $cartItem["id"])->delete();
        }
        $user = JWTAuth::authenticate($request->token);
        return response()->json(["message" => "删除成功", "cartItems" => $user->cartItems,"status" =>200]);
    }
}
