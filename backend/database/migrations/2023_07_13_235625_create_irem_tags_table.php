<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * @return void
     */
    public function up()
    {
        Schema::create('item_tags', function (Blueprint $table) {
            $table->id('item_tag_id');
            $table->string('item_tag_name', 50);
        });
    }

    /**
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tag');
    }
};
