<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Abonos extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('abonos', function (Blueprint $table) {
            $table->increments('id');
            $table->double('cuota');
            $table->integer('prestamo_id')->unsigned();
            $table->foreign('prestamo_id')->references('id')->on('prestamos');
            $table->integer('autor');
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
        //
    }

}
