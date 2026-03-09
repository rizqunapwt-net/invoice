@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Seminarku</h4>
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
                                    
                                    <th>Data Seminar</th>
                                    
                                     
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($peserta as $data)
                                    
                                @php
                                $sec = strtotime($data->seminar->tanggal);  
                                //converts seconds into a specific format  
                                $newdate = date ("d/m/Y H:i", $sec);  
                                //Appends seconds with the time  
                                $newdate = $newdate . ":00";  
                                // display converted date and time    
                                @endphp                   
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$data->seminar->namaseminar}}<br>
                                    <small>tgl:{{$newdate}}<br>
                                    berbayar: {{$data->berbayar}}<br>
                                    keterangan:@clean($data->seminar->keterangan)<br>
                                   
                                         <?php
                                         $selesaiseminar=date($data->seminar->tanggal, strtotime('+2 hours'));
                                         $now=date('Y-m-d H:i:s');
                                         ?>
                                          
                                         @if ($now >= $selesaiseminar)
                                        
                                         <a href="{{url('/seminar/cetak/'.$data->unik)}}" class="btn btn-success btn-xs"><i class="fas fa-print"></i> cetak</a>
                                         @else 
                                         belum bisa dicetak sekarang
                                         @endif
                                          
                                        
                                         
                                       
                                    
                                    
                                    </td>
                             
                            
                                    
                                     
                                    <td>
                                        <a href="{{route('seminar.detail',$data->seminar->id)}}" data-toggle="tooltip" data-placement="top" title="detail data?" class="btn btn-icon btn-xs btn-info"><i class="far fa-lightbulb"></i></a>
                                        {{-- <form action="{{route('seminar.hapus',$data->id)}}" method="POST">
                                            @csrf
                                            @method('delete')
                                            <a href="{{route('seminar.edit',$data->id)}}" data-toggle="tooltip" data-placement="top" title="Edit data?" class="btn btn-icon btn-xs btn-warning"><i class="far fa-edit"></i></a>
                                        
                                       
                                        <button  data-toggle="tooltip" data-placement="top" title="Hapus data?"   type="submit" onclick="return confirm('Yakin hapus data?')" class="btn btn-icon btn-sm  btn-danger"><i class="fas fa-times"></i></button>
                                    </form> --}}


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