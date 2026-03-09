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
                                    
                                    <th>Info Seminar</th>
                                   
                                     
                                    
                                     
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


  <!-- Modal -->
<div class="modal fade" id="detailketerangan{{$data->seminar->id}}" tabindex="-1" role="dialog" aria-labelledby=detailketeranganlLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="detailketeranganLabel">Detail Keterangan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        @clean($data->seminar->keterangan)
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
         
      </div>
    </div>
  </div>
</div>

  <?php
                                         $selesaiseminar=date($data->seminar->tanggal, strtotime('+3 hours'));
                                         $now=date('Y-m-d H:i:s');
                                         ?>

                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>    
                                        @if($data->status=='ok')
                                        <a href="{{route('seminar.detail',$data->seminar->id)}}">{{$data->seminar->namaseminar}}                    
                                         </a>
                                         @else
                                         {{$data->seminar->namaseminar}}   
                                         @endif
                                         @if($data->seminar->pretes == 'yes')
                                        <br> <a target="_blank" class="badge badge-pill badge-danger kecil" href="{{route('kerjakanpretes',$data->seminar->id)}}"><small>kerjakan PreTest</small></a>
                                         @endif
                                         @if ($now >= $selesaiseminar)
                                            @if($data->seminar->postes == 'yes')

                                            <a target="_blank" class="badge badge-pill badge-success kecil" href="{{route('kerjakanpostes',$data->seminar->id)}}"><small>kerjakan PostTest</small></a>
                                            @endif
                                         @endif
                                         <?php
                                         $cekpretes= \App\Jawabanpretes::where('user_id',Auth::user()->id)->where('seminar_id',$data->seminar->id)->count();
                                         $cekpostes=\App\Jawabanpostes::where('user_id',Auth::user()->id)->where('seminar_id',$data->seminar->id)->count();
                                        //  dd($cekpretes);
                                         if($cekpretes > 0 && $cekpostes > 0 && $data->seminar->custom=='suket')
                                         { ?>
                                          
                                          <a href="{{url('/suket/cetak/semid/'.$data->seminar->id."/".$data->unik)}}" class="badge badge-pill badge-warning kecil"><i class="fas fa-print"></i> suket</a>

                                         <?php }?>


<br>



                                     Tanggal: <small>{{$newdate}}</small> <br>
                                    Berbayar: {{$data->seminar->berbayar}}<br>
                                    <br>Biaya: (Rp.{{number_format($data->seminar->htm)}})<br>
                                    Ketentuan: @clean($data->seminar->ketentuan)<br>
                                    Keterangan:
                                      @if($data->seminar->berbayar == 'yes')
                                        @if($data->status=='ok')
                                        @clean(str_limit($data->seminar->keterangan, $limit = 30, $end = '...'))
                                        <a href="#" data-toggle="modal" data-target="#detailketerangan{{$data->seminar->id}}">detail</a>
                                      
                                        @else
                                        Keterangan akan muncul jika Status peserta sudah OK
                                        @endif
                                      @else 
                                      @clean(str_limit($data->seminar->keterangan, $limit = 30, $end = '...'))<br>
                                      <a href="#" data-toggle="modal" data-target="#detailketerangan{{$data->seminar->id}}">[detail]</a>
                                      @endif
                                  <br>
                                  StatusAnda:
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
                               <br>
                               @if($data->kesanpesan ==NULL)
                               Presensi kehadiran: <a href="{{ route('presensi',$data->seminar_id) }}" target="_blank" class="btn btn-xs btn-danger">belum diisi, isi sekarang?</a>
                               @else
                               Presensi kehadiran:<label class="label label-success">ok</label>
                               @endif

                               <br>

                                Sertifikat:       
                                    @if($data->seminar->berbayar == 'yes')  
                                         @if ($now >= $selesaiseminar)
                                            @if($data->status=='ok'  && $data->seminar->sertifikat !=NULL )
                                            <a href="{{url('/seminar/cetak/'.$data->unik)}}" class="btn btn-success btn-xs"><i class="fas fa-print"></i> cetak</a>
                                            @else
                                            Anda tidak berhak mencetak sertifikat
                                            @endif

                                         @else 
                                         belum bisa dicetak sekarang
                                         @endif
                                    @else 
                                        @if ($now >= $selesaiseminar)
                                          @if($data->seminar->pretes == 'yes')
                                          
                                            @if($data->seminar->sertifikat != NULL && $cekpretes > 0 && $cekpostes > 0 && $data->kesanpesan != null)
                                            <a href="{{url('/seminar/cetak/'.$data->unik)}}" class="btn btn-success btn-xs"><i class="fas fa-print"></i> cetak</a>
                                            @endif
                                          @else 
                                             @if($data->seminar->sertifikat != NULL )
                                            <a href="{{url('/seminar/cetak/'.$data->unik)}}" class="btn btn-success btn-xs"><i class="fas fa-print"></i> cetak</a>
                                            @endif
                                          @endif



                                        @else 
                                        belum bisa dicetak sekarang
                                        @endif
                                    @endif
                                          
                                        
                                         
                                       
                                <br>
                                
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