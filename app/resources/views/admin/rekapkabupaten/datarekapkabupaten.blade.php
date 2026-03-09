@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Rekap Nilai Tahun Ajaran {{$tahunajaran->namatahunajaran}}<br>
        Jenjang:  {{$jenjang->jenjang}}<br>
            
            </h4>

            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Rekap Nilai  {{$jenjang->jenjang}}</li>
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
            <a  href="{{route('detail.kabupaten',[$tahunajaran->id,$jenjang->id])}}" class="btn btn-secondary"><i class="mdi  mdi-more"></i>detail</a>
           
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
                        <table id="zero_config" class="table table-striped table-bordered table-sm">
                            <thead>
                                <tr>
                                    <th width="40px">No</th>
                                    
                                    <th>No.Peserta</th>
                                    <th>Nama Peserta</th>
                                     
                              
                                    <th>Sekolah</th>
                                    <th>Status</th>
                                    <th>Kecamatan</th>
                                     <th>Nilai</th>
                                     
                                     
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($nilai as $data)
                                    
                                
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$data->nomorpeserta}}</td>
                                    <td>{{$data->nama}}</td>
                                    <td>
                                       {{$data->sekolah->namasekolah}}        
                                    
                                    </td>
                                    <td>{{$data->sekolah->status}}</td>
                                    <td>
                                        {{$data->kecamatan->kecamatan}}


                                    </td>
                                    <td>{{$data->n_teori}}</td>
                                 
                                   
                                    
                                     
                                    
                                </tr>
                                @endforeach
                                 
                            </tbody>
                            
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection