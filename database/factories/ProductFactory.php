<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Product;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    return [


        "title" => $faker->sentence(6, true),
        "description" => "中国移动 我看不太行",


    ];
});
