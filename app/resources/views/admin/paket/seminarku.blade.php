@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Seminarku <a href="{{route('seminar.daftarbaru')}}" class="btn btn-success btn-s">daftar seminar lainnya</a></h4>
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
                    @if(Session::has('error'))
                    <div class="alert alert-danger alert-dismissible show fade">
                        <div class="alert-body">
                          <button class="close" data-dismiss="alert">
                            <span>&times;</span>
                          </button>
                          {{Session('error')}}
                        </div>
                      </div>
                    @endif
                    <div class="alert alert-danger" role="alert">
                     *)Geser kanan/kiri untuk melihat detail data bagi pengguna smartphone
                    </div>
                    <div class="table-responsive">
                        <table id="zero_config" class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th width="40px">No</th>
                                    
                                    <th>Seminar</th>
                                    <th>Tanggal</th>
                                    <th>Berbayar</th>
                                    <th>Ketentuan</th>
                                    
                                    <th>keterangan</th>
                                    <th>StatusAnda</th>
                                    <th>sertifikat</th>
                                     
                                    <th>aksi</th>
                                     
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
                             
                             

<div class="modal fade" id="konfirmasi{{$data->id}}" tabindex="-1" role="dialog" aria-labelledby="uploadLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="uploadLabel">Konfirmasi Pembayaran</h5>
          <small>{{$data->seminar->namaseminar}}</small>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
          <div class="modal-body">
              <form method="post" action="{{route('uploadtrf')}}" enctype="multipart/form-data" >
                  @csrf
                  <input type="hidden" name="peserta_id" value={{$data->id}}>
                  <input type="hidden" name="seminar_id" value="{{$data->seminar_id}}">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Bank Anda </label>

                    <input type="text" required  name="nama_bank" required class="form-control">
                    
                  </div>
                  <div class="form-group">
                      <label for="exampleInputEmail1">Pemilik Rekening</label>
    
                      <input type="text" required  name="pemilik_rekening" required class="form-control">
                      
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Nominal Trf</label>
    
                      <input type="text" required  name="nominal_trf" required class="form-control">
                      
                    </div>
                  <div class="form-group">
                      <label for="exampleInputEmail1">Bukti Transfer</label>
                      <input type="file" required  name="file" required class="form-control">
                      
                    </div>
                  
                  
              
                
          </div>
          <div class="modal-footer">
            
            <button type="submit" class="btn btn-primary">Kirim</button>
          </form>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          </div>
      </div>
    </div>
  </div>
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>    
                                        @if($data->status=='ok')
                                        <a href="{{route('seminar.detail',$data->seminar->id)}}">{{$data->seminar->namaseminar}}                    
                                         </a>
                                         @else
                                         {{$data->seminar->namaseminar}}   
                                         @endif

                                     </td>
                                    <td><small>{{$newdate}}</small></td>
                                    <td>{{$data->seminar->berbayar}}
                                    <br> (Rp.{{number_format($data->seminar->htm)}})</td>
                                    <td>@clean($data->seminar->ketentuan)</td>
                                    <td>
                                      @if($data->seminar->berbayar == 'yes')
                                        @if($data->status=='ok')
                                        
                                        @clean($data->seminar->keterangan)
                                        @else
                                        Keterangan akan muncul jika Status peserta sudah OK
                                        @endif
                                      @else 
                                      @clean($data->seminar->keterangan)
                                      @endif
                                    
                                    </td>
                                    <td>
                                      @if($data->seminar->berbayar == 'yes')
                                        @if($data->status <>'ok')
                                        Belum aktif
                                        <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#konfirmasi{{$data->id}}">
                                            konfirmasi pembayaran?
                                          </button>
                                          
                                        @else
                                        {{$data->status}}
                                        @endif
                                      @else free 
                                      @endif
                                </td>
                                    <td>
                                         <?php
                                         $selesaiseminar=date($data->seminar->tanggal, strtotime('+2 hours'));
                                         $now=date('Y-m-d H:i:s');
                                         ?>
                                    @if($data->seminar->berbayar == 'yes')  
                                         @if ($now >= $selesaiseminar)
                                            @if($data->status=='ok')
                                            <a href="{{url('/seminar/cetak/'.$data->unik)}}" class="btn btn-success btn-xs"><i class="fas fa-print"></i> cetak</a>
                                            @else
                                            Anda tidak berhak mencetak sertifikat
                                            @endif

                                         @else 
                                         belum bisa dicetak sekarang
                                         @endif
                                    @else 
                                        @if ($now >= $selesaiseminar)
                                        <a href="{{url('/seminar/cetak/'.$data->unik)}}" class="btn btn-success btn-xs"><i class="fas fa-print"></i> cetak</a>
                                        @else 
                                        belum bisa dicetak sekarang
                                        @endif
                                    @endif
                                          
                                        
                                         
                                       
                                    
                                    
                                    </td>
                             
                            
                                    
                                     
                                    <td>
                                      @if($data->seminar->berbayar == 'yes')
                                        @if($data->status=='ok')
                                        <a href="{{route('seminar.detail',$data->seminar->id)}}" data-toggle="tooltip" data-placement="top" title="detail data?" class="btn btn-icon btn-xs btn-info"><i class="far fa-lightbulb"></i></a>
                                        @else
                                        Anda tidak bisa mengakses detail seminar
                                        @endif
                                      @else 
                                      <a href="{{route('seminar.detail',$data->seminar->id)}}" data-toggle="tooltip" data-placement="top" title="detail data?" class="btn btn-icon btn-xs btn-info"><i class="far fa-lightbulb"></i></a>
                                      @endif
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