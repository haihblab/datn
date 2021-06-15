<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRatingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ratings', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('r_user_id');
            $table->unsignedBigInteger('r_product_id');
            $table->tinyInteger('r_number')->default(0);
            $table->tinyInteger('r_status')->default(1);
            $table->text('r_content')->nullable();
            $table->foreign('r_user_id')->references('id')->on('users');
            $table->foreign('r_product_id')->references('id')->on('products');
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
        Schema::dropIfExists('ratings');
    }
}
