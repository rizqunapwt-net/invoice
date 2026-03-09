<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CetakINVOICE</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
</head>
<style>
    

table {font-family: Helvetica; font-size: 9pt; line-height: 1.2;
			margin-top: 2pt; margin-bottom: 5pt;
			border-collapse: collapse;  }
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
     font-size:14px;
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
  margin-top:50px;
  margin-left: 450px;
  margin-right: auto;
  width: 200;
}
.container{
    margin-top:70px;
    font-family: Helvetica;
}
.isi{
    font-size: 14px;
    text-align: justify;
    margin-left:30px;
}
 
</style>
<body>
    
     
    
<div class="container">
    <center>
    <img class="center" src="logo-rizquna.jpg"  style="margin-left:220px" ><br><br>
     <a href="https:/rizquna.id/">www.rizquna.id</a> | cv.rizquna@gmail.com | IG: <a href="https://www.instagram.com/penerbit_rizquna">@penerbit_rizquna</a>
        </center>
    
     
    @if($pemesanan->statusbayar =='belum')
    <img class="lunas" src="unpaid.jpg"   >
    @else
    <img class="lunas" src="lunas.jpg"  >
    @endif
    <hr>
        <u>Kode Invoice : {{$pemesanan->kodeinvoice}}</u> 
            <div  style="float:right"> <i>Tanggal order: {{ date('d M Y',strtotime($pemesanan->tanggal)) }}</i></div> 
        </center>
 <hr>
   <div class="isi">
    
      <b>Kepada Yth: {{$pemesanan->nama}}</b><br>
      
      
       berikut adalah Detail Order Anda: <br><br>
   
    
   <table class="invoice">
    <tr><th>No.</th><th  valign="top">Pemesanan</th>  <th  valign="top"> Jumlah
         </th><th>satuan</th><th>Harga @</th><th>Disc</th><th>Sub Total</th></tr>
   @foreach ($dp as $data)
   <tr>
       <td>{{ $loop->iteration }}</td>
       <td>{{ $data->nama_produk }}</td>
       <td align="right">{{ $data->jumlah }}</td>
       <td align="center">{{ $data->satuan }}</td>
       <td  align="right">Rp. {{ number_format($data->harga) }}</td>
       <td  align="right">Rp.{{ number_format($data->diskon) }}</td>
       <td  align="right">Rp. {{ number_format(($data->harga*$data->jumlah)-$data->diskon) }}</td>
    <?php
    // $total=$total+(($data->harga*$data->jumlah)-$data->diskon);?>

    </tr>
       
   @endforeach
   <tr><td colspan="6"><b>TOTAL</b></td><td align="right"><b>Rp. {{ number_format($totalnya) }}</b></td></tr>
   
 </table>
 
  
 

    @if($pemesanan->statusbayar =='belum')
    <div class="kurungan">
         <br/>
           <li>Segera transfer pembayaran sesuai dengan total tagihan dalam invoice ini ke rekening:</li>
                <b>Bank BTPN / SMBC (kode 213) : 902-4013-3956 a.n FITRIANTO</b><br/><br/>
            <li>Lakukan Konfirmasi:<br/></li>
            - Via Website : <a target="_blank" href="{{url('/pemesanan/konfirmasi/'.$pemesanan->kodeinvoice)}}">   {{url('/pemesanan/konfirmasi/'.$pemesanan->kodeinvoice)}}</a><br/>
            - Via WhatsApp : <a href="https://wa.me/81294856272?text=Konfirmasi%20pembayaran..">0812-9485-6272</a>
            
            
         
    </div>
   
         
    @else
    <table class="ttd"  >
        <tr>
            <td width="100px">Dibuat pada tanggal : {{ date('d M Y',strtotime($pemesanan->updated_at))}}</td>
        </tr>
    <tr>
        <td colspan="2">Terima kasih atas kepercayaan Anda kepada kami:<br>   <img   src="ttd.jpg" width="160"  ></td>
     
    
         
            
            {{-- <img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')
                        ->size(100)->errorCorrection('H')
                        ->generate(url('/pemesanan/invoice/'.$pemesanan->kodeinvoice))) !!} "><br>
                       Rizquna.id --}}
    

</td>

    </tr>

</table>
    @endif




   </div>
</div>
       

{{-- 
    
<script type="text/php">
    if (isset($pdf)) {
        $x = 20;
        $y = 890;
        $text = "SIMPADIN version 1.0                                                                                                                                                                                                                                  Halaman {PAGE_NUM} / {PAGE_COUNT}";
        $font = null;
        $size = 7;
        $font ="Helvetica";
        $color = array(0,0,0);
        $word_space = 0.0;  //  default
        $char_space = 0.0;  //  default
        $angle = 0.0;   //  default
        $pdf->page_text($x, $y, $text, $font, $size, $color, $word_space, $char_space, $angle);
    }
</script> --}}
</body>
</html>