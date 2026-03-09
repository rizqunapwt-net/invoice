<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Peserta extends Model
{
    protected $table='peserta';
    protected $fillable=[
        'namapeserta','institusi','seminar_id','sebagai','foto','user_id','keterangan','unik','nim','status','prodi','email','ttl','kesanpesan','email_sent','kirim_sertifikat'
    ];
    public function seminar(){
        return $this->belongsTo('App\Seminar');
    }
    public function user(){
        return $this->belongsTo('App\User', 'user_id','id');
    }
    public function transferan(){
        return $this->hasMany('App\Transferan');
    }
}
