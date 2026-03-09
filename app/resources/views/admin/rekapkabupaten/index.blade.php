@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">REKAP NILAI se-Kabupaten</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Rekap nilai se-kabupaten</li>
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
            
            <div class="card">
                <div class="card-body">
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
                    <form class="form-horizontal" method="post" action="{{route('datarekapkabupaten')}}">
                        @csrf
                        <div class="card-body">
                             
                            <div class="form-group row">
                                <label for="fname" class="text-right control-label col-form-label">Pilih Tahun ajaran</label>
                                <div class="col-12">
                                    <select name="tahunajaran_id" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                        <option value="">pilih</option>
                                        @foreach ($tahunajaran as $ta)
                                        <option value="{{$ta->id}}">{{$ta->namatahunajaran}}</option>
                                            
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            {{-- <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Pilih Kecamatan</label>
                                <div class="col-sm-9">
                                    <select name="kecamatan_id" class="form-control select2" required>
                                        <option value="">pilih</option>
                                        @foreach ($kecamatan as $kec)
                                        <option value="{{$kec->id}}">{{$kec->kecamatan}}</option>
                                            
                                        @endforeach
                                    </select>
                                </div>
                            </div>--}}
                            <div class="form-group row">
                                <label for="fname" class="text-right control-label col-form-label">Pilih Jenjang</label>
                                <div class="col-md-12">
                                    <select name="jenjang_id" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                        <option value="">pilih</option>
                                        @foreach ($jenjang as $jen)
                                        <option value="{{$jen->id}}">{{$jen->jenjang}}</option>
                                            
                                        @endforeach
                                    </select>
                                </div>
                            </div> 

                            {{-- <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Pilih Sekolah</label>
                                <div class="col-sm-9">
                                    <select name="sekolah_id" class="form-control select2" required>
                                        <option value="">pilih</option>
                                        @if(Auth::user()->level=='admin')
                                            @foreach ($sekolah as $sek)
                                            <option value="{{$sek->id}}">{{$sek->namasekolah}}</option>
                                                
                                            @endforeach
                                        @else
                                        <option value="{{Auth::user()->sekolah_id}}">{{$sekolah->namasekolah}}</option>
                                        @endif

                                    </select>
                                </div>
                            </div> --}}
                             
                        <div class="border-top">
                            <div class="card-body">
                                <button type="submit" class="btn btn-primary">Proses</button>
                            </div>
                        </div>
                    </form>
                     
                </div>
            </div>
        </div>
    </div>
@endsection