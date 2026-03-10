@extends('admin.master')
@section('konten')
<!-- Modal -->
<div class="modal fade" id="importpeserta" tabindex="-1" role="dialog" aria-labelledby="importpesertaLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="importpesertaLabel">Import data peserta</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form class="form-horizontal" method="post" action="{{route('datapeserta.simpanimport')}}" enctype="multipart/form-data">
                <input type="hidden" name="seminar_id" value="{{$seminar->id}}">
                @csrf
                <div class="card-body">
                    <h4 class="card-title">Upload Data Peserta</h4>
                    @if(count($errors)>0)
                        <div class="alert alert-danger">
                            Error<br>
                            <ul>
                                @foreach ($errors->all()  as $error)
                                    <li>{{$error}}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <div class="form-group row">
                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Pilih file<small class="text text-danger"> *)format file XLS, XLSX</small></label>
                        <div class="col-sm-9">
                            <input type="file" name="file_users" class="form-control" id="fname">
                        </div>
                    </div>
                    
                </div>
                
                
                
               
                
                 
            
        </div>
        <div class="modal-footer">
         
          <button type="submit" class="btn btn-primary">Save changes</button>
        </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>  
  <!-- Modal -->
 <div class="modal fade" id="kirimemail" tabindex="-1" role="dialog" aria-labelledby="editpesertaLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="editpesertaLabel">Kirim email ke seluruh peserta (max 35 tiap pengiriman) </h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="POST" action="{{ route('kirimemailpeserta') }}">
                @csrf
                <input type="hidden" name="seminar_id" value="{{$seminar->id}}">
                <div class="form-group row">
                    <label for="name" class="col-md-12 col-form-label ">Judul</label>

                    <div class="col-md-12">
                        <input type="text" name="judul" value="Info LINK ZOOM: {{ $seminar->namaseminar }}"  class="form-control ckeditor"   required> 
 
                    </div>
                </div>

                <div class="form-group row">
                    <label for="name" class="col-md-12 col-form-label ">isi Pesan</label>

                    <div class="col-md-12">
                        <textarea name="pesan" id="" class="form-control ckeditor" cols="50" rows="10" required>
                        
                      {{ $seminar->keterangan }}
                        Hormat kami,<a href="https://invoice.rizquna.id">Invoice Rizquna</a>

                        </textarea>
 
                    </div>
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
 <div class="modal fade" id="kirimsertifikat" tabindex="-1" role="dialog" aria-labelledby="editpesertaLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="editpesertaLabel">Kirim Sertifikat ke seluruh peserta (max 50 tiap pengiriman) </h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="POST" action="{{ route('kirimsertifikatpeserta') }}">
                @csrf
                <input type="hidden" name="seminar_id" value="{{$seminar->id}}">
                {{-- <div class="form-group row">
                    <label for="name" class="col-md-12 col-form-label ">Judul</label>

                    <div class="col-md-12">
                        <input type="text" name="judul"   class="form-control ckeditor"   required> 
 
                    </div>
                </div>

                <div class="form-group row">
                    <label for="name" class="col-md-12 col-form-label ">isi Pesan</label>

                    <div class="col-md-12">
                        <textarea name="pesan" id="" class="form-control ckeditor" cols="50" rows="10" required></textarea>
 
                    </div>
                </div>
                 
                 --}} 
            
        </div>
        <div class="modal-footer">
         
          <button type="submit" class="btn btn-primary">Kirim</button>
        </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>  


<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Data Peserta Seminar {{$seminar->namaseminar}}<br>
                <a href="{{route('datapeserta',$seminar->id)}}" class="btn btn-danger btn-xs" ><i class="fas fa-users"></i> data peserta </a>
                <a href="{{route('cetakpeserta',$seminar->id)}}" class="btn btn-success btn-xs" target="_blank"><i class="fas fa-print"></i> Rekap </a>
                <a href="#" data-toggle="modal" data-target="#importpeserta" class="btn btn-warning btn-xs" target="_blank"><i class="fas fa-upload"></i>Import datapeserta </a>
                <a href="{{route('cetakcvpeserta',$seminar->id)}}"   class="btn btn-primary btn-xs" target="_blank"><i class="fas fa-print"></i>Cetak CV </a>
                <a href="#"  data-toggle="modal" data-target="#kirimemail" class="btn btn-info btn-xs" target="_blank"><i class=" far fa-paper-plane"></i>Kirim email </a>
                <a href="#"  data-toggle="modal" data-target="#kirimsertifikat" class="btn btn-danger btn-xs" target="_blank"><i class="  fas fa-angle-double-right"></i>Kirim sertifikat </a>
                <a href="{{ route('export.datapeserta',$seminar->id) }}"    class="btn btn-success btn-xs" target="_blank"><i class="fas fa-file-excel"></i>Export Excel </a>
                <a href="{{ route('updateemailpeserta',$seminar->id) }}"    class="btn btn-warning btn-xs" target="_blank"><i class="fas fa-file-excel"></i>Update email peserta</a>
               </h4>
               <h6> <i></i></h6>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="{{route('adminseminar.detail',$seminar->id)}}">Seminar detail</a></li>
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
                <form action="{{route('caridatapeserta')}}" method="GET" role="search">
                    @csrf
                      <div class="input-group">
                          <input type="text" class="form-control" name="q"
                              placeholder="kata kunci pencarian"> 
                              <input type="hidden" name="seminar_id" value="{{ $seminar->id }}">
                             
                          <select name="by" required class="form-control">
                              <option value="">pilih kategori pencarian</option>
                              <option value="namapeserta">nama peserta</option>
                              <option value="institusi">institusi</option>
                              
                          </select>
                          <span class="input-group-btn">
                              <button type="submit" class="btn btn-default">
                                 search
                              </button>
                          </span>
                      </div>
                  </form><br>
                  <h5>Pencarian peserta berdasarkan <i class="text text-success">{{ $by }} </i> dengan katakunci <i><u><span class="text text-danger">"{{$q}}"</span></u>   </i> sebanyak {{$peserta->total()}} data:</h5>
                    <div class="table-responsive">
                        {{-- id="zero_config" --}}
                        <table  class="table table-sm table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th width="40px">No</th>
                                    
                                    <th>Nama peserta</th>
                                    <th>Phone</th>
                                    <th>ID</th>
                                    <th>Role</th>
                                    <th>institusi</th>
                                    <th>tgl daftar</th>
                                    <th>status</th>
                                    <th>Sertifikat</th>
                                   
                                     
                                     
                                    <th>aksi</th>
                                     
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                      
                                $skipped = $peserta->currentPage() * $peserta->perPage(); ?>
                                @foreach ($peserta as $data)
           <!-- Modal -->
           <div class="modal fade" id="editpeserta{{$data->id}}" tabindex="-1" role="dialog" aria-labelledby="editpesertaLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="editpesertaLabel">Edit data peserta</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                    <form method="POST" action="{{ route('updatepeserta') }}">
                        @csrf
                        <input type="hidden" name="id" value="{{$data->id}}">
        
                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Nama Lengkap') }}</label>
        
                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('namapeserta') is-invalid @enderror" name="namapeserta"  autofocus
                                value="{{$data->namapeserta}}">
        
                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        
                         
                        <div class="form-group row">
                            <label for="institusi" class="col-md-4 col-form-label text-md-right">{{ __('Institusi') }}</label>
       
                            <div class="col-md-6">
                                <input id="institusi" type="institusi" class="form-control @error('institusi') is-invalid @enderror" name="institusi" value="{{ $data->institusi }}" required autocomplete="institusi">
        
                                @error('institusi')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Status') }}</label>
        
                            <div class="col-md-6">
                              <input id="sebagai" type="text" class="form-control @error('sebagai') is-invalid @enderror" name="sebagai" value="{{ $data->sebagai }}" required autocomplete="sebagai">
                            </div>
                        </div>
                        
                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Status') }}</label>
        
                            <div class="col-md-6">
                                <select name="status" class="form-control">
                                    <option value="{{$data->status}}">{{$data->status}}</option>
                                    <option value="ok">ok</option>
                                    <option value="x">belum bayar</option>
                                </select>
                            </div>
                        </div>
                        
                        
                       
                        
                         
                    
                </div>
                <div class="modal-footer">
                 
                  <button type="submit" class="btn btn-primary">Save changes</button>
                </form>
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
                    $kodenegara=substr($data->user->phone, 0, 2);
                    if($kodenegara=='08')
                    {
                        $hp = substr($data->user->phone, 1);
                        $phone="62".$hp;
                    }
                    else{
                        $phone=$data->user->phone;
                    }
                    if($data->email_sent == 0 )
                    {
                        $bg="style=background-color:#f4e1e1";
                    }
                    else{
                        $bg="style=background-color:#def9e0";
                    }
                    @endphp
                                <tr {{ $bg }}>
                                    <td>{{ $loop->iteration+$skipped-$peserta->perPage()}}</td>
                                    <td>
                                    <a href="{{route('detailuser',$data->user_id)}}" target="_blank">
                                        
                                        {{$data->namapeserta}}</a></td>
    <td>
        <a target="_blank" href="https://api.whatsapp.com/send?phone={{$phone}}&text=Terima kasih anda sudah registrasi menjadi calon peserta Virtual Talkshow dengan tema: {{$seminar->namaseminar}}. Untuk tahap selanjutnya anda dapat melakukan @clean($seminar->ketentuan) sejumlah Rp. {{number_format($seminar->htm)}} dan kirimkan bukti transfer ke {{url('/seminar/konfirmasi/'.$data->id.'/'.$seminar->id)}} untuk mendapatkan link ID Zoom Meeting dan sertifikat.">
             {{$data->user->phone}}
            </a>

         </td> 
         <td>kode:{{$data->id}}</td>
                                    <td>{{$data->sebagai}}</td>
                                    
                                    
                                    <td>{{$data->institusi}}</td>
                                    <td><small>{{date('d/m/Y H:i:s',strtotime($data->created_at))}}</small></td>
                                    <td>
                                     @if($seminar->berbayar == 'yes')
                                        @if($data->status <>'ok')
                                       <span class="text text-danger">belum bayar</span>
                                       <a href="{{route('cektransferan',$data->id)}}" class="btn btn-xs btn-danger">cek transfer</a>
                                        @else 
                                        {{$data->status}} sudah bayar
                                        <a href="{{route('cektransferan',$data->id)}}" class="btn btn-xs btn-primary">cek transfer</a>
                                        @endif
                                    @else 
                                    free 
                                    @endif
                                       
                                        
                                    </td>       
                                    <td><a target="_blank" href="{{url('/seminar/cetak/'.$data->unik)}}"><button type="button" class="btn btn-success btn-xs" >
                                        <i class="fa fa-print"></i>cetak
                                      </button></a><br>
                                      @if ($data->kirim_sertifikat >0 )
                                          <label class="label label-success">terkirim</label>
                                      @endif
                                    
                                    
                                    </td>                    
                                    <td>
                                        <form action="{{route('hapuspeserta',$data->id)}}" method="POST">
                                            @csrf
                                            @method('delete')
                                            <!-- Button trigger modal -->
<button type="button" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#editpeserta{{$data->id}}">
    <i class="far fa-edit"></i>
  </button>
                                            {{-- <a href="{{route('editpeserta',$data->id)}}" data-toggle="tooltip" data-placement="top" title="Edit data?" class="btn btn-icon btn-xs btn-warning"></a> --}}
                                            <button  data-toggle="tooltip" data-placement="top" title="Hapus data?"   type="submit" onclick="return confirm('Yakin hapus data?')" class="btn btn-icon btn-sm  btn-danger"><i class="fas fa-times"></i></button>
                                             
                                        </form>
                                        {{-- <form action="{{route('seminar.hapus',$data->id)}}" method="POST">
                                            @csrf
                                            @method('delete')
                                            <a href="{{route('seminar.edit',$data->id)}}" data-toggle="tooltip" data-placement="top" title="Edit data?" class="btn btn-icon btn-xs btn-warning"><i class="far fa-edit"></i></a>
                                        
                                       
                                        <button  data-toggle="tooltip" data-placement="top" title="Hapus data?"   type="submit" onclick="return confirm('Yakin hapus data?')" class="btn btn-icon btn-sm  btn-danger"><i class="fas fa-times"></i></button>
                                    </form> --}}

                                    {{-- <a href="{{route('seminar.detail',$data->id)}}" data-toggle="tooltip" data-placement="top" title="detail data?" class="btn btn-icon btn-xs btn-info"><i class="far fa-lightbulb"></i></a> --}}
                                    </td>
                                     
                                </tr>
                                @endforeach
                                 
                            </tbody>
                            
                        </table>
                        {!! $peserta->render() !!}
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection