<?php

namespace App\Http\Controllers;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Seminar;
use App\User;
use App\Logcetak;
use Mail;
use Auth;
use App\Transferan;
use App\Peserta;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Codedge\Fpdf\Fpdf\Fpdf;
use DB;
use App\Materi;
use QrCode;
use PDF;
use App\Pretes;

 
class SeminarController extends Controller
{
    public function kirimtelegram($telegram_id, $message_text) {
        $secret_token = env('TELEGRAM_BOT_TOKEN', '');
        if (empty($secret_token)) {
            return;
        }
        $url = "https://api.telegram.org/bot" . $secret_token . "/sendMessage?parse_mode=html&chat_id=" . urlencode($telegram_id);
        $url = $url . "&text=" . urlencode($message_text);
        $ch = curl_init();
        $optArray = array(
                CURLOPT_URL => $url,
                CURLOPT_RETURNTRANSFER => true
        );
        curl_setopt_array($ch, $optArray);
        $result = curl_exec($ch);
        curl_close($ch);
    }

    
    public function index()
    {
        
        //$seminar= Seminar::all();   
        $seminar= Seminar::orderByDesc('created_at')->paginate(10);
        $peserta=Peserta::withCount('seminar')->get();
        //dd($peserta->count());
        return view('admin.seminar.index', compact('seminar','peserta'));
    }
    public function cariseminar(Request $request)
    {
        
            $q = $request->q;
            if($q != ""){
            $seminar = Seminar::where ( 'namaseminar', 'LIKE', '%' . $q . '%' )
            ->orWhere ( 'keterangan', 'LIKE', '%' . $q . '%' )
            ->orWhere ( 'tanggal', 'LIKE', '%' . $q . '%' )->paginate (10)->setPath ( '' );
            $pagination = $seminar->appends ( array (
               'q' => $request->q
             ) );

            if (count ( $seminar ) > 0)
             return view ( 'admin.seminar.hasilsearch',compact('seminar','q') )->withDetails ( $seminar )->withQuery ( $q );
            }
             return view ( 'admin.seminar.hasilsearch',compact('seminar','q') )->withMessage ( 'No Details found. Try to search again !' );
          

    }

    public function cektransferan($id)
    {
        
        $transferan= Transferan::where('peserta_id',$id)->get();   
        
        return view('admin.seminar.cektransferan', compact('transferan'));
    }
    public function daftar()
    {
        $du=DB::table('peserta')->select('seminar_id')->where('user_id',Auth::user()->id)->get();
        $da=json_decode(json_encode($du), true);
        //dd($da);
        if(!empty($da))
        {
            foreach($da as $d)
        {
            $idseminar[]=$d['seminar_id'];
        }
        //dd($idseminar);
        $seminar= Seminar::whereNotIn('id',$idseminar)->where('statuspendaftaran','dibuka')
        ->where('umum','yes')->get();
        }

        else
        {
        $seminar= Seminar::where('statuspendaftaran','dibuka')
        ->where('umum','yes')
        ->get();
        }
          
        
        return view('admin.seminar.daftarbaru', compact('seminar'));
    }
   
    public function kirimemailpeserta(Request $request)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
        $cek= Peserta::where('seminar_id',$request->seminar_id)
        ->where('email_sent','0')->take(35)->get(); 
        // dd($cek);  
        $seminar_id=$request->seminar_id;
        $seminar=Seminar::findorfail($seminar_id);
        $jumlahtotal=0;
        foreach($cek as $d)
        {
            //dd($d->email);
            $u=User::find($d->user_id);
            $emailnya=$u->email;
            $admin = env('MAIL_FROM_ADDRESS', 'noreply@rizquna.id');
            // dd($emailnya);
            $email=$emailnya;
            // $email[0]='fatmahkoko@gmail.com';
           
            
            $peserta=Peserta::findorfail($d->id);
            $peserta->email_sent=1;
            $peserta->save();
            Mail::send([], [], function ($message) use($request,$email) {
                $message->to($email)
                  ->subject('Info Penting Invoice Rizquna')              
                  ->setBody($request->pesan, 'text/html'); // for HTML rich messages
                  $message->replyTo(env('MAIL_REPLY_TO', 'noreply@rizquna.id'),"Admin Rizquna");
                $message->from(env('MAIL_FROM_ADDRESS', 'noreply@rizquna.id'),$request->judul);
              });
            
    $jumlahtotal++;
            
        }
    
  $target=$jumlahtotal;
    //  $tar=implode(',',$email) ;
    //  $em=array($tar);
    //  dd($email);
    // dd($email);
    //  die();
      
      //dd( Mail:: failures());
    //    die();
        
        
        return redirect()->back()->with('success','Pengiriman '.$target.' Email Sukses!');
        
          
        // return view('admin.seminar.datapeserta', compact('peserta','seminar_id','seminar'));
    }
    public function kirimsertifikatpeserta(Request $request)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
        $cek= Peserta::where('seminar_id',$request->seminar_id)
        ->where('kirim_sertifikat','0')->take(50)->get(); 
        // dd($cek);  
        $seminar_id=$request->seminar_id;
        $seminar=Seminar::findorfail($seminar_id);
        $jumlahtotal=0;
        foreach($cek as $d)
        {
            //dd($d->email);
            $u=User::find($d->user_id);
            $emailnya=$u->email;
            // dd($emailnya);
            $admin = env('MAIL_FROM_ADDRESS', 'noreply@rizquna.id');
            // dd($emailnya);
            $email=$emailnya;
            // $email[0]='fatmahkoko@gmail.com';
           
            
            $peserta=Peserta::findorfail($d->id);
            $peserta->kirim_sertifikat=1;
            $peserta->save();
                ///kirim email
        Mail::send('kirimsertifikat',array(
            'firstname'=>$u->name,
            'namakegiatan'=>$seminar->namaseminar,
            'tanggal'=>$seminar->tanggal,
            'unik'=>$d->unik),
            function($pesan) use($email){
            $pesan->to($email,'E-Sertifikat Invoice Rizquna')->subject('E-Sertifikat Invoice Rizquna ' );
            $pesan->replyTo(env('MAIL_REPLY_TO', 'noreply@rizquna.id'),"Admin Rizquna");
            $pesan->from(env('MAIL_FROM_ADDRESS', 'noreply@rizquna.id'), env('MAIL_FROM_NAME', 'Penerbit Rizquna'));
        });
            
    $jumlahtotal++;
            
        }
    
  $target=$jumlahtotal;
    
        
        return redirect()->back()->with('success','Pengiriman '.$target.' sertifikat Sukses!');
    }
          
        
    public function seminarku()
    {
        // $user= User::where('id',Auth::user()->id)->get(); 
        if(empty(Auth::user()->phone) || empty(Auth::user()->alamat) || empty(Auth::user()->ttl)){
            return redirect()->route('myprofile')->with('error', 'Mohon dilengkapi dulu data anda!');
        }
        $peserta=Peserta::where('user_id',Auth::user()->id)->get();
        // $dt= json_decode( json_encode($peserta), true);
        // $idseminar=$dt[0]['seminar_id'];
        // //dd($idseminar);
        // $seminar=Seminar::where('id',$idseminar);
        //dd($seminar);

        
        return view('admin.seminar.seminarku', compact('peserta'));
    }
    public function registrasi($idseminar)
    {
        $seminar= Seminar::findorfail($idseminar);
        $jumpeserta=Peserta::where('seminar_id',$idseminar)
        ->where('sebagai','peserta')->count();
        //dd($jumpeserta);
        
        return view('pendaftaran', compact('seminar','jumpeserta'));
    }
    public function formcetak($idseminar)
    {
        $seminar= Seminar::findorfail($idseminar);
         
        
        return view('cetaktanpalogin', compact('seminar'));
    }
    public function presensi($idseminar)
    {
        $seminar= Seminar::findorfail($idseminar);
         
        
        return view('presensi', compact('seminar'));
    }
    public function simpanpresensi(Request $request)
    {
        $us=DB::table('users')->where('email',$request->email)->get();
        // dd($us);
        $dus= json_decode( json_encode($us), true);
        // dd($dus);
        if($dus == null){
            return redirect()->back()->with('error','User dengan email '.$request->email.' tidak ditemukan!');
            exit;
        }
        else{
            $iduser=$dus[0]['id'];
        }
        

        //dd($iduser);
        $user=DB::table('peserta')->where('user_id',$iduser)->where('seminar_id',$request->seminar_id)->get();
        $duser= json_decode( json_encode($user), true);
       if($duser == null){
        return redirect()->back()->with('error','Pengguna email '.$request->email.' bukan peserta acara ini!');

       }
        
        
        
        if($duser[0]['id']>0)
        {
             $pesan=$request->kesanpesan;
            $peserta=Peserta::findorfail($duser[0]['id']);
            //dd($peserta);
            $peserta->kesanpesan=$pesan;
            //dd($pesan);
            $peserta->save();
           
             
            return redirect()->back()->with('success','Presensi kehadiran  '.$dus[0]['name'].' telah disimpan!');
        }
        else{
            return redirect()->back()->with('error','Pengguna email '.$request->email.' bukan termasuk peserta acara ini!');
        }
    }
    public function simpandaftarabaru(Request $request)
    {
            $seminar_id=$request->seminar_id;
            ///cek jumlah peserta
            $cek=Peserta::where('seminar_id',$seminar_id)
            ->where('user_id',Auth::user()->id)
            ->count();
            $realpeserta=Peserta::where('seminar_id',$seminar_id)->count();
           // dd($realpeserta);
            $maxpeserta=$request->maxpeserta;
            // dd($maxpeserta);
            if($realpeserta>=$maxpeserta){
                return redirect()->back()->with('error','Gagal...kuota sudah penuh!');
            }
            else{
                    if($cek<1)
                    {
                    $unik=base64_encode(Auth::user()->id.uniqid());
                    $peserta=new Peserta;
                    
                    $peserta->user_id= Auth::user()->id;
                    $peserta->institusi=Auth::user()->institusi;
                    $peserta->sebagai='peserta';
                    if($request->berbayar=='no')
                    {
                        $peserta->status='ok';
                    }
                    
                    $peserta->namapeserta=Auth::user()->name;
                    $peserta->seminar_id=$seminar_id;
                    $peserta->unik=$unik;
                    //dd($peserta);
                    $peserta->save();
                    return redirect()->back()->with('success','Berhasil...mendaftar!');
                     }
                    else{
                    return redirect()->back()->with('error','Anda sudah terdaftar dalam acara ini!');

                    }
            }
            
             
 
             ///kirim email
            //  Mail::send('verifikasi',array('firstname'=>$request->name,'remember_token'=>$remember_token),function($pesan) use($request){
            //      $pesan->to($request->email,'Verifikasi')->subject('Verifikasi Email');
            //      $pesan->from(env('MAIL_FROM_ADDRESS', 'noreply@rizquna.id'), env('MAIL_FROM_NAME', 'Penerbit Rizquna'));
            //  });
            
         
         
    }
    public function simpanpendaftaran(Request $request)
    { ///simpan pendaftaran
        ///cek dulu di datauser sudah ada atau belum
        $cekuser=User::where('email',$request->email)->orWhere('username',$request->username)->count();
        if($cekuser == 0)
        {
            $remember_token=base64_encode($request->email);
            $user=new User;
            $user->name=$request->name;
            $user->email=$request->email;
            $user->alamat=$request->alamat;
            $user->password=Hash::make($request->password);
            $user->level='user';
            $user->phone=$request->phone;
            $user->username=$request->username;
            $user->institusi=$request->institusi;
            $user->remember_token=$remember_token;
            $user->status=$request->status;
            $user->save();
            

            
            ///simpan di data peserta
            $dp=User::where('email',$request->email)->get();
            //dd($dp);
            $dt= json_decode( json_encode($dp), true);
            //dd($dt[0]['id']);
            $peserta=new Peserta;
            $peserta->user_id= $dt[0]['id'];
            $peserta->institusi=$request->institusi;
            $peserta->sebagai='peserta';
            $peserta->namapeserta=$request->name;
            $peserta->seminar_id=$request->seminar_id;
            if($request->berbayar == 'no')
            {
                $peserta->status='ok';
            }
            $peserta->unik=base64_encode($dt[0]['id'].uniqid());
            $peserta->save();

            ///kirim email ke peserta
        Mail::send('verifikasi',array('firstname'=>$request->name,'remember_token'=>$remember_token),function($pesan) use($request){
            $pesan->to($request->email,'Verifikasi')->subject('Verifikasi Email');
            $pesan->replyTo(env('MAIL_REPLY_TO', 'noreply@rizquna.id'),"Admin Rizquna");
            $pesan->from(env('MAIL_FROM_ADDRESS', 'noreply@rizquna.id'), env('MAIL_FROM_NAME', 'Penerbit Rizquna'));
        });
            return redirect()->back()->with('success','Berhasil...silakan cek email Anda  dan klik link yang kami kirimkan untuk verifikasi akun!');
        }
        else{
            //Alert::error('Gagal', "jika sudah punya akun, silakan login! ");
            return redirect()->back()->with('error','GAGAL...username/email sudah ada, silakan login!');
        }


         
    }
    public function verif($token){
        // $user=User::where('remember_token',$token)->first();
        // //echo $user->count();
        // if($user->status=='0'){
        //     $user->status='1';
        // }
        // $user->save();
     // print_r($mydata);
          User::where('remember_token',$token)->update(['status'=>1,'email_verified_at'=>date('Y-m-d H:i:s')]);
        //Alert::success('Sukses!', 'Verifikasi berhasil, silakan login!');
 
        return redirect('/login')->with('success','Verifikasi berhasil, silakan login!');
    }
    public function tambah()
    {
         

        return view('admin.seminar.tambah');
    }

    public function simpan(Request $request)
    {
        $unik=rand(1,99);
        $seminar= new Seminar;
        $seminar->english=$request->english;
        $seminar -> namaseminar=$request->namaseminar;
        $seminar->pretes=$request->pretes;
        $seminar->postes=$request->postes;
        $seminar->umum=$request->umum;
        $seminar -> tanggal=$request->tanggal;
        $seminar->berbayar=$request->berbayar;
        $seminar->ketentuan=$request->ketentuan;
        $seminar->htm = $request->htm;
        $seminar -> jumlahpeserta=$request->jumlahpeserta;
        $seminar->keterangan=$request->keterangan;
        $seminar->statuspendaftaran=$request->statuspendaftaran;
        $seminar->slug=Str::slug($request->namaseminar)."-".$unik;
       //dd($seminar);
        $seminar ->save(); 
       return redirect()->back()->with('success', 'seminar berhasil disimpan!');
    }
    public function simpanpemateri(Request $request)
    {
         
        $peserta= new Peserta;
        $unik=uniqid().rand(9,1931);
       $peserta->namapeserta=$request->namapeserta;
       $peserta->unik=$unik;
       $peserta->institusi=$request->institusi;
       $peserta->seminar_id=$request->seminar_id;
       $peserta->sebagai=$request->sebagai;
       $peserta->user_id='1';

       $peserta->save();

       return redirect()->back()->with('success', 'data pemateri berhasil disimpan!');
    }
    public function detail($id)
    {
        $seminar=Seminar::findorfail($id);
        $materi=Materi::where('seminar_id',$id)->get();
        $pemateri=Peserta::where('seminar_id',$id)->where('sebagai','pemateri')->get();
        // dd($pemateri);
        $moderator=Peserta::where('seminar_id',$id)->where('sebagai','moderator')->get();
        return view('admin.seminar.detail',compact('seminar','pemateri','moderator','materi')); 
    }
    public function edit($id)
    {
        $seminar=Seminar::findorfail($id);
         
        return view('admin.seminar.edit',compact('seminar')); 
    }
    public function cetaksuket($id,$unik)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
        ///simpan log
        $log=new Logcetak;
        $log->user_id=Auth::user()->id;
        $log->yangdicetak="Suket";
        $log->keteraangan="Surat keterangan KKN 46 atas nama ".Auth::user()->name." NIM: ".Auth::user()->nim;
        $log->save();

        
        $peserta=Peserta::where('unik',$unik)->get() ;
        $dus= json_decode( json_encode($peserta), true);
        $unik=$dus[0]['unik'];
        $user=User::findorfail($dus[0]['user_id']);
    //    dd($user);
       
        
        
        $pdf = app('dompdf.wrapper');
        $pdf->getDomPDF()->set_option("enable_php", true);
        $pdf->loadView('admin.seminar.cetaksuket',compact('user','unik'));
       // $pdf =\PDF::loadView('admin.suratkeluar.cetaksuratcuti', compact('suratcuti'));
       // return $this->fpdf->download('CetaksuratCuti.pdf');
       return $pdf->stream();
        //return view('admin.seminar.cetakpeserta',compact('peserta','seminar'));
    }
    public function cetakpeserta($id)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
        $peserta=Peserta::where('seminar_id',$id)->where('sebagai','peserta')->get()->sortByDesc('namapeserta');
        $seminar=Seminar::findorfail($id);
        //dd($seminar);

        $pdf = app('dompdf.wrapper');
        $pdf->getDomPDF()->set_option("enable_php", true);
        $pdf->loadView('admin.seminar.cetakpeserta',compact('peserta','seminar'));
       // $pdf =\PDF::loadView('admin.suratkeluar.cetaksuratcuti', compact('suratcuti'));
       // return $this->fpdf->download('CetaksuratCuti.pdf');
       return $pdf->stream();
        //return view('admin.seminar.cetakpeserta',compact('peserta','seminar'));
    }
    public function cetakpresensi($id)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
        $peserta=Peserta::where('seminar_id',$id)->where('sebagai','peserta')
        ->whereNotNull('kesanpesan')->get()->sortByDesc('namapeserta');
        $seminar=Seminar::findorfail($id);
        //dd($seminar);

        $pdf = app('dompdf.wrapper');
        $pdf->getDomPDF()->set_option("enable_php", true);
        $pdf->loadView('admin.seminar.cetakpresensi',compact('peserta','seminar'));
       // $pdf =\PDF::loadView('admin.suratkeluar.cetaksuratcuti', compact('suratcuti'));
       // return $this->fpdf->download('CetaksuratCuti.pdf');
       return $pdf->stream();
        //return view('admin.seminar.cetakpeserta',compact('peserta','seminar'));
    }
    public function cetakkwitansi($seminar_id,$unik)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
        $peserta=Peserta::where('unik',$unik)->where('status','ok')->get();
        if ($peserta->isEmpty() || ($peserta[0]->user_id != Auth::id() && Auth::user()->level != 'admin')) {
             abort(403, 'Unauthorized action.');
        }
       // $seminar_id=$peserta->seminar_id;
       $dus= json_decode( json_encode($peserta), true);
      //dd($dus);
        $seminar=Seminar::find($dus[0]['seminar_id']);
    //     $pdf = app('dompdf.wrapper');
    //     $pdf->getDomPDF()->set_option("enable_php", true);
    //     $pdf->loadView('cetak_buktipembayaran',compact('peserta','seminar'));
    //    // $pdf =\PDF::loadView('admin.suratkeluar.cetaksuratcuti', compact('suratcuti'));
    //    // return $this->fpdf->download('CetaksuratCuti.pdf');
    //    return $pdf->stream();
//        // dd($seminar->namaseminar);
$validasi=url('/seminar/kwitansi/semid/'.$seminar_id.'/'.$unik);//->merge($logo, 0.2, true)
        $qr=QrCode::format('png')->size(150)->generate($validasi, base_path()."/public/qrkwitansi/".$unik.'.png');
       $qrnya=base_path()."/public/qrkwitansi/".$unik.'.png';
        $this->fpdf = new Fpdf;
        $this->fpdf->SetFont('Arial', 'B', 20); 
        $this->fpdf->AddPage('P');
 
 

/*Cell(width , height , text , border , end line , [align] )*/

$this->fpdf->Cell(61 ,10,'',0,0);
$this->fpdf->Cell(59 ,5,'BUKTI PEMBAYARAN',0,0);

$this->fpdf->SetFont('Arial','',10);
$this->fpdf->Ln();
$this->fpdf->Cell(80 ,10,'',0,0);
$this->fpdf->Cell(59 ,5,'mesem.rizquna.id',0,0);
$this->fpdf->Cell(59 ,10,'',0,1);

$this->fpdf->SetFont('Arial','B',15);
 
$logo=public_path()."/logo-mesem.png";
$lunas=public_path()."/lunas.png";
$this->fpdf->Image($logo, 10, 20, 60, 20);
$this->fpdf->Image($qrnya, 140, 30, 40, 40);
$this->fpdf->setXY(140,20);
//$this->fpdf->Cell(90 ,5,'Details',0,1);

$this->fpdf->SetFont('Arial','',10);

$this->fpdf->Ln();$this->fpdf->Ln();$this->fpdf->Ln();$this->fpdf->Ln();

$this->fpdf->setXY(140,20);
$this->fpdf->Cell(25 ,5,'Invoice No:',0,0);
$this->fpdf->Cell(34 ,5,"#".$dus[0]['id'],0,1);

$this->fpdf->setXY(10,45);
$this->fpdf->SetFont('Arial','B',12);
$this->fpdf->Cell(130 ,5,'Kepada: ',0,0);
$this->fpdf->Ln();
$this->fpdf->Cell(130 ,5,$dus[0]['namapeserta'],0,0);
$this->fpdf->Ln();
$this->fpdf->SetFont('Arial','I',12);
$this->fpdf->Cell(130 ,5,$dus[0]['institusi'],0,0); 
$this->fpdf->SetFont('Arial','B',10);
$this->fpdf->Cell(189 ,10,'',0,1);



$this->fpdf->Cell(50 ,10,'',0,1);

$this->fpdf->SetFont('Arial','B',10);
/*Heading Of the table*/
$this->fpdf->Cell(10 ,6,'No',1,0,'C');
$this->fpdf->Cell(120 ,6,'Tema Kegiatan',1,0,'C');
 
$this->fpdf->Cell(30 ,6,'Biaya',1,0,'C');
 
$this->fpdf->Cell(25 ,6,'Total',1,1,'C');/*end of line*/
/*Heading Of the table end*/
$this->fpdf->SetFont('Arial','',10);
for ($i = 1; $i <= 1; $i++) {
$this->fpdf->Cell(10 ,6,$i,1,0);
$this->fpdf->Cell(120 ,6,$seminar->namaseminar,1,0);
$this->fpdf->Cell(30 ,6,'Rp. '.number_format($seminar->htm),1,0,'R');
 
$this->fpdf->Cell(25 ,6,'Rp. '.number_format($seminar->htm),1,0,'R');


$this->fpdf->Cell(45 ,6,'',0,0,'R');
}
$this->fpdf->Ln();$this->fpdf->Ln();

$this->fpdf->Cell(100 ,6,'',0,0,'R');
$this->fpdf->Cell(70 ,6,'Terima kasih atas keparcayaan Anda kepada kami.',0,0,'R');
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

        //return view('admin.seminar.cetakpeserta',compact('peserta','seminar'));
    }

    public function updatepeserta(Request $request)
    {
        $peserta=Peserta::findorfail($request->id);
        $peserta->namapeserta=$request->namapeserta;
        $peserta->institusi=$request->institusi;
        $peserta->sebagai=$request->sebagai;
       
        $peserta ->save(); 
        return redirect()->back()->with('success','Data peserta berhasil diupdate!');
    }
    public function aktifasipeserta(Request $request)
    {
        $peserta=Peserta::findorfail($request->id);
        $userid=$peserta->user_id;
        $user=User::findorfail($userid);

        //dd($userid);
        $peserta->status='ok';
         
       
        $peserta ->save(); 
        $seminar=Seminar::findorfail($peserta->seminar_id);
        $nomortagihan=$request->id;
        $namapeserta=$user->name;
        $namaseminar=$seminar->namaseminar;
        $htm=$seminar->htm;
        $institusi=$user->institusi;
        $seminar_id=$seminar->id;
        $unik=$peserta->unik;

        
         
        // $pdf = PDF::loadView('kwitansi',compact('nomortagihan','namaseminar','namapeserta','htm','institusi'));
        Mail::send('kwitansi',array('seminar_id'=>$seminar_id,'unik'=>$unik,'institusi'=>$user->institusi,'namapeserta'=>$user->name,'nomortagihan'=>$request->id,'namaseminar'=>$seminar->namaseminar,'htm'=>$seminar->htm),function($pesan) use($user){
            
            $pesan->to($user->email,$user->name)->subject('BuktiPembayaran')
            ->replyTo(env('MAIL_REPLY_TO', 'noreply@rizquna.id'),"Admin Rizquna")
            ->from(env('MAIL_FROM_ADDRESS', 'noreply@rizquna.id'), env('MAIL_FROM_NAME', 'Penerbit Rizquna'));
            // ->attachData($this->fpdf->output(), "kwitansi_MesemVirtual.pdf");
        });
        // $this->fpdf->stream();
       
       // try{
            // Mail::send('kwitansi', $data, function($message) {
               
            // $message->to($data["email"], $data["client_name"])
            // ->replyTo("mesemvirtual@gmail.com","AdminMesemVirtual")
            // ->subject($data["subject"])
            // ->attachData($this->fpdf->output(), "kwitansi_MesemVirtual.pdf");
            // });
        // }catch(JWTException $exception){
        //     $this->serverstatuscode = "0";
        //     $this->serverstatusdes = $exception->getMessage();
        // }
        // if (Mail::failures()) {
        //      $this->statusdesc  =   "Error sending mail";
        //      $this->statuscode  =   "0";

        // }else{

        //    $this->statusdesc  =   "Message sent Succesfully";
        //    $this->statuscode  =   "1";
        // }
        // return response()->json(compact('this'));
        return redirect()->back()->with('success','Data peserta berhasil diupdate!');
    }
    public function cetaktanpalogin(Request $request)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
        //dd($request->email);
        $us=DB::table('users')->where('email',$request->email)->get();
        // dd($us);
        $dus= json_decode( json_encode($us), true);
        if($dus == null){
            return redirect()->back()->with('error','User dengan email '.$request->email.' tidak ditemukan!');
            exit;
        }
        else{
            $iduser=$dus[0]['id'];
        }
        

        //dd($iduser);
        $user=DB::table('peserta')->where('user_id',$iduser)->get();
        $duser= json_decode( json_encode($user), true);
       if($duser == null){
        return redirect()->back()->with('error','Pengguna email '.$request->email.' bukan peserta acara ini!');
       }
        
        
        
        if($duser[0]['id']>0)
        {
            $namapeserta=$duser[0]['namapeserta'];
            //dd($namapeserta);
           
            if(!empty($duser[0]['institusi'])){
                $institusi="(".$duser[0]['institusi'].")";
            }
            else{
                $institusi="";
            }
            //dd($institusi);
            $sebagai=strtoupper($duser[0]['sebagai']);
            $seminar_id=$duser[0]['seminar_id'];
            $seminar=Seminar::find($seminar_id);
            $dsem=json_decode( json_encode($seminar), true);
            //dd($dsem);
            $namaserminar=$dsem['namaseminar'];
            
            $bg=public_path()."/".$dsem['sertifikat'];
            $logo=public_path()."/logo.png";
        //    echo $bg;
        //    die();
        $validasi=url('/seminar/cetak/'.$duser[0]['id']);//->merge($logo, 0.2, true)
            $qr=QrCode::format('png')->size(150)->generate($validasi, base_path()."/public/qrcode/".$duser[0]['id'].'.png');
           $qrnya=base_path()."/public/qrcode/".$duser[0]['id'].'.png';
    //die(base_path());
            //dd($data[0]['email']);
                $this->fpdf = new Fpdf;
                $this->fpdf->SetFont('Arial', 'B', 20); 
                $this->fpdf->AddPage('L');
                $this->fpdf->Image($bg, 0, 0, 297, 210); 
                $this->fpdf->SetXY(70,65);
                $this->fpdf->Cell(160,10,$namapeserta,0,0,'C');       
                $this->fpdf->Ln();
                $this->fpdf->SetXY(70,73);
                $this->fpdf->SetFont('Arial', '', 16); 
                $this->fpdf->Cell(160,10,$institusi,0,0,'C');       
                $this->fpdf->Ln();
                $this->fpdf->SetXY(70,85);
                $this->fpdf->Cell(160,10,"sebagai",0,0,'C'); 
                $this->fpdf->SetXY(70,95);
                $this->fpdf->SetFont('Arial', 'B', 25); 
                $this->fpdf->Cell(160,10,$sebagai,0,0,'C'); 
                $this->fpdf->Image($qrnya, 17,155,40,40,'PNG'); 
            
    
            $this->fpdf->Output();
            exit; 
        }
        else{
            return redirect()->back()->with('error','Pengguna email '.$request->email.' bukan termasuk peserta acara ini!');
        }
        
    }

    public function cetaksertifikat($unik)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
        
        $user=Peserta::where('unik',$unik)->get();
        if ($user->isEmpty() || ($user[0]->user_id != Auth::id() && Auth::user()->level != 'admin')) {
            abort(403, 'Unauthorized action.');
        }
        $duser= json_decode( json_encode($user), true);
       // dd($duser);
        $namapeserta=$duser[0]['namapeserta'];
        //dd($namapeserta);
       
        if(!empty($duser[0]['institusi'])){
            $institusi="(".$duser[0]['institusi'].")";
        }
        else{
            $institusi="";
        }
    
        $sebagai=strtoupper($duser[0]['sebagai']);
        $seminar_id=$duser[0]['seminar_id'];
        $seminar=Seminar::find($seminar_id);
        $dsem=json_decode( json_encode($seminar), true);
        //dd($dsem);
        $namaseminar=$dsem['namaseminar'];
        $english=$dsem['english'];
       
        ///simpan log
        $log=new Logcetak;
        $log->user_id=Auth::user()->id;
        $log->yangdicetak="Sertifikat"; 
        $log->keteraangan=$namaseminar;
        $log->save();

        $bg=public_path()."/".$dsem['sertifikat'];
        $logo=public_path()."/logo.png";
    //    echo $bg;
    //    die(); kusus
    $validasi=url('/seminar/validasi/'.$unik);//->merge($logo, 0.2, true)
        $qr=QrCode::format('png')->size(150)->generate($validasi, base_path()."/public/qrcode/".$unik.'.png');
       $qrnya=base_path()."/public/qrcode/".$unik.'.png';
//die(base_path());
        //dd($data[0]['email']);
            $this->fpdf = new Fpdf;
            $this->fpdf->SetFont('Arial', 'B', 20); 
            $this->fpdf->AddPage('L');
            $this->fpdf->Image($bg, 0, 0, 297, 210); 
            $this->fpdf->SetXY(70,50);
            $this->fpdf->Cell(160,10,$namapeserta,0,0,'C');       
            $this->fpdf->Ln();
            $this->fpdf->SetXY(70,58);
            $this->fpdf->SetFont('Arial', '', 16); 
            $this->fpdf->Cell(160,10,$institusi,0,0,'C');       
            $this->fpdf->Ln();
            $this->fpdf->SetXY(70,75);
            if($english=='yes'){
                $this->fpdf->Cell(160,10,"",0,0,'C'); 
            }
            else{
                $this->fpdf->Cell(160,10,"sebagai",0,0,'C'); 
            }
            
            $this->fpdf->SetXY(70,85);
            $this->fpdf->SetFont('Arial', 'B', 25); 

            if($english=='yes' && $sebagai=='PESERTA'){
                $this->fpdf->Cell(160,10,"PARTICIPANT",0,0,'C'); 
            }
            else{
                $this->fpdf->Cell(160,10,$sebagai,0,0,'C'); 
            }
            $this->fpdf->Image($qrnya, 17,155,40,40,'PNG'); 
        

        $this->fpdf->Output();
        exit;
    }
    public function downloadsertifikat($unik)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
        
        $user=Peserta::where('unik',$unik)->get();
        $duser= json_decode( json_encode($user), true);
       // dd($duser);
        $namapeserta=$duser[0]['namapeserta'];
        //dd($namapeserta);
       
        if(!empty($duser[0]['institusi'])){
            $institusi="(".$duser[0]['institusi'].")";
        }
        else{
            $institusi="";
        }
        $sebagai=strtoupper($duser[0]['sebagai']);
        $seminar_id=$duser[0]['seminar_id'];
        $seminar=Seminar::find($seminar_id);
        $dsem=json_decode( json_encode($seminar), true);
        //dd($dsem);
        $namaseminar=$dsem['namaseminar'];
        ///simpan log
        $log=new Logcetak;
        $log->user_id=$duser[0]['user_id'];
        $log->yangdicetak="Sertifikat";
        $log->keteraangan=$namaseminar;
        $log->save();

        $bg=public_path()."/".$dsem['sertifikat'];
        $logo=public_path()."/logo.png";
    //    echo $bg;
    //    die();
    $validasi=url('/seminar/validasi/'.$unik);//->merge($logo, 0.2, true)
        $qr=QrCode::format('png')->size(150)->generate($validasi, base_path()."/public/qrcode/".$unik.'.png');
       $qrnya=base_path()."/public/qrcode/".$unik.'.png';
//die(base_path());
        //dd($data[0]['email']);
            $this->fpdf = new Fpdf;
            $this->fpdf->SetFont('Arial', 'B', 20); 
            $this->fpdf->AddPage('L');
            $this->fpdf->Image($bg, 0, 0, 297, 210); 
            $this->fpdf->SetXY(70,65);
            $this->fpdf->Cell(160,10,$namapeserta,0,0,'C');       
            $this->fpdf->Ln();
            $this->fpdf->SetXY(70,73);
            $this->fpdf->SetFont('Arial', '', 16); 
            $this->fpdf->Cell(160,10,$institusi,0,0,'C');       
            $this->fpdf->Ln();
            $this->fpdf->SetXY(70,85);
            $this->fpdf->Cell(160,10,"sebagai",0,0,'C'); 
            $this->fpdf->SetXY(70,95);
            $this->fpdf->SetFont('Arial', 'B', 25); 
            $this->fpdf->Cell(160,10,$sebagai,0,0,'C'); 
            $this->fpdf->Image($qrnya, 17,155,40,40,'PNG'); 
        

        $this->fpdf->Output();
        exit;
    }
    public function validasisertifikat($unik)
    {
        
        $peserta=DB::table('peserta')->where('unik',$unik)->get();
        $duser= json_decode( json_encode($peserta), true);
        if($duser != null){
            $peserta=Peserta::find($duser[0]['id']);
            $seminar_id=$duser[0]['seminar_id'];
            $seminar=Seminar::find($seminar_id);
             
             return view('validasi', compact('peserta','seminar'));
        }
        else{
             
            return view('invalid');
        }
        
        
        
    }

    public function uploadbg(Request $request)
    {
        $request->validate([
            'gambar' => 'required|image|mimes:jpg,jpeg,png|max:5120',
            'seminar_id' => 'required|exists:seminar,id',
        ]);
        $file=$request->file('gambar');
        $filename = time() . '_bg_' . Str::random(8) . '.' . $file->getClientOriginalExtension();
        $file->move(public_path('sertifikat'), $filename);
        $seminar = Seminar::findorfail($request->seminar_id);
        $seminar->sertifikat='sertifikat/'.$filename;
        $seminar->save();
        return redirect()->back()->with('success','Background sertifikat berhasil disimpan!');
    }

    public function uploadbrosur(Request $request)
    {
        $request->validate([
            'brosur' => 'required|image|mimes:jpg,jpeg,png|max:5120',
            'seminar_id' => 'required|exists:seminar,id',
        ]);
        $file=$request->file('brosur');
        $filename = time() . '_brosur_' . Str::random(8) . '.' . $file->getClientOriginalExtension();
        $file->move(public_path('brosur'), $filename);
        $seminar = Seminar::findorfail($request->seminar_id);
        $seminar->brosur='brosur/'.$filename;
        $seminar->save();
        return redirect()->back()->with('success','Brosur berhasil disimpan!');
    }

    public function uploadmateri(Request $request)
    {
        $request->validate([
            'materi' => 'required|file|mimes:pdf,doc,docx,ppt,pptx,xls,xlsx,zip|max:10240',
            'seminar_id' => 'required|exists:seminar,id',
        ]);
        $file=$request->file('materi');
        $filename = time() . '_materi_' . Str::random(8) . '.' . $file->getClientOriginalExtension();
        $file->move(public_path('materi'), $filename);
        $materi = new Materi;
        $materi->file='materi/'.$filename;
        $materi->seminar_id=$request->seminar_id;
        $materi->save();
        return redirect()->back()->with('success','File materi berhasil disimpan!');
    }
    public function konfirmasi($idpeserta,$seminar_id)
    {   
        $peserta=Peserta::findorfail($idpeserta);
        $seminar_id=$seminar_id;
        $seminar=Seminar::findorfail($seminar_id);
        

    return view('konfirmasi',compact('peserta','seminar'));
    }
    public function uploadtrf(Request $request)
    {
        $this->validate($request,
        ['file' => 'required|mimes:jpg,png,JPG,PNG,JPEG,jpeg'

    ]);

        $file=$request -> file('file');
        $ext = $file->getClientOriginalExtension();
        $filename = time() . '_' . Str::random(8) . '.' . $ext;
        $request->file('file')->move('transfer/', $filename);
        $transfer = 
         Transferan;

        $transfer->file='transfer/'.$filename;
        $transfer->seminar_id=$request->seminar_id;
        $transfer->peserta_id=$request->peserta_id;
        $peserta=Peserta::findorfail($request->peserta_id);
        $datapeserta= json_decode( json_encode($peserta), true);
        //dd($datapeserta['id']);
        $namapeserta=$datapeserta['namapeserta'];
       
        $transfer->pemilik_rekening=$request->pemilik_rekening;
        $transfer->nama_bank=$request->nama_bank;
        $transfer->nominal_trf=$request->nominal_trf;
        //dd($transfer);
        $transfer ->save(); 
        $sem=DB::table('seminar')->where('id',$request->seminar_id)->get();
        // dd($us);
        $dus= json_decode( json_encode($sem), true);
        $namaseminar=$dus[0]['namaseminar'];
        $users=DB::table('users')->where('level','admin')->orWhere('level','operator')->get();
        foreach ($users as $user)
        {
            //dd($user->tgchat_id);
$pesan="<pre>".$namapeserta."</pre> telah melakukan konfirmasi pembayaran sebesar 
<pre>".number_format($request->nominal_trf)."</pre>
melalui Bank: 
<pre>".$request->nama_bank."</pre>
dengan pemilik rekening:
<pre>".$request->pemilik_rekening."</pre>
untuk acara dengan tema: 
<pre>".$namaseminar."</pre>
<pre>kode:".$request->peserta_id."</pre>
silakan proses!";
            $telegram=$user->tgchat_id;
           // dd($pesan);
           $this-> kirimtelegram($telegram,$pesan);
            
        }
        return redirect()->back()->with('success','Bukti transfer berhasil disimpan, maksimal 1x24 jam  proses aktifasi dari admin, mohon ditunggu!');
        
        

    }
    public function update(Request $request, $id)
    {
        $unik=rand(1,99);
        $seminar = Seminar::findorfail($id);

        $seminar -> namaseminar=$request->namaseminar;
        $seminar -> tanggal=$request->tanggal;
        $seminar->english=$request->english;
        $seminar->htm=$request->htm;
        $seminar->pretes=$request->pretes;
        $seminar->postes=$request->postes;
        $seminar->umum=$request->umum;
        $seminar -> jumlahpeserta=$request->jumlahpeserta;
        $seminar->keterangan=$request->keterangan;
        $seminar->ketentuan=$request->ketentuan;
        $seminar->statuspendaftaran=$request->statuspendaftaran;
        $seminar->slug=Str::slug($request->namaseminar)."-".$unik;
       
        $seminar ->save(); 

        return redirect()->back()->with('success','Data berhasil diupdate!');
    }
    public function hapus($id)
    {
        
        $seminar = Seminar::findorfail($id);
        $seminar->delete();
        return redirect()->back()->with('success','Data berhasil dihapus!');
       
    }
    public function hapuspeserta($id)
    {
        
        $peserta = Peserta::findorfail($id);
        $peserta->delete();
        return redirect()->back()->with('success','Data berhasil dihapus!');
       
    }
    public function hapusmateri($id)
    {
        
        $peserta = Materi::findorfail($id);
        $peserta->delete();
        return redirect()->back()->with('success','Data berhasil dihapus!');
       
    }
    public function import()
    {
        
      return view('admin.seminar.import');
       
    }
    public function simpanimport(Request $request)
    {
        
    $this->validate($request,
        ['file_seminar' => 'required|mimes:xls,xlsx'

    ]);
    $path   = $request->file('file_seminar')->getRealPath();
    Excel::import(new seminarImport,request()->file('file_seminar'));
    // $data=Excel::import(new UserImport,$path)->get();
    //     if($data->count()>0)
    //     {
    //         foreach($data->toArray() as $key =>$value)
    //         {
    //             foreach($value as $row)
    //             {
    //                 $insert_data[]=array(
    //                     seminar => $row[seminar]
    //                 );  
    //             }
    //         }
    //         if(!empty($insert_data))
    //         {
    //             DB::table('seminar')->insert($insert_data);
    //         }
    //     }
      return back()->with('success',"sukses diimport");
       
    }


    public function myprofile(){
        $users=User::findorfail(Auth::user()->id);
        // $jenjang= DB::table('jenjang')->get();
        // $kecamatan=DB::table('kecamatan')->get();
        // $sekolah= DB::table('sekolah')->where('id',Auth::user()->sekolah_id)->first();
        return view('admin.myprofile',compact('users')); 
    }

    public function gantipassword(Request $request)
    {
        if (Auth::id() != $request->id) {
            abort(403, 'Unauthorized action.');
        }

        $user = User::find($request->id);
 
        if(!empty($request->newpaswd) && $request->newpaswd == $request->newpaswdconfirm){
            $newpassword=Hash::make($request->newpaswd);
            $user->password=$newpassword;
            $user->save(); 
            return redirect()->back()->with('success','Password berhasil diupdate!');
        }
        
        return redirect()->back()->with('error','Password baru tidak cocok!');
    }
}
