<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Lens;
use Faker\Generator as Faker;

$factory->define(Lens::class, function (Faker $faker) {
    return [

        "title" => $faker->sentence(6, true),
        "brand" => $faker->randomElement([0, 1, 2, 3]),
        "type" => $faker->randomElement([0, 1, 2, 3]),
        "description"=>$faker->sentence(8, true),
        "texture" => $faker->randomElement([0, 1, 2, 3]),
        "abbe" =>$faker->randomFloat(2, 0, 10),
        "transmittance"=>$faker->randomFloat(2, 0, 10),
        "refraction"=>$faker->randomFloat(2, 0, 10),
        "membrane"=>$faker->sentence(3,true),
        "weight"=> $faker->randomFloat(2, 0, 10),
        "spherical"=>$faker->randomElement([0, 1, 2, 3]),
        "country"=>$faker->randomElement([0, 1, 2, 3]),


    ];
});
