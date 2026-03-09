@extends('masterdepan')
@section('konten')
<title>PEMESANAN | {{config('app.name')}}</title>
<div class="container p-100"><br><br><br><br><br>
   <center> <h4><strong>FORM PEMESANAN</strong></h4></center>
    <div class="row justify-content-center">
        
        <div class="col-md-6">
            
                <!--Card-->
                <div class="card" style="height:350px;overflow:auto;">
             
                
                <!--Card content-->
                <div class="card-body">
                    <!--Title-->
          
                   
                    <h4 class="card-title font-weight-bold mb-2">{{$data->namapaket}}</h4>
                  
                    @clean($data->deskripsi)
                    
                     
                </div>
                <?php $persendiskon=($data->diskon/$data->harga)*100;$hargabaru=$data->harga - $data->diskon;?>
                <div class="card-footer bg-transparent d-flex justify-content-between">
                    <span>Disc
                    <strong class="font-weight-bold">{{number_format($persendiskon)}} %</strong>
                    </span>
                    <div>
                      <del class="text-muted mr-2">Rp. {{number_format($data->harga)}}</del>
                      <strong class="text-primary font-weight-bold">Rp. {{number_format($hargabaru)}}</strong>
                    </div>
                    
                </div>
                
              </div>
              
              <!--/.Card-->
       
        </div>
        <div class="col-md-6">
            <div class="card">
               
             

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

                    @if(Auth::user())
 
                    <form method="POST" action="{{ route('order.simpan') }}">
                        @csrf
                       <input type="hidden" name="harga" value="{{$data->harga}}">
                       <input type="hidden" name="diskon" value="{{$data->diskon}}">
                       <input type="hidden" name="namapaket" value="{{$data->namapaket}}">
                       <input type="hidden" name="paket_id" value="{{$data->id}}">
                       <input type="hidden" name="email" value="{{Auth::user()->email}}">
                        <div class="form-group row">
                            <label for="fname" class="col-sm-3 text-right control-label col-form-label">Nama kegiatan</label>
                            <div class="col-sm-9">
                                <input type="text" name="namaseminar" class="form-control" id="fname" placeholder="isikan nama seminar">
                            </div>
                        </div>
                        <input type="hidden" name="berbayar" value="no">
                         
                        <div class="form-group row">
                            <label for="fname" class="col-sm-3 text-right control-label col-form-label">Tanggal Pelaksanaan</label>
                            <div class="col-sm-9">
                                <input type="text" name="tanggal" class="form-control mydatepicker" id="fname" placeholder="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="fname" class="col-sm-3 text-right control-label col-form-label">Waktu Pelaksanaan</label>
                            <div class="col-sm-9">
                                <input type="time" name="jam" class="form-control " id="fname" placeholder="">
                            </div>
                        </div>
                        <div class="form-group row">
                            

                            <div class="col-md-12">
                                <input type="checkbox" required> Dengan ini saya menyetujui <a href={{route('tos')}}>Ketentuan Layanan</a> MesemVirtual 
                            </div>
                        </div>
                       

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Order sekarang   ') }}
                                </button>
                            </div>
                        </div>
                         
                    </form>
                     @else 
                     <div class="card-header"> 
                   
                        <small class="text text-danger"> Silakan <a href="{{url('/login')}}">Login</a> jika sudah punya akun, atau <a href="{{url('/registrasiakun')}}">Registrasi akun</a> terlebih dahulu!</small>
                    </div>
                    @endif
                     
                    
                    
                </div> 
            </div>
        </div>
       
    </div>
</div>
<br><br><br>
 
@endsection
