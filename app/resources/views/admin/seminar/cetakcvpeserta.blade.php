<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CetakCVPeserta</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
</head>
<style>
    

table {font-family: Helvetica; font-size: 12pt; line-height: 1.2;
			margin-top: 2pt; margin-bottom: 5pt;padding:5px;
			border-collapse: collapse;  }
table td{
padding:10px;
}
 table.disposisi{
 	font-family: Helvetica;
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
table.invoice{
 	font-family: Helvetica;
	color:black;
	width:100%;
	 
 }
 table.invoice td {
    font-size:1em;/*border:1px solid black;*/
    font-family: Helvetica;
	 border:1px collapse solid black;
    padding: 5px;
	 
}
table.invoice th {
	font-size:0.9em;/*border:1px solid black;*/
	font-weight: bold;
	border:1px solid black;
}
table.jadwal{
 	font-family: Helvetica;
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
	font-family: Helvetica;
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
	margin-left:320px;
	font-family: Helvetica;
	font-size:14px;
}
.ttdkuliah{
	margin-left:1000px;
	font-family: Helvetica;
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
    	font-family: Helvetica;
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
table.kopinvoice {
	width:100%;
	font-family: Helvetica;
	
	color:black;
	font-weight: bold;
	font-size: 14px;
	 
}
table.kop {

	font-family: Helvetica;
    margin-left:30px;
	color:black;
    font-weight: bold;
    font-size:14px;
	 
}
table.info{

	width:35%;
	font-weight: bold;
	font-family: Helvetica;
	font-size: 14px;
}
table.judul{
	width:100%;
	font-weight: bold;
	font-family: Helvetica;
	font-size: 14px;
}

table.beritaacara{
	width:100%;
  
	font-family: Helvetica;
	font-size: 13px;
}
table.beritaacara td{
	padding: 10px;
}
table.ttdpengawas{
	width:100%;
 
	font-family: Helvetica;
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
  margin-top:-100px;
  margin-left: 200px;
  margin-right: auto;
  width: 200;
}
.lunas{
    display: block;
  margin-top:20px;
  margin-left: 450px;
  margin-right: auto;
  width: 100;
}
.container{
    margin-top:10px;
    font-family: Helvetica;
}
.isi{
    font-size: 14px;
    text-align: justify;
    margin-left:30px;
}
.silang{
    background-image:url("{{asset('silang.png')}}") no-repeat;
}
 
.page_break { page-break-before: always; }
</style>
<body>
    <div class="container">
     
    @foreach ($peserta as $data)
 


    <center>
<h3>CURRICULUM VITAE PESERTA<br>{{$seminar->namaseminar}}</h3>
    </center>
                    
                        <table class="table ">
                            <tr>
                                <td valign="top" width="150px">Nama </td><td valign="top" width="20px">:</td><td valign="top" width="300px">{{$data->namapeserta}}</td>
                            </tr>
                            @if(!empty($data->user->nim) )
                            <tr>
                                <td valign="top">NIM </td><td valign="top">:</td><td valign="top"> {{$data->user->nim}}</td>
                            </tr>
                            @endif
                            @if(!empty($data->user->ttl))
                            <tr>
                                <td valign="top">Tempat, Tanggal Lahir </td><td valign="top">:</td><td valign="top"> {{$data->user->ttl}}</td>
                            </tr>
                            @endif
                            @if(!empty($data->user->alamat))
                            <tr>
                                <td valign="top">Alamat </td><td valign="top">:</td><td valign="top">{{$data->user->alamat}}</td>
                            </tr>
                           @endif
                           @if(!empty($data->user->institusi))
                            <tr>
                                <td valign="top">Institusi </td><td valign="top">:</td><td valign="top">{{$data->user->institusi}}</td>
                            </tr>
                            @endif
                           @if(!empty($data->user->fakultas ))
                            <tr>
                                <td valign="top">Fakultas/Prodi </td><td valign="top">:</td><td valign="top">{{$data->user->fakultas}}/{{$data->user->prodi}}</td>
                            </tr>
                            @endif
                            @if(!empty($data->user->semester))
                            <tr>
                                <td valign="top">Semester</td><td valign="top">:</td><td valign="top">{{$data->user->semester}}</td>
                            </tr>
                            @endif
                            <tr>
                                <?php
                                if($data->user->phone != null)
                                {
                                    $phone=$data->user->phone;
                                }
                                else {
                                    $phone="";
                                }?>
                                <td valign="top">No.Telepon </td><td valign="top">:</td><td valign="top">{{$phone}}</td><td valign="top"></td>
                            </tr>
                           
                            <tr>
                                <td valign="top">Email </td><td valign="top">:</td><td valign="top">{{$data->user->email}}</td>
                            </tr>
                            @if(!empty($data->kesanpesan))
                            <tr>
                                <td valign="top">Kesan/Pesan </td><td valign="top">:</td><td valign="top">{{$data->kesanpesan}}</td>
                            </tr>
                            @endif

                        </table>
                         
   
                    {{-- validasipretes/semid/7/pre/u/779 --}}
                    <div style="margin-left:500px">
                        {{date('d-m-Y', strtotime($seminar->tanggal))}}<br>
                       {{-- {{$seminar->tanggal}} --}}
                    <img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')
                        ->size(170)->errorCorrection('H')
                        ->generate('http://mesem.rizquna.id/seminar/validasi/'.$data->unik)) !!} ">
                    </div>
                </div>
                
                <div class="page_break"></div>
                {{-- <script type="text/php">
                    if (isset($pdf)) {
                        $x = 550;
                        $y = 10;
                        $text = "{PAGE_NUM}";
                        $font = null;
                        $size = 8;
                        $color = array(255,0,0);
                        $word_space = 0.0;  //  default
                        $char_space = 0.0;  //  default
                        $angle = 0.0;   //  default
                        $pdf->page_text($x, $y, $text, $font, $size, $color, $word_space, $char_space, $angle);
                    }
                </script> --}}
                @endforeach
 