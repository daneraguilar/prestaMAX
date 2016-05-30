<?php

use Illuminate\Database\Seeder;

class abonostableseeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         factory(App\abono::class,50)->create();
    }
}
