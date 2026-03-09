@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Detail seminar</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="{{route('seminar')}}">Seminar</a></li>
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

<!-- Modal -->
<div class="modal fade" id="tambahpemateri" tabindex="-1" role="dialog" aria-labelledby="tambahpemateriLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="tambahpemateriLabel">Tambah Pemateri/Narasumber</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="post" action={{route('simpanpemateri')}}>
                @csrf
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama Lengkap </label>
                  <input type="text" class="form-control" name="namapeserta"  >
                   
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Institusi </label>
                    <input type="text" class="form-control"  name="institusi" >
                     
                  </div>
                  <input type="hidden" value="pemateri" name="sebagai">
                  <input type="hidden" name="seminar_id" value="{{$seminar->id}}">
                   
                
                
             
              
        </div>
        <div class="modal-footer">
          
          <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal -->
<div class="modal fade" id="tambahpemateri" tabindex="-1" role="dialog" aria-labelledby="tambahpemateriLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="tambahpemateriLabel">Tambah Pemateri/Narasumber</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="post" action={{route('simpanpemateri')}}>
                @csrf
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama Lengkap </label>
                  <input type="text" class="form-control" name="namapeserta"  >
                   
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Institusi </label>
                    <input type="text" class="form-control"  name="institusi" >
                     
                  </div>
                  <input type="hidden" value="pemateri" name="sebagai">
                  <input type="hidden" name="seminar_id" value="{{$seminar->id}}">
                   
                
                
             
              
        </div>
        <div class="modal-footer">
          
          <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!---tambah moderator-->
  <div class="modal fade" id="tambahmoderator" tabindex="-1" role="dialog" aria-labelledby="tambahmoderatorLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="tambahmoderatorLabel">Tambah Moderator</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="post" action={{route('simpanpemateri')}}>
                @csrf
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama Lengkap </label>
                  <input type="text" class="form-control" name="namapeserta"  >
                   
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Institusi</label>
                    <input type="text" class="form-control"  name="institusi" >
                     
                  </div>
                  <input type="hidden" value="moderator" name="sebagai">
                  <input type="hidden" name="seminar_id" value="{{$seminar->id}}">
                   
                
                
             
              
        </div>
        <div class="modal-footer">
          
          <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!---upload background sertifikat-->
  <div class="modal fade" id="uploadbrosur" tabindex="-1" role="dialog" aria-labelledby="uploadbrosurLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="uploadLabel">upload Brosur</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="post" action="{{route('uploadbrosur')}}" enctype="multipart/form-data" >
                @csrf
                <input type="hidden" name="seminar_id" value={{$seminar->id}}>
                <div class="form-group">
                  <label for="exampleInputEmail1">Pilih File </label>
                  <input type="file"   name="brosur" required class="form-control">
                   
                </div>
                 
                
             
              
        </div>
        <div class="modal-footer">
          
          <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!---upload background sertifikat-->
  <div class="modal fade" id="upload" tabindex="-1" role="dialog" aria-labelledby="uploadLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="uploadLabel">upload background Sertifikat (A4)</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="post" action="{{route('uploadbg')}}" enctype="multipart/form-data" >
                @csrf
                <input type="hidden" name="seminar_id" value={{$seminar->id}}>
                <div class="form-group">
                  <label for="exampleInputEmail1">Pilih File </label>
                  <input type="file" placeholder="kepada" name="gambar" required class="form-control">
                   
                </div>
                 
                
             
              
        </div>
        <div class="modal-footer">
          
          <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!---upload background sertifikat-->
  <div class="modal fade" id="uploadmateri" tabindex="-1" role="dialog" aria-labelledby="uploadLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="uploadLabel">upload materi</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="post" action="{{route('uploadmateri')}}" enctype="multipart/form-data" >
                @csrf
                <input type="hidden" name="seminar_id" value={{$seminar->id}}>
                <div class="form-group">
                  <label for="exampleInputEmail1">Pilih File </label>
                  <input type="file"   name="materi" required class="form-control">
                   
                </div>
                 
                
             
              
        </div>
        <div class="modal-footer">
          
          <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
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
                    @php
                    $sec = strtotime($seminar->tanggal);  
                    //converts seconds into a specific format  
                    $newdate = date ("d/m/Y H:i", $sec);  
                    //Appends seconds with the time  
                    $newdate = $newdate . ":00";  
                    // display converted date and time    
                    @endphp
                        <div class="card-body">
                          @if (Auth::user()->level=='admin' ||  Auth::user()->level == 'operator')
                            <a href="{{route('seminar.edit',$seminar->id)}}" class="btn btn-success btn-xs"> <i class="fas fa-edit"></i>edit</a>    
                            <a href="{{route('datapeserta',$seminar->id)}}" class="btn btn-warning btn-xs"> <i class="fas fa-users"></i> data peserta</a>
                            @if($seminar->pretes =='yes')
                                <a href="{{route('pretes',$seminar->id)}}" class="btn btn-danger btn-xs"> <i class="fas fa-calendar"></i> Soal Pretest</a>
                                <a href="{{route('statpretes',$seminar->id)}}" class="btn btn-danger btn-xs"> <i class="fas fa-chart-area"></i> Statistik Pretest</a>
                            @endif
                            @if($seminar->postes=='yes')
                                <a href="{{route('postes',$seminar->id)}}" class="btn btn-primary btn-xs"> <i class=" fas fa-book"></i> Soal Postest</a>
                               
                                <a href="{{route('statpostes',$seminar->id)}}" class="btn btn-primary btn-xs"> <i class=" fas fa-chart-bar"></i> Statistik Postest</a>
                                @endif
                          @endif
                            <div class="form-group row">
                                
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Nama Seminar</label>
                                <div class="col-sm-9">
                                    <textarea readonly name="namaseminar" class="form-control">{{$seminar->namaseminar}}</textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Tanggal Pelaksanaan</label>
                                <div class="col-sm-9">
                                    <input type="text" readonly name="tanggal" class="form-control" id="fname" value="{{$newdate}} WIB">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Jumlah Peserta</label>
                                <div class="col-sm-9">
                                    <input type="number" readonly name="jumlahpeserta" class="form-control" id="fname" value="{{$seminar->jumlahpeserta}}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Status Pendaftaran</label>
                                <div class="col-sm-9">
                                    <select readonly name="statuspendaftaran" class="form-control" required>
                                        <option value="{{$seminar->statuspendaftaran}}">{{$seminar->statuspendaftaran}}</option>
                                        
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Pemateri</label>
                                <div class="col-sm-9">
                                   @if (Auth::user()->level=='admin')
                                       <!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#tambahpemateri">
    Tambah[+]
  </button>
                                   @endif
                                   <ol>
                                   @foreach ($pemateri as $narsum)
                                    <li> <form action="{{route('hapuspeserta',$narsum->id)}}" method="POST">
                                        {{$narsum->namapeserta}} <i>({{$narsum->institusi}})</i>
                                        @if (Auth::user()->level=='admin' || Auth::user()->level == 'operator')
                                        
                                       
                                            @csrf
                                            @method('delete')
                                            <button  data-toggle="tooltip" data-placement="top" title="Hapus data?"   type="submit" onclick="return confirm('Yakin hapus data?')" class="btn btn-icon btn-sm  btn-danger"><i class="fas fa-times"></i></button>

                                        <a  data-toggle="tooltip"  target="_blank" data-placement="top" title="cetak sertifikat" href="{{url('/seminar/cetak/'.$narsum->unik)}}" class="btn btn-success btn-xs"><i class="fas fa-print"></i></a>
                                        </form>
                                        @endif
                                        
                                    
                                    </li>
                                   @endforeach
                                   </ol>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Moderator</label>
                                <div class="col-sm-9">
                                   @if (Auth::user()->level=='admin' ||    Auth::user()->level == 'operator')
                                       <!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#tambahmoderator">
    Tambah[+]
  </button>
                                   @endif
                                   <ol>
                                   @foreach ($moderator as $mod)
                                   <form action="{{route('hapuspeserta',$mod->id)}}" method="POST">
                                    <li>{{$mod->namapeserta}} <i>({{$mod->institusi}})</i> 
                                    @if (Auth::user()->level=='admin' ||  Auth::user()->level == 'operator')
                                    
                                        @csrf
                                        @method('delete')
                                        <button  data-toggle="tooltip" data-placement="top" title="Hapus data?"   type="submit" onclick="return confirm('Yakin hapus data?')" class="btn btn-icon btn-sm  btn-danger"><i class="fas fa-times"></i></button>
                                        <a data-toggle="tooltip" data-placement="top" title="cetak sertifikat" target="_blank" href="{{url('/seminar/cetak/'.$mod->unik)}}" class="btn btn-success btn-xs"><i class="fas fa-print"></i></a>
                                    </form>
                                    @endif
                                    
                                    
                                    </li>
                                   @endforeach
                                   </ol>
                                </div>
                            </div>
                            @if (Auth::user()->level=='admin')
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Upload background Sertifikat</label>
                                <div class="col-sm-9">
                                  
                                   <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#upload">
                                   Upload
                                  </button>
                                  <img src="{{asset($seminar->sertifikat)}}" alt="" width="200px">
                                </div>
                            </div>
                            
                            @endif

                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Brosur</label>
                                <div class="col-sm-9">
                                    @if (Auth::user()->level=='admin')
                                   <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#uploadbrosur">
                                   Upload
                                  </button>
                                  @endif<br>
                                  <a href="{{asset($seminar->brosur)}}" target=_blank><img src="{{asset($seminar->brosur)}}" alt="" width="200px"></a>
                                </div>
                            </div>
                            <div class="form-group row">
                              <label for="fname" class="col-sm-3 text-right control-label col-form-label">Materi</label>
                              <div class="col-sm-9">
                                  @if (Auth::user()->level=='admin')
                                 <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#uploadmateri">
                                 Upload
                                </button>
                                @endif
                                <ol>
                                  @foreach ($materi as $file)
                                   <li><form action="{{route('hapusmateri',$file->id)}}" method="POST">
                                       <a target="_blank" data-toggle="tooltip" data-placement="top" title="download?" class="btn btn-success btn-xs" href="{{asset($file->file)}}"> {{$file->file}} </a>
                                      @if(Auth::user()->level=='admin')
                                      
                                          @csrf
                                          @method('delete')
                                          <button  data-toggle="tooltip" data-placement="top" title="Hapus data?"   type="submit" onclick="return confirm('Yakin hapus data?')" class="btn btn-icon btn-sm  btn-danger"><i class="fas fa-times"></i></button>
                                           
                                      </form>
                                      @endif
                                  
                                  
                                  </li>
                                 @endforeach
                                </ol>
                              </div>
                          </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Keterangan</label>
                                <div class="col-sm-9">
                                 @clean($seminar->keterangan)
                                </div>
                            </div>
                            
                            
                        </div>
                        
                    <div class="table-responsive">
                         
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection