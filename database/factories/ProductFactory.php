<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Product;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    return [
<<<<<<< HEAD


        "title" => $faker->sentence(6, true),
        "description" => "中国移动 我看不太行",


=======
        //
>>>>>>> 72a7088e3600c195b142cc6b9317d11d0f68bce5
    ];
});
