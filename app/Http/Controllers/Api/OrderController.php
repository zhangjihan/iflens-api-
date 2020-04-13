<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderItem;

class OrderConteroller extends Controller
{
    public function setOrder(Request $request)
    {
        return dd($request);
        $total_amount=0;
        foreach ($request->cartItems as $index => $cartItem) {
            $total_amount+=$cartItem.price
        }
    }
}
