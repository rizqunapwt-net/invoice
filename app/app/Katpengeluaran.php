<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Katpengeluaran extends Model
{
    protected $table='katpengeluaran';
    protected $fillable=[
        'namakategori'
    ];
    public function pengeluaran(){
        return $this->hasMany('App\Pengeluaran');
    }
}
