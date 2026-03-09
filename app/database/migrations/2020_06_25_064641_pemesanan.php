<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Pemesanan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Schema::create('pemesanan', function (Blueprint $table) {
        //     $table->id();
        //     $table->string('nama');
        //     $table->string('user_id',10);
        //     $table->string('namaseminar',10);
        //     $table->string('statuspendaftaran')->default('dibuka');
        //     $table->string('berbayar')->default('no');
        //     $table->string('htm')->default('0');
        //     $table->text('slug')->nullable();
        //     $table->integer('harga');
        //     $table->integer('diskon')->default(0);
        //     $table->string('statusbayar',10)->default('belum');
        //     $table->dateTime('tanggal');
        //     $table->rememberToken();
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
        //
    }
}
