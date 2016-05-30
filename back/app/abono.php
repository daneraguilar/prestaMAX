<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class abono extends Model
{
    protected $fillable = [
       'cuota', 'prestamo_id','autor'
    ];
}
