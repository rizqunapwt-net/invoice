<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Katpengeluaran;

class KatpengeluaranController extends Controller
{
    
    public function index()
    {
        $katpengeluaran= Katpengeluaran::all();
        
        
        return view('admin.katpengeluaran.index', compact('katpengeluaran'));
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
    //          return view ( 'admin.katpengeluaran.hasilsearch',compact('user','q') )->withDetails ( $user )->withQuery ( $q );
    //         }
    //          return view ( 'admin.katpengeluaran.hasilsearch',compact('user','q') )->withMessage ( 'No Details found. Try to search again !' );
          

    // }
    
    public function simpan(Request $request)
    {
        $katpengeluaran= new Katpengeluaran;
        $katpengeluaran -> namakategori=$request->namakategori;
        
       
        $katpengeluaran ->save(); 
       return redirect()->back()->with('success', 'users berhasil disimpan!');
    }
    public function edit($id)
    {
        $katpengeluaran=Katpengeluaran::findorfail($id);
         
        return view('admin.katpengeluaran.edit',compact('users')); 
    }
    public function detailuser($id)
    {
        $user=Katpengeluaran::findorfail($id);
        $peserta=Peserta::where('user_id',$id)->paginate(10);
//  dd($peserta);
        return view('admin.katpengeluaran.detailuser',compact('user','peserta')); 
    }
    // public function updateunik()
    // {
         
    //     $katpengeluaran = Peserta::all();
    //     foreach($katpengeluaran as $user)
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
         
        $katpengeluaran = Katpengeluaran::find($request->id);
 
        $katpengeluaran -> namakategori=$request->namakategori;
        
       
        $katpengeluaran ->save(); 
        

        return redirect()->back()->with('success','Data berhasil diupdate!');
    }
    public function hapus($id)
    {
        
        
        $katpengeluaran = Katpengeluaran::findorfail($id);
        $katpengeluaran->delete();
        return redirect()->back()->with('success','Data berhasil dihapus!');
        
    }
}
