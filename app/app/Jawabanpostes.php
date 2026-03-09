<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jawabanpostes extends Model
{
    protected $table='jawaban_postes';
    protected $fillable=[
        'seminar_id','postes_id','pilihanpostes_id','user_id','unik' 
    ];
     
    public function pilihanpostes(){
        return $this->belongsTo('App\Pilihanpostes');
    }
    public function user(){
        return $this->belongsTo('App\User');
    }
    public function postes(){
        return $this->belongsTo('App\Postes');
    }
    public function seminar(){
        return $this->belongsTo('App\Seminar');
    }
}
