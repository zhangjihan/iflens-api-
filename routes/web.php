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

    //Route::get('user_addresses', 'UserAddressesController@create')->name('user_addresses.create');

    Route::any('user_addresses/store', 'UserAddressesController@store')->name('user_addresses.store');

    Route::get('user_addresses/{user_address}', 'UserAddressesController@edit')->name('user_addresses.edit');

    Route::put('user_addresses/{user_address}', 'UserAddressesController@update')->name('user_addresses.update');

    Route::delete('user_addresses/{user_address}', 'UserAddressesController@destroy')->name('user_addresses.destroy');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
