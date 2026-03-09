@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Paket</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Paket</li>
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
                    <h5 class="card-title"><a href="{{route('paket.tambah')}}"><button class='btn btn-success'><i class="mdi mdi-plus"></i>Tambah Data</button></a>
                         
                         {{-- <a href="{{route('Paket.import')}}"><button class='btn btn-primary'><i class="mdi mdi-import"></i>Import Data</button></a> <a href="{{url(asset('import-Paket.xlsx'))}}"><button class='btn btn-warning'><i class="mdi mdi-cloud-download"></i>Download Template Excel</button></a></h5> --}}
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
                                    
                                    <th>Paket</th>
                                    <th>Deskripsi</th>
                                    <th>Harga</th>
                                    <th>Recommended</th>
                                    <th>Diskon</th>
                                    <th>status</th>
                                    <th>aksi</th>
                                     
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($paket as $data)
                                    
                                @php
                    $sec = strtotime($data->tanggal);  
                    //converts seconds into a specific format  
                    $newdate = date ("d/m/Y H:i", $sec);  
                    //Appends seconds with the time  
                    $newdate = $newdate . ":00";  
                    // display converted date and time    
                    @endphp
                                <tr>
                                    <td><small>{{$loop->iteration}}</small></td>
                                    <td><a href="{{route('paket.detail',$data->id)}}" data-toggle="tooltip" data-placement="top" title="detail data?"  >
                                        <small>{{$data->namapaket}}</small></a></td>
                                        <td><small>@clean($data->deskripsi)</small></td>
                                    <td><small>{{number_format($data->harga)}}</small></td>
                                    <td><small>{{$data->recommended}}</small></td>

                                    <td><small>{{number_format($data->diskon)}}</small></td>
                                    
                                    <td><small>{{$data->status}}</small></td>
                                    
                                    
                                     
                                    <td>

                                        <form action="{{route('paket.hapus',$data->id)}}" method="POST">
                                            @csrf
                                            @method('delete')
                                            <a href="{{route('paket.edit',$data->id)}}" data-toggle="tooltip" data-placement="top" title="Edit data?" class="btn btn-icon btn-xs btn-warning"><i class="far fa-edit"></i></a>
                                        
                                            @if (Auth::user()->level == 'admin')
                                        <button  data-toggle="tooltip" data-placement="top" title="Hapus data?"   type="submit" onclick="return confirm('Yakin hapus data?')" class="btn btn-icon btn-sm  btn-danger"><i class="fas fa-times"></i></button>
                                        @endif
                                    </form>
                                  
                                        
                                    
                                    <a href="{{route('paket.detail',$data->id)}}" data-toggle="tooltip" data-placement="top" title="detail data?" class="btn btn-icon btn-xs btn-info"><i class="far fa-lightbulb"></i></a>
                                     
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