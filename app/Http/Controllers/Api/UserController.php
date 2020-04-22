<?php

namespace App\Http\Controllers\Api;

use Carbon\Carbon;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Auth;
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
        $user->activity_token = \Str::random(60);
        $user->activity_expire = Carbon::tomorrow('Europe/London');
        $user->save();

        User::find($user->id)->image()->create();


        $this->senEmail($user);

        if ($this->loginAfterSignUp) {
            return $this->login($request);
        }


        return response()->json([
            'success' => true,
            'time' => $user->activity_expire,
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
        if (move_uploaded_file($_FILES['multfile']['tmp_name'], "." . $this->path . $file_name . $this->type)) {
            $user->image()->update(["image_url" => $this->path . $file_name . $this->type]);
            return response()->json(["message" => "头像更新成功", "status" => 200]);
        } else {
            return response()->json(["message" => "头像更新失败"]);
        };
    }

    public function senEmail($user)
    {
        \Mail::raw('请在 ' . $user->activity_expire . '前, 点击链接激活您的账号 ' . 'http://iflens.com/#/mail/' . $user->activity_token
            , function ($message) use ($user) {
                $message->from('iflens-admin', 'iflens-邮箱激活')
                    ->subject('iflens-邮箱激活邮件')
                    ->to($user->email);
            });
    }

    public function emailValidation(Request $request)
    {
        //0未找到,1过期,2验证成功
        $message = "token错误";
        $type = 0;
        if ($user = User::where("activity_token", $request->activity_token)->first()) {
            if (strtotime($user->activity_expire) < time()) {
                $message = "token已过期";
                $type = 1;
                $user->activity_token = \Str::random(60);
                $user->activity_expire = Carbon::tomorrow('Europe/London');
                $user->save();
                $this->senEmail($user);
            } else {
                $user->is_activity = 1;
                $user->save();
                $message = "验证成功";
                $type = 2;
            }

        };
        return response()->json(["message" => $message, "status" => 200, "type" => $type]);
    }

    public function changePassword(Request $request)
    {
        $user = JWTAuth::authenticate($request->token);
        if (Auth::attempt(['email' => $user->email, 'password' => $request->currentPassword])) {
            $user->password = bcrypt($request->newPassword);
            $user->save();
            return response()->json(["message" => "修改成功", "status" => 200]);
        } else {
            return response()->json(["message" => "密码错误"]);
        }

    }
}
