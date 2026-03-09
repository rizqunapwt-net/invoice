<?php

namespace App\Imports;

use App\User;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class UsersImport implements ToModel,WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    private $rows =0;
    public function model(array $row)
    {
        ///check
        $cek=User::where('username',$row['username'])->count();
        
       
        if($cek==0){
            if(isset($row['name']))
            {
                ++$this->rows;
                return new User([
            
                    'name'     => $row['name'],
                    'ttl' =>$row['ttl'],
                    'email'    => strtolower($row['email']), 
                    'username' => $row['username'],
                    'level' =>'user',
                    'nim'=>$row['nim'],
                    'prodi'=>$row['prodi'],
                    'semester'=>$row['semester'],
                    'fakultas'=>$row['fakultas'],
                    'phone'=>$row['phone'],
                    'alamat'=>$row['alamat'],
                    'institusi'=>strtoupper($row['institusi']),
                    'password' => \Hash::make($row['password']),
                ]);
            }
            
            
        }
        else{
            ++$this->rows;
            $duser=User::where('username',$row['username'])->get();
            $dus= json_decode( json_encode($duser), true);
          $user=User::find($dus[0]['id']);
          $user->nim=$row['nim'];
          $user->institusi=$row['institusi'];
          $user->prodi = $row['prodi'];
          $user->ttl=$row['ttl'];
          $user->semester=$row['semester'];
          $user->fakultas=$row['fakultas'];
          $user->phone=$row['phone'];
          $user->alamat=$row['alamat'];
          $user->password=\Hash::make($row['password']);
          $user->email=$row['email'];
          $user->save();
             
        }
        
        
    }
    public function getRowCount(): int
    {
        return $this->rows;
    }
}
