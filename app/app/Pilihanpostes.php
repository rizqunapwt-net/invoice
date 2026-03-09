<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pilihanpostes extends Model
{
    protected $table='pilihanpostes';
    protected $fillable=[
        'seminar_id','pilihan','postes_id' 
    ];
    public function seminar(){
        return $this->belongsTo('App\Seminar');
    }
    public function postes(){
        return $this->belongsTo('App\Postes');
    }
}

