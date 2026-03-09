@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Data Nilai Tahun Ajaran {{$tahunajaran->namatahunajaran}}</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Data Nilai</li>
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
                    <h5 class="card-title"><a href="{{route('nilai.tambah',$tahunajaran->id)}}"><button class='btn btn-success'><i class="mdi mdi-plus"></i>Tambah Data</button></a> <a href="{{route('nilai.import',$tahunajaran->id)}}"><button class='btn btn-primary'><i class="mdi mdi-import"></i>Import Data</button></a> <a href="{{url(asset('import-nilai.xlsx'))}}"><button class='btn btn-warning'><i class="mdi mdi-cloud-download"></i>Download Template Excel</button></a>
                        <a href="{{route('nilai.reset',$tahunajaran->id)}}" onclick="return confirm('Yakin Reset data?')" ><button class='btn btn-danger'><i class="mdi mdi-delete"></i>Reset nilai</button></a>
                    
                    
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
                        <table id="zero_config" class="table table-striped table-bordered table-sm">
                            <thead>
                                <tr>
                                    <th width="40px">No</th>
                                    
                                    <th>No.Ujian</th>
                                    <th>Nama</th>
                                    <th>Gender</th>
                                    <th>N.Teori</th>
                                    <th>N.Spiritual</th>
                                     <th>N.Sosial</th>
                                     <th>N.Sikap</th>
                                     <th>N.Praktek</th>
                                    <th>aksi</th>
                                     
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($nilai as $data)
                                    
                                
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$data->nomorpeserta}}</td>
                                    <td>{{$data->nama}}</td>
                                    <td>{{$data->jeniskelamin}}</td>
                                    <td>{{$data->n_teori}}</td>
                                    <td>{{$data->n_spiritual}}</td>
                                    <td>{{$data->n_sosial}}</td>
                                    <td>{{$data->n_sikap}}</td>
                                    <td>{{$data->n_praktek}}</td>
                                   
                                    
                                     
                                    <td>

                                        <form action="{{route('nilai.hapus',$data->id)}}" method="POST">
                                            @csrf
                                            @method('delete')
                                            <a href="{{route('nilai.edit',$data->id)}}" data-toggle="tooltip" data-placement="top" title="Edit data?" class="btn btn-icon btn-xs btn-warning"><i class="far fa-edit"></i></a>
                                        
                                       
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