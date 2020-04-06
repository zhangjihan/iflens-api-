<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::namespace('Api')->group(function () {
    // 在 "App\Http\Controllers\Api" 命名空间下的控制器
    Route::post('/test','TestController@index');
    Route::post('/login','UserController@login');
    Route::post('/register','UserController@register');
    Route::group(['middleware' => 'auth.jwt'], function () {
        Route::post('/getAuth','UserController@getAuthUser');
    });
});


