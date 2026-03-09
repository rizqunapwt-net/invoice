@extends('layouts.app')

@section('content')
<title>VALIDSI Data | {{config('app.name')}}</title>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Validasi data') }}</div>

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

                   <div class="alert alert-success" role="alert"><center><h4>Tema</h4>" {{$seminar->namaseminar}} "<br>
                <span class="badge badge-danger">Tanggal: {{$newdate}} WIB</span><br>
                
             </center></div>
               
                
                        @if(!empty($peserta->namapeserta))
                        <div class="alert alert-success alert-dismissible show fade">
                            <div class="alert-body">
                               
                              <center>Data   <b>VALID</b>!</center>
                            </div>
                          </div>
            

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Nama Lengkap') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" readonly class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $peserta->namapeserta }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Instansi/Institusi') }}</label>

                            <div class="col-md-6">
                                <input id="username" type="text" class="form-control @error('username') is-invalid @enderror" readonly name="username" value="{{ $peserta->institusi }}"  >

                                @error('username')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="institusi" class="col-md-4 col-form-label text-md-right">{{ __('Sebagai') }}</label>

                            <div class="col-md-6">
                                <input id="institusi" type="institusi" class="form-control @error('institusi') is-invalid @enderror"   value="{{strtoupper($peserta->sebagai)}}" readonly>

                                @error('institusi')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                          @if($peserta->kesanpesan != null)
                          <div class="form-group row">
                            <label for="institusi" class="col-md-4 col-form-label text-md-right">{{ __('Presensi kehadiran') }}</label>

                            <div class="col-md-6">
                                <input id="presensi" type="text" class="form-control @error('presensi') is-invalid @enderror"   value="{{strtoupper($peserta->updated_at)}}" readonly>

                                @error('presensi')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                          <label for="institusi" class="col-md-4 col-form-label text-md-right">{{ __('Kesan dan Pesan') }}</label>

                          <div class="col-md-6">
                              <textarea class="form-control" readonly rows=10>{{ $peserta->kesanpesan }}
                              </textarea>

                               
                          </div>
                      </div>
                        @else
                        <div class="form-group row">
                          <label for="institusi" class="col-md-4 col-form-label text-md-right">{{ __('Presensi kehadiran') }}</label>

                          <div class="col-md-6">
                              <input id="presensi" type="text" class="form-control @error('presensi') is-invalid @enderror"   value="Tidak mengisi presensi kehadiran" readonly>

                              @error('presensi')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                              @enderror
                          </div>
                      </div>

                        @endif
                       @else 


                        <div class="alert alert-danger alert-dismissible show fade">
                        <div class="alert-body">
                          <button class="close" data-dismiss="alert">
                            <span>&times;</span>
                          </button>
                         DATA TIDAK VALID!!!
                        </div>
                      </div>
                      @endif
        
                         
                  
                     
                      
                    
                </div> 
            </div>
        </div>
    </div>
</div>
@endsection
