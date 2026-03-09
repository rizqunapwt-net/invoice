@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Edit seminar</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="{{route('adminseminar.detail',$seminar->id)}}">Seminar detail</a></li>
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
                    <form class="form-horizontal" method="post" action="{{route('seminar.update',$seminar->id)}}">
                        @csrf
                        
                        <div class="card-body">
                            <h4 class="card-title">Isikan data dengan benar</h4>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Nama Seminar</label>
                                <div class="col-sm-9">
                                    <input type="text" name="namaseminar" class="form-control" id="fname" value="{{$seminar->namaseminar}}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">berbayar</label>
                                <div class="col-sm-9">
                                    <select name="berbayar" class="form-control" id="fname"  >
                                        <option value="{{$seminar->berbayar}}">{{$seminar->berbayar}}</option>
                                        <option value="yes">yes</option>
                                        <option value="no">no</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Biaya donasi/tiket</label>
                                <div class="col-sm-9">
                                    <input type="number" name="htm" class="form-control" value="{{$seminar->htm}}" id="fname" placeholder="">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Tanggal Pelaksanaan</label>
                                <div class="col-sm-9">
                                    <input type="text" name="tanggal" class="form-control" id="fname" value="{{$seminar->tanggal}}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Jumlah Peserta</label>
                                <div class="col-sm-9">
                                    <input type="number" name="jumlahpeserta" class="form-control" id="fname" value="{{$seminar->jumlahpeserta}}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Status Pendaftaran</label>
                                <div class="col-sm-9">
                                    <select name="statuspendaftaran" class="form-control" required>
                                        <option value="{{$seminar->statuspendaftaran}}">{{$seminar->statuspendaftaran}}</option>
                                        <option value="dibuka">dibuka</option>
                                        <option value="ditutup">ditutup</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">terbuka untuk UMUM</label>
                                <div class="col-sm-9">
                                    <select name="umum" class="form-control" required>
                                        <option value="{{$seminar->umum}}">{{$seminar->umum}}</option>
                                        <option value="yes">yes</option>
                                        <option value="no">no</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Pretes</label>
                                <div class="col-sm-9">
                                    <select name="pretes" class="form-control" required>
                                        <option value="{{$seminar->pretes}}">{{$seminar->pretes}}</option>
                                        <option value="yes">yes</option>
                                        <option value="no">no</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Postes</label>
                                <div class="col-sm-9">
                                    <select name="postes" class="form-control" required>
                                        <option value="{{$seminar->postes}}">{{$seminar->postes}}</option>
                                        <option value="yes">yes</option>
                                        <option value="no">no</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Sertifikat inggris</label>
                                <div class="col-sm-9">
                                    <select name="english" class="form-control" id="fname"  >
                                        <option value="{{ $seminar->english }}">{{ $seminar->english }}</option>
                                        <option value="yes">yes</option>
                                        <option value="no">no</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Keterangan</label>
                                <div class="col-sm-9">
                                    <textarea  name="keterangan" rows="5"   class="form-control ckeditor">{{$seminar->keterangan}}</textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Ketentuan Transfer</label>
                                <div class="col-sm-9">
                                    <textarea  name="ketentuan" rows="5"  class="form-control ckeditor">{{$seminar->ketentuan}}</textarea>
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
   
    {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/tinymce/5.2.1/tinymce.min.js"></script>
<script>
    tinymce.init({
        selector:'textarea.keterangan',
        height: 300,
        plugins: [
        "advlist autolink lists link image charmap print preview anchor",
        "searchreplace visualblocks code fullscreen",
        "paste"],

    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link "
    });
</script> --}}
@endsection