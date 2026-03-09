<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pengeluaran;
use App\Katpengeluaran;
use App\Pemesanan;
use DB;
use PDF;
class KeuanganController extends Controller
{
    public function index()
    {
        return view('admin.keuangan.index');
    }
    public function hasilrekap(Request $request)
    {
        $pemasukan=Pemesanan::whereBetween('created_at',[$request->start,$request->end])->where('statusbayar','lunas')->get();
        $pengeluaran=Pengeluaran::whereBetween('created_at',[$request->start,$request->end])->get();
        $start=$request->start;
        $end=$request->end;
        $totalharga=DB::table('pemesanan')
        ->whereBetween('created_at',[$request->start,$request->end])->where('statusbayar','lunas')->sum('harga');
        $totaldiskon=DB::table('pemesanan')
        ->whereBetween('created_at',[$request->start,$request->end])->where('statusbayar','lunas')->sum('diskon');
        $totalpemasukan=$totalharga-$totaldiskon;
        $totalpengeluaran=DB::table('pengeluaran')
        ->whereBetween('created_at',[$request->start,$request->end])->sum('nominal');
        return view('admin.keuangan.hasil',compact('pemasukan','pengeluaran','start','end','totalpengeluaran','totalpemasukan'));
    }
    public function cetakrekap(Request $request)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
        $pemasukan=Pemesanan::whereBetween('created_at',[$request->start,$request->end])->where('statusbayar','lunas')->get();
        $pengeluaran=Pengeluaran::whereBetween('created_at',[$request->start,$request->end])->get();
        $start=$request->start;
        $end=$request->end;
        $totalharga=DB::table('pemesanan')
        ->whereBetween('created_at',[$request->start,$request->end])->where('statusbayar','lunas')->sum('harga');
        $totaldiskon=DB::table('pemesanan')
        ->whereBetween('created_at',[$request->start,$request->end])->where('statusbayar','lunas')->sum('diskon');
        $totalpemasukan=$totalharga-$totaldiskon;
        $totalpengeluaran=DB::table('pengeluaran')
        ->whereBetween('created_at',[$request->start,$request->end])->sum('nominal');
    
      $pdf = app('dompdf.wrapper');
      $pdf->getDomPDF()->set_option("enable_php", true);
  $pdf->loadView('admin.keuangan.cetakrekap', compact('pemasukan','pengeluaran','start','end','totalpengeluaran','totalpemasukan'));
     
     return $pdf->stream();
    }

}
