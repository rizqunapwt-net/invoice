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
                    <h5 class="card-title"><a href="{{route('seminar.tambah')}}"><button class='btn btn-success'><i class="mdi mdi-plus"></i>Tambah Data</button></a>
                        <a href="{{asset('template-sertifikat.png')}}"><button class='btn btn-info'><i class="mdi mdi-arrow-down"></i>Download Template sertifikat</button></a>
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
                <br>
                <form action="{{route('cariseminar')}}" method="GET" role="search">
                    @csrf
                      <div class="input-group">
                          <input type="text" class="form-control" name="q"
                              placeholder="Search seminar"> <span class="input-group-btn">
                              <button type="submit" class="btn btn-default">
                                 search
                              </button>
                          </span>
                      </div>
                  </form><br>
                    <div class="table-responsive">
                        <table  class="table table-sm table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th width="40px">No</th>
                                    
                                    <th>Seminar</th>
                                    <th>Tanggal</th>
                                    <th>Jumlah Peserta</th>
                                    <th>Link pendaftaran</th>
                                    <th>berbayar</th>
                                    
                                    <th>keterangan</th>
                                     
                                    <th>aksi</th>
                                     
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                      
                                $skipped = $seminar->currentPage() * $seminar->perPage(); ?>
                                @foreach ($seminar as $data)

<!-- Modal -->
<div class="modal fade" id="detailketerangan{{$data->id}}" tabindex="-1" role="dialog" aria-labelledby=detailketeranganlLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="detailketeranganLabel">Detail Keterangan</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          @clean($data->keterangan)
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
           
        </div>
      </div>
    </div>
  </div>

                                @php
                    $sec = strtotime($data->tanggal);  
                    //converts seconds into a specific format  
                    $newdate = date ("d/m/Y H:i", $sec);  
                    //Appends seconds with the time  
                    $newdate = $newdate . ":00";  
                    // display converted date and time    
                    @endphp
                                <tr>
                                    <td><small>{{$loop->iteration+$skipped-$seminar->perPage()}}</small></td>
                                    <td>
                                        @if (Auth::user()->level == 'admin')
                                        <a href="{{route('adminseminar.detail',$data->id)}}" data-toggle="tooltip" data-placement="top" title="detail data?"  >
                                        <small>{{$data->namaseminar}}</small></a>
                                        @else
                                        <a href="{{route('seminar.detail',$data->id)}}" data-toggle="tooltip" data-placement="top" title="detail data?"  >
                                            <small>{{$data->namaseminar}}</small></a> 
                                        @endif
                                    
                                    
                                    </td>
                                    <td><small>{{$newdate}}</small></td>
                                    <td><small> {{$data->peserta->count()}} / {{$data->jumlahpeserta}}
                                        <a href="{{route('datapeserta',$data->id)}}" class="btn btn-warning btn-xs"> <i class="fas fa-users"></i> data peserta</a></td>
                            <td><a href="{{ route('seminar.daftar',$data->id) }}"><small>Klik di sini</small></a></td>
                            <td><small>{{$data->berbayar}}<br>
                            (Rp. {{number_format($data->htm)}})</small></td>
                                    
                                    
                                    <td><small>@clean(str_limit($data->keterangan, $limit = 35, $end = '...')) <br>
                                        <a href="#" data-toggle="modal" data-target="#detailketerangan{{$data->id}}">[detail]</a></small></td>
                                    
                                     
                                    <td>

                                        <form action="{{route('seminar.hapus',$data->id)}}" method="POST">
                                            @csrf
                                            @method('delete')
                                            <a href="{{route('seminar.edit',$data->id)}}" data-toggle="tooltip" data-placement="top" title="Edit data?" class="btn btn-icon btn-xs btn-warning"><i class="far fa-edit"></i></a>
                                        
                                            @if (Auth::user()->level == 'admin')
                                        <button  data-toggle="tooltip" data-placement="top" title="Hapus data?"   type="submit" onclick="return confirm('Yakin hapus data?')" class="btn btn-icon btn-sm  btn-danger"><i class="fas fa-times"></i></button>
                                        @endif
                                    </form>
                                  
                                        
                                    @if (Auth::user()->level == 'admin')
                                    
                                    <a href="{{route('adminseminar.detail',$data->id)}}" data-toggle="tooltip" data-placement="top" title="detail data?" class="btn btn-icon btn-xs btn-info"><i class="far fa-lightbulb"></i></a>
                                    @else
                                    <a href="{{route('seminar.detail',$data->id)}}" data-toggle="tooltip" data-placement="top" title="detail data?" class="btn btn-icon btn-xs btn-info"><i class="far fa-lightbulb"></i></a>
                                    @endif
                                     
                                    </td>
                                     
                                </tr>
                                @endforeach
                                 
                            </tbody>
                            
                        </table>
                        {!! $seminar->render() !!}
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection