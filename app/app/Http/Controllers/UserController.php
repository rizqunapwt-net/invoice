<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Hash;
use DB;
use Excel;
use App\Peserta;
use Auth;
use App\Seminar;
 
use Mail;
use App\Imports\UsersImport;
use App\Imports\BackupImport;
class UserController extends Controller
{
    public function kirimemail(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'pesan' => 'required|string',
        ]);

        $cleanBody = strip_tags($request->pesan, '<p><br><b><i><u><strong><em><ul><ol><li><a><h1><h2><h3><h4><h5><h6><table><tr><td><th><span><div>');

        Mail::send([], [], function ($message) use($request, $cleanBody) {
            $message->to($request->email)
              ->subject('info seminar')
              ->setBody($cleanBody, 'text/html');
              $message->replyTo(env('MAIL_REPLY_TO', 'noreply@rizquna.id'),"Admin Rizquna");
            $message->from(env('MAIL_FROM_ADDRESS', 'noreply@rizquna.id'), env('MAIL_FROM_NAME', 'Penerbit Rizquna'));
          });
          return redirect()->back()->with('success','Sukses!');
    }

    public function simpanpendaftaran(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'username' => 'required|string|max:255|alpha_dash',
            'password' => 'required|string|min:8',
            'phone' => 'nullable|string|max:20',
            'institusi' => 'nullable|string|max:255',
        ]);

        ///cek dulu di datauser sudah ada atau belum
        $cekuser=User::where('email',$request->email)->orWhere('username',$request->username)->count();
        if($cekuser == 0)
        {
            $remember_token=base64_encode($request->email);
            $user=new User;
            $user->name=$request->name;
            $user->email=$request->email;
            $user->password=Hash::make($request->password);
            $user->level='user';
            $user->nim=$request->nim;
            $user->prodi=$request->prodi;
            $user->phone=$request->phone;
            $user->username=$request->username;
            $user->institusi=$request->institusi;
            $user->remember_token=$remember_token;
            $user->status=$request->status;
            $user->save();
            

            
            ///simpan di data peserta
            $dp=User::where('email',$request->email)->get();
          

            ///kirim email
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

    public function index()
    {
        $users= User::paginate(25);
        
        
        return view('admin.users.index', compact('users'));
    }
    public function cariuser(Request $request)
    {
        
            $q = $request->q;
            if($q != ""){
            $user = User::where ( 'name', 'LIKE', '%' . $q . '%' )
            ->orWhere ( 'username', 'LIKE', '%' . $q . '%' )
            ->orWhere ( 'email', 'LIKE', '%' . $q . '%' )->paginate (50)->setPath ( '' );
            $pagination = $user->appends ( array (
               'q' => $request->q
             ) );

            if (count ( $user ) > 0)
             return view ( 'admin.users.hasilsearch',compact('user','q') )->withDetails ( $user )->withQuery ( $q );
            }
             return view ( 'admin.users.hasilsearch',compact('user','q') )->withMessage ( 'No Details found. Try to search again !' );
          

    }
    public function tambah()    
    {
         

        return view('admin.users.tambah');
    }

    public function simpan(Request $request)
    {
        $users= new User;
        $users -> username=$request->username;
        $users -> name=$request->name;
        $users -> email=$request->email;
       
        $users -> level=$request->level;
         
            $password=Hash::make($request->password);
         
        
        $users->password=$password;
       
        $users ->save(); 
       return redirect()->back()->with('success', 'users berhasil disimpan!');
    }
    public function edit($id)
    {
        $users=User::findorfail($id);
         
        return view('admin.users.edit',compact('users')); 
    }
    public function detailuser($id)
    {
        $user=User::findorfail($id);
        $peserta=Peserta::where('user_id',$id)->paginate(10);
//  dd($peserta);
        return view('admin.users.detailuser',compact('user','peserta')); 
    }
    public function updateunik()
    {
         
        $users = Peserta::all();
        foreach($users as $user)
        {
            $unik=base64_encode($user->id.uniqid());
            $us=Peserta::find($user->id);
            $us->unik=$unik;
            $us->save();
            
        }
         
     
    

        return  "berhasil";
    }

    public function update(Request $request, $id)
    {
         
        $users = User::find($id);
 
        $users -> name=$request->name;
        $users -> email=$request->email;
        $users-> alamat=$request-> alamat;
        $users->institusi=$request->institusi;
        $users->tgchat_id=$request->tgchat_id;
     
        $users -> level=$request->level;
        if(!empty($request->password)){
            $password=Hash::make($request->password);
        }
        else{
            $password=$request->tmp_paswd;
        }
       //dd($password);
       $users->password=$password;
        $users ->save(); 

        return redirect()->back()->with('success','Data berhasil diupdate!');
    }
    public function hapus($id)
    {
        if($id=='1')
        {
            return redirect()->back()->with('error','Maaf, user ini gak bisa dihapus yaaa!');
        }
        else{

        
        $users = User::findorfail($id);
        $users->delete();
        return redirect()->back()->with('success','Data berhasil dihapus!');
        }
    }
    public function import()
    {
        
      return view('admin.users.import');
       
    }
    public function simpanimport(Request $request)
    {
        ini_set('memory_limit',"4000M");
        ini_set('max_execution_time', 0);
    $this->validate($request,
        ['file_users' => 'required|mimes:xls,xlsx'

    ]);
    $path   = $request->file('file_users')->getRealPath();
    // Excel::import($import,request()->file('file_nilai'));
    $import=new UsersImport;
    Excel::import($import,request()->file('file_users'));
    $jumdata=$import->getRowCount();
      return back()->with('success',$jumdata." data sukses diimport");
       
    }


    public function myprofile(){
        $users=User::findorfail(Auth::user()->id);
         
        return view('admin.myprofile',compact('users')); 
    }
    public function updatettl(Request $request)
    {
         
        $users = User::find($request->id);   
        $users->phone=$request->phone;
        $users->ttl=$request->ttl;
        $users->alamat=$request->alamat;
        
        $users ->save(); 
         
        return redirect()->back()->with('success','Data profile berhasil diupdate!');
       
        
    }

    public function gantipassword(Request $request)
    {
         
        $users = User::find($request->id);
 
     
        if(!empty($request->newpaswd) && $request->newpaswd == $request->newpaswdconfirm){
            $newpassword=Hash::make($request->newpaswd);
        }

        $users->password=$newpassword;
        
        $users ->save(); 
         
        return redirect()->back()->with('success','Password berhasil diupdate!');
       
        
    }
}
