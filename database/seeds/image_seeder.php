<?php

use Illuminate\Database\Seeder;
use App\Models\Image;
class image_seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker=\Faker\Factory::create();
        Image::create([
            'image_url'=>'/image/default.jpg',
            'imageable_id'=>11,
            'imageable_type'=>'users'
        ]);
    }
}
