@extends('layouts.app')

@section('content')
<title>Konfirmasi Pembayaran | {{config('app.name')}}</title>
<div class="container">
    <div class="row justify-content-center">
        {{-- <div class="col-md-6">
            <a href="{{asset($seminar->brosur)}}" target="_blank"><img class="img-fluid" src="{{asset($seminar->brosur)}}"></a>
        </div> --}}
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">{{ __('Konfirmasi Pembayaran') }}</div>

                <div class="card-body">
                    @if(Session::has('error'))
                    <div class="alert alert-danger alert-dismissible show fade">
                        <div class="alert-body">
                          <button class="close" data-dismiss="alert">
                            <span>&times;</span>
                          </button>
                          {{Session('error')}}
                          <a href="{{url('/login')}}" class="btn btn-warning">Login</a>
                        </div>
                      </div>
        
                    @endif
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
                   <div class="alert alert-success" role="alert"><center><h4>Tema</h4>" {{$seminar->namaseminar}} "<br>
                <span class="badge badge-danger">Tanggal: {{$newdate}} WIB</span><br>
                <button class="btn btn-danger">{{$peserta->namapeserta}}
                <br>{{$peserta->institusi}}</button>
                
             </center></div>
             <div class="modal-body">
                <form method="post" action="{{route('uploadtrf')}}" enctype="multipart/form-data" >
                    @csrf
                    <input type="hidden" name="peserta_id" value="{{$peserta->id}}">
                    <input type="hidden" name="seminar_id" value="{{$seminar->id}}">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Bank Anda </label>
    
                      <input type="text" required  name="nama_bank" placeholder="misal:BCA" required class="form-control">
                       
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Pemilik Rekening</label>
      
                        <input type="text" required  name="pemilik_rekening" placeholder="misal:Slamet waluyo" required class="form-control">
                         
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Nominal Trf</label>
      
                        <input type="number" required  name="nominal_trf" min="{{$seminar->htm}}" required class="form-control">
                         
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
       
    </div>
</div>
@endsection
