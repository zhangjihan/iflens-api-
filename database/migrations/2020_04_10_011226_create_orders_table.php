<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('no')->unique();
            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->string('order_status')
                ->default(\App\Models\Order::ORDER_STATUS_PENDING);
            $table->string('address');
            $table->decimal('total_amount', 10, 2);
            $table->dateTime('paid_at')->nullable();
            $table->string('payment_no')->nullable();
            $table->string('refund_status')
                ->default(\App\Models\Order::REFUND_STATUS_PENDING);;
            $table->string('refund_no')->unique()->nullable();
            $table->string('ship_status')
                ->default(\App\Models\Order::SHIP_STATUS_PENDING);
            $table->boolean('closed')->default(false);
            $table->text('ship_data')->nullable();
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
        Schema::dropIfExists('orders');
    }
}
