<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('f_b_posts', function (Blueprint $table) {
            $table->id();
            $table->text('message');
            $table->timestamp('created_time');
            $table->string('link');
            $table->string('image')->nullable(); // Store the image URL
            $table->integer('height')->nullable();
            $table->integer('width')->nullable();
            $table->string('post_id');
            $table->boolean('active_status')->default(1);
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
        Schema::dropIfExists('f_b_posts');
    }
};
