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
                        <li class="breadcrumb-item active" aria-current="page">Edit seminar</li>
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
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Keterangan</label>
                                <div class="col-sm-9">
                                    <textarea  name="keterangan" class="form-control keterangan">{{$seminar->keterangan}}</textarea>
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
   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tinymce/5.2.1/tinymce.min.js"></script>
<script>
    tinymce.init({
        selector:'textarea.keterangan',
        height: 300,
        plugins: [
        "advlist autolink lists link image charmap print preview anchor",
        "searchreplace visualblocks code fullscreen",
        "insertdatetime media table contextmenu paste"],

    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link "
    });
</script>
@endsection