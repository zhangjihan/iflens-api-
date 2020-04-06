<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAlbumFramesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('album_frames', function (Blueprint $table) {
            $table->bigIncrements('id');
            //一旦删除了该镜架同时删除对应图册
            $table->unsignedBigInteger('frame_id');
            $table->foreign('frame_id')->references('id')->on('lens');
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
        Schema::dropIfExists('album_frames');
    }
}
