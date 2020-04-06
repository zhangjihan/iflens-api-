<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLensTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lens', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title');
            $table->decimal('price');
            $table->string('brand');
            $table->tinyInteger('type');
            $table->text('description');
            $table->float('abbe');
            $table->float('transmittance');
            $table->float('refraction');
            $table->float('weight');
            $table->string('membrane');
            $table->tinyInteger('spherical');
            $table->tinyInteger('texture');
            $table->tinyInteger('country');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('lens');
    }
}
