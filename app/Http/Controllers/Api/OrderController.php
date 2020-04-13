<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;

use App\Models\UserAddress;
use App\Models\OrderItem;
use JWTAuth;

class OrderController extends Controller
{
    public function setOrder(Request $request)
    {
        $total_amount = $this->getTotalAmount($request->cartItems);
        $address = $this->getAddress($request->address);


        $user = JWTAuth::authenticate($request->token)->first();
        if ($order = $user->orders()->create(["address" => $address, "total_amount" => $total_amount])) {
            foreach ($request->cartItems as $index => $cartItem) {
                $order->items()->create(["product_sku_id" => $cartItem['product_sku']['id'],
                    "product_id" => $cartItem['product_sku']['product_id'], "amount" => $cartItem['amount']
                    , "price" => $cartItem['product_sku']['price']]);
            }

        };
        return $this->OrderInfo($request->token, "购物成功");
    }

    public function OrderInfo($token, $message)
    {
        $orders = JWTAuth::authenticate($token)->orders;

        return response()->json(["orders" => $orders, "status" => 200, "message" => $message]);
    }

    public function getTotalAmount($cartItems)
    {
        $total_amount = 0;
        foreach ($cartItems as $index => $cartItem) {

            $total_amount += $cartItem['product_sku']['price'] * $cartItem['amount'];
        }
        return $total_amount;
    }

    public function getAddress($address)
    {
        $address = UserAddress::find($address);
        return $address->address . "--" . $address->contact_name . "--" . $address->contact_phone;
    }
}

