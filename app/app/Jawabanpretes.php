<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jawabanpretes extends Model
{
    protected $table='jawaban_pretes';
    protected $fillable=[
        'seminar_id','pretes_id','pilihanpretes_id','user_id','unik' 
    ];
     
    public function pilihanpretes(){
        return $this->belongsTo('App\Pilihanpretes');
    }
    public function user(){
        return $this->belongsTo('App\User');
    }
    public function pretes(){
        return $this->belongsTo('App\Pretes');
    }
    public function seminar(){
        return $this->belongsTo('App\Seminar');
    }
}
