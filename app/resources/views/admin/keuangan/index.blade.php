@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Rekap Keuangan</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Rekap</li>
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
                    <!-- Modal -->
 <div class="modal fade" id="tambahdata" tabindex="-1" role="dialog" aria-labelledby="datatarget" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="datatarget">tambah pengeluaran</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="POST" action="{{ route('pengeluaran.simpan') }}">
                @csrf
                
                <div class="form-group row">
                    <label for="name" class="col-md-12 col-form-label">nominal</label>

                    <div class="col-md-12">
                      <input type="number" name="nominal" required class="form-control">
 
                    </div>
                </div>
                <div class="form-group row">
                    <label for="name" class="col-md-12 col-form-label">kategori</label>

                    <div class="col-md-12">
                      <select required  name="katpengeluaran_id" class="form-control select2 custom-select"  style="width: 100%;">
                          <option value="">pilih</option>
                          
                      </select>
 
                    </div>
                </div>
                <div class="form-group row">
                    <label for="name" class="col-md-12 col-form-label">keterangan</label>

                    <div class="col-md-12">
                      <input type="text" name="keterangan" required class="form-control">
 
                    </div>
                </div>
                 
                 
            
        </div>
        <div class="modal-footer">
         
          <button type="submit" class="btn btn-primary">simpan</button>
        </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>  
                     
 
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
                @if(Session::has('error'))
                    <div class="alert alert-danger alert-dismissible show fade">
                        <div class="alert-body">
                          <button class="close" data-dismiss="alert">
                            <span>&times;</span>
                          </button>
                          {{Session('error')}}
                        </div>
                      </div>
        
                @endif
                    <div class="table-responsive">
                   <h4>Pilih Range Tanggal</h4>
                   <form action="{{route('hasilrekap')}}" method="post">
                  @csrf 
                  <div class="form-group row">
                    <label for="name" class="col-md-12 col-form-label">Start</label>

                    <div class="col-md-12">
                      <input required  type="text" name="start" class="form-control" placeholder="yyyy-mm-dd"   >
                    </div>
                </div>
                <div class="form-group row">
                  <label for="name" class="col-md-12 col-form-label">End</label>

                  <div class="col-md-12">
                    <input required  type="text" name="end" class="form-control datepicker"  placeholder="yyyy-mm-dd"  >
                  </div>
              </div>
              <div class="form-group row">
                <div class="col-md-12">
                <button type="submit" class="btn btn-success">rekap</button>
                </div>
            </div>
                  </form>
                     
                            
                        
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection