<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CetakPeserta</title>
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
            width:100%;
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
            font-size:15px;/*border:1px solid black;*/
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
    <td>REKAP PESERTA </td>

</tr>
<tr>
    <td>{{$seminar->namaseminar}}</td>
    
</tr>
 </table>
 <br>
 <div style="margin-left:45px">
 
              

                        <table class="daftarhadir"  >
                            <thead>
                                <tr>
                                    <th width="5%">No</th>
                                    
                                 
                                    <th >Nama Peserta</th>
                                
                              
                                    <th  >Institusi/Alamat</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    
                                     
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($peserta as $data)
                                    
                                
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                     
                                    <td>{{$data->namapeserta}}</td>
                            
                                 
                                    <td>{{strtoupper($data->institusi)}}</td> 
                                    <td>{{$data->user->email}}</td>
                                    <td>{{$data->user->phone}}</td>
                                   
                                    
                                     
                                    
                                </tr>
                                @endforeach
                                 
                            </tbody>
                            
                        </table>
 </div>
 <footer>
    {{config('app.name')}} | halaman <span class="pagenum"></span>
</footer>

        
</body>
</html>
 