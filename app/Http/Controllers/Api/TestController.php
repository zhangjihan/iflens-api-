<?php
/**
 * Created by PhpStorm.
 * User: 渐懂
 * Date: 2020/4/2
 * Time: 23:07
 */

namespace App\Http\Controllers;


use App\Models\User;

class TestController
{
    public function index()
    {
        $user=User::find(1)->password;
        try {
            $decrypted = decrypt($user);
        } catch (DecryptException $e) {
            return $e;
        }


        return json_encode( decrypt($user),60);
    }
}