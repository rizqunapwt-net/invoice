<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pengeluaran extends Model
{
    protected $table='pengeluaran';
    protected $fillable=[
        'nominal','keterangan','katpengeluaran_id'
    ];
    public function katpengeluaran(){
        return $this->belongsTo('App\Katpengeluaran');
    }
}
