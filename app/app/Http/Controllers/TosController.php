<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tos;
use DB;
class TosController extends Controller
{
    public function index()
    {
        
        //$tos= Tos::all();   
        $tos= Tos::all();
         
        return view('admin.tos.index', compact('tos'));
    }
    public function view()
    {
        
        //$tos= Tos::all();   
        $tos= Tos::all()->take(1);
         
        return view('tos', compact('tos'));
    }
    public function tambah()
    {
         

        return view('admin.tos.tambah');
    }
    public function edit($id)
    {
        $tos=Tos::findorfail($id);
         
        return view('admin.tos.edit',compact('tos')); 
    }
    public function simpan(Request $request)
    {
        $unik=rand(1,99);
        $tos= new Tos;
        $tos ->  tos=$request->tos;
        
         
       //dd($tos);
        $tos ->save(); 
       return redirect()->back()->with('success', 'tos berhasil disimpan!');
    }
    public function update(Request $request, $id)
    {
        $unik=rand(1,99);
        $tos = Tos::find($id);
        
        $tos -> tos=$request->tos;
       
       
        $tos ->save(); 

        return redirect()->back()->with('success','Data berhasil diupdate!');
    }
}
