@extends('layouts.app')

@section('content')
<title>Presensi kehadiran</title>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Presensi kehadiran') }}</div>

                <div class="card-body">
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
                <span class="badge badge-warning">Tanggal: {{$newdate}} WIB</span><br>
                <span class="badge badge-danger">Pastikan E-Mail Anda terdaftar di database kami!</span>
            </center></div>
             <?php 
            $start=$seminar->tanggal;
            $now=date('Y-m-d H:i:s');
            ?>
            @if($start <= $now)
                
                    <form method="POST" action="{{route('simpanpresensi')}}">
                        @csrf
                        <input type="hidden" name="seminar_id" value="{{$seminar->id}}">

                          
                         
                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Anda') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="kesan" class="col-md-4 col-form-label text-md-right">{{ __('Kesan/pesan Anda') }}</label>

                            <div class="col-md-6">
                                <textarea class="form-control" name="kesanpesan"  required ></textarea>

                                
                            </div>
                        </div>
 
                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Simpan') }}
                                </button>
                            </div>
                        </div>
                         
                    </form>
                     
                     
                    @else
                    <div class="alert alert-danger alert-dismissible show fade">
                        <div class="alert-body">
                          {{-- <button class="close" data-dismiss="alert">
                            <span>&times;</span>
                          </button> --}}
                          Pengisian presensi kehadiran akan dimulai   {{ \Carbon\Carbon::createFromTimeStamp(strtotime($start))->diffForHumans() }}
                           
                        </div>
                      </div>
                    @endif
                    
                </div> 
            </div>
        </div>
    </div>
</div>
@endsection
