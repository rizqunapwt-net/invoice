<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Seminar;
use App\Pretes;
use App\Pilihanpretes;
use App\Jawabanpretes;
use DB;
use Auth;
use App\User;
use PDF;
class PretesController extends Controller
{
    public function belum($seminar_id)
    {
        
        $seminar=Seminar::findorfail($seminar_id);
        
        $belum = DB::table('peserta')
        ->where('seminar_id',$seminar_id)->whereNotIn('user_id', 
        DB::table('jawaban_pretes')->select('user_id')
            ->where('seminar_id',  $seminar_id)
       )->get();
      
        return view('admin.seminar.belumpretes', compact('seminar','belum'));
       
    }
    public function cetak($id)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
        $seminar=Seminar::findorfail($id);
        $pretes=DB::table('pretes')->where('seminar_id',$id)->get();
        $pilihanpretes=DB::table('pilihanpretes')->where('seminar_id',$id)->get();
        $total=Jawabanpretes::where('seminar_id',$id) ->get()->groupBy('user_id');
        //dd($total);
        $pdf = app('dompdf.wrapper');
        $pdf->getDomPDF()->set_option("enable_php", true);
        $pdf->loadView('admin.seminar.cetakpretes',compact('pretes','seminar','total','pilihanpretes'));
       
       return $pdf->stream();
       //return $pdf->download('Pretest.pdf');
      //   return view('admin.seminar.cetakpretes',compact('pretes','seminar','total','pilihanpretes'));
    }

    public function stat($id)
    {
        
        $seminar=Seminar::findorfail($id);
        $pretes=DB::table('pretes')->where('seminar_id',$id)->get();
        $pilihanpretes=DB::table('pilihanpretes')->where('seminar_id',$id)->get();
        $total=Jawabanpretes::where('seminar_id',$id)->get()->groupBy('user_id')->count();
        return view('admin.seminar.statpretes', compact('seminar','pretes','pilihanpretes','total'));
       
    } 
    public function kerjakan($id)
    {
        
        $seminar=Seminar::findorfail($id);
        $pretes=DB::table('pretes')->where('seminar_id',$id)->get();
        $pilihanpretes=DB::table('pilihanpretes')->where('seminar_id',$id)->get();
        return view('admin.seminar.kerjakanpretes', compact('seminar','pretes','pilihanpretes'));
       
    }
    public function validasi($seminar_id,$user_id)
    {
        
        $seminar=Seminar::findorfail($seminar_id);
        $pretes=DB::table('pretes')->where('seminar_id',$seminar_id)->get();
        $duser=User::findorfail($user_id);
        $pilihanpretes=DB::table('pilihanpretes')->where('seminar_id',$seminar_id)->get();
        return view('admin.seminar.validasipretes', compact('seminar','pretes','duser','pilihanpretes'));
       
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
            //  dd($pilihane);
            // dd($request['pretes_id'.$i]);
            if (!empty($pilihane))
            {
                //dd($request->pilihan.$i);
                $pretes=new Jawabanpretes;
                $pretes->pretes_id = $request['pretes_id'.$i];
                $pretes->pilihanpretes_id = $pilihane;
                $pretes->user_id=Auth::user()->id;
                $pretes->seminar_id=$request->seminar_id;
                $pretes->unik=$unik;
                 
                $cek=Jawabanpretes::where('seminar_id',$request->seminar_id)
                ->where('pretes_id',$request['pretes_id'.$i])
                 
                ->where('user_id',Auth::user()->id)
                ->count();
               
               
                if ($cek == 0)
                {
                     $pretes->save();
                }
                else
                {
                     
                    $dj= Jawabanpretes::where('pretes_id',$request['pretes_id'.$i])
                    ->where('user_id',Auth::user()->id)
                    ->get();
                    $dt= json_decode( json_encode($dj), true);
                //    dd($pilihane);
                    $update= Jawabanpretes::find($dt[0]['id']);
                    $update->pilihanpretes_id=$pilihane;
                    $update->save();

                }

        
            }
        }

        return redirect()->back()->with('success','Data berhasil disimpan');

       
    }


    public function hapuspilihan($id)
    {
        
        $pilihan = Pilihanpretes::findorfail($id);
        $pilihan->delete();
        return redirect()->back()->with('success','Data berhasil dihapus!');
       
    }
    public function hapuspretes($id)
    {
        
        $pilihan = Pretes::findorfail($id);
        $pilihan->delete();
        return redirect()->back()->with('success','Data berhasil dihapus!');
       
    }
    public function updatepilihan(Request $request)
    {
        
        $pilihan = Pilihanpretes::findorfail($request->id);
        $pilihan->pilihan=$request->pilihan;
        
        $pilihan->save();
        return redirect()->back()->with('success','Data berhasil diupdate!');
       
    }
    public function updatesoal(Request $request)
    {
        
        $pretes = Pretes::findorfail($request->id);
        $pretes->soal=$request->soal;
        
        $pretes->save();
        return redirect()->back()->with('success','Data berhasil diupdate!');
       
    }
    public function pretes($id)
    {   
         
         
        $seminar=Seminar::findorfail($id);
        $pretes=DB::table('pretes')->where('seminar_id',$id)->get();
        $pilihanpretes=DB::table('pilihanpretes')->where('seminar_id',$id)->get();
        return view('admin.seminar.pretes', compact('seminar','pretes','pilihanpretes'));
    }

    public function simpan(Request $request)
    {
        $pretes= new Pretes;
        $pretes->seminar_id=$request->seminar_id;
        $pretes->soal =$request->soal;
     $pretes->save();
     return redirect()->back()->with('success','Data Soal Pretest berhasil disimpan!');
    }
    public function simpanpilihan(Request $request)
    {
        $pretes= new Pilihanpretes;
        $unik=uniqid().rand(0,999);
        $pretes->seminar_id=$request->seminar_id;
        $pretes->pretes_id =$request->pretes_id;
        $pretes->unik=$unik;
        $pretes->pilihan=$request->pilihan;
        // dd($pretes);
     $pretes->save();
     return redirect()->back()->with('success','Data Soal Pretest berhasil disimpan!');
    }

     
}
