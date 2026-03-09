<?php

namespace App\Imports;

use App\Peserta;
use App\User;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class PesertaImport implements ToModel,WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    private $rows =0;
    private $seminar_id;

    public function __construct($seminar_id)
    {
        $this->seminar_id = $seminar_id;
    }

    public function model(array $row)
    {

        $seminar_id = $this->seminar_id;
        $user=User::where('username',$row['username'])->get();
        $dus= json_decode( json_encode($user), true);
       // dd($dus[0]['id']);
        $user_id=$dus[0]['id'];
        $namapeserta=$dus[0]['name'];
        $institusi=$dus[0]['institusi'];
        $sebagai='peserta';
        $unik=uniqid().rand(0,92423233);
        $nim=$dus[0]['nim'];
        $prodi=$dus[0]['prodi'];
        $ttl=$dus[0]['ttl'];
        $status='ok';
        $email=$dus[0]['email'];
        //dd($email);
        //cek data peserta
        $cek=Peserta::where('seminar_id',$seminar_id)->where('user_id',$user_id)->count();
        if($cek==0){
            ++$this->rows;
            return new Peserta([
                'seminar_id'=> $seminar_id,
                'user_id'=>$user_id,
                'namapeserta'=>$namapeserta,
                'institusi'=>$institusi,
                'sebagai'=>$sebagai,
                'unik'=>$unik,
                'status'=>$status,   
                'nim'=>$nim,
                'prodi'=>$prodi,
                'ttl'=>$ttl,
                'email'=>$email
                
            ]);
        }
        
    }
    public function getRowCount(): int
    {
        return $this->rows;
    }
}
