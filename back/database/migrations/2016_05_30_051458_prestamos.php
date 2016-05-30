<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Prestamos extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
         Schema::create('prestamos', function (Blueprint $table) {
            $table->increments('id');
            $table->duoble('prestamo');
            $table->duoble('interes');
            $table->duoble('totalprestamo');
            $table->integer('cuotas');
            $table->duoble('valorcuota');
            $table->duoble('debito');
            $table->integer('empleado_id')->unsigned();
            $table->foreign('empleado_id')->references('id')->on('empleados');
            $table->integer('cliente_id')->unsigned();
            $table->foreign('cliente_id')->references('id')->on('clientes');
            $table->timestamps();

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
         Schema::drop('prestamos');
    }
}
