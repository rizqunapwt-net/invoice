@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Pilih Tahun Ajaran</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Pilih Tahun ajaran</li>
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
                    <form class="form-horizontal" method="post" action="{{route('datanilai')}}">
                        @csrf
                        <div class="card-body">
                             
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Pilih Tahun ajaran</label>
                                <div class="col-sm-9">
                                    <select name="tahunajaran_id" class="form-control select2" required>
                                        <option value="">pilih</option>
                                        @foreach ($tahunajaran as $ta)
                                        <option value="{{$ta->id}}">{{$ta->namatahunajaran}}</option>
                                            
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                             
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