<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Testimoni;

class TestimoniController extends Controller
{
    public function index()
    {
        
        //$testimoni= Seminar::all();   
        $testimoni= Testimoni::all();
         
        return view('admin.testimoni.index', compact('testimoni'));
    }
    public function tambah()
    {
         

        return view('admin.testimoni.tambah');
    }
    public function simpan(Request $request)
    {
        $unik=rand(1,99);
        $testimoni= new Testimoni;
        $testimoni -> nama=$request->nama;
        $testimoni->instansi=$request->institusi;
        $testimoni->testimoni=$request->testimoni;
        $file=$request -> file('gambar');
        $unik=rand(1,99);
        $filename=str_replace(' ', '-', $file->getClientOriginalName()); 
        $request->file('gambar')->move('foto/', $unik.$filename);
        $testimoni->foto='foto/'.$unik.$filename;
     
       //dd($testimoni);
        $testimoni ->save(); 
       return redirect()->back()->with('success', 'testimoni berhasil disimpan!');
    }
    public function edit($id)
    {
        $testimoni=Testimoni::findorfail($id);
         
        return view('admin.testimoni.edit',compact('testimoni')); 
    }
    public function update(Request $request, $id)
    {
        $unik=rand(1,99);
        $testimoni = Testimoni::find($id);
        $testimoni -> nama=$request->nama;
        $testimoni->instansi=$request->instansi;
        $testimoni->testimoni=$request->testimoni;
        $testimoni ->save(); 

        return redirect()->back()->with('success','Data berhasil diupdate!');
    }

    public function hapus($id)
    {
        
        $seminar = Testimoni::findorfail($id);
        $seminar->delete();
        return redirect()->back()->with('success','Data berhasil dihapus!');
       
    }
}
