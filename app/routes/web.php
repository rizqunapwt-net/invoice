<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
 
// Route::get('/', function () {
//     $seminar=\App\Seminar::all()->whereNotNull('brosur')->sortByDesc('created_at')->take(5);
//     //dd($seminar);
//     $testimoni=\App\Testimoni::all()->sortByDesc('created_at')->take(5);
//     $paket=\App\Paket::all()->where('status','aktif')->sortBy('harga')->take(6);
  
// return view('welcome',compact('seminar','testimoni','paket'));
// })->name('halamanutama');
Route::get('/', function () {
    $seminar=\App\Seminar::all()->whereNotNull('brosur')->sortByDesc('created_at')->take(5);
    //dd($seminar);
    $testimoni=\App\Testimoni::all()->sortByDesc('created_at')->take(5);
    $paket=\App\Paket::all()->where('status','aktif')->sortBy('harga')->take(6);
  
return view('welcome',compact('seminar','testimoni','paket'));
})->name('halamanutama');
Route::get('/about', function () {
    return view('tentang');
})->name('tentang');
// Route::get('/seminar/download/{id}','SeminarController@downloadsertifikat')->name('downloadsertifikat');
// Route::get('/about', function () {
//     return view('tentang');
// })->name('tentang');
// Route::get('/registrasiakun', function () {
//     return view('registrasiakun');
// })->name('registrasiakun');
Route::get('/sitemap.xml', 'SitemapController@index');
// Route::post('/registrasiakun','UserController@simpanpendaftaran')->name('user.simpanpendaftaran')->middleware('throttle:5,1');
Route::get('/ketentuan-layanan', 'TosController@view')->name('tos');
 
Route::get('/logout', '\App\Http\Controllers\Auth\LoginController@logout');
// Route::get('/seminar/registrasi/{id}','SeminarController@registrasi')->name('seminar.daftar');
// Route::get('/seminar/konfirmasi/{idpes}/{semid}','SeminarController@konfirmasi')->name('konfirmasi');
// Route::get('/seminar/print/{id}','SeminarController@formcetak')->name('formcetak');
// Route::get('/seminar/presensi/{id}','SeminarController@presensi')->name('presensi');
// Route::post('/seminar/presensi/','SeminarController@simpanpresensi')->name('simpanpresensi');
// Route::get('/seminar/cetak/{id}','SeminarController@cetaksertifikat')->name('cetaksertifikat');

// Route::get('/seminar/validasi/{unik}','SeminarController@validasisertifikat')->name('validasisertifikat');
// Route::get('/seminar/cetak/','SeminarController@cetak')->name('cetak');
// Route::post('/seminar/registrasi','SeminarController@simpanpendaftaran')->name('seminar.simpanpendaftaran');
// Route::post('/admin/seminar/uploadtrf', 'SeminarController@uploadtrf')->name('uploadtrf');
// Route::post('/seminar/print/','SeminarController@cetaktanpalogin')->name('cetaktanpalogin');
// Route::get('/seminar/kwitansi/semid/{id}/{unik}','SeminarController@cetakkwitansi')->name('cetakkwitansi');
//Route::get('/pemesanan/invoice/{unik}','PemesananController@cetakinvoice')->name('cetakinvoice');
Route::middleware('auth')->group(function() {
    Route::get('/pemesanan/invoice/{unik}','PemesananController@cetakinvoiceDOMPDF')->name('cetakinvoicedompdf');
    Route::get('/pemesanan/konfirmasi/{unik}','PemesananController@konfirmasiinvoice')->name('konfirmasiorder');
    Route::post('/pemesanan/konfirmasi/', 'PemesananController@uploadtrf')->name('uploadtrf.order');
});
// Route::get('/seminar/print', function(){
//     return view('welcome');
// });///untuk redirect print

// Route::get('/validasipretes/semid/{id}/pre/u/{userid}', 'PretesController@validasi')->name('validasipretes');
// Route::get('/validasipostes/semid/{id}/pos/u/{userid}', 'PostesController@validasi')->name('validasipostes');
Route::get('verifikasi/register/{token}','SeminarController@verif');

Auth::routes(['register' => false]);


// Route::group(['middleware'=>['checklevel:admin', 'auth']],function(){
        
//     });
Route::middleware('auth')->group(function() {
        Route::get('/home', 'HomeController@index')->name('home');
        Route::get('/terlarang', 'HomeController@terlarang')->name('terlarang');
});
Route::group(['middleware'=>['checklevel:admin', 'auth']],function(){
            //users
        Route::delete('/admin/users/hapus/{id}', 'UserController@hapus')->name('users.hapus');
        Route::get('/admin/users/detail/{id}', 'UserController@detailuser')->name('detailuser');
        Route::get('/admin/users/search', 'UserController@cariuser')->name('cariuser');
        Route::get('/admin/users/viewimport', 'UserController@viewimport');
        Route::get('/admin/users/export', 'UserController@export')->name('export');
        Route::post('/admin/users/import', 'UserController@import')->name('users.import');
        Route::get('/admin/users', 'UserController@index')->name('users');
        Route::get('/admin/users/updateunik', 'UserController@updateunik')->name('updateunik');
        Route::get('/admin/users/tambah', 'UserController@tambah')->name('users.tambah');
        Route::post('/admin/users/tambah', 'UserController@simpan')->name('users.simpan');
        Route::get('/admin/users/edit/{id}', 'UserController@edit')->name('users.edit');
        Route::post('/admin/users/kirimemail', 'UserController@kirimemail')->name('kirimemail');

        Route::post('/admin/users/update/{id}', 'UserController@update')->name('users.update');
        // Route::get('/admin/users/import', 'UserController@import')->name('users.import');
        // Route::post('/admin/users/import', 'UserController@simpanimport')->name('users.simpanimport');
        // ///kategori pengeluaran
        // Route::get('/admin/kategori-pengeluaran', 'KatpengeluaranController@index')->name('katpengeluaran');
        // Route::delete('/admin/kategori-pengeluaran/hapus/{id}', 'KatpengeluaranController@hapus')->name('katpengeluaran.hapus');
 
        // Route::post('/admin/kategori-pengeluaran/', 'KatpengeluaranController@simpan')->name('katpengeluaran.simpan');
        
        // Route::post('/admin/kategori-pengeluaran/update/', 'KatpengeluaranController@update')->name('katpengeluaran.update');

        // ///pengeluaran
        // Route::delete('/admin/pengeluaran/hapus/{id}', 'PengeluaranController@hapus')->name('pengeluaran.hapus');
        // Route::get('/admin/pengeluaran/detail/{id}', 'PengeluaranController@detailpengeluaran')->name('detailpengeluaran');
        // Route::get('/admin/pengeluaran/search', 'PengeluaranController@caripengeluaran')->name('caripengeluaran');
        // Route::get('/admin/pengeluaran/viewimport', 'PengeluaranController@viewimport');
        // Route::get('/admin/pengeluaran/export', 'PengeluaranController@export')->name('export');
        // Route::post('/admin/pengeluaran/import', 'PengeluaranController@import')->name('pengeluaran.import');
        // Route::get('/admin/pengeluaran', 'PengeluaranController@index')->name('pengeluaran');
        // Route::get('/admin/pengeluaran/updateunik', 'PengeluaranController@updateunik')->name('updateunik');
        // Route::get('/admin/pengeluaran/tambah', 'PengeluaranController@tambah')->name('pengeluaran.tambah');
        // Route::post('/admin/pengeluaran/tambah', 'PengeluaranController@simpan')->name('pengeluaran.simpan');
        // Route::get('/admin/pengeluaran/edit/{id}', 'PengeluaranController@edit')->name('pengeluaran.edit');
        // Route::post('/admin/pengeluaran/kirimemail', 'PengeluaranController@kirimemail')->name('kirimemail');

        // Route::post('/admin/pengeluaran/update', 'PengeluaranController@update')->name('pengeluaran.update');
        // Route::get('/admin/pengeluaran/import', 'PengeluaranController@import')->name('pengeluaran.import');
        // Route::post('/admin/pengeluaran/import', 'PengeluaranController@simpanimport')->name('pengeluaran.simpanimport');
        // ///end pengeluaran
        // ///rekap keuangan
        // Route::get('/admin/rekapkeuangan', 'KeuanganController@index')->name('rekapkeuangan');
        // Route::post('/admin/rekapkeuangan', 'KeuanganController@hasilrekap')->name('hasilrekap');
        // Route::post('/admin/cetakrekapkeuangan', 'KeuanganController@cetakrekap')->name('cetakrekap');
        // ///end rekap keuangan
        // ////testimoni
        
        // Route::get('/admin/testimoni', 'TestimoniController@index')->name('testimoni');
        // // Route::get('/admin/testimoni/datapeserta/{id}', 'TestimoniController@datapeserta')->name('datapeserta');
        // Route::get('/admin/testimoni/tambah', 'TestimoniController@tambah')->name('testimoni.tambah');
        // Route::post('/admin/testimoni/tambah', 'TestimoniController@simpan')->name('testimoni.simpan');
        // Route::get('/admin/testimoni/edit/{id}', 'TestimoniController@edit')->name('testimoni.edit');
        // Route::delete('/admin/testimoni/hapus/{id}', 'TestimoniController@hapus')->name('testimoni.hapus');
        // Route::post('/admin/testimoni/update/{id}', 'TestimoniController@update')->name('testimoni.update');
        // ///pretes
        // Route::get('/admin/seminar/pretes/{id}', 'PretesController@pretes')->name('pretes');
        // Route::post('/admin/seminar/pretes/', 'PretesController@simpan')->name('simpansoalpretes');
        // Route::post('/admin/seminar/pretes/update', 'PretesController@updatesoal')->name('updatesoalpretes');
        // Route::delete('/admin/seminar/pretes/hapus/{id}', 'PretesController@hapuspretes')->name('pretes.hapus');
        // Route::post('/admin/seminar/pilihanpretes', 'PretesController@simpanpilihan')->name('simpanpilihanpretes');
        // Route::post('/admin/seminar/pilihanpretes/update/', 'PretesController@updatepilihan')->name('updatepilihanpretes');
        // Route::delete('/admin/seminar/pilihanpretes/hapus/{id}', 'PretesController@hapuspilihan')->name('pilihanpretes.hapus');
        // Route::get('/admin/seminar/statpretes/{id}', 'PretesController@stat')->name('statpretes');
        // Route::get('/admin/seminar/cetakpretes/{id}', 'PretesController@cetak')->name('cetakpretes');
        // Route::get('/admin/seminar/belumpretes/{id}', 'PretesController@belum')->name('belumpretes');
        // ///end pretes
 

        // ///postes
        // Route::get('/admin/seminar/postes/{id}', 'PostesController@postes')->name('postes');
        // Route::get('/admin/seminar/copypretes/{id}', 'PostesController@copypretes')->name('copypretes');
        // Route::post('/admin/seminar/postes/', 'PostesController@simpan')->name('simpansoalpostes');
        // Route::post('/admin/seminar/postes/update', 'PostesController@updatesoal')->name('updatesoalpostes');
        // Route::delete('/admin/seminar/postes/hapus/{id}', 'PostesController@hapuspostes')->name('postes.hapus');
        // Route::post('/admin/seminar/pilihanpostes', 'PostesController@simpanpilihan')->name('simpanpilihanpostes');
        // Route::post('/admin/seminar/pilihanpostes/update/', 'PostesController@updatepilihan')->name('updatepilihanpostes');
        // Route::delete('/admin/seminar/pilihanpostes/hapus/{id}', 'PostesController@hapuspilihan')->name('pilihanpostes.hapus');
        // Route::get('/admin/seminar/statpostes/{id}', 'PostesController@stat')->name('statpostes');
        // Route::get('/admin/seminar/cetakpostes/{id}', 'PostesController@cetak')->name('cetakpostes');
        // Route::get('/admin/seminar/belumpostes/{id}', 'PostesController@belum')->name('belumpostes');
        // ///end postes
       
        
        // //tos
        // Route::get('/admin/tos', 'TosController@index')->name('tos');
        // Route::get('/admin/tos/tambah', 'TosController@tambah')->name('tos.tambah');
        // Route::post('/admin/tos/tambah', 'TosController@simpan')->name('tos.simpan');
        // Route::get('/admin/tos/edit/{id}', 'TosController@edit')->name('tos.edit');
        // Route::delete('/admin/tos/hapus/{id}', 'TosController@hapus')->name('tos.hapus');
        // Route::post('/admin/tos/update/{id}', 'TosController@update')->name('tos.update');
        // Route::get('/admin/tos/detail/{id}', 'TosController@detail')->name('tos.detail');
        ///data order
        Route::get('/admin/order', 'PemesananController@dataorder')->name('dataorder');
        Route::post('/admin/order/tambah', 'PemesananController@tambahorder')->name('tambahorder');
        Route::post('/admin/order/edit', 'PemesananController@editorder')->name('editorder');
        Route::get('/admin/order/search', 'PemesananController@cariorder')->name('cariorder');
        Route::get('/admin/order/cektransferan/{unik}', 'PemesananController@cektransferan')->name('cektransferan.order');
        Route::post('/admin/order/lunas', 'PemesananController@lunas')->name('lunas');
        Route::delete('/admin/pemesanan/hapus/{id}', 'PemesananController@hapus')->name('pemesanan.hapus');
        //paket
        Route::get('/admin/paket', 'PaketController@index')->name('paket');
        Route::get('/admin/paket/tambah', 'PaketController@tambah')->name('paket.tambah');
        Route::post('/admin/paket/tambah', 'PaketController@simpan')->name('paket.simpan');
        Route::get('/admin/paket/edit/{id}', 'PaketController@edit')->name('paket.edit');
        Route::delete('/admin/paket/hapus/{id}', 'PaketController@hapus')->name('paket.hapus');
        Route::post('/admin/paket/update/{id}', 'PaketController@update')->name('paket.update');
        Route::get('/admin/paket/detail/{id}', 'PaketController@detail')->name('paket.detail');
        ////seminar
        Route::get('/admin/seminar', 'SeminarController@index')->name('seminar');
        Route::get('/admin/seminar/datapeserta/{id}', 'PesertaController@datapeserta')->name('datapeserta');
        Route::get('/admin/seminar/pesertasearch', 'PesertaController@caridatapeserta')->name('caridatapeserta');
        
        Route::get('/admin/seminar/updateemailpeserta/{id}', 'PesertaController@updateemailpeserta')->name('updateemailpeserta');
        Route::get('/admin/seminar/exportpeserta/{id}', 'PesertaController@export')->name('export.datapeserta');
        Route::post('/admin/seminar/kirimemailpeserta', 'SeminarController@kirimemailpeserta')->name('kirimemailpeserta');
        Route::post('/admin/seminar/kirimsertifikatpeserta', 'SeminarController@kirimsertifikatpeserta')->name('kirimsertifikatpeserta');
        Route::get('/admin/seminar/datapeserta/import/{id}', 'PesertaController@import')->name('import.datapeserta');
        Route::post('/admin/seminar/datapeserta/import', 'PesertaController@simpanimport')->name('datapeserta.simpanimport');
        Route::get('/admin/seminar/tambah', 'SeminarController@tambah')->name('seminar.tambah');
        Route::post('/admin/seminar/tambah', 'SeminarController@simpan')->name('seminar.simpan');
        Route::get('/admin/seminar/edit/{id}', 'SeminarController@edit')->name('seminar.edit');
        Route::delete('/admin/seminar/hapus/{id}', 'SeminarController@hapus')->name('seminar.hapus');
        Route::delete('/admin/seminar/hapuspeserta/{id}', 'SeminarController@hapuspeserta')->name('hapuspeserta');
        Route::get('/admin/seminar/cektransferan/{id}', 'SeminarController@cektransferan')->name('cektransferan');
        Route::get('/admin/seminar/search', 'SeminarController@cariseminar')->name('cariseminar');
        Route::delete('/admin/seminar/materi/{id}', 'SeminarController@hapusmateri')->name('hapusmateri');
        Route::post('/admin/seminar/updatepeserta/', 'SeminarController@updatepeserta')->name('updatepeserta');
        Route::post('/admin/seminar/aktifasipeserta/{id}', 'SeminarController@aktifasipeserta')->name('aktifasipeserta');
        Route::get('/admin/seminar/cetakpresensi/{id}', 'SeminarController@cetakpresensi')->name('cetakpresensi');
        Route::get('/admin/seminar/cetakpeserta/{id}', 'SeminarController@cetakpeserta')->name('cetakpeserta');
        Route::get('/admin/seminar/cetakcvpeserta/{id}', 'PesertaController@cetakcvpeserta')->name('cetakcvpeserta');
        Route::post('/admin/seminar/update/{id}', 'SeminarController@update')->name('seminar.update');
        Route::get('/admin/seminar/import', 'SeminarController@import')->name('seminar.import');
        Route::post('/admin/seminar/import', 'SeminarController@simpanimport')->name('seminar.simpanimport');
        Route::get('/admin/seminar/detail/{id}', 'SeminarController@detail')->name('adminseminar.detail');
        Route::post('/admin/seminar/simpanpemateri', 'SeminarController@simpanpemateri')->name('simpanpemateri');
        Route::post('/admin/seminar/uploadbg', 'SeminarController@uploadbg')->name('uploadbg');
        Route::post('/admin/seminar/uploadbrosur', 'SeminarController@uploadbrosur')->name('uploadbrosur');
        Route::post('/admin/seminar/uploadmateri', 'SeminarController@uploadmateri')->name('uploadmateri');
        Route::get('myprofile/', 'UserController@myprofile')->name('myprofile');
        
});

Route::group(['middleware'=>['checklevel:user', 'auth']],function(){
        Route::get('myprofile/', 'UserController@myprofile')->name('myprofile');
        Route::post('myprofile/updatettl', 'UserController@updatettl')->name('updatettl');
        Route::post('myprofile/', 'UserController@gantipassword')->name('gantipassword');
        ////seminar

        Route::get('/seminar/seminarku', 'SeminarController@seminarku')->name('seminarku');
        Route::get('/seminar/detail/{id}', 'SeminarController@detail')->name('seminar.detail');
        Route::get('/seminar/daftar/', 'SeminarController@daftar')->name('seminar.daftarbaru');
        Route::post('/seminar/daftar/', 'SeminarController@simpandaftarabaru')->name('seminar.simpandaftarbaru');

        ///tagihanku
        Route::get('/tagihanku', 'PemesananController@tagihanku')->name('tagihanku');

        ////pemesanan
        Route::get('/pemesanan/{id}','PemesananController@order')->name('order');
        Route::get('/pemesanan/konfirmasi/{idpes}/{semid}','PemesananController@konfirmasi')->name('konfirmasi');
        Route::post('/pemesanan','PemesananController@simpan')->name('order.simpan');

        //pretes
        Route::get('/seminar/kerjakanpretes/{seminar_id}', 'PretesController@kerjakan')->name('kerjakanpretes');
        Route::post('/seminar/simpanjawaban.pretes', 'PretesController@simpanjawaban')->name('simpanjawabanpretes');

        //postes
        Route::get('/seminar/kerjakanpostes/{seminar_id}', 'PostesController@kerjakan')->name('kerjakanpostes');
        Route::post('/seminar/simpanjawaban.postes', 'PostesController@simpanjawaban')->name('simpanjawabanpostes');
        Route::get('/suket/cetak/semid/{id}/{unik}','SeminarController@cetaksuket')->name('cetaksuket');
});

 
