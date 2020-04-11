<?php
namespace App\Http\Controllers;

use App\Models\UserAddress;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\UserAddressRequest;
class UserAddressesController extends Controller
{

    public function index(Request $request)
    {
        return view('user_addresses.index', [
            'addresses' => $request->user()->addresses,
        ]);
    }
    /**
     * $request->user() 获取当前登录用户。
     * user()->addresses() 获取当前用户与地址的关联关系
     * @param UserAddressRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(UserAddressRequest $request)
    {
        $request->user()->addresses()->create($request->only([
            'address',
            'contact_name',
            'contact_phone',
        ]));

    }







    /*
     * 获取当前用户已有的地址
    */
//    public function show(Request $request)
//    {
//        $user_id = $request->user()->get('id');
//        echo $user_id;
//    }



//
//    public function edit(UserAddress $user_address)
//    {
//        return  ['address' => $user_address];
//    }
//
//    public function update(UserAddress $user_address, UserAddressRequest $request)
//    {
//        $user_address->update($request->only([
//            'address',
//            'contact_name',
//            'contact_phone',
//        ]));
//    }
//
//    public function destroy(UserAddress $user_address)
//    {
//        $user_address->delete();
//    }
}
