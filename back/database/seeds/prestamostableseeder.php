<?php

use Illuminate\Database\Seeder;

class prestamostableseeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      factory(App\prestamos::class,50)->create();   //
    }
}
