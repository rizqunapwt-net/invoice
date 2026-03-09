@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">kecamatan</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">kecamatan</li>
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
                    <h5 class="card-title"><a href="{{route('kecamatan.tambah')}}"><button class='btn btn-success'><i class="mdi mdi-plus"></i>Tambah Data</button></a> <a href="{{route('kecamatan.import')}}"><button class='btn btn-primary'><i class="mdi mdi-import"></i>Import Data</button></a> <a href="{{url(asset('import-kecamatan.xlsx'))}}"><button class='btn btn-warning'><i class="mdi mdi-cloud-download"></i>Download Template Excel</button></a></h5>
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
                        <table id="zero_config" class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th width="40px">No</th>
                                    <th>Kecamatan</th>
                                    <th>Kode Kecamatan</th>
                                    <th>aksi</th>
                                     
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($kecamatan as $data)
                                    
                                
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$data->kecamatan}}</td>
                                    <td>{{$data->id}}</td>
                                    <td>

                                        <form action="{{route('kecamatan.hapus',$data->id)}}" method="POST">
                                            @csrf
                                            @method('delete')
                                            <a href="{{route('kecamatan.edit',$data->id)}}" data-toggle="tooltip" data-placement="top" title="Edit data?" class="btn btn-icon btn-sm btn-warning"><i class="far fa-edit"></i></a>
                                        {{-- <a href="{{route('kecamatan.detail',$data->id)}}" data-toggle="tooltip" data-placement="top" title="Detail data?"  class="btn btn-icon btn-sm  btn-info"><i class="fas fa-info-circle"></i></a> --}}
                                       
                                        <button  data-toggle="tooltip" data-placement="top" title="Hapus data?"   type="submit" onclick="return confirm('Yakin hapus data?')" class="btn btn-icon btn-sm  btn-danger"><i class="fas fa-times"></i></button>
                                    </form>


                                    </td>
                                     
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