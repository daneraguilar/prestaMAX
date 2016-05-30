<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class empleado extends Model
{
	 protected $fillable = [
       'cedula','nombres','apellidos','email','celular','direccion','user_id'
    ];
    //
}
