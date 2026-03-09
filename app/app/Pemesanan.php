<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pemesanan extends Model
{
    protected $table='pemesanan';
    protected $fillable=[
        'nama','user_id','namaseminar','statuspendaftaran','berbayar','htm','slug','harga',
        'diskon','statusbayar','tanggal','paket_id','nama_produk','jumlah','satuan','kodeinvoice'
    ];
    public function paket(){
        return $this->belongsTo(Paket::class);
     }
     public function transferan(){
         return $this->hasMany(Transferan::class,'kodeinvoice');
     }
     public function user(){
        return $this->belongsTo(User::class);
     }
}
