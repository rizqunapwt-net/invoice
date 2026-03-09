<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Seminar extends Model
{
    protected $table='seminar';
    protected $fillable=[
        'namaseminar','jumlahpeserta','slug','tanggal',
        'keterangan','statuspendaftaran','berbayar','htm','pretes','postes','umum','english'
    ];
    public function peserta(){
       return $this->hasMany(Peserta::class);
    }
    public function pretes(){
        return $this->hasMany(Pretes::class);
    }
    public function postes(){
        return $this->hasMany(Postes::class);
    }
    public function materi(){
        return $this->hasMany(Materi::class);
    }
    
}
