@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Data Peserta Seminar yang belum pretes<br> 
                {{-- <a href="{{route('cetakpeserta',$seminar->id)}}" class="btn btn-success btn-xs" target="_blank"><i class="fas fa-print"></i> Cetak </a> --}}
               </h4>
               <h6> <i>{{$seminar->namaseminar}}</i></h6>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="{{route('seminar.detail',$seminar->id)}}">Seminar detail</a></li>
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
     
                    <div class="table-responsive">
                        <table id="zero_config" class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th width="40px">No</th>
                                    
                                    <th>Nama peserta</th>
                                   
                                    <th>ID</th>
                                    <th>Role</th>
                                    <th>institusi</th>
                                    <th>tgl daftar</th>
                                    
                                    
                                     
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($belum as $data)
           
                         
                          
                        
                       
                        
                         
                    
                                                
                    
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td><a href="{{ route('detailuser',$data->user_id) }}" target="_blank">{{ $data->namapeserta }}</a></td>
    
         <td>kode:{{$data->id}}</td>
                                    <td>{{$data->sebagai}}</td>
                                    
                                    
                                    <td>{{$data->institusi}}</td>
                                    <td><small>{{date('d/m/Y H:i:s',strtotime($data->created_at))}}</small></td>
                                        
                                     
                                     
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