<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transferan extends Model
{
    protected $table='transfer';
    protected $fillable=[
        'file','seminar_id','peserta_id','nama_bank','pemilik_rekening','nominal_trf','kodeinvoice'
    ];
    public function peserta(){
        return $this->belongsTo('App\Peserta');
    }
    public function pemesanan(){
        return $this->belongsTo('App\Pemesanan','kodeinvoice');
    }
    
    
}
