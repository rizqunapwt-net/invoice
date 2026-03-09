@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Hasil Rekap Keuangan {{$start}} sampai {{$end}}</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Rekap</li>
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
                    <div class="table-responsive">
                      <form action="{{route('cetakrekap')}}" method="post">
                      @csrf
                      <input type="hidden" name="start" value="{{$start}}">
                      <input type="hidden" name="end" value="{{$end}}">
                        <button type="submit" class="btn btn-danger btn-xs">cetak</button>
                    </form>
                        
                    <table id="zero_config"  class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th width="40px">No</th>
                                   
                                    
                                    <th>Kategori</th>
                                   
                                    <th>keterangan</th>
                                    <th>tanggal</th>
                                    <th>nominal</th>
                                  
                                     
                                    
                                     
                                </tr>
                            </thead>
                            <tbody>
                              <tr><td colspan="5"><b>Pemasukan</b></td></tr>
                            
                                @foreach ($pemasukan as $masuk)
                              @php 
                              $jumlah=$masuk->harga-$masuk->diskon;
                              @endphp

                                <tr>
                                    <td>{{ $loop->iteration}}</td>
                                    <td>{{$masuk->nama}}</td>
                                    
                                    
                                    <td>{{$masuk->namaseminar}}</td>
                                    <td>{{$masuk->created_at}}</td>
                                    <td align="right">{{number_format($jumlah)}}</td>
                                   
                                   
                                    
                                     
                                   
                                </tr>
                             
                                @endforeach
                                <tr><td colspan="4"><h4>Total Pemasukan</h4></td><td><b>{{number_format($totalpemasukan)}}</b></td></tr>
                                
                                 

                                
                              <tr><td colspan="5"><b>Pengeluaran</b></td></tr>
                                <?php 
                                      
                                // $skipped = $pengeluaran->currentPage() * $pengeluaran->perPage(); ?>
                                @foreach ($pengeluaran as $data)
   

                                <tr>
                                    <td>{{ $loop->iteration}}</td>
                                    <td>{{$data->katpengeluaran->namakategori}}</td>
                                   
                                    
                                    <td>{{$data->keterangan}}</td>
                                    <td>{{$data->created_at}}</td>
                                    <td align="right">{{number_format($data->nominal)}}</td>                  
                                     
                                   
                                </tr>
                                
                                @endforeach
                                <tr><td colspan="4"><h4>Total Pegeluaran</h4></td><td><b>{{number_format($totalpengeluaran)}}</b></td></tr>

                                <tr><td colspan="4"><h4>GRAND TOTAL</h4></td><td><b>{{number_format($totalpemasukan-$totalpengeluaran)}}</b></td></tr>
                                 
                            </tbody>
                            
                        </table>
                        {{-- {!! $pengeluaran->render() !!} --}}
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection