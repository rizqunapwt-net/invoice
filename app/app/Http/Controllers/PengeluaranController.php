<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pengeluaran;
use App\Katpengeluaran;

class PengeluaranController extends Controller
{
    public function index()
    {
        $pengeluaran= Pengeluaran::all();
        $katpengeluaran=Katpengeluaran::all();
        
        
        return view('admin.pengeluaran.index', compact('pengeluaran','katpengeluaran'));
    }
    // public function cariuser(Request $request)
    // {
        
    //         $q = $request->q;
    //         if($q != ""){
    //         $user = Katpengeluaran::where ( 'name', 'LIKE', '%' . $q . '%' )
    //         ->orWhere ( 'username', 'LIKE', '%' . $q . '%' )
    //         ->orWhere ( 'email', 'LIKE', '%' . $q . '%' )->paginate (50)->setPath ( '' );
    //         $pagination = $user->appends ( array (
    //            'q' => $request->q
    //          ) );

    //         if (count ( $user ) > 0)
    //          return view ( 'admin.pengeluaran.hasilsearch',compact('user','q') )->withDetails ( $user )->withQuery ( $q );
    //         }
    //          return view ( 'admin.pengeluaran.hasilsearch',compact('user','q') )->withMessage ( 'No Details found. Try to search again !' );
          

    // }
    
    public function simpan(Request $request)
    {
        $pengeluaran= new Pengeluaran;
        $pengeluaran -> keterangan=$request->keterangan;
        $pengeluaran -> katpengeluaran_id=$request->katpengeluaran_id;
        $pengeluaran -> nominal =$request->nominal;
        
       
        $pengeluaran ->save(); 
       return redirect()->back()->with('success', 'users berhasil disimpan!');
    }
    public function edit($id)
    {
        $pengeluaran=Pengeluaran::findorfail($id);
         
        return view('admin.pengeluaran.edit',compact('users')); 
    }
    public function detailuser($id)
    {
        $user=Pengeluaran::findorfail($id);
        $peserta=Peserta::where('user_id',$id)->paginate(10);
//  dd($peserta);
        return view('admin.pengeluaran.detailuser',compact('user','peserta')); 
    }
    // public function updateunik()
    // {
         
    //     $pengeluaran = Peserta::all();
    //     foreach($pengeluaran as $user)
    //     {
    //         $unik=base64_encode($user->id.uniqid());
    //         $us=Peserta::find($user->id);
    //         $us->unik=$unik;
    //         $us->save();
            
    //     }
         
     
    

    //     return  "berhasil";
    // }

    public function update(Request $request)
    {
         
        $pengeluaran = Pengeluaran::find($request->id);
 
        $pengeluaran -> keterangan=$request->keterangan;
        $pengeluaran -> katpengeluaran_id=$request->katpengeluaran_id;
        $pengeluaran -> nominal =$request->nominal;
        
       
        $pengeluaran ->save(); 
        

        return redirect()->back()->with('success','Data berhasil diupdate!');
    }
    public function hapus($id)
    {
        
        
        $pengeluaran = Pengeluaran::findorfail($id);
        $pengeluaran->delete();
        return redirect()->back()->with('success','Data berhasil dihapus!');
        
    }
}
