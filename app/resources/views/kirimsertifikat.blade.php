 <!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta http-equiv="X-UA-Compatible" content="ie=edge">
     <title>Sertifikat</title>
 </head>
 <body style="background:url({{asset('bg.png')}}) repeat">
     

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">e-Sertifikat</div>

                <div class="card-body">
                     
                   <table>
                    <tr>
                        <td>Nama Kegiatan</td><td>: {{$namakegiatan}}</td>
                    </tr>
                    <tr>
                        <td>Tanggal pelaksanaan</td><td>: {{ $tanggal }}</td>
                    </tr>
                    
                   </table>
                     
                  Download e-sertifikat => <a target="_blank" href="{{url('/seminar/download/'.$unik)}}">   {{url('/seminar/download/'.$unik)}}</a> 
                  
                   <hr>
                   <br>
                   MesemVirtual Team

                         
                     
                   
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
