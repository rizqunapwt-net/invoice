<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Postes extends Model
{
    protected $table='postes';
    protected $fillable=[
        'seminar_id','soal'
    ];
    public function seminar(){
        return $this->belongsTo('App\Seminar');
    }
    public function pilihanpostes(){
        return $this->hasMany('App\Pilihanpostes');
    }
}
