 <!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta http-equiv="X-UA-Compatible" content="ie=edge">
     <title>Verifikasi</title>
 </head>
 <body style="background:url({{asset('bg.png')}}) repeat">
     

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Verifikasi Akun MesemVirtual</div>

                <div class="card-body">
                   
                     
                        <p>silakan klik link berikut untuk Verifikasi email pengguna </p>
                        <br>
                        <a href="{{url('verifikasi/register/'.$remember_token)}}">{{url('verifikasi/register/'.$remember_token)}}</a><br>
    
                         
                     
                   
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
