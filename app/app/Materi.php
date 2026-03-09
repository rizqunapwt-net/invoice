<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Materi extends Model
{
    protected $table='materi';
    protected $fillable=[
        'file','seminar_id'
    ];
    public function seminar(){
        return $this->belongsTo('App\Seminar');
    }
}
