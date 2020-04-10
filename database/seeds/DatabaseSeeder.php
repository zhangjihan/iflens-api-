<?php

use Illuminate\Database\Seeder;
use Faker\Generator as Faker;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {


        factory(App\Models\Frame::class, 22)->create()->each(function ($frame) {
            $faker = \Faker\Factory::create();
            $frame->product()->create([


                "title" => $faker->sentence(6, true),
                "description" => $faker->sentence(8, true),


            ])
              ->images()->create(["image_url" => '/image/product/example.jpg']);



        });

    }
}
