<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Seminar;
use App\Postes;
use App\Pretes;
use App\Pilihanpretes;
use App\Pilihanpostes;
use App\Jawabanpostes;
use DB;
use App\User;
use Auth;

class PostesController extends Controller
{
    public function belum($seminar_id)
    {
        
        $seminar=Seminar::findorfail($seminar_id);
        
        $belum = DB::table('peserta')
        ->where('seminar_id',$seminar_id)->whereNotIn('user_id', 
        DB::table('jawaban_postes')->select('user_id')
            ->where('seminar_id',  $seminar_id)
       )->get();
      
        return view('admin.seminar.belumpostes', compact('seminar','belum'));
       
    }
    public function copypretes($id)
    {
        $pretes=Pretes::where('seminar_id',$id)->get();
        foreach($pretes as $soal){
            $copy=new Postes;
            $copy->seminar_id=$id;
            $copy->soal=$soal->soal;
            $copy->save();
            $idterakhir=$copy->id;
            // dd($idterakhir);
            $pilihan=Pilihanpretes::where('seminar_id',$id)
            ->where('pretes_id',$soal->id)->get();
            // dd($pilihan);
            foreach($pilihan as $pil){
                $s=new Pilihanpostes;
                $s->postes_id=$idterakhir;
                $s->seminar_id=$id;
                $s->pilihan=$pil->pilihan;
                $s->unik=md5(rand(1,20000));
                $s->save();
            }
        }
        return redirect()->back()->with('success', 'Pretes berhasil dicopy!');
    }
    public function cetak($id)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
        $seminar=Seminar::findorfail($id);
        $postes=DB::table('postes')->where('seminar_id',$id)->get();
        $pilihanpostes=DB::table('pilihanpostes')->where('seminar_id',$id)->get();
        $total=Jawabanpostes::where('seminar_id',$id) ->get()->groupBy('user_id');
        //dd($total);
        $pdf = app('dompdf.wrapper');
        $pdf->getDomPDF()->set_option("enable_php", true);
        $pdf->loadView('admin.seminar.cetakpostes',compact('postes','seminar','total','pilihanpostes'));
       
       //return $pdf->stream();
       return $pdf->stream();
      //   return view('admin.seminar.cetakpostes',compact('postes','seminar','total','pilihanpostes'));
    }
    public function stat($id)
    {
        
        $seminar=Seminar::findorfail($id);
        $postes=DB::table('postes')->where('seminar_id',$id)->get();
        $pilihanpostes=DB::table('pilihanpostes')->where('seminar_id',$id)->get();
        $total=Jawabanpostes::where('seminar_id',$id)->get()->groupBy('user_id')->count();
        return view('admin.seminar.statpostes', compact('seminar','postes','pilihanpostes','total'));
       
    } 

    public function kerjakan($id)
    {
        
        $seminar=Seminar::findorfail($id);
        $postes=DB::table('postes')->where('seminar_id',$id)->get();
        $pilihanpostes=DB::table('pilihanpostes')->where('seminar_id',$id)->get();
        return view('admin.seminar.kerjakanpostes', compact('seminar','postes','pilihanpostes'));
       
    }
    public function validasi($seminar_id,$user_id)
    {
        
        $seminar=Seminar::findorfail($seminar_id);
        $postes=DB::table('postes')->where('seminar_id',$seminar_id)->get();
        $duser=User::findorfail($user_id);
        $pilihanpostes=DB::table('pilihanpostes')->where('seminar_id',$seminar_id)->get();
        return view('admin.seminar.validasipostes', compact('seminar','postes','duser','pilihanpostes'));
       
    }
    public function simpanjawaban(Request $request)
    {
        $n=$request->n;
      //dd($request->n);
    //   dd($request->pilihan);
        $unik=uniqid().rand(0,999);
        for ($i = 0;$i <= $n - 1;$i++)
        {
            //$d=$request->data;
            $pilihane=($request['pilihan'.$i]);
            // dd($pilihane);
            // dd($request['postes_id'.$i]);
            if (!empty($pilihane))
            {
                //dd($request->pilihan.$i);
                $postes=new Jawabanpostes;
                $postes->postes_id = $request['postes_id'.$i];
                $postes->pilihanpostes_id = $pilihane;
                $postes->user_id=Auth::user()->id;
                $postes->seminar_id=$request->seminar_id;
                $postes->unik=$unik;
                 
                $cek=Jawabanpostes::where('seminar_id',$request->seminar_id)
                ->where('postes_id',$request['postes_id'.$i])
                 
                ->where('user_id',Auth::user()->id)
                ->count();
               
               
                if ($cek == 0)
                {
                     $postes->save();
                }
                else
                {
                     
                    $dj= Jawabanpostes::where('postes_id',$request['postes_id'.$i])->get();
                    $dt= json_decode( json_encode($dj), true);
                  //  dd($dt);
                    $update= Jawabanpostes::find($dt[0]['id']);
                    $update->pilihanpostes_id=$pilihane;
                    $update->save();

                }

        
            }
        }

        return redirect()->back()->with('success','Data berhasil disimpan');

       
    }


    public function hapuspilihan($id)
    {
        
        $pilihan = Pilihanpostes::findorfail($id);
        $pilihan->delete();
        return redirect()->back()->with('success','Data berhasil dihapus!');
       
    }
    public function hapuspostes($id)
    {
        
        $pilihan = Postes::findorfail($id);
        $pilihan->delete();
        return redirect()->back()->with('success','Data berhasil dihapus!');
       
    }
    public function updatepilihan(Request $request)
    {
        
        $pilihan = Pilihanpostes::findorfail($request->id);
        $pilihan->pilihan=$request->pilihan;
        
        $pilihan->save();
        return redirect()->back()->with('success','Data berhasil diupdate!');
       
    }
    public function updatesoal(Request $request)
    {
        
        $postes = Postes::findorfail($request->id);
        $postes->soal=$request->soal;
        
        $postes->save();
        return redirect()->back()->with('success','Data berhasil diupdate!');
       
    }
    public function postes($id)
    {   
         
         
        $seminar=Seminar::findorfail($id);
        $postes=DB::table('postes')->where('seminar_id',$id)->get();
        $pilihanpostes=DB::table('pilihanpostes')->where('seminar_id',$id)->get();
        return view('admin.seminar.postes', compact('seminar','postes','pilihanpostes'));
    }

    public function simpan(Request $request)
    {
        $postes= new Postes;
        $postes->seminar_id=$request->seminar_id;
        $postes->soal =$request->soal;
     $postes->save();
     return redirect()->back()->with('success','Data Soal Postest berhasil disimpan!');
    }
    public function simpanpilihan(Request $request)
    {
        $postes= new Pilihanpostes;
        $unik=uniqid().rand(0,999);
        $postes->seminar_id=$request->seminar_id;
        $postes->postes_id =$request->postes_id;
        $postes->unik=$unik;
        $postes->pilihan=$request->pilihan;
        // dd($postes);
     $postes->save();
     return redirect()->back()->with('success','Data Soal Postest berhasil disimpan!');
    }

}
