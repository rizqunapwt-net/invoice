@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Dashboard</h4>
            <div class="ml-auto text-right">
                
                {{-- <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                    </ol>
                </nav> --}}
            </div>
        </div>
    </div>
</div>
<!-- ============================================================== -->
<!-- End Bread crumb and right sidebar toggle -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- Container fluid  -->
<!-- ============================================================== -->
<div class="container-fluid">
    <!-- ============================================================== -->
    <!-- Start Page Content -->
    <!-- ============================================================== -->
    <div class="row">
        <div class="col-12">
            
            <div class="card">
                <div class="card-body">
                    <center>
                    <h5 class="card-title">Selamat datang <strong>{{Auth::user()->name}}</strong>   
                        Anda bertindak sebagai 
                       <strong><i>{{Auth::user()->level}}</i></strong> 
                      
                    </h5>
                </center>
                @if(Auth::user()->level != 'admin')
                    <div class="table-responsive">
                        <a href="{{route('tagihanku')}}" class="btn btn-primary" style="width:100%"> Tagihanku / Invoices</a>
                    </div>
                    @endif

                </div>
            </div>
        </div>
    </div>
@endsection