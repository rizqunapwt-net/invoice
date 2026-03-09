<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;
use DB;
use App\Paket;
class PaketController extends Controller
{
    public function index()
    {
        
        //$paket= Paket::all();   
        $paket= Paket::all();
         
        return view('admin.paket.index', compact('paket'));
    }
    public function tambah()
    {
         

        return view('admin.paket.tambah');
    }
    public function edit($id)
    {
        $paket=Paket::findorfail($id);
         
        return view('admin.paket.edit',compact('paket')); 
    }
    public function simpan(Request $request)
    {
        $request->validate([
            'namapaket' => 'required|string|max:255',
            'harga' => 'required|numeric|min:0',
            'diskon' => 'nullable|numeric|min:0',
            'status' => 'required|in:aktif,nonaktif',
        ]);

        $paket= new Paket;
        $paket->recommended=$request->recommended;
        $paket->namapaket=$request->namapaket;
        $paket->status=$request->status;
        $paket->harga=$request->harga;
        $paket->diskon=$request->diskon;
        $paket->deskripsi= $request->deskripsi;
        $paket->save();
       return redirect()->back()->with('success', 'paket berhasil disimpan!');
    }
    public function update(Request $request, $id)
    {
        $request->validate([
            'namapaket' => 'required|string|max:255',
            'harga' => 'required|numeric|min:0',
            'diskon' => 'nullable|numeric|min:0',
            'status' => 'required|in:aktif,nonaktif',
        ]);

        $paket = Paket::findorfail($id);

        $paket->namapaket=$request->namapaket;
        $paket->status=$request->status;
        $paket->harga=$request->harga;
        $paket->diskon=$request->diskon;
        $paket->deskripsi= $request->deskripsi;
        $paket->recommended=$request->recommended;

        $paket->save();

        return redirect()->back()->with('success','Data berhasil diupdate!');
    }

    public function detail($id)
    {
        $paket = Paket::findorfail($id);
        return view('admin.paket.detail', compact('paket'));
    }

    public function hapus($id)
    {
        $paket = Paket::findorfail($id);
        $paket->delete();
        return redirect()->route('paket')->with('success','Paket berhasil dihapus!');
    }
}
