@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Tambah Nilai Tahun Ajaran {{$tahunajaran->namatahunajaran}}<br>
            Sekolah : {{$sekolah->namasekolah}}</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Tambah user</li>
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
                    <form class="form-horizontal" method="post" action="{{route('nilai.simpan')}}">
                        @csrf
                        <input type="hidden" name="kecamatan_id" value="{{$sekolah->kecamatan_id}}">
                        <input type="hidden" name="jenjang_id" value="{{$sekolah->jenjang_id}}">
                        <input type="hidden" name="sekolah_id" value="{{$sekolah->id}}">
                        <input type="hidden" name="tahunajaran_id" value="{{$tahunajaran->id}}">
                        <div class="card-body">
                            <h4 class="card-title">Isikan data dengan benar</h4>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Nomor Peserta</label>
                                <div class="col-sm-9">
                                    <input type="text" name="nomorpeserta" class="form-control" required id="fname" placeholder="nomor peserta">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Nama</label>
                                <div class="col-sm-9">
                                    <input type="text" name="nama" class="form-control"  required id="fname" placeholder="nama peserta">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label" >Jenis Kelamin</label>
                                <div class="col-sm-9">
                                    <select name="jeniskelamin" class="form-control select2"  required>
                                        <option value="">pilih</option>
                                        <option value="L">L</option>
                                        <option value="P">P</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Nilai Teori</label>
                                <div class="col-sm-9">
                                    <input type="text" name="n_teori" class="form-control" id="fname" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Nilai Spiritual</label>
                                <div class="col-sm-9">
                                    <input type="text" name="n_spiritual" class="form-control" id="fname" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Nilai Sosial</label>
                                <div class="col-sm-9">
                                    <input type="text" name="n_sosial" class="form-control" id="fname" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Nilai Sikap</label>
                                <div class="col-sm-9">
                                    <input type="text" name="n_sikap" class="form-control" id="fname" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Nilai Praktek</label>
                                <div class="col-sm-9">
                                    <input type="text" name="n_praktek" class="form-control" id="fname" required>
                                </div>
                            </div>
                             


                             
                            
                            
                        </div>
                        <div class="border-top">
                            <div class="card-body">
                                <button type="submit" class="btn btn-primary">Simpan</button>
                            </div>
                        </div>
                    </form>
                    <div class="table-responsive">
                         
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection