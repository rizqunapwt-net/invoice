@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Data Peserta Seminar<br> 
                <a href="{{route('cetakpeserta',$seminar->id)}}" class="btn btn-success btn-xs" target="_blank"><i class="fas fa-print"></i> Cetak </a>
               </h4>
               <h6> <i>{{$seminar->namaseminar}}</i></h6>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="{{route('seminar.detail',$seminar_id)}}">Seminar detail</a></li>
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
                    @endphp
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$data->namapeserta}}</td>
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
                                     @if($data->seminar->berbayar == 'yes')
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
                                      </button></a></td>                    
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
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection