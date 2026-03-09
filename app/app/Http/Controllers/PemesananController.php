<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Paket;
use App\Pemesanan;
use Auth;
use Mail;
use App\User;
use App\Transferan;
use QrCode;
use PDF;
use Codedge\Fpdf\Fpdf\Fpdf;
class PemesananController extends Controller
{
    // public function kirimtelegram($telegram_id, $message_text) {
    //     $secret_token = "1267730304:AAH_RyU1fxC6KrQJkwBOrkT2QjxVmdJ5os0";
    //     $url = "https://api.telegram.org/bot" . $secret_token . "/sendMessage?parse_mode=html&chat_id=" . $telegram_id;
    //     $url = $url . "&text=" . urlencode($message_text);
    //     //echo $url;
    //     //die();
    //     $ch = curl_init();
    //     $optArray = array(
    //             CURLOPT_URL => $url,
    //             CURLOPT_RETURNTRANSFER => true
    //     );
    //     curl_setopt_array($ch, $optArray);
    //     $result = curl_exec($ch);
    //     curl_close($ch);
    // }
    public function lunas(Request $request)
    {
          
        $pemesanan=Pemesanan::where('kodeinvoice',$request->kodeinvoice)->get();
        //dd($pemesanan);
        foreach($pemesanan as $p){
            $p->statusbayar=$request->statusbayar;
            $p->updated_at = time();
            $p->save();
        }
      
        // $dt= json_decode(json_encode($pemesanan), true);
        // //dd($dt);
        // $user=DB::table('users')->where('id',$dt['user_id'])->first();
        // $duser=json_decode(json_encode($user), true);
        // //dd($duser);
        // $total=$dt['harga']-$dt['diskon'];
        // $p=Paket::find($dt['paket_id']);
        // $paket= json_decode(json_encode($p), true);
        //dd($paket);
        // Mail::send('invoice',array(
        //     'firstname'=>$dt['nama'],
        //     'total'=>$total,
        //     'namapemesan'=>$dt['nama'],
        //     'harga'=>$dt['harga'],
        //     'status'=>'LUNAS',
        //     'diskon'=>$dt['diskon'],
        //     'namapaket'=>$paket['namapaket'],
        //     'unik'=>$request->kodeinvoice),
        //     function($pesan) use($duser){
        //     $pesan->to($duser['email'],'Kwitansi MesemVirtual')->subject('Kwitansi MesemVirtual ' );
        //     $pesan->replyTo(env('MAIL_REPLY_TO', 'noreply@rizquna.id'),"Admin Rizquna");
        //     $pesan->from('koko2@iainpurwokerto.ac.id','Kwitansi MesemVirtual' );
        // });
       
        return redirect()->back()->with('success','Data peserta berhasil diupdate!');
    }
    public function hapus($id)
    {
        $h=Pemesanan::find($id);
        $h->delete();
        return redirect()->back()->with('success','Data berhasil dihapus!');
    }
    public function cektransferan($kodeinvoice)
    {
        
        $transferan= Transferan::where('kodeinvoice',$kodeinvoice)->get();   
        
        return view('admin.seminar.cektransferanorder', compact('transferan'));
    }
    public function order($idpaket)
    {
         
         $data=Paket::findorfail($idpaket);
        // $ds=json_decode(json_encode($seminar), true);
        //dd($paket);
        return view('pemesanan', compact('data'));
    }
    public function tagihanku()
    {
         
         $data=Pemesanan::where('user_id',Auth::user()->id)->get();
        //dd($data);
        return view('admin.seminar.tagihanku', compact('data'));
    }
    public function tambahorder(Request $request)
    {
        $request->validate([
            'nama' => 'required|string|max:255',
            'nama_produk' => 'required|string|max:255',
            'jumlah' => 'required|numeric|min:1',
            'satuan' => 'required|string|max:50',
            'harga' => 'required|numeric|min:0',
            'diskon' => 'nullable|numeric|min:0',
            'tanggal' => 'required|date',
        ]);

        $maxid=DB::table('pemesanan')->max('id')+1;
        $randomString = \Illuminate\Support\Str::random(6);
        $unik=$maxid."-".$randomString."-".date('m')."-".date('Y');

        $simpan=new Pemesanan;
        $simpan->nama=$request->nama;
        $simpan->nama_produk=$request->nama_produk;
        $simpan->jumlah=$request->jumlah;
        $simpan->satuan=$request->satuan;
        $simpan->harga=$request->harga;
        $simpan->diskon=$request->diskon;
        $simpan->tanggal=$request->tanggal;
        $simpan->kodeinvoice=empty($request->kodeinvoice) ? $unik : $request->kodeinvoice;
        $simpan->save();
        return redirect()->back()->with('success','Berhasil tambah data order');
    }
    public function editorder(Request $request)
    {
        $request->validate([
            'id' => 'required|exists:pemesanan,id',
            'nama' => 'required|string|max:255',
            'nama_produk' => 'required|string|max:255',
            'jumlah' => 'required|numeric|min:1',
            'satuan' => 'required|string|max:50',
            'harga' => 'required|numeric|min:0',
            'diskon' => 'nullable|numeric|min:0',
            'tanggal' => 'required|date',
        ]);

        $simpan=Pemesanan::findorfail($request->id);
        $simpan->nama=$request->nama;
        $simpan->nama_produk=$request->nama_produk;
        $simpan->jumlah=$request->jumlah;
        $simpan->satuan=$request->satuan;
        $simpan->harga=$request->harga;
        $simpan->diskon=$request->diskon;
        $simpan->tanggal=$request->tanggal;
        $simpan->save();
        return redirect()->back()->with('success','Berhasil edit data order');
    }
    public function dataorder()
    {
         
         $data=Pemesanan::orderBy('created_at','desc')->paginate(50);
        //dd($data);
        return view('admin.seminar.dataorder', compact('data'));
    }
    public function cariorder(Request $request)
    {
        $title="Pencarian Order";
            $q = $request->q;
            $by= $request->by;
            if($q != ""){
                if($by=='nama'){
                    $order = Pemesanan::where ( 'nama', 'LIKE', '%' . $q . '%' )
                    ->paginate (50)->setPath ( '' );
                }
                elseif($by=='kodeinvoice'){
                    $order = Pemesanan::where ( 'kodeinvoice', 'LIKE', '%' . $q . '%' )
                    ->paginate (50)->setPath ( '' );
                }
                elseif($by=='tanggal'){
                    $order = Pemesanan::where ( 'tanggal', 'LIKE', '%' . $q . '%' )
                    ->paginate (50)->setPath ( '' );
                }
                elseif($by=='statusbayar'){
                    $order = Pemesanan::where ( 'statusbayar', 'LIKE', '%' . $q . '%' )
                    ->paginate (50)->setPath ( '' );
                }
                elseif($by=='nama_produk'){
                    $order = Pemesanan::where ( 'nama_produk', 'LIKE', '%' . $q . '%' )
                    ->paginate (50)->setPath ( '' );
                }
                else{
                    $order = Pemesanan::paginate (50)->setPath ( '' );
                }
           
            $pagination = $order->appends ( array (
               'q' => $request->q,
               'by'=>$request->by
             ) );

            if (count ( $order ) > 0)
             return view ( 'admin.seminar.hasilsearch',compact('order','q','by','title') )->withDetails ( $order )->withQuery ( $q );
            }
             return view ( 'admin.seminar.hasilsearch',compact('order','q','by','title') )->withMessage ( 'Data tidak ditemukan!' );
          

    }
    public function simpan(Request $request)
    {
        $request->validate([
            'namaseminar' => 'required|string|max:255',
            'harga' => 'required|numeric|min:0',
            'diskon' => 'nullable|numeric|min:0',
            'paket_id' => 'required|exists:paket,id',
        ]);

            $dp=User::where('id',Auth::user()->id)->get();
            $dt= json_decode( json_encode($dp), true);
           $unik=\Illuminate\Support\Str::random(10);
           //dd($unik);
            $pemesanan=new Pemesanan;
            $pemesanan->user_id= $dt[0]['id'];
            $pemesanan->nama=$dt[0]['name'];
            $pemesanan->namaseminar=$request->namaseminar;
            $tanggale=$request->tanggal." ".$request->jam;
            $pemesanan->tanggal=$tanggale;
            $pemesanan->harga=$request->harga;
            $pemesanan->diskon=$request->diskon;
            $pemesanan->kodeinvoice=$unik;
            $pemesanan->paket_id=$request->paket_id;

            $total=$request->harga - $request->diskon;
            
            //dd($request->email);
            $pemesanan->save();

            ///kirim email
        Mail::send('invoice',array(
            'firstname'=>$dt[0]['name'],
            'total'=>$total,
            'namapemesan'=>$pemesanan->nama,
            'harga'=>$pemesanan->harga,
            'status'=>'unpaid',
            'diskon'=>$pemesanan->diskon,
            'namapaket'=>$request->namapaket,
            'unik'=>$unik),
            function($pesan) use($request){
            $pesan->to($request->email,'Invoice MesemVirtual')->subject('Invoice MesemVirtual ' );
            $pesan->replyTo(env('MAIL_REPLY_TO', 'noreply@rizquna.id'),"Admin Rizquna");
            $pesan->from(env('MAIL_FROM_ADDRESS', 'noreply@rizquna.id'), env('MAIL_FROM_NAME', 'Penerbit Rizquna'));
        });
            return redirect()->back()->with('success','Berhasil...silakan cek INBOX/SPAM email Anda  untuk melihat detail invoice/tagihan!');
    }
       

    public function cetakinvoiceDOMPDF($unik)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
        $pemesanan=Pemesanan::where('kodeinvoice',$unik)->first();
        $dp=Pemesanan::where('kodeinvoice',$unik)->get();
        $t=0;
        foreach($dp as $data){
            $t+=(($data->harga*$data->jumlah)-$data->diskon);
        }
        $totalnya=$t;
        // dd($totalnya);
        //dd($pemesanan);
       // $seminar_id=$user->seminar_id;
    //    $dus= json_decode( json_encode($pemesanan), true);
     // dd($dus);
    
      $pdf = app('dompdf.wrapper');
      $pdf->getDomPDF()->set_option("enable_php", true);
  $pdf->loadView('cetakinvoice', compact('pemesanan','dp','totalnya'))->setPaper([0,0,595.276,935.433], 'potrait');
     // $pdf =\PDF::loadView('admin.suratkeluar.cetakrekombeasiswa', compact('keteranganumum'));
     // return $pdf->download('Cetakaktifkuliahpns.pdf');
     return $pdf->stream();
    }
    public function cetakinvoice($unik)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
        $pemesanan=Pemesanan::where('kodeinvoice',$unik)->get();
       // $seminar_id=$user->seminar_id;
       $dus= json_decode( json_encode($pemesanan), true);
      //dd($dus);
      $paket=Paket::where('id',$dus[0]['paket_id'])->get();
      $pak= json_decode( json_encode($paket), true);
     
$validasi=url('/pemesanan/invoice/'.$unik);//->merge($logo, 0.2, true)
        $qr=QrCode::format('png')->size(150)->generate($validasi, base_path()."/public/qrkwitansi/".$unik.'.png');
       $qrnya=base_path()."/public/qrkwitansi/".$unik.'.png';
        $this->fpdf = new Fpdf;
        $this->fpdf->SetFont('Arial', 'B', 20); 
        $this->fpdf->AddPage('P');
 
 

/*Cell(width , height , text , border , end line , [align] )*/

$this->fpdf->Cell(61 ,10,'',0,0);
if($dus[0]['statusbayar']=='belum')
{
    $this->fpdf->Cell(67 ,5,'INVOICE',0,0,"C");
    $lunas=public_path()."/unpaid.png";
}
else{
    $this->fpdf->Cell(59 ,5,'BUKTI PEMBAYARAN',0,0);
    $lunas=public_path()."/lunas.png";
}


$this->fpdf->SetFont('Arial','',10);
$this->fpdf->Ln();
$this->fpdf->Cell(80 ,10,'',0,0);
$this->fpdf->Cell(59 ,5,'mesem.rizquna.id',0,0);
$this->fpdf->Cell(59 ,10,'',0,1);

$this->fpdf->SetFont('Arial','B',15);
 
$logo=public_path()."/logo-mesem.png";

$this->fpdf->Image($logo, 10, 20, 60, 20);
$this->fpdf->Image($qrnya, 140, 30, 40, 40);
$this->fpdf->setXY(140,20);
//$this->fpdf->Cell(90 ,5,'Details',0,1);

$this->fpdf->SetFont('Arial','',10);

$this->fpdf->Ln();$this->fpdf->Ln();$this->fpdf->Ln();$this->fpdf->Ln();

$this->fpdf->setXY(140,20);
$this->fpdf->Cell(25 ,5,'Invoice No:',0,0);
$this->fpdf->SetFont('Arial','B',10);
$this->fpdf->Cell(34 ,5,$dus[0]['kodeinvoice'],0,1);

$this->fpdf->setXY(10,45);
$this->fpdf->SetFont('Arial','B',12);
$this->fpdf->Cell(130 ,5,'Kepada: ',0,0);
$this->fpdf->Ln();
$this->fpdf->Cell(130 ,5,$dus[0]['nama'],0,0);
$this->fpdf->Ln();
$this->fpdf->SetFont('Arial','I',12);
// $this->fpdf->Cell(130 ,5,$dus[0]['institusi'],0,0); 
$this->fpdf->SetFont('Arial','B',10);
$this->fpdf->Cell(189 ,10,'',0,1);



$this->fpdf->Cell(50 ,10,'',0,1);

$this->fpdf->SetFont('Arial','B',10);
/*Heading Of the table*/
$this->fpdf->Cell(10 ,6,'No',1,0,'C');
$this->fpdf->Cell(80 ,6,'Nama Paket',1,0,'C');
 
$this->fpdf->Cell(30 ,6,'Biaya',1,0,'C');
$this->fpdf->Cell(30 ,6,'Diskon',1,0,'C');
 
$this->fpdf->Cell(25 ,6,'Total',1,1,'C');/*end of line*/
/*Heading Of the table end*/
$this->fpdf->SetFont('Arial','',10);
for ($i = 1; $i <= 1; $i++) {
$this->fpdf->Cell(10 ,6,$i,1,0);
$this->fpdf->Cell(80 ,6,$pak[0]['namapaket'],1,0);
$total=$dus[0]['harga']-$dus[0]['diskon'];
$this->fpdf->Cell(30 ,6,'Rp. '.number_format($dus[0]['harga']),1,0,'R');
$this->fpdf->Cell(30 ,6,'Rp. '.number_format($dus[0]['diskon']),1,0,'R');
$this->fpdf->Cell(25 ,6,'Rp. '.number_format($total),1,0,'R');


$this->fpdf->Cell(45 ,6,'',0,0,'R');
}
$this->fpdf->Ln();$this->fpdf->Ln();

$this->fpdf->Cell(100 ,6,'',0,0,'R');
if($dus[0]['statusbayar']=='belum'){
    $this->fpdf->Cell(70 ,6,'Segera lakukan pembayaran melalui transfer ke rekening kami.',0,0,'R');
}
else{
    $this->fpdf->Cell(70 ,6,'Terima kasih atas keparcayaan Anda kepada kami.',0,0,'R');
}
$this->fpdf->Ln(); 
$this->fpdf->Cell(100 ,6,'',0,0,'R');
$this->fpdf->Cell(70 ,6,'Hormat kami,',0,0,'R');
$this->fpdf->Ln(); $this->fpdf->Ln();
$this->fpdf->Cell(100 ,6,'',0,0,'R');
$this->fpdf->SetFont('Arial','BI',10);
$this->fpdf->Cell(70 ,6,'MesemVirtual Team',0,0,'R');
$this->fpdf->Image($lunas, 80, 40, 80, 30);

// $this->fpdf->Cell(118 ,6,'',0,0);
// $this->fpdf->Cell(25 ,6,'Subtotal',0,0);



$this->fpdf->Output();
exit();

        //return view('admin.seminar.cetakuser',compact('user','seminar'));
    }
         
    public function konfirmasiinvoice($unik)
    {   
        $pemesanan=Pemesanan::where('kodeinvoice',$unik)->get();
        $data= json_decode( json_encode($pemesanan), true);
        $kodeinvoice=$data[0]['kodeinvoice'];  
        $namapemesan=$data[0]['nama'];
        
        $total=$data[0]['harga']-$data[0]['diskon'];
        $pemesanan_id=$data[0]['id'];
        $user_id=$data[0]['user_id'];
        $paket_id=$data[0]['paket_id'];
    return view('konfirmasiorder',compact('paket_id','total','kodeinvoice','namapemesan','pemesanan_id','user_id'));
    }
    public function uploadtrf(Request $request)
    {
        $this->validate($request,
        ['file' => 'required|mimes:jpg,png,JPG,PNG,JPEG,jpeg'

    ]);

        $file=$request->file('file');
        $filename = time() . '_' . \Illuminate\Support\Str::random(8) . '.' . $file->getClientOriginalExtension();
        $file->move(public_path('transfer'), $filename);
        $transfer = new Transferan;

        $transfer->file='transfer/'.$filename;
       
        $transfer->peserta_id=$request->user_id;
        $user=User::find($request->user_id);
        $datauser= json_decode( json_encode($user), true);
        //dd($datauser['id']);
        $namauser=$datauser['name'];
        $transfer->kodeinvoice=$request->kodeinvoice;
        $transfer->pemilik_rekening=$request->pemilik_rekening;
        $transfer->nama_bank=$request->nama_bank;
        $transfer->nominal_trf=$request->nominal_trf;
        //dd($transfer);
        $transfer ->save(); 
        // $paket=DB::table('paket')->where('id',$request->paket_id)->get();
        // // dd($us);
        // $dus= json_decode( json_encode($paket), true);
        // $namapaket=$dus[0]['namapaket'];
        // $users=DB::table('users')->where('level','admin')->where('username','kangsupris')->orWhere('level','operator')->get();
//         $users=DB::table('users')->where('level','admin')->where('username','kangsupris')->get();
//         foreach ($users as $user)
//         {
//             //dd($user->tgchat_id);
// $pesan="<pre>".$namauser."</pre> telah melakukan konfirmasi pembayaran sebesar 
// <pre>".number_format($request->nominal_trf)."</pre>
// melalui Bank: 
// <pre>".$request->nama_bank."</pre>
// dengan pemilik rekening:
// <pre>".$request->pemilik_rekening."</pre>
// untuk Paket kegiatan: 
// <pre>".$namapaket."</pre>
// <pre>kode INVOICE:".$request->kodeinvoice."</pre>
// silakan proses!";
//             $telegram=$user->tgchat_id;
//            // dd($pesan);
//            $this-> kirimtelegram($telegram,$pesan);
            
//         }
        return redirect()->back()->with('success','Bukti transfer berhasil disimpan, maksimal 1x24 jam  proses aktifasi dari admin, mohon ditunggu!');
        
        

    }
}

