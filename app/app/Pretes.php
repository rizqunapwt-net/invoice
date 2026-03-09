<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pretes extends Model
{
    protected $table='pretes';
    protected $fillable=[
        'seminar_id','soal' 
    ];
    public function seminar(){
        return $this->belongsTo('App\Seminar');
    }
    public function pilihanpretes(){
        return $this->hasMany('App\Pilihanpretes');
    }
}
