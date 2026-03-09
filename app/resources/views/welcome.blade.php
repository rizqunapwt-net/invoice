@extends('masterdepan')
@section('konten')
 

        <div class="flex-center position-ref ">
            @if (Route::has('login'))
                <div class="top-right links">
                   
                </div>
            @endif
             
            <div class="container mt-5">
              <div class="carousel-container position-relative row">
                <div class="col-md-6 ">
                  <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                      @foreach ($seminar as $item)
                          
                      <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
                        <a href="{{ route('seminar.daftar',$item->id) }}"><img class="d-block img-fluid slide" src="{{ $item->brosur }}" alt="{{ $item->namaseminar }}"  >
                        </a>
                           <div class="carousel-caption d-none d-md-block">
                              <h3>{{ $item->namaserminar }}</h3>
                              {{-- <p>{{ $photo->descriptoin }}</p> --}}
                           </div>
                    </div>
                    @endforeach
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                </div>
          
                <div class="col-md-6">

            
                <div class="card-body">
                <div class="content">
                    <br><br>

                    {{-- <h1> <strong>{{config('app.name')}} virtual</strong></h1> --}}
                        <img src="{{asset('logo-mesem.png')}}" alt="mesem virtual"  style="padding:50px"  class="img-fluid">
                     
                    {{-- <h4>Sistem Informasi Manajemen Seminar Virtual</h4> --}}
                    <div class="links">
                        
                    </div>
                     
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
                </div>


            </div>
   
  
            </div>
            
            </div>
            
        </div>
        </div>
                 <!-- Call to Action Well -->
    <div class="card text-white biruku my-5 py-4 text-center">
        <div class="card-body">
          
          <p class="text-white m-0">MESEMIN AJA...SEMINAR PASTI LANCAR (^^,)</p>
        </div>
      </div>
<hr>
<div class="conta">
<!--testimmoni-->
<div class="row">
  <div class="col-md-12    mb-12">
    <div class="card ">
      <div class="card-body">
  
    <h2>Testimonials</h2>
    <div id="myCarousel" class="carousel slide " data-ride="carousel">
      <!-- Carousel indicators -->
      {{-- <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active">*</li>
        <li data-target="#myCarousel" data-slide-to="1">*</li>
        <li data-target="#myCarousel" data-slide-to="2">*</li>
      </ol>    --}}
      <!-- Wrapper for carousel items -->
      <div class="carousel-inner">
        @foreach ($testimoni as $testi)
            
        
        <div class="item carousel-item {{ $loop->first ? 'active' : '' }}">
          <div class="img-box img-fluid"><img src="{{asset($testi->foto)}}" alt="{{$testi->nama}}"></div><br>
       
        
                {{ $testi->testimoni }} 
        
          <h6 style="color:#007bff">{{$testi->nama}}, {{$testi->instansi}}</h6>
          
        </div>
        @endforeach
      </div>
      <!-- Carousel controls -->
      <a class="carousel-control left carousel-control-prev" href="#myCarousel" data-slide="prev">
        <i class="fa fa-angle-left"></i>
      </a>
      <a class="carousel-control right carousel-control-next" href="#myCarousel" data-slide="next">
        <i class="fa fa-angle-right"></i>
      </a>
    </div>
  </div>
    </div>
  </div>

</div>
</div>
<hr>
<div class="container">
<div class="row d-flex justify-content-center">
    
  <h2>
     Pilihan Paket
    </h2>
</div>
<div class="row">
  @php $counter=1;@endphp
  @foreach ($paket as $pak)
      
 
    <div class="col-lg-4 col-md-6 mb-3">
      <!--Card-->
      <div class="card shadow" style="height:425px;overflow:auto;">
   
      <div class="product-image">

      </div>
      <!--Card content-->
      <div class="card-body">
          <!--Title-->

          @if($pak->recommended=='yes')
          <div class="float-right">
          <label class="badge badge-pill badge-danger">recommended</label>
          </div>
          @endif
          <h4 class="card-title font-weight-bold mb-2">{{$pak->namapaket}}</h4>
        
          @clean($pak->deskripsi)
           
           
      </div>
      <?php $persendiskon=($pak->diskon/$pak->harga)*100;$hargabaru=$pak->harga - $pak->diskon;?>
      <div class="card-footer bg-transparent d-flex justify-content-between">
          <span>Disc
          <strong class="font-weight-bold">{{number_format($persendiskon)}} %</strong>
          </span>
          <div>
            <del class="text-muted mr-2">Rp. {{number_format($pak->harga)}}</del>
            <strong class="text-primary font-weight-bold">Rp. {{number_format($hargabaru)}}</strong>
          </div>
          
      </div>
      <a href="{{route('order',$pak->id)}}">
      <button class="btn btn-block btn-warning">
        Pesan Sekarang
         <i class="lnr lnr-chevron-right pl-2"></i>
         </button>
      </a>
    </div>
    
    <!--/.Card-->
</div>
@endforeach
</div>
      <!-- Content Row -->
    <div class="row">
      <div class="col-md-4    mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Registrasi Online</h2>
            <p class="card-text">Pendaftaran peserta secara online baik free maupun berbayar</p>
          </div>
          <div class="card-footer biruku">
            {{-- <a href="#" class="btn   btn-danger btn-sm">More Info</a> --}}
          </div>
        </div>
      </div>
      <!-- /.col-md-4 -->
      <div class="col-md-4   mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Virtual Room</h2>
            <p class="card-text">Ruang seminar virtual kapasitas 500 orang selama 3 jam.</p>
          </div>
          <div class="card-footer biruku">
            {{-- <a href="#" class="btn btn-danger btn-sm">More Info</a> --}}
          </div>
        </div>
      </div>
      <!-- /.col-md-4 -->
      <div class="col-md-4    mb-5">
        <div class="card h-100">
          <div class="card-body ">
            <h2 class="card-title">E-Certificate</h2>
            <p class="card-text">Setiap peserta bisa mendapatkan e-sertifikat secara online sesuai data input peserta dan disematkan validasi  berupa QR Code.</p>
          </div>
          <div class="card-footer biruku">
            {{-- <a href="#" class="btn btn-danger btn-sm">More Info</a> --}}
          </div>
        </div>
      </div>
      <!-- /.col-md-4 -->

     
    <!-- /.row -->
    @endsection
 