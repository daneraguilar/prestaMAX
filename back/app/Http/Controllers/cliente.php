<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\User;

class cliente extends Controller



{


	public function allclientes(){

		$users= User::all();
		return $users;
	}
    //

     public function crearcliente(Request $cliente){
         	   $user = user::where('email','=',$cliente->email)->count();
         	       $persona = cliente::where('cedula','=',$cliente->cedula)->count();
               
         if ($user or $persona) {
         	$mensaje='Cudula o Correo ya se esta registrados intente con otros';
       return false;
         
              }
              else{
              	   $user =  new user;
            	$user->name=$cliente->nombres;
            	$user->email=$cliente->email;
            	$user->password=bcrypt($cliente->password);
            	$user->remember_token=$cliente->_token;
           $user->save();
             $persona = new persona;
             $persona->tipodocumento=$cliente->tipodocumento;
             $persona->identificacion=$cliente->identificacion;
             $persona->nombres=$cliente->nombres;
             $persona->apellidos=$cliente->apellidos;
             $persona->telefono =$cliente->telefono;
            
             $persona->save();
             $user = user::where('email','=',$user->email)->firstOrFail();

             $persona = persona::where('identificacion','=',$persona->identificacion)->firstOrFail();
               

                 $clientenew = new cliente();
         
             $clientenew->user_id=$user->id;
             $clientenew->persona_id=$persona->id;
            
            $clientenew->save();
            
            return true;
           


              }

    }
}
