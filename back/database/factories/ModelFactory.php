<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(App\User::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->safeEmail,
        'password' => bcrypt('daner'),
        'tipo' => 'empleado',
        'remember_token' => str_random(20)
    ];
});
$factory->define(App\abono::class, function (Faker\Generator $faker) {
    return [
        'cuota' => $faker->numberBetween($min = 1000, $max = 100000),
       // 'prestamo_id' => 1,
        'autor' => 'daner'
      
    ];
});
$factory->define(App\cliente::class, function (Faker\Generator $faker) {
    return [
     
      
    ];
});
