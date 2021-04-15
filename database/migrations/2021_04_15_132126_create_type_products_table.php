<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTypeProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('type_products', function (Blueprint $table) {
            $table->id();
            $table->string('tp_name');
            $table->string('tp_slug')->unique();
            $table->string('tp_avatar')->nullable();
            $table->string('tp_banner')->nullable();
            $table->string('tp_description')->nullable();
            $table->tinyInteger('tp_hot')->default(0);
            $table->tinyInteger('tp_status')->default(1);
            $table->unsignedBigInteger('tp_category_id')->default(0);
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
        Schema::dropIfExists('type_products');
    }
}
