@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">tagihanku 
                {{-- <a href="{{route('tagihan.daftarbaru')}}" class="btn btn-success btn-s">daftar tagihan lainnya</a> --}}
            </h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">tagihan</li>
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
                                    
                                    <th>Kode tagihan</th>
                                    <th>Tanggal order</th>
                                    <th>Paket</th>
                                    <th>harga</th>
                                    <th>disc</th>
                                    <th>Total</th>
                                    <th>Status bayar</th>                        
                               
                                     
                                    <th>aksi</th>
                                     
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data as $dt)
                                
                             
                             

<div class="modal fade" id="konfirmasi{{$dt->id}}" tabindex="-1" role="dialog" aria-labelledby="uploadLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="uploadLabel">Konfirmasi Pembayaran Invoice: {{$dt->kodeinvoice}}</h5>
           
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
          <div class="modal-body">
              <form method="post" action="{{route('uploadtrf.order')}}" enctype="multipart/form-data" >
                  @csrf
                  <input type="hidden" name="pemesanan_id" value="{{$dt->id}}">
                  <input type="hidden" name="user_id" value="{{$dt->user_id}}">
                  <input type="hidden" name="kodeinvoice" value="{{$dt->kodeinvoice}}">
                  <input type="hidden" name="paket_id" value="{{$dt->paket_id}}">
                 
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
  @php
  
  $sec = strtotime($dt->created_at);  
  //converts seconds into a specific format  
  $newdate = date ("d/m/Y H:i", $sec);  
  //Appends seconds with the time  
  $newdate = $newdate . ":00";  
  // display converted date and time  
  $total=$dt->harga-$dt->diskon;  
  @endphp 
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>    
                                         {{$dt->kodeinvoice}}

                                     </td>
                                    <td><small>{{$newdate}}</small></td>
                                    <td>{{$dt->paket->namapaket}}</td>
                                    <td>Rp.{{number_format($dt->harga)}}</td>
                                    <td>Rp.{{number_format($dt->diskon)}} </td>
                                    <td>
                                        Rp.{{number_format($total)}}
                                    </td>
                                    <td>{{$dt->statusbayar}}</td>
                                    <td>
                                    
                                        @if($dt->statusbayar <>'sudah')
                                        
                                        <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#konfirmasi{{$dt->id}}">
                                            konfirmasi pembayaran?
                                          </button>
                                          
                                        @else
                                        {{$dt->statusbayar}}
                                        @endif
                                      
                                  
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