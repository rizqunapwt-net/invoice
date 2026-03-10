<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <title>Kwitansi</title>
</head>
<body>
<style>
    table td th {
  border-collapse: collapse;
  padding:3px;
  border:1px solid blue;
}
</style>
    
<div class="container">
   <div class="row">
       <div class="col-12">
           <div class="card">
               <div class="card-body p-0">
                   <div class="row p-5">
                       <div class="col-md-6">
                         
                         
                       </div>

                       <div class="col-md-6 text-right">
                           <img src="{{url('/')}}/logo-rizquna.jpg" width="200px">
                           <p class="font-weight-bold mb-1">Tagihan #{{ $unik }}</p>
                           <p class="text-muted">Tanggal: {{date('d-m-Y')}}</p>
                       </div>
                   </div>

                   <hr class="my-5">

                   <div class="row pb-5 p-5">
                       <div class="col-md-6">
                           <p class="font-weight-bold mb-4"><b>Informasi Peserta</b></p>
                           <a class="navbar-brand" href="{{route('halamanutama')}}">Invoice Rizquna</a>
                           <p class="mb-1"> Nama: {{$namapeserta}} </p>
                           <p> Institusi: {{$institusi}}</p>
                          
                           
                       </div>

                        
                   </div>
                   <hr class="my-5">

                   <div class="row p-5">
                       <div class="col-md-12">
                  <b>Tema Seminar</b>
                  {{$namaseminar}}<br>
                  <b>Nominal</b>
                  Rp. {{number_format($htm)}}<br>
                  <hr>
                   Cetak versi PDF => <a target="_blank" href="{{url('/seminar/kwitansi/semid/'.$seminar_id.'/'.$unik)}}">   {{url('/seminar/kwitansi/semid/'.$unik.'/'.$unik)}}</a> 
                   <br>               
                                       
                       </div>
                   </div>
                   <hr class="my-5">
                  <font color="red">Keterangan: LUNAS<br></font>

                 Hormat Kami:<br>
                 <a href="https://rizquna.id">Rizquna Team </a>
                    

                        
                 
               </div>
           </div>
       </div>
   </div>
   
   {{-- <div class="text-light mt-5 mb-5 text-center small"> </div> --}}

</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>