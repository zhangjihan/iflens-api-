<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAlbumLensTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('albums_lens', function (Blueprint $table) {
            $table->bigIncrements('id');
            //一旦删除了该镜片同时删除对应图册
            $table->unsignedBigInteger('lens_id');
            $table->foreign('lens_id')->references('id')->on('lens');
            $table->string('gallery');
            $table->string('detail');
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
        Schema::dropIfExists('album_lens');
    }
}
