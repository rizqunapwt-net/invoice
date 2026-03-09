<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Paket extends Model
{
    protected $table='paket';
    protected $fillable=[
        'namapaket','deskripsi','harga','diskon',
        'status','recommended'
    ];
    public function pemesanan(){
        return $this->hasMany(Pemesanan::class);
    }
}
