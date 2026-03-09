<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Logcetak extends Model
{
    protected $table='logcetak';
    protected $fillable=[
        'user_id','yangdicetak','keterangan'
    ];
    public function user(){
        return $this->belongsTo(User::class);
    }
    
}
