@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Tambah Seminar</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Tambah Seminar</li>
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
                    <form class="form-horizontal" method="post" action="{{route('seminar.simpan')}}">
                        @csrf
                        <div class="card-body">
                            <h4 class="card-title">Isikan data dengan benar</h4>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Nama Seminar/webinar</label>
                                <div class="col-sm-9">
                                    <input type="text" name="namaseminar" class="form-control" id="fname" placeholder="isikan nama seminar">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">berbayar</label>
                                <div class="col-sm-9">
                                    <select name="berbayar" class="form-control" id="fname"  >
                                        <option value="yes">yes</option>
                                        <option value="no">no</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Biaya donasi/tiket</label>
                                <div class="col-sm-9">
                                    <input type="number" name="htm" class="form-control" id="fname" placeholder="">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Terbuka untuk UMUM</label>
                                <div class="col-sm-9">
                                    <select name="umum" class="form-control" id="fname"  >
                                        <option value="">pilih</option>
                                        <option value="yes">yes</option>
                                        <option value="no">no</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Pre-test</label>
                                <div class="col-sm-9">
                                    <select name="pretes" class="form-control" id="fname"  >
                                        <option value="">pilih</option>
                                        <option value="yes">yes</option>
                                        <option value="no">no</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Post-test</label>
                                <div class="col-sm-9">
                                    <select name="postes" class="form-control" id="fname"  >
                                        <option value="">pilih</option>
                                        <option value="yes">yes</option>
                                        <option value="no">no</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Sertifikat inggris</label>
                                <div class="col-sm-9">
                                    <select name="english" class="form-control" id="fname"  >
                                        <option value="">pilih</option>
                                        <option value="yes">yes</option>
                                        <option value="no">no</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Tanggal Pelaksanaan</label>
                                <div class="col-sm-9">
                                    <input type="text" name="tanggal" class="form-control" id="fname" placeholder="formatnya 2020/01/19 09:00:00">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Jumlah Peserta</label>
                                <div class="col-sm-9">
                                    <input type="number" name="jumlahpeserta" class="form-control" id="fname" placeholder="jumlah peserta">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Status Pendaftaran</label>
                                <div class="col-sm-9">
                                    <select name="statuspendaftaran" class="form-control" required>
                                        <option value="">pilih</option>
                                        <option value="dibuka">dibuka</option>
                                        <option value="ditutup">ditutup</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Keterangan</label>
                                <div class="col-sm-9">
                                    <div class="col-sm-12">
                                        <textarea  name="keterangan" class="form-control keterangan"></textarea>
                                    </div>
                                </div>
                            </div>
                            

                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Ketentuan Transfer</label>
                                <div class="col-sm-9">
                                    <textarea  name="ketentuan" rows="5" class="form-control keterangan"></textarea>
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