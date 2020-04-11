<?php

use Illuminate\Database\Seeder;
use APP\Models\Product;
class productsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker=\Faker\Factory::create();
        Product::create([
            "title"=>$faker->title,
            "description" =>"中国移动 我看不太行",

        ]);

    }
}
