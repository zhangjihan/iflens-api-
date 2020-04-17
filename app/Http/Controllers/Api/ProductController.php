<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    public function ProductsList(Request $request)
    {

        $products = Product::with('images')->with('productable')->with('sku')
            ->where('on_sale', '1')->get();
        return response()->json(["products" => $products, "status" => 200]);
    }

    public function product(Request $request)
    {
        $product = Product::with(['images', 'productable', 'sku'])->find($request->productId);

        return response()->json(["product" => $product, 'status' => 200]);
    }

    public function getHotProducts(Request $request)
    {
        $product = Product::with(['images', 'items', 'sku'])->withCount("items")->orderBy('items_count', 'desc')->limit($request->amount)->get();
        return response()->json(["products" => $product, 'status' => 200]);
    }

    public function getSearchProducts()
    {
        $products = Product::select('id', 'title', 'productable_type')->without('images')->get();
        return response()->json(["products"=>$products,'status'=>200]);
    }
}
