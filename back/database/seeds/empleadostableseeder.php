<?php

use Illuminate\Database\Seeder;

class empleadosbleseeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\empleados::class,50)->create();
    }
}
