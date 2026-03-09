<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Pretes extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         
        // Schema::create('pilihanpretes', function (Blueprint $table) {
        //     $table->id();
        //     $table->integer('seminar_id');
        //     $table->integer('pretes_id');
        //     $table->text('pilihan');
        //     $table->string('unik');
        //     $table->timestamps();
        // });
        // Schema::create('pilihanpostes', function (Blueprint $table) {
        //     $table->id();
        //     $table->integer('seminar_id');
        //     $table->integer('postes_id');
        //     $table->text('pilihan');
        //     $table->string('unik');
        //     $table->timestamps();
        // });
        // Schema::create('jawaban_pretes', function (Blueprint $table) {
        //     $table->id();
        //     $table->integer('seminar_id');
        //     $table->integer('pretes_id');
        //     $table->string('pilihanpretes_id');
        //     $table->integer('user_id');
        //     $table->string('unik');
        //     $table->timestamps();
        // });
        // Schema::create('jawaban_postes', function (Blueprint $table) {
        //     $table->id();
        //     $table->integer('seminar_id');
        //     $table->integer('postes_id');
        //     $table->string('pilihanpostes_id');
        //     $table->integer('user_id');
        //     $table->string('unik');
        //     $table->timestamps();
        // });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pretes');
    }
}
