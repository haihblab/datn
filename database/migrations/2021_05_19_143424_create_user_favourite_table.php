<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserFavouriteTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_favourite', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('uf_product_id');
            $table->unsignedBigInteger('uf_user_id');
            $table->unique(['uf_product_id','uf_user_id']);
            $table->foreign('uf_product_id')->references('id')->on('products');
            $table->foreign('uf_user_id')->references('id')->on('users');
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
        Schema::dropIfExists('user_favourite');
    }
}
