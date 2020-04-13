<?php

use Illuminate\Database\Seeder;
<<<<<<< HEAD
use Faker\Generator as Faker;
=======
>>>>>>> 72a7088e3600c195b142cc6b9317d11d0f68bce5

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
<<<<<<< HEAD


        factory(App\Models\Frame::class, 22)->create()->each(function ($frame) {
            $faker = \Faker\Factory::create();
            $frame->product()->create([


                "title" => $faker->sentence(6, true),
                "description" => $faker->sentence(8, true),


            ])
              ->images()->create(["image_url" => '/image/product/example.jpg']);



        });

=======
        factory(App\Models\User::class, 5)->create();
>>>>>>> 72a7088e3600c195b142cc6b9317d11d0f68bce5
    }
}
