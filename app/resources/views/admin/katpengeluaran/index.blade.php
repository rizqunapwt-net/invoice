@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">kategori pengeluaran</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">kategori pengeluaran</li>
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
                    <!-- Modal -->
 <div class="modal fade" id="tambahdata" tabindex="-1" role="dialog" aria-labelledby="datatarget" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="datatarget">tambah data kategori</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="POST" action="{{ route('katpengeluaran.simpan') }}">
                @csrf
                

                <div class="form-group row">
                    <label for="name" class="col-md-12 col-form-label">nama kategori</label>

                    <div class="col-md-12">
                      <input type="text" name="namakategori" required class="form-control">
 
                    </div>
                </div>
                 
                 
            
        </div>
        <div class="modal-footer">
         
          <button type="submit" class="btn btn-primary">simpan</button>
        </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>  
                     
  <button class='btn btn-primary' data-toggle="modal" data-target="#tambahdata"><i class="mdi mdi-import"></i>Tambah data</button>
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
                        {{-- <form action="{{route('cariuser')}}" method="GET" role="search">
                          @csrf
                            <div class="input-group">
                                <input type="text" class="form-control" name="q"
                                    placeholder="Search katpengeluaran"> <span class="input-group-btn">
                                    <button type="submit" class="btn btn-default">
                                       search
                                    </button>
                                </span>
                            </div>
                        </form><br> --}}
                       
                        
                    <table id="zero_config"  class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th width="40px">No</th>
                                    
                                    <th>Kategori</th>
                                  
                                     
                                    <th>aksi</th>
                                     
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                      
                                // $skipped = $katpengeluaran->currentPage() * $katpengeluaran->perPage(); ?>
                                @foreach ($katpengeluaran as $data)
                                    
<!-- Modal -->
<div class="modal fade" id="edit{{$data->id}}" tabindex="-1" role="dialog" aria-labelledby="edit{{$data->id}}Label" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="edit{{$data->id}}Label">Edit kategori pengeluaran</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="POST" action="{{ route('katpengeluaran.update') }}">
                @csrf
                
<input type="hidden" name="id" value="{{$data->id}}">
                <div class="form-group row">
                    <label for="name" class="col-md-12 col-form-label">nama kategori</label>

                    <div class="col-md-12">
                      <input type="text" name="namakategori" required class="form-control" value="{{$data->namakategori}}">
 
                    </div>
                </div>
        </div>
        <div class="modal-footer">
            <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
        </div>
      </div>
    </div>
  </div>

                                <tr>
                                    <td>{{ $loop->iteration}}</td>
                                    <td>{{$data->namakategori}}</td>
                                   
                                   
                                    
                                     
                                    <td>
                                        <button type="button" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#edit{{$data->id}}">
                                      <i class="far fa-edit"></i></button>
                                        <form action="{{route('katpengeluaran.hapus',$data->id)}}" method="POST">
                                            @csrf
                                            @method('delete')
                                           
                                            @if (Auth::user()->level == 'admin')
                                       
                                        <button  data-toggle="tooltip" data-placement="top" title="Hapus data?"   type="submit" onclick="return confirm('Yakin hapus data?')" class="btn btn-icon btn-sm  btn-danger"><i class="fas fa-times"></i></button>
                                        @endif
                                    </form>


                                    </td>
                                     
                                </tr>
                                @endforeach
                                 
                            </tbody>
                            
                        </table>
                        {{-- {!! $katpengeluaran->render() !!} --}}
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection