<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', 'PagesController@welcome')->name('welcome')->middleware('verified');

Auth::routes(['verify' => true]);

Route::get('/home', 'HomeController@index')->name('home');

// auth 中间件代表需要登录，verified中间件代表需要经过邮箱验证
Route::group(['middleware' => ['auth', 'verified']], function() {
    Route::get('user_addresses/show', 'UserAddressesController@show')->name('user_addresses.show');

    Route::post('orders', 'OrdersController@store')->name('orders.store');

    Route::post('orders/{order}/received', 'OrdersController@received')->name('orders.received');

    Route::get('payment/{order}/alipay', 'PaymentController@payByAlipay')->name('payment.alipay');

});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

