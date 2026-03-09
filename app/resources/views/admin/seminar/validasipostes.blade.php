<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CetakPostes</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
</head>
<style>
    

table {font-family: Helvetica; font-size: 12pt; line-height: 1.2;
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
    margin-top:70px;
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
    <h3>SOAL POS-TEST {{$seminar->namaseminar}}</h3>
                        <div class="table-responsive">
                            <table class="table ">
                                <tr>
                                    <td>Nama </td><td>: {{strtoupper($duser['name'])}}</td>
                                </tr>
                                <tr>
                                    <td>NIM </td><td>: {{$duser['username']}}</td>
                                </tr>
                                <tr>
                                    <td>Prodi </td><td>: {{$duser['institusi']}}</td>
                                </tr>
                            </table>
                            <table class="table ">
                                <thead>
                                    <tr>
                                        <th width="40px" align="left">No</th>
                                        
                                        <th align="left">Soal</th>
                                         
                                        
                                         
                                       
                                        
                                        
                                         
                                         
                                         
                                         
                                    </tr>
                                </thead>
                                <tbody>
                                     
                                    <?php $i=0;?>
                                    @foreach ($postes as $data)
    
    
                                        
                                     
                                      
                                         
                                    <tr>
                                        <td valign="top">{{$loop->iteration}}</td>
                                        <td valign="top"> 
                                            {{$data->soal}}  
                                      
                          
                                            <ol type="A">
                                     <?php
                                        $pilihan= \App\Pilihanpostes::where('postes_id',$data->id)->get();
                                        
                                        $cekpilihan= \App\Pilihanpostes::where('postes_id',$data->id)->count();
                                    
                                    if ($cekpilihan==0){
                                        $jwb=\App\Jawabanpostes::where('postes_id',$data->id)
                                        ->where('user_id',$duser['id'])
                                    ->first(); ?>
                       <i>jawaban: {{ $jwb['pilihanpostes_id'] }}</i>
                                    <?php }  

                                        foreach ($pilihan as $pil) { ?>
                                                               <!-- Modal -->
                                        <?php ///cek jawaban peserta
                                        $jawaban=\App\Jawabanpostes::where('pilihanpostes_id',$pil->id)
                                        ->where('user_id',$duser['id'])
                                        ->first();
                                        if($jawaban['pilihanpostes_id']== $pil->id )
                                            {   
                                             
                                            $bg='<div style="position: absolute;margin-left:-20px;margin-top:-5px;font-size:25px;color:blue">X</div>';
                                        
                                        }
                                        else{
                                        
                                            $bg=" ";
                                           
                                        }
                                        
                                        ?>                          
                                    <li > {!!$bg!!}{{$pil->pilihan}}                          
                                    </li>
    
    
    
    
                                       <?php  }?>
                                       
                                    
                                        
                                
                                </td>
                                        
                                        
                                        
                                        
                                         
                                      
                                         
                                    </tr>
                                    
                                    @endforeach
                                     
                             
                                     
                                </tbody>
                                
                            </table>
                        </div>
    
                    </div>