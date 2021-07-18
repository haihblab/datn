<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payments', function (Blueprint $table) {
            $table->id();
            $table->integer('p_transaction_id')->notNull();
            $table->integer('p_user_id')->notNull();
            $table->integer('p_money')->comment('số tiền thanh toán');
            $table->string('p_note')->nullable()->comment('ghi chú');
            $table->string('p_vnp_response_code')->notNull()->comment('mã phản hồi');
            $table->string('p_code_vnp')->notNull()->comment('mã giao dịch vnp');
            $table->string('p_code_bank')->notNull()->comment('mã ngân hàng');
            $table->dateTime('p_time')->notNull()->comment('thòi gian chuyển khoản');
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
        Schema::dropIfExists('payments');
    }
}
