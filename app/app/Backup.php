<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Backup extends Model
{
    protected $table='backup';
    protected $fillable = [
        'name', 'email','level','foto','username','phone','institusi','status','unik','tgchat_id','nim','prodi'
    ];
}
