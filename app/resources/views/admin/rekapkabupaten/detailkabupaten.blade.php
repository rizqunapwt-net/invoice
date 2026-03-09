@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Detail Rekapitulasi Nilai Tahun Ajaran {{$tahunajaran->namatahunajaran}}<br>
        Jenjang:  {{$jenjang->jenjang}}<br>
            
            </h4>

            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Detail Rekapituasli Nilai  {{$jenjang->jenjang}}</li>
                    </ol>
                </nav>
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
            @if(Auth::user()->level=='admin')
            <a target="_blank" href="{{route('cetakrekapkabupaten',[$tahunajaran->id, $jenjang->id])}}" class="btn btn-success"><i class="mdi mdi-printer"></i>laporan</a>
            <a target="_blank" href="{{route('cetaksebaran.kabupaten',[$tahunajaran->id,$jenjang->id])}}" class="btn btn-info"><i class="mdi mdi-printer"></i>sebaran</a>
            <a target="_blank" href="{{route('cetakrekapitulasi.kabupaten',[$tahunajaran->id,$jenjang->id])}}" class="btn btn-warning"><i class="mdi mdi-printer"></i>rekap</a>
            @endif
            <a target="_blank" href="{{route('statistik.kabupaten',[$tahunajaran->id,$jenjang->id])}}" class="btn btn-danger"><i class="mdi mdi-chart-line"></i>statistik</a>
            <a href="{{route('detail.kabupaten',[$tahunajaran->id,$jenjang->id])}}" class="btn btn-secondary"><i class="mdi  mdi-more"></i>detail</a>
           
            <div class="card">
                <div class="card-body">

                    {{-- <h5 class="card-title"><a href="{{route('nilai.tambah',$tahunajaran->id)}}"><button class='btn btn-success'><i class="mdi mdi-plus"></i>Tambah Data</button></a> <a href="{{route('nilai.import',$tahunajaran->id)}}"><button class='btn btn-primary'><i class="mdi mdi-import"></i>Import Data</button></a> <a href="{{url(asset('import-nilai.xlsx'))}}"><button class='btn btn-warning'><i class="mdi mdi-cloud-download"></i>Download Template Excel</button></a></h5> --}}
                    @if(Session::has('success'))
                    <div class="alert alert-success alert-dismissible show fade">
                        <div class="alert-body">
                          <button class="close" data-dismiss="alert">
                            <span>&times;</span>
                          </button>
                          {{Session('success')}}
                        </div>
                      </div>
        
                @endif
                    <div class="table-responsive">
                       
                        <div class="alert alert-success" role="alert">
                          <h4 class="alert-heading">Yang Sudah Upload Nilai {{$jml}} sekolah</h4>
                          <ol>
                            @foreach ($sudah as $sdh)
                                <li>
                                  
                                    {{$sdh->sekolah->namasekolah}} <span class="badge badge-pill badge-success">{{$sdh->jumlahe}} data</span>
                                     
                                    
                                </li>
                            @endforeach      
                        </ol>  
                        </div>
                        <div class="alert alert-danger" role="alert">
                            <h4 class="alert-heading">Yang Belum Upload Nilai {{$ygbelum}} sekolah</h4>
                            <ol>
                                @foreach ($belum as $blm)
                                <li>
                                  
                                    {{$blm->namasekolah}} 
                                     
                                    
                                </li>  
                                @endforeach  
                          </ol>  
                          </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection