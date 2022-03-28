<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateChatsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chats', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('reservation_id')->nullable();
            $table->foreign('reservation_id')->references('id')->on('reservations')->onDelete('cascade');
            $table->unsignedBigInteger('from_user_id')->nullable();
            $table->foreign('from_user_id')->references('id')->on('users')->onDelete('cascade');
            $table->unsignedBigInteger('to_user_id')->nullable();
            $table->foreign('to_user_id')->references('id')->on('users')->onDelete('cascade');
            $table->date('date')->nullable();
            $table->time('time')->nullable();
            $table->string('image')->nullable();
            $table->string('text')->nullable();
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
        Schema::dropIfExists('chats');
    }
}
