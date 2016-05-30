<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class cliente extends Model
{
    //
        protected $fillable = [
        'cedula','nombres','apellidos','email','celular','direccion','barrio','zona','user_id'
    ];
}
