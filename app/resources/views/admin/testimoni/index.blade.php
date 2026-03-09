@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Seminar</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Seminar</li>
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
                    <h5 class="card-title"><a href="{{route('testimoni.tambah')}}"><button class='btn btn-success'><i class="mdi mdi-plus"></i>Tambah Data</button></a>
                        </h5> 
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
                                    
                                    <th>Nama</th>
                                    <th>Instansi</th>
                                    <th>Foto</th>
                                    <th>Testimoni</th>
                                     
                                     
                                    <th>aksi</th>
                                     
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($testimoni as $data)
                                    
                   
                                <tr>
                                    <td><small>{{$loop->iteration}}</small></td>
                                    <td> 
                                        {{$data->nama}}</td>
                                        <td>{{$data->instansi}}</td>
                                    <td><img  width="100px" src="{{asset($data->foto)}}"></td>
                                    <td>@clean($data->testimoni)</td>
                                    
                                    
                                     
                                    <td>

                                        <form action="{{route('testimoni.hapus',$data->id)}}" method="POST">
                                            @csrf
                                            @method('delete')
                                            <a href="{{route('testimoni.edit',$data->id)}}" data-toggle="tooltip" data-placement="top" title="Edit data?" class="btn btn-icon btn-xs btn-warning"><i class="far fa-edit"></i></a>
                                        
                                            @if (Auth::user()->level == 'admin')
                                        <button  data-toggle="tooltip" data-placement="top" title="Hapus data?"   type="submit" onclick="return confirm('Yakin hapus data?')" class="btn btn-icon btn-sm  btn-danger"><i class="fas fa-times"></i></button>
                                        @endif
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