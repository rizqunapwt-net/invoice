 <!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta http-equiv="X-UA-Compatible" content="ie=edge">
     <title>Invoice</title>
 </head>
 <body style="background:url({{asset('bg.png')}}) repeat">
     

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Order Paket MesemVirtual</div>

                <div class="card-body">
                    <h3>Kode Invoice: {{$unik}} | Status: {{$status}}</h3>
                   <table>
                    <tr>
                        <td>Nama Paket</td><td>: {{$namapaket}}</td>
                    </tr>
                    <tr>
                        <td>Harga</td><td>: Rp. {{number_format($harga)}}</td>
                    </tr>
                    <tr>
                        <td>Diskon</td><td>: Rp. {{number_format($diskon)}}</td>
                    </tr>
                    <tr>
                        <td>Total</td><td>: Rp. {{number_format($total)}}</td>
                    </tr>

                   </table>
                     @if($status=='unpaid')
                       Segera transfer sejumlah tagihan tertera di atas, lakukan konfirmasi setelah melakukan transfer ke  Rekening kami: <br>
                       BCA : 893-501-5959<br>
                       BRI Syariah: 1032-505-666<br>
                       semua atas nama Suprisdiantoko<br>
                       Lakukan Konfirmasi melalui:
                       <a target="_blank" href="{{url('/pemesanan/konfirmasi/'.$unik)}}">   {{url('/pemesanan/konfirmasi/'.$unik)}}</a> <br>
                       <hr><hr>
                       <br>

                    
                   Versi Cetak Invoice => <a target="_blank" href="{{url('/pemesanan/invoice/'.$unik)}}">   {{url('/pemesanan/invoice/'.$unik)}}</a> 
                   @else 
                   TERIMA KASIH TELAH MENGGUNAKAN JASA KAMI
                       <hr><hr>
                       <br>

                    
                   Versi Cetak Invoice => <a target="_blank" href="{{url('/pemesanan/invoice/'.$unik)}}">   {{url('/pemesanan/invoice/'.$unik)}}</a> 
                   @endif
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
