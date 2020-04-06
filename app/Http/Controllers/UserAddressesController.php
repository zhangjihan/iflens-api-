<?php
namespace App\Http\Controllers;

use App\Models\UserAddress;
use App\User;
use Illuminate\Http\Request;
use App\Http\Requests\UserAddressRequest;
class UserAddressesController extends Controller
{
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

    /**
     * $request->user() 获取当前登录用户。
     * user()->addresses() 获取当前用户与地址的关联关系
     * @param UserAddressRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(UserAddressRequest $request)
    {
        $request->user()->addresses()->create($request->only([
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
}
