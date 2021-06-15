<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateArticlesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('articles', function (Blueprint $table) {
            $table->id();
            $table->string('a_name');
            $table->string('a_slug')->index();
            $table->tinyInteger('a_hot')->default(0)->inedx();
            $table->tinyInteger('a_active')->default(1)->index();
            $table->unsignedBigInteger('a_menu_id')->index();
            $table->integer('a_view')->default(0);
            $table->mediumText('a_description')->nullable();
            $table->string('a_avatar')->nullable();
            $table->text('a_content')->nullable();
            $table->tinyInteger('a_position_1')->default(0);
            $table->tinyInteger('a_position_2')->default(0);
            $table->foreign('a_menu_id')->references('id')->on('menus');
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
        Schema::dropIfExists('articles');
    }
}
