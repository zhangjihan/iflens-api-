<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');

    $router->get('users', 'UsersController@index');

    //商品操作路由
    $router->get('products', 'ProductsController@index');

    $router->get('products/create', 'ProductsController@create');

    $router->post('products', 'ProductsController@store');

    $router->get('products/{id}/edit', 'ProductsController@edit');

    $router->put('products/{id}', 'ProductsController@update');
    //订单操作路由
    $router->get('orders', 'OrdersController@index')->name('admin.orders.index');

    $router->get('orders/{order}', 'OrdersController@show')->name('admin.orders.show');

    $router->post('orders/{order}/ship', 'OrdersController@ship')->name('admin.orders.ship');


    //镜片操作路由
    $router->get('lens', 'LensController@index')->name('admin.lens.index');

    $router->get('lens/create', 'LensController@create');

    $router->post('lens', 'LensController@store');

    $router->get('lens/{id}/edit', 'LensController@edit');

    $router->put('lens/{id}', 'LensController@update');

    $router->get('lens/{id}', 'LensController@show')->name('admin.lens.show');

    //镜架操作路由

    $router->get('frame', 'FrameController@index')->name('admin.lens.index');

    $router->get('frame/create', 'FrameController@create');

    $router->post('frame', 'FrameController@store');

    $router->get('frame/{id}/edit', 'FrameController@edit');

    $router->put('frame/{id}', 'FrameController@update');

    $router->get('frame/{id}', 'FrameController@show')->name('admin.frame.show');

});
