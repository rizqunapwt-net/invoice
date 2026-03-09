@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">users</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">users</li>
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
                    <h5 class="card-title"><a href="{{route('users.tambah')}}"><button class='btn btn-success'><i class="mdi mdi-plus"></i>Tambah Data</button></a>
                         <a href="{{route('users.import')}}"><button class='btn btn-primary'><i class="mdi mdi-import"></i>Import Data</button></a> <a href="{{url(asset('import-users.xlsx'))}}"><button class='btn btn-warning'><i class="mdi mdi-cloud-download"></i>Download Template Excel</button></a></h5>
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
                @if(Session::has('success'))
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
                        <form action="{{route('cariuser')}}" method="GET" role="search">
                          @csrf
                            <div class="input-group">
                                <input type="text" class="form-control" name="q"
                                    placeholder="Search users"> <span class="input-group-btn">
                                    <button type="submit" class="btn btn-default">
                                       search
                                    </button>
                                </span>
                            </div>
                        </form><br>
                       
                        
                        <table   class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th width="40px">No</th>
                                    
                                    <th>Username</th>
                                    <th>Nama users</th>
                                    <th>Telegram</th>
                                    <th>Level</th>
                                    
                                    <th>email</th>
                                     
                                    <th>aksi</th>
                                     
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                      
                                $skipped = $users->currentPage() * $users->perPage(); ?>
                                @foreach ($users as $data)
                                    
 <!-- Modal -->
 <div class="modal fade" id="kirimemail{{$data->id}}" tabindex="-1" role="dialog" aria-labelledby="editpesertaLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="editpesertaLabel">Kirim email ke {{$data->email}}</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="POST" action="{{ route('kirimemail') }}">
                @csrf
                <input type="hidden" name="email" value="{{$data->email}}">

                <div class="form-group row">
                    <label for="name" class="col-md-4 col-form-label text-md-right">Pesan</label>

                    <div class="col-md-12">
                        <textarea name="pesan" id="" cols="50" rows="10" required></textarea>
 
                    </div>
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

                                <tr>
                                    <td>{{ $loop->iteration+$skipped-$users->perPage()}}</td>
                                    <td><a href="{{route('detailuser',$data->id)}}">{{$data->username}}</a></td>
                                    <td>{{$data->name}}</td>
                                    <td><a target="_blank" href="{{url('admin/testelegram/'.$data->tgchat_id)}}">{{$data->tgchat_id}}</a></td>
                                    <td>{{$data->level}}</td>
                                    
                                    
                                    <td>
                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#kirimemail{{$data->id}}">
                                            {{$data->email}}
                                          </button>
                                          
                                    </td>
                                    
                                     
                                    <td>

                                        <form action="{{route('users.hapus',$data->id)}}" method="POST">
                                            @csrf
                                            @method('delete')
                                            <a href="{{route('users.edit',$data->id)}}" data-toggle="tooltip" data-placement="top" title="Edit data?" class="btn btn-icon btn-xs btn-warning"><i class="far fa-edit"></i></a>
                                            @if (Auth::user()->level == 'admin')
                                       
                                        <button  data-toggle="tooltip" data-placement="top" title="Hapus data?"   type="submit" onclick="return confirm('Yakin hapus data?')" class="btn btn-icon btn-sm  btn-danger"><i class="fas fa-times"></i></button>
                                        @endif
                                    </form>


                                    </td>
                                     
                                </tr>
                                @endforeach
                                 
                            </tbody>
                            
                        </table>
                        {!! $users->render() !!}
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection