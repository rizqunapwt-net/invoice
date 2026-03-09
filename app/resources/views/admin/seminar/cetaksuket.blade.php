<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cetak SKMK pns</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
</head>
<style>
    

table {font-family: Arial; font-size: 9pt; line-height: 1.2;
			margin-top: 2pt; margin-bottom: 5pt;
			border-collapse: collapse;  }
 table.disposisi{
 	font-family: Arial;
	color:black;
	width:90%;
	border:1px solid black;
 }
 table.disposisi td {
	font-size:1em;/*border:1px solid black;*/
	border:1px solid black; 
    padding: 5px;
	 
}
table.disposisi th {
	font-size:1em;/*border:1px solid black;*/
	font-weight: bold;
	border:1px solid black;
}
table.daftarhadir{
 	font-family: Arial;
	color:black;
	width:100%;
	border:1px solid black;
 }
 table.daftarhadir td {
	font-size:1em;/*border:1px solid black;*/
	border:1px solid black; 
    padding: 5px;
	 
}
table.daftarhadir th {
	font-size:0.9em;/*border:1px solid black;*/
	font-weight: bold;
	border:1px solid black;
}
table.jadwal{
 	font-family: Arial;
	color:black;
	width:100%;
	border:1px solid black;
 }
 table.jadwal td {
	font-size:1em;/*border:1px solid black;*/
	border:1px solid black; 
    padding: 5px;
	 
}
table.jadwal th {
	font-size:1em;/*border:1px solid black;*/
	font-weight: bold;
	border:1px solid black;
}
.jam{
	font-size: 0.9em;
}
.perhatian{
	width:100%;
	font-size:0.7em;
	font-family: Arial;
}
.garis{
    margin: 0 auto;
    
	width:500px;
	background: black;
	height:2px;
}
.arab{
	 
direction: rtl;
}
.ttd{
	margin-left:390px;
	font-family: Helvetica;
	font-size:14px;
}
.ttdkuliah{
	margin-left:1000px;
	font-family: Arial;
	font-size: 0.8em;
}
.kurungan {
        width:100%;
        margin:0 auto;
         
    }
        .kiri {  
        float:left;
        width:20%;
     	 
        
    }
     
    .kanan { 
    	font-family: Arial;
    	font-size:1em;
        float:right;
        width:80%;
       
         
    }
 .foto{
 	 width:110px;padding:10px;
 	 
 	 
 }

 .kanan td{
 	margin-left:200px;

}
.jarak{
	margin-left:50px;
}
.tengah {  text-align: center; }
table.kopdaftarhadir {
	width:100%;
	font-family: arial;
	
	color:black;
	font-weight: bold;
	font-size: 14px;
	 
}
table.kop {

	font-family: Helvetica;
    font-size:16px;
    margin-left:30px;
	color:black;
    
     
	 
}
table td .kop{
    padding:20px;
}
table.info{

	width:35%;
	font-weight: bold;
	font-family: Arial;
	font-size: 14px;
}
table.judul{
	width:100%;
	font-weight: bold;
	font-family: Arial;
	font-size: 14px;
}

table.beritaacara{
	width:100%;
  
	font-family: Arial;
	font-size: 13px;
}
table.beritaacara td{
	padding: 10px;
}
table.ttdpengawas{
	width:100%;
 
	font-family: Arial;
	font-size: 13px;
}
table.ttdpengawas td{
	padding-left:10px;
}

table.kop td {
	font-size:14px;/*border:1px solid black;*/
    padding-left: 10px;
    font-family: Helvetica;
    
}
h3.kop{font-size:1.2em;}
h4.nomor{font-size:1em; margin-top:-10px}
h6.kop{font-size:0.9em;} 
.kopsurat{
    margin-top:10px;
    margin-left:10px;
}
.center {
  display: block;
  margin-top:-50px;
  margin-left: -60px;
  margin-right: auto;
  width: 120%;
}
.container{
    margin-top:70px;
    font-family: Helvetica;
}
.isi{
    font-size: 16px;
    text-align: justify;
    margin-left:30px;
}
 
</style>
<body>
    
    <img class="center" src="koplppm.png" >
    
<div class="container">
    
    
    <center>
       <br>
 

        <h2><u>S U R A T  K E T E R A N G A N </u></h2>
        <h4 class="nomor">Nomor: 66/In.17/K.LPPM/PP.06/07/2020</h4>
   </center>
   <div class="isi">
   <p class="isi">
        Yang bertanda tangan di bawah ini: 
   </p>
   <table class="kop">
        <tr><td>Nama</td> <td>:</td><td><b>H. Nurma Ali Ridlwan, M.Ag.</b></td></tr>
        <tr> <td>NIP</td> <td>:</td><td> 19740109 200501 1 003</td></tr>
        <tr><td>Jabatan  </td> <td>:</td><td> Kepala Pusat Pengabdian Masyarakat LPPM IAIN Purwokerto </td></tr>
     
     
    
  <tr>
      <td colspan=3><br>Menerangkan bahwa mahasiswa di bawah ini:<br><br></td>
  </tr>
  
     
     
 
        <tr><td width="170px">Nama</td> <td>:</td><td width="500px"> {{$user->name}}</td></tr>
        
        <tr><td valign="top">NIM</td> <td valign="top">:</td><td valign="top"> {{$user->nim}} </td></tr>
        <tr><td valign="top">Fakultas/Prodi </td> <td valign="top">:</td><td> {{$user->fakultas}}/{{$user->prodi}} </td></tr>
        
     </table>
<p class="isi">
    sedang melaksanakan kegiatan akademik/pengabdian masyarakat untuk memenuhi capaian proses studi di IAIN Purwokerto mulai tanggal 15 Juli 2020 sampai dengan 28 Agustus 2020 di wilayah masing-masing sesuai dengan domisili mahasiswa yang bersangkutan.
</p>
 
<p class="isi">
    Demikian Surat Keterangan ini dibuat dengan sebenarnya untuk dipergunakan sebagaimana mestinya.
</p>
<table class="ttd" width="800px">
    <tr>
        <td  >Purwokerto, 14 Juli 2020</td>
    </tr>
    <tr>
        <td>Kepala Pusat Pengabdian Masyarakat,</td>
    </tr>
     
    <tr>
        <td colspan="2">
             <img style="margin-left:-120px;margin-top:-20px;position:absolute" src="ttdnurma.png" width="350px">
             <br>
            <br><br><br><br>
    <strong>H. Nurma Ali Ridlwan, M.Ag.</strong><br>
    NIP.19740109 200501 1 003
    


</td>

    </tr>

</table>
<div class="kiri" style="position:absolute;margin-top:-150px">
    <img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')
                        ->size(150)->errorCorrection('H')
                        ->generate(url('/seminar/validasi/'.$unik))) !!} "><br>
</div>

{{-- Tembusan Yth:<br>
<ol>
    <li>Wakil Rektor II IAIN Purwokerto</li>
    <li>Arsip</li>
</ol> --}}

   </div>
</div>
       


    
{{-- <script type="text/php">
    if (isset($pdf)) {
        $x = 20;
        $y = 890;
        $text = "SIMPADIN version 1.0                                                                                                                                                                                                                                  Halaman {PAGE_NUM} / {PAGE_COUNT}";
        $font = null;
        $size = 7;
        $font ="Arial";
        $color = array(0,0,0);
        $word_space = 0.0;  //  default
        $char_space = 0.0;  //  default
        $angle = 0.0;   //  default
        $pdf->page_text($x, $y, $text, $font, $size, $color, $word_space, $char_space, $angle);
    }
</script> --}}
</body>
</html>