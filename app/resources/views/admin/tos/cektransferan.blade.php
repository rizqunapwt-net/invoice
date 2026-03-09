@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Cek Pembayaran</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Cek Pembayaran</li>
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
                                    
                                    <th>Bukti Tranfer</th>
                                    <th>Tanggal Transfer</th>
                                    <th>Nominal</th>
                                    <th>Bank</th>
                                    <th>pemilik rekening</th>
                                    <th>aksi</th>
                                    
                                     
                                     
                                     
                                     
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($transferan as $data)
                                    
                                @php
                    $sec = strtotime($data->created_at);  
                    //converts seconds into a specific format  
                    $newdate = date ("d/m/Y H:i", $sec);  
                    //Appends seconds with the time  
                    $newdate = $newdate . ":00";  
                    // display converted date and time    
                    @endphp
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td><a href="{{asset($data->file)}}"  data-toggle="tooltip" data-placement="top" title="detail data?" target="_blank"  >
                                        {{$data->file}}</a></td>
                                    <td>{{$newdate}}</td>
                                    <td>{{$data->nominal_trf}}
                                       </td>
                            <td>{{$data->nama_bank}}</td>
                            <td>{{$data->pemilik_rekening}}
                            </td>
                                    
                                    
                                    
                                    
                                     
                                    <td>
                                        @if($data->peserta->status == 'ok')
                                        OK
                                        @else
                                        <form action="{{route('aktifasipeserta',$data->peserta_id)}}" method="POST">
                                            @csrf
                                            
                                             
                                            
                                        <button  data-toggle="tooltip" data-placement="top" title="aktifkan peserta"   type="submit"   class="btn btn-icon btn-sm  btn-success"><i class="fas fa-user"></i>aktifkan</button>
                                      
                                    </form>
                                    @endif
                                  
                                        
                                    
                                    
                                     
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