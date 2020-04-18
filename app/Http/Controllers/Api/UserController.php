<?php

namespace App\Http\Controllers\Api;


use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;

class UserController extends Controller
{

    public $loginAfterSignUp = true;
    public $path = "/image/user/";
    public $type = ".png";

    public function register(Request $request)
    {
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->save();
        User::find($user->id)->image()->create();

        if ($this->loginAfterSignUp) {
            return $this->login($request);
        }

        return response()->json([
            'success' => true,
            'data' => $user,
            'message' => '注册成功',
            'status' => 200
        ]);
    }

    public function login(Request $request)
    {
        $input = $request->only('email', 'password');
        $jwt_token = null;

        if (!$jwt_token = JWTAuth::attempt($input)) {

            return response()->json([
                'success' => false,
                'message' => 'Invalid Email or Password',
            ], 401);
        }

        return response()->json([
            'success' => true,
            'token' => $jwt_token,
            'message' => '登录成功',
            'status' => 200
        ]);
    }

    public function logout(Request $request)
    {
        $this->validate($request, [
            'token' => 'required'
        ]);

        try {
            JWTAuth::invalidate($request->token);

            return response()->json([
                'success' => true,
                'message' => 'User logged out successfully'
            ]);
        } catch (JWTException $exception) {
            return response()->json([
                'success' => false,
                'message' => 'Sorry, the user cannot be logged out',

            ], 400);
        }
    }

    public function getAuthUser(Request $request)
    {


        $this->validate($request, [
            'token' => 'required'
        ]);

        $user = JWTAuth::authenticate($request->token);


        return response()->json(['user' => $user, 'message' => '已获取用户', 'status' => 200]);
    }

    public function getRelevance(Request $request)
    {

        if ($id = JWTAuth::authenticate($request->token)->id) {
            $user = User::with(['addresses', 'eyesData', 'orders' => function ($orders) {
                $orders->with("items")->get();
            }, 'cartItems' => function ($cartItems) {
                $cartItems->with("productSku")->get();
            }])->find($id);


            return response()->json(["user" => $user, "status" => 200]);
        }
    }

    public function updateUserData(Request $request)
    {
        if ($id = JWTAuth::authenticate($request->token)->id) {
            JWTAuth::authenticate($request->token)->update(['name' => $request->name]);
            $user = User::with('eyesData')->find($id);

            if ($user->eyesData) {
                $user->eyesData()->update($request->eyesData);
            } else {
                $user->eyesData()->create($request->eyesData);
            }

            return response()->json(["name" => $user->name, "eyesData" => $user->eyesData()->get(), "status" => 200, "messgae" => "保存成功"]);
        }
    }

    public function upload(Request $request)
    {
        $file_name = uniqid(mt_rand(), 1);
        $user = JWTAuth::authenticate($request->token);
        if (move_uploaded_file($_FILES['multfile']['tmp_name'], ".".$this->path.$file_name.$this->type)) {
            $user->image()->update(["image_url" => $this->path.$file_name.$this->type]);
            return response()->json(["message"=>"头像更新成功","status"=>200]);
        }else{
            return response()->json(["message"=>"头像更新失败"]);
        };
    }

    public function getReset()
    {
        return view('newReset');
    }
    public function postReset(Request $request)
    {
        $oldpassword = $request->input('oldpassword');
        $password = $request->input('password');
        $data = $request->all();
        $rules = [
            'oldpassword'=>'required|between:6,20',
            'password'=>'required|between:6,20|confirmed',
        ];
        $messages = [
            'required' => '密码不能为空',
            'between' => '密码必须是6~20位之间',
            'confirmed' => '新密码和确认密码不匹配'
        ];
        $validator = Validator::make($data, $rules, $messages);
        $user = Auth::user();
        $validator->after(function($validator) use ($oldpassword, $user) {
            if (!\Hash::check($oldpassword, $user->password)) {
                $validator->errors()->add('oldpassword', '原密码错误');
            }
        });
        if ($validator->fails()) {
            return back()->withErrors($validator);  //返回一次性错误
        }
        $user->password = bcrypt($password);
        $user->save();
        Auth::logout();  //更改完这次密码后，退出这个用户
        return redirect('/login');
    }
}
