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
                    <h5 class="card-title"> 
                         {{-- <a href="{{route('Seminar.import')}}"><button class='btn btn-primary'><i class="mdi mdi-import"></i>Import Data</button></a> <a href="{{url(asset('import-Seminar.xlsx'))}}"><button class='btn btn-warning'><i class="mdi mdi-cloud-download"></i>Download Template Excel</button></a></h5> --}}
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
                                    
                                    <th>Seminar</th>
                                    <th>Tanggal</th>
                                    <th>Sisa kuota</th>
                                    
                                    
                                    <th>keterangan</th>
                                     
                                    <th>aksi</th>
                                     
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($seminar as $data)
                                    
                                @php
                    $sec = strtotime($data->tanggal);  
                    //converts seconds into a specific format  
                    $newdate = date ("d/m/Y H:i", $sec);  
                    //Appends seconds with the time  
                    $newdate = $newdate . ":00";  
                    // display converted date and time    
                    @endphp
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>
                                        
                                        {{$data->namaseminar}}</td>
                                    <td>{{$newdate}}</td>
                                    <td>{{$data->peserta->count()}} / {{$data->jumlahpeserta}}
                                        </td>
                            
                                    
                                    
                                    <td><a href="{{asset($data->brosur)}}" target="_blank">
                                        <img src="{{asset($data->brosur)}}" width="100px">
                                    </a></td>
                                    
                                     
                                    <td>

                                        <form action="{{route('seminar.simpandaftarbaru')}}" method="POST">
                                            @csrf
                                            <input type="hidden" name="maxpeserta" value="{{$data->jumlahpeserta}}">
                                            <input type="hidden" name="seminar_id" value="{{$data->id}}">
                                            <button type="submit" data-toggle="tooltip" data-placement="top" title="daftar sekarang?" class="btn btn-icon btn-xs btn-warning"><i class="far fa-edit"></i></button>
                                        
                                            
                                    </form>
                                  
                                        
                                    
                                    {{-- <a href="{{route('seminar.detail',$data->id)}}" data-toggle="tooltip" data-placement="top" title="detail data?" class="btn btn-icon btn-xs btn-info"><i class="far fa-lightbulb"></i></a> --}}
                                     
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