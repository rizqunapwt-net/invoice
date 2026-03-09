<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pilihanpretes extends Model
{
    protected $table='pilihanpretes';
    protected $fillable=[
        'seminar_id','pilihan','pretes_id' 
    ];
    public function seminar(){
        return $this->belongsTo('App\Seminar');
    }
    public function pretes(){
        return $this->belongsTo('App\Pretes');
    }
}
 
