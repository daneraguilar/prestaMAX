<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');

});
Route::post('/', function () {
    return true;
    
});
Route::group(['prefix' => 'API'], function() {
	Route::post('/nuevoCliente','cliente@crearcliente');
	//trae todos los clientes
	Route::get('/clientes','cliente@allclientes');

});