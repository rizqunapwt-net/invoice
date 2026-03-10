@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 text-center">
            <img src="{{asset('logo-rizquna.jpg')}}" alt="Invoice Rizquna" class="img-fluid mb-4" style="max-width: 300px;">
            <h1 class="font-weight-bold">Invoice Rizquna</h1>
            <p class="lead">Sistem Informasi Manajemen Invoice & Penagihan Produk Rizquna.</p>
            <div class="mt-4">
                <a href="{{ route('login') }}" class="btn btn-primary btn-lg">Login ke Sistem</a>
            </div>
        </div>
    </div>
</div>
@endsection
    @endsection
 