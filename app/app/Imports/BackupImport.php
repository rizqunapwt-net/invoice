<?php

namespace App\Imports;

use App\Backup;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class BackupImport implements ToModel,WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        // $cek=User::where('username',$row['username'])->count();
        // if($cek==0){
        //     if(isset($row['name']))
        //     {
                return new Backup([
            
                    'name'     => $row['name'],
                    'email'    => $row['email'], 
                    'username' => $row['username'],
                    'level' =>'user',
                    'nim'=>$row['nim'],
                    'prodi'=>$row['prodi'],
                    'institusi'=>strtoupper($row['institusi']),
                    'password' => \Hash::make($row['password']),
                ]);
        //     }
        //     else{
        //         $errore=$row['nim'];
        //         return $errore;
        //     }
            
        // }
        
    }
}
