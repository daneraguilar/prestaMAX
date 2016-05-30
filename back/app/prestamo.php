<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class prestamo extends Model
{
      protected $fillable = [
       'prestamo','interes','totalprestamo','cuotas','valorcuota','debito','empleado_id','cliente_id'
    ];
}
