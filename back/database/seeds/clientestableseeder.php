<?php

use Illuminate\Database\Seeder;

class clientestableseeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         factory(App\clientes::class,50)->create();
    }
}
