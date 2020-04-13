<?php
namespace App\Http\Controllers;

use App\Models\UserAddress;
<<<<<<< HEAD
use App\User;
=======
use App\Models\User;
>>>>>>> 72a7088e3600c195b142cc6b9317d11d0f68bce5
use Illuminate\Http\Request;
use App\Http\Requests\UserAddressRequest;
class UserAddressesController extends Controller
{
<<<<<<< HEAD
    /*
     * 获取当前用户已有的地址
    */
    public function show(Request $request)
    {
        $user_id = $request->user()->get('id');
        echo $user_id;
    }

    public function create()
    {
    //创建地址方法

    }

=======

    public function index(Request $request)
    {
        return view('user_addresses.index', [
            'addresses' => $request->user()->addresses,
        ]);
    }
>>>>>>> 72a7088e3600c195b142cc6b9317d11d0f68bce5
    /**
     * $request->user() 获取当前登录用户。
     * user()->addresses() 获取当前用户与地址的关联关系
     * @param UserAddressRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(UserAddressRequest $request)
    {
        $request->user()->addresses()->create($request->only([
<<<<<<< HEAD
            'province',
            'city',
            'district',
            'address',
            'zip',
            'contact_name',
            'contact_phone',
        ]));
        //return redirect()->route('user_addresses.index');
    }

    public function edit(UserAddress $user_address)
    {
        return  ['address' => $user_address];
    }

    public function update(UserAddress $user_address, UserAddressRequest $request)
    {
        $user_address->update($request->only([
            'province',
            'city',
            'district',
            'address',
            'zip',
            'contact_name',
            'contact_phone',
        ]));
    }

    public function destroy(UserAddress $user_address)
    {
        $user_address->delete();
    }
=======
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
>>>>>>> 72a7088e3600c195b142cc6b9317d11d0f68bce5
}
