@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-sm border-0">
                <div class="card-body p-5">
                    <h1 class="mb-4 text-center font-weight-bold">Tentang Invoice Rizquna</h1>
                    <hr class="mb-5">
                    
                    <div class="text-center mb-5">
                        <img class="img-fluid rounded mb-4" src="{{asset('logo-rizquna.jpg')}}" alt="Invoice Rizquna" style="max-width: 300px;">
                    </div>

                    <p class="lead text-justify">
                        <b>Invoice Rizquna</b> adalah sistem manajemen invoice dan administrasi penagihan yang dirancang khusus untuk memudahkan pengelolaan pesanan dan pembayaran produk-produk di bawah naungan <b>Penerbit Rizquna</b>.
                    </p>

                    <p class="text-justify">
                        Layanan ini hadir untuk memberikan kemudahan bagi pelanggan dan administrasi dalam memantau status pesanan, mencetak bukti transaksi secara otomatis, serta mempermudah proses konfirmasi pembayaran secara real-time.
                    </p>

                    <h4 class="mt-5 mb-3 font-weight-bold">Fitur Utama kami:</h4>
                    <ul class="list-group list-group-flush mb-4">
                        <li class="list-group-item bg-transparent px-0"><i class="fas fa-check-circle text-success mr-2"></i> Manajemen Invoice Otomatis</li>
                        <li class="list-group-item bg-transparent px-0"><i class="fas fa-check-circle text-success mr-2"></i> Konfirmasi Pembayaran Real-time</li>
                        <li class="list-group-item bg-transparent px-0"><i class="fas fa-check-circle text-success mr-2"></i> Cetak Bukti Bayar & Kwitansi Digital</li>
                        <li class="list-group-item bg-transparent px-0"><i class="fas fa-check-circle text-success mr-2"></i> Riwayat Transaksi Pelanggan</li>
                    </ul>

                    <div class="alert alert-info border-0 shadow-sm">
                        <p class="mb-0"><b>Penerbit Rizquna</b>: Jalan KS Tubun Gang Camar Karangsalam Kidul, Purwokerto - Banyumas.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

 