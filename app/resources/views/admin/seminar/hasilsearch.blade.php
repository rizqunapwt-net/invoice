@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Data Orderan
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
                     <!-- Modal -->
           <div class="modal fade" id="tambah" tabindex="-1" role="dialog" aria-labelledby="editpesertaLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="editpesertaLabel">Tambah data order</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                    <form method="POST" action="{{ route('tambahorder') }}">
                        @csrf
                        <input type="hidden" name="kodeinvoice" value="">
                        <div class="form-group row">
                          <label for="name" class="col-md-12 col-form-label text-md-left">{{ __('Nama Customer') }}</label>
      
                          <div class="col-md-12">
                              <input id="name" type="text" class="form-control @error('nama') is-invalid @enderror" name="nama"  autofocus
                              value=" ">
      
                              @error('nama')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                              @enderror
                          </div>
                      </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-12 col-form-label text-md-left">{{ __('Nama Produk') }}</label>
        
                            <div class="col-md-12">
                                <input id="name" type="text" class="form-control @error('namaproduk') is-invalid @enderror" name="nama_produk"  autofocus
                                value=" ">
        
                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                          <label for="institusi" class="col-md-12 col-form-label text-md-left">{{ __('Harga @item') }}</label>
      
                          <div class="col-md-12">
                              <input id="harga" type="number" class="form-control @error('harga') is-invalid @enderror" name="harga" value="" required autocomplete="harga">
      
                              @error('harga')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                              @enderror
                          </div>
                      </div>
                        <div class="form-group row">
                            <label for="institusi" class="col-md-12 col-form-label text-md-left">{{ __('Jumlah') }}</label>
        
                            <div class="col-md-12">
                                <input id="jumlah" type="number" class="form-control @error('jumlah') is-invalid @enderror" name="jumlah" value="" required autocomplete="jumlah">
        
                                @error('jumlah')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                          <label for="institusi" class="col-md-12 col-form-label text-md-left">{{ __('Satuan') }}</label>
      
                          <div class="col-md-12">
                                  <select name="satuan" id="" class="form-control">
                                    <option value="eks">eksemplar</option>

                                  </select>
      
                              @error('satuan')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                              @enderror
                          </div>
                      </div>
                        
                      <div class="form-group row">
                        <label for="institusi" class="col-md-12 col-form-label text-md-left">{{ __('diskon') }}</label>
    
                        <div class="col-md-12">
                            <input id="diskon" type="number" class="form-control @error('diskon') is-invalid @enderror" name="diskon" value="0" required autocomplete="diskon">
    
                            @error('diskon')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="form-group row">
                      <label for="institusi" class="col-md-12 col-form-label text-md-left">{{ __('tanggal') }}</label>
  
                      <div class="col-md-12">
                          <input id="tanggal" type="text" class="form-control @error('tanggal') is-invalid @enderror" name="tanggal" value="{{ date('Y-m-d') }}" required autocomplete="tanggal">
  
                          @error('tanggal')
                              <span class="invalid-feedback" role="alert">
                                  <strong>{{ $message }}</strong>
                              </span>
                          @enderror
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
                    {{-- <div class="alert alert-warning" role="alert">
                     *)Geser kanan/kiri untuk melihat detail data bagi pengguna smartphone
                    </div> --}}
                    <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#tambah"><i class=" fas fa-plus-circle"></i>tambah order</button>
                    <form action="{{route('cariorder')}}" method="GET" role="search">
                      @csrf
                        <div class="input-group">
                            <input type="text" class="form-control" name="q"
                                placeholder="kata kunci pencarian"> 
                               
                            <select name="by" required class="form-control">
                                <option value="">pilih kategori pencarian</option>
                             
                                <option value="nama">nama customer</option>                              
                                <option value="kodeinvoice">kode invoice</option>
                                <option value="tanggal">tanggal order</option>
                                <option value="statusbayar">status bayar</option>
                                <option value="nama_produk">nama produk</option>
                         
                            </select>
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-default">
                                   search
                                </button>
                            </span>
                        </div>
                    </form><br>
                    <hr>
                    <h5>Pencarian data berdasarkan <i class="text text-success">{{ $by }} </i> dengan katakunci <i><u><span class="text text-danger">"{{$q}}"</span></u>   </i> sebanyak {{$order->total()}} data:</h5>
                    <div class="table-responsive">
                        <table  class="table table-sm table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th width="40px">No</th>
                                    
                                    <th>Kode tagihan</th>
                                    <th>Nama user</th>
                                    <th>Tanggal order</th>
                                    <th>Produk</th>
                                    <th>harga @</th>
                                    <th>disc</th>
                                    <th>Total</th>
                                    <th>Status bayar</th>                        
                               
                                     
                                    <th>status pembayaran</th>
                                    <th>aksi</th>
                                     
                                </tr>
                            </thead>
                            <tbody>
                              <?php 
                                      
                                $skipped = $order->currentPage() * $order->perPage(); ?>
                                @foreach ($order as $dt)
                                
                             
                             

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
            <!-- Modal -->
            <div class="modal fade" id="tambah{{ $dt->id }}" tabindex="-1" role="dialog" aria-labelledby="editpesertaLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="editpesertaLabel">Tambah item inv: {{ $dt->kodeinvoice }}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                      <form method="POST" action="{{ route('tambahorder') }}">
                          @csrf
                          <input type="hidden" name="kodeinvoice" value="{{ $dt->kodeinvoice }} ">
                          <div class="form-group row">
                            <label for="name" class="col-md-12 col-form-label text-md-left">{{ __('Nama Customer') }}</label>
        
                            <div class="col-md-12">
                                <input id="name" type="text" class="form-control @error('nama') is-invalid @enderror" name="nama"  autofocus readonly
                                value="{{ $dt->nama }} ">
        
                                @error('nama')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                          <div class="form-group row">
                              <label for="name" class="col-md-12 col-form-label text-md-left">{{ __('Nama Produk') }}</label>
          
                              <div class="col-md-12">
                                  <input id="name" type="text" class="form-control @error('namaproduk') is-invalid @enderror" name="nama_produk"  autofocus
                                  value=" ">
          
                                  @error('name')
                                      <span class="invalid-feedback" role="alert">
                                          <strong>{{ $message }}</strong>
                                      </span>
                                  @enderror
                              </div>
                          </div>
                          <div class="form-group row">
                            <label for="institusi" class="col-md-12 col-form-label text-md-left">{{ __('Harga @item') }}</label>
        
                            <div class="col-md-12">
                                <input id="harga" type="number" class="form-control @error('harga') is-invalid @enderror" name="harga" value="" required autocomplete="harga">
        
                                @error('harga')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                          <div class="form-group row">
                              <label for="institusi" class="col-md-12 col-form-label text-md-left">{{ __('Jumlah') }}</label>
          
                              <div class="col-md-12">
                                  <input id="jumlah" type="number" class="form-control @error('jumlah') is-invalid @enderror" name="jumlah" value="" required autocomplete="jumlah">
          
                                  @error('jumlah')
                                      <span class="invalid-feedback" role="alert">
                                          <strong>{{ $message }}</strong>
                                      </span>
                                  @enderror
                              </div>
                          </div>
                          <div class="form-group row">
                            <label for="institusi" class="col-md-12 col-form-label text-md-left">{{ __('Satuan') }}</label>
        
                            <div class="col-md-12">
                                    <select name="satuan" id="" class="form-control">
                                      <option value="eks">eksemplar</option>
  
                                    </select>
        
                                @error('satuan')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                          
                        <div class="form-group row">
                          <label for="institusi" class="col-md-12 col-form-label text-md-left">{{ __('diskon') }}</label>
      
                          <div class="col-md-12">
                              <input id="diskon" type="number" class="form-control @error('diskon') is-invalid @enderror" name="diskon" value="0" required autocomplete="diskon">
      
                              @error('diskon')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                              @enderror
                          </div>
                      </div>
                      <div class="form-group row">
                        <label for="institusi" class="col-md-12 col-form-label text-md-left">{{ __('tanggal') }}</label>
    
                        <div class="col-md-12">
                            <input id="tanggal" type="text" class="form-control @error('tanggal') is-invalid @enderror" name="tanggal" value="{{ date('Y-m-d') }}" required autocomplete="tanggal">
    
                            @error('tanggal')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
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
             <div class="modal fade" id="edit{{ $dt->id }}" tabindex="-1" role="dialog" aria-labelledby="editpesertaLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="editpesertaLabel">Edit item inv: {{ $dt->kodeinvoice }}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                      <form method="POST" action="{{ route('editorder') }}">
                          @csrf
                          <input type="hidden" name="kodeinvoice" value="{{ $dt->kodeinvoice }} ">
                          <input type="hidden" name="id" value="{{ $dt->id }} ">
                          <div class="form-group row">
                            <label for="name" class="col-md-12 col-form-label text-md-left">{{ __('Nama Customer') }}</label>
        
                            <div class="col-md-12">
                                <input id="name" type="text" class="form-control @error('nama') is-invalid @enderror" name="nama"  autofocus readonly
                                value="{{ $dt->nama }} ">
        
                                @error('nama')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                          <div class="form-group row">
                              <label for="name" class="col-md-12 col-form-label text-md-left">{{ __('Nama Produk') }}</label>
          
                              <div class="col-md-12">
                                  <input id="name" type="text" class="form-control @error('namaproduk') is-invalid @enderror" name="nama_produk"  autofocus
                                  value=" {{ $dt->nama_produk }}">
          
                                  @error('name')
                                      <span class="invalid-feedback" role="alert">
                                          <strong>{{ $message }}</strong>
                                      </span>
                                  @enderror
                              </div>
                          </div>
                          <div class="form-group row">
                            <label for="institusi" class="col-md-12 col-form-label text-md-left">{{ __('Harga @item') }}</label>
        
                            <div class="col-md-12">
                                <input id="harga" type="number" class="form-control @error('harga') is-invalid @enderror" name="harga" value="{{ $dt->harga }}" required autocomplete="harga">
        
                                @error('harga')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                          <div class="form-group row">
                              <label for="institusi" class="col-md-12 col-form-label text-md-left">{{ __('Jumlah') }}</label>
          
                              <div class="col-md-12">
                                  <input id="jumlah" type="number" class="form-control @error('jumlah') is-invalid @enderror" name="jumlah" value="{{ $dt->jumlah }}" required autocomplete="jumlah">
          
                                  @error('jumlah')
                                      <span class="invalid-feedback" role="alert">
                                          <strong>{{ $message }}</strong>
                                      </span>
                                  @enderror
                              </div>
                          </div>
                          <div class="form-group row">
                            <label for="institusi" class="col-md-12 col-form-label text-md-left">{{ __('Satuan') }}</label>
        
                            <div class="col-md-12">
                                    <select name="satuan" id="" class="form-control">

                                      <option value="eks">eksemplar</option>
  
                                    </select>
        
                                @error('satuan')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                          
                        <div class="form-group row">
                          <label for="institusi" class="col-md-12 col-form-label text-md-left">{{ __('diskon') }}</label>
      
                          <div class="col-md-12">
                              <input id="diskon" type="number" class="form-control @error('diskon') is-invalid @enderror" name="diskon" value="{{ $dt->diskon }}" required autocomplete="diskon">
      
                              @error('diskon')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                              @enderror
                          </div>
                      </div>
                      <div class="form-group row">
                        <label for="institusi" class="col-md-12 col-form-label text-md-left">{{ __('tanggal') }}</label>
    
                        <div class="col-md-12">
                            <input id="tanggal" type="text" class="form-control @error('tanggal') is-invalid @enderror" name="tanggal" value="{{ $dt->tanggal }}" required autocomplete="tanggal">
    
                            @error('tanggal')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
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
  
  $sec = strtotime($dt->created_at);  
  //converts seconds into a specific format  
  $newdate = date ("d/m/Y H:i", $sec);  
  //Appends seconds with the time  
  $newdate = $newdate . ":00";  
  // display converted date and time  
  $total=($dt->harga*$dt->jumlah)-$dt->diskon;  
  @endphp 
                                <tr>
                                 <td> {{ $loop->iteration+$skipped-$order->perPage()}}</td>
<?php $row=\App\Pemesanan::where('kodeinvoice',$dt->kodeinvoice)->count();?>
                                    <td  > 
                                      @if($dt->statusbayar=='lunas')
                                      <a class="btn btn-success kecil bts-xs" href="{{route('cetakinvoicedompdf',$dt->kodeinvoice)}}" target="_blank">{{$dt->kodeinvoice}}</a>
                                      @else 
                                      <a class="btn btn-danger kecil bts-xs" href="{{route('cetakinvoicedompdf',$dt->kodeinvoice)}}" target="_blank">{{$dt->kodeinvoice}}</a>
                                        @endif
                                        <button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#tambah{{ $dt->id }}">tambah item?</button>
                                     </td>
                                     <td>    
                                        {{$dt->nama}}<br>
                                        {{-- <a href="{{route('cektransferan.order',$dt->kodeinvoice)}}">Cek Transferan</a> --}}

                                    </td>
                                    <td><small>{{$newdate}}</small></td>
                                    <td>{{ $dt->nama_produk }}</td>
                                    <td align="right">Rp.{{number_format($dt->harga)}}</td>
                                    <td align="right">Rp.{{number_format($dt->diskon)}} </td>
                                    <td align="right">
                                        Rp.{{number_format($total)}}
                                    </td>
                                    <td>{{$dt->statusbayar}}</td>
                                    <td>
                                    
                                        @if($dt->statusbayar <>'lunas')
                                        
                                        <label class="label label-danger">{{$dt->statusbayar}}</label>
                                       
                                          
                                        @else
                                        <label class="label label-success">{{$dt->statusbayar}}</label><br>
                                       
                                        @endif
                                        <form action="{{route('lunas',$dt->id)}}" method="POST">

                                          @csrf
                                          <input type="hidden" name="statusbayar" value="lunas">
                                          <input type="hidden" name="kodeinvoice" value="{{ $dt->kodeinvoice }}">
                                        <button  type="submit" title="lunas?" class="btn btn-icon btn-xs btn-success"><i class="fas fa-check-circle"></i></button>
                                        </form>
                                      
                                  
                                </td>
                                <td width="70px">
                                  <button class="btn btn-warning  btn-xs" data-toggle="modal" data-target="#edit{{ $dt->id }}"><i class="far fa-edit"></i></a>
                                  <form action="{{route('pemesanan.hapus',$dt->id)}}" method="POST">
                                    @csrf
                                    @method('delete')
                                  
                                    
                                    

                                    @if (Auth::user()->level == 'admin')
                               
                                <button  style="float:right" data-toggle="tooltip" data-placement="top" title="Hapus data?"   type="submit" onclick="return confirm('Yakin hapus data?')" class="btn btn-icon btn-xs    btn-danger "><i class="fas fa-times"></i></button>
                                @endif
                            </form>
                                </td>
                                     
                             
                            
                                    
                                     
                                    
                                     
                                </tr>
                                @endforeach
                                
                            </tbody>
                            
                        </table>
                        {!! $order->render() !!}
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection