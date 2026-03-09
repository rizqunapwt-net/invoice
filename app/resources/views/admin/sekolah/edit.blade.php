@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Edit sekolah</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Edit sekolah</li>
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
                    <form class="form-horizontal" method="post" action="{{route('sekolah.update',$sekolah->id)}}">
                        @csrf
                        <div class="card-body">
                            <h4 class="card-title">Isikan data dengan benar</h4>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">NPSN</label>
                                <div class="col-sm-9">
                                    <input type="text" name="npsn" value="{{$sekolah->npsn}}" class="form-control" id="fname" placeholder="NPSN">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Nama sekolah</label>
                                <div class="col-sm-9">
                                    <input type="text" name="namasekolah" value="{{$sekolah->namasekolah}}"
                                     class="form-control" id="fname" placeholder="nama sekolah">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Alamat</label>
                                <div class="col-sm-9">
                                    <input type="text" name="alamat" class="form-control" value="{{$sekolah->alamat}}" id="fname" placeholder="alamat sekolah">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Status</label>
                                <div class="col-sm-9">
                                    <select name="status" required class="select2 form-control custom-select">
                                        <option value="{{$sekolah->status}}">{{$sekolah->status}}</option> 
                                      <option value="NEGERI">NEGERI</option>
                                      <option value="SWASTA">SWASTA</option>
                                      
                
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Kecamatan</label>
                                <div class="col-sm-9">
                                    <select name="kecamatan_id" required class="select2 form-control custom-select">
                                        <option value="">pilih</option>
                                        @foreach ($kecamatan as $kec)

                                            <option 
                                            @if($sekolah->kecamatan_id == $kec->id)
                                            selected
                                            @endif
                                            
                                            value="{{$kec->id}}">{{$kec->kecamatan}}</option>
                                        @endforeach
                
                
                                    </select>
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Jenjang</label>
                                <div class="col-sm-9">
                                    <select name="jenjang_id" required class="select2 form-control custom-select">
                                        <option value="">pilih</option>
                                        @foreach ($jenjang as $jen)
                                        
                                            <option 
                                            @if($sekolah->jenjang_id == $jen->id)
                                            selected
                                        @endif
                                        value="{{$jen->id}}">{{$jen->jenjang}}</option>
                                        @endforeach
                
                
                                    </select>
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