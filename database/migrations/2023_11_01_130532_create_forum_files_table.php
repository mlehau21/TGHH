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
        Schema::create('forum_files', function (Blueprint $table) {
            $table->id();
            $table->foreignId("forum_post_id");
            $table->string("file")->nullable();
            $table->tinyInteger("file_type")->default(0)->comment('0=no-file; 1=image; 2=video');
            $table->softDeletes();
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
        Schema::dropIfExists('forum_files');
    }
};
