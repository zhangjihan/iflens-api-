<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;
use App\Models\Frame;

$factory->define(Frame::class, function (Faker $faker) {
    return [
        "title" => $faker->sentence(6, true),
        "brand" => $faker->randomElement([0, 1, 2, 3]),
        "type" => $faker->randomElement([0, 1, 2, 3]),
        "texture" => $faker->randomElement([0, 1, 2, 3]),
        "rim" => $faker->randomElement([0, 1, 2, 3]),
        "nosePads"=>$faker->randomElement([0, 1]),
        "dimension" => "100*100",
        "weight"=> $faker->randomFloat(2, 0, 10),

    ];
});
