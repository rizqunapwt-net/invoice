<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Imports\PesertaImport;
use App\Seminar;
use App\Peserta;
use DB;
use App\User;
use Excel;
use App\Exports\PesertaExport;

class PesertaController extends Controller
{
  public function datapeserta($id)
  {
      $cek= Peserta::where('seminar_id',$id)->count();   
      if($cek==0)
      {
          $peserta=Peserta::where('seminar_id',0)->paginate(100);
      }
      else{
          $peserta=Peserta::where('seminar_id',$id)->paginate(100);
      }
      
      
       
      $seminar_id=$id;
      $seminar=Seminar::findorfail($id);
      //$users=User::all();
     // $peserta=Peserta::withCount('seminar')->get();
      return view('admin.seminar.datapeserta', compact('peserta','seminar_id','seminar'));
  }
  
  public function caridatapeserta(Request $request)
    {
        
      // dd($request);
            $q = $request->q;
            $by= $request->by;
            $seminar_id=$request->seminar_id;
            $seminar=Seminar::findorfail($request->seminar_id);
            // dd($seminar);
            if($by == 'namapeserta'){
                // $peserta=->get();
 
                $peserta=Peserta::where('namapeserta','LIKE','%' . $q . '%' )
                ->where('seminar_id',$seminar_id)
                ->paginate (50)->setPath ( '' );
                //  dd($peserta);
                $pagination = $peserta->appends ( array (
                   'q' => $request->q,
                   'by'=>$request->by
                 ) );
            }
            else{
              $peserta=Peserta::where('institusi','LIKE','%' . $q . '%' )
              ->where('seminar_id',$seminar_id)
              ->paginate (50)->setPath ( '' );
              //  dd($bukutamu);
              $pagination = $peserta->appends ( array (
                 'q' => $request->q,
                 'by'=>$request->by
               ) );
              
            if (count ( $peserta) > 0)
            
             return view ( 'admin.seminar.hasilpencarianpeserta',compact('peserta','q','by','seminar') )->withDetails ( $peserta )->withQuery ( $q );
            }
            
             return view ( 'admin.seminar.hasilpencarianpeserta',compact('peserta','q','by','seminar') )->withMessage ( 'No Details found. Try to search again !' );
          

    }
    public function import()
    {
        
      return view('admin.seminar.pesertaimport');
       
    }
    public function export($seminar_id) 

    {

        return Excel::download(new PesertaExport($seminar_id), 'datapeserta.xlsx');

    }
    public function updateemailpeserta($seminar_id) 

    {
      $peserta=Peserta::where('seminar_id',$seminar_id)->get();
      $jum=1;
      foreach($peserta as $p)
      {
        // dd($p['user_id']);
        $us=User::where('id',$p['user_id'])->first();
         $email= json_decode( json_encode($us), true);
        //  dd($email['email']);
        $update=Peserta::find($p['id']);
        // dd($update);
        $update->email = $email['email'];
        // dd($update);
        $update->save();
        $jum++;

      }
 
       
        
        
      return back()->with('success',$jum." email sukses diperbarui");
    }
    public function simpanimport(Request $request)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
    $this->validate($request,
        ['file_users' => 'required|mimes:xls,xlsx'

    ]);
    $path   = $request->file('file_users')->getRealPath();
    $seminar_id = $request->input('seminar_id');
    $import=new PesertaImport($seminar_id);
    Excel::import($import,request()->file('file_users'));
    $jumdata=$import->getRowCount();
    
      return back()->with('success',$jumdata." data sukses diimport");
       
    }
    public function cetakcvpeserta($id)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
        $seminar=Seminar::findorfail($id);
        $peserta=Peserta::with('user')->where('seminar_id',$id)
        ->where('sebagai','peserta')->whereNotNull('kesanpesan')
        ->get();
         
        $pdf = app('dompdf.wrapper');
        $pdf->getDomPDF()->set_option("enable_php", true);
        $pdf->loadView('admin.seminar.cetakcvpeserta',compact('peserta','seminar'));
       
       return $pdf->stream();
       
    }
}
