<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cetak Rekapitulasi</title>
</head>
<body>
    <style>
    

        .table {font-family: sans-serif; font-size: 9pt; line-height: 1.2;
                    margin-top: 2pt; margin-bottom: 5pt;
                    border-collapse: collapse;  }
         table.disposisi{
             font-family: sans-serif;
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
            border:1px solid black;
        }
        table.daftarhadir{
             font-family: sans-serif;
            color:black;
            width:80%;
            border:1px solid black;
            border-collapse: collapse;
         }
         table.daftarhadir td {
            font-size:13px;/*border:1px solid black;*/
            border:1px solid black; 
            padding: 5px;font-family:sans-serif;
          
                    border-collapse: collapse; 
             
        }
        table.daftarhadir th {
            
                    border-collapse: collapse; 
            font-size:13px;/*border:1px solid black;*/
            font-weight: bold; font-family: sans-serif;
            border:1px solid black;
        }
        table.jadwal{
             font-family: sans-serif;
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
            font-family: sans-serif;
        }
        .garis{
            width:100%;
            background: black;
            height:3px;
        }
        .arab{
             
        direction: rtl;
        }
        .ttd{
            margin-left:420px;
            font-family: Helvetica;
            font-size:14px;
        }
        .ttdkuliah{
            margin-left:1000px;
            font-family: sans-serif;
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
                font-family: sans-serif;
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
        
            font-family: arial;
            margin-left:30px;
            color:black;
            font-weight: bold;
             
        }
        table.info{
        
            width:35%;
            font-weight: bold;
            font-family: sans-serif;
            font-size: 14px;
        }
        table.judul{
            width:50%;
            font-weight: bold;
            font-family: sans-serif;
            font-size: 13px;
        }
        
        table.beritaacara{
            width:100%;
          
            font-family: sans-serif;
            font-size: 13px;
        }
        table.beritaacara td{
            padding: 10px;
        }
        table.ttdpengawas{
            width:100%;
         
            font-family: sans-serif;
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
          margin-left: -100px;
          margin-right: auto;
          width: 120%;
        }
        .container{
            margin-top:70px;
            font-family: Helvetica;
        }
        .isi{
            font-size: 1em;
            text-align: justify;
            margin-left:30px;
        }
         
          /** Define the margins of your page **/
          @page {
                margin: 100px 25px;
            }

            header {
                position: fixed;
                top: -60px;
                left: 0px;
                right: 0px;
                height: 50px;

                /** Extra personal styles **/
                background-color: #03a9f4;
                color: white;
                text-align: center;
                line-height: 35px;
            }

            footer {
                position: fixed; 
                bottom: -60px; 
                left: 0px; 
                right: 0px;
                height: 50px; 

                /** Extra personal styles **/
                /* background-color: #03a9f4; */
                color: black;
                text-align: center;font-size: 10px
                /* line-height: 35px; */
            }
            .pagenum:before {
            content: counter(page);
            }
        </style>
 
 <table class="kop">
<tr>
    <td>REKAPITULASI NILAI USBN PAI TAHUN {{$tahunajaran->namatahunajaran}}</td>
</tr>
 </table>
 <br>
 <div style="margin-left:45px">
 <table class="judul">
     <tr>
        <td>Tingkat</td><td>: {{$jenjang->jenjang}}</td>
    </tr>
    <tr><td>Nama Sekolah</td><td>: {{$sekolah->namasekolah}}</td></tr>
    <tr><td>Kecamatan</td><td>: {{$kecamatan->kecamatan}}</td></tr>
    <tr><td>Kabupaten</td><td>: Tegal</td></tr>

 
    <tr>
       <td>1. Jumlah Peserta</td><td>: {{$jumlahpeserta}}</td>
   </tr>
   <tr><td>2. Nilai Tertinggi</td><td>: {{$max->n_teori}}</td></tr>
   <tr><td>3. Nilai Terendah</td><td>: {{$min->n_teori}}</td></tr>
   <tr><td>4. Rata-rata</td><td>: {{ number_format($rata,2)}}</td></tr>
   <tr><td>5. Rentang nilai</td><td>:</td></tr>

</table>
 
 <br>
              
<div style="margin-left:50px">
                        <table class="daftarhadir"  >
                            <thead>
                                <tr>
                                    <th width="10%">No</th>
                                    
                                    <th width="20%">Rentang</th>
                                    <th width="50%">Jumlah</th>
                                
                              
                                    <th width="20%">Prosentase</th>
                                    
                                     
                                </tr>
                            </thead>
                            <tbody>

                            <tr><td>1</td><td>1-10</td><td align="center">{{$nilai1}}</td><td align="center">{{  number_format($prosen1,2)}}</td></tr>
                            <tr><td>2</td><td>11-20</td><td align="center">{{$nilai2}}</td><td align="center">{{ number_format($prosen2,2)}}</td></tr>
                            <tr><td>3</td><td>21-30</td><td align="center">{{$nilai3}}</td><td align="center">{{ number_format($prosen3,2)}}</td></tr>
                            <tr><td>4</td><td>31-40</td><td align="center">{{$nilai4}}</td><td align="center">{{ number_format($prosen4,2)}}</td></tr>
                            <tr><td>5</td><td>41-50</td><td align="center">{{$nilai5}}</td><td align="center">{{ number_format($prosen5,2)}}</td></tr>
                            <tr><td>6</td><td>51-60</td><td align="center">{{$nilai6}}</td><td align="center">{{ number_format($prosen6,2)}}</td></tr>
                            <tr><td>7</td><td>61-70</td><td align="center">{{$nilai7}}</td><td align="center">{{ number_format($prosen7,2)}}</td></tr>
                            <tr><td>8</td><td>71-80</td><td align="center">{{$nilai8}}</td><td align="center">{{ number_format($prosen8,2)}}</td></tr>
                            <tr><td>9</td><td>81-90</td><td align="center">{{$nilai9}}</td><td align="center">{{ number_format($prosen9,2)}}</td></tr>
                            <tr><td>10</td><td>91-100</td><td align="center">{{$nilai10}}</td><td align="center">{{ number_format($prosen10,2)}}</td></tr>
                              {{-- <tr><td colspan=3>Total</td><td align="center">{{ number_format($totalprosen,2)}}</td></tr> --}}

                            








                            </tbody>
                            
                        </table>
                    </div>
                    
                    <table class="judul">
                        <tr>
                           <td>6. Peringkat 10 Besar</td><td>:</td>

                       </tr>
                    </table>
                    <div style="margin-left:50px">
                    <table class="daftarhadir"  >
                        <thead>
                            <tr>
                                <th width="10%">No</th>
                                
                                <th width="20%">Nama Peserta</th>
                                <th width="50%">Nilai</th>
                            
                          
                                <th width="20%">Peringkat</th>
                                
                                 
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($rangking as $rank)
                            <tr><td>{{$loop->iteration}}</td><td>{{$rank->nama}}</td><td>{{$rank->n_teori}}</td><td>{{$loop->iteration}}</td></tr>
                                
                            @endforeach
                        </tbody>
                    </table>
                    </div>

 </div>
 <footer>
    SIPLLUS-PAI v.1.0 | halaman <span class="pagenum"></span>
</footer>

        
</body>
</html>
 