@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Soal Postes ({{$seminar->namaseminar}})</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="{{route('adminseminar.detail',$seminar->id)}}">Seminar detail</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Soal Postes</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="tambahsoal" tabindex="-1" role="dialog" aria-labelledby="tambahsoalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="tambahsoalLabel">Tambah Soal</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="post" action={{route('simpansoalpostes')}}>
                @csrf
                <div class="form-group">
                  <label for="exampleInputEmail1">Soal </label>
                 <textarea name="soal" class="form-control" i  cols="30" rows="10"></textarea>
                   
                </div>
                 
                
                  <input type="hidden" name="seminar_id" value="{{$seminar->id}}">     
        </div>
        <div class="modal-footer">
          
          <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
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
                     
               <button class='btn btn-primary btn-xs' data-toggle="modal" data-target="#tambahsoal"><i class="mdi mdi-plus"></i>Tambah Soal</button>
               <a href="{{ route('copypretes',$seminar->id) }}" class="btn btn-xs btn-success">copy dari pretes?</a> 
                          </h5>
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
                    <div class="table-responsive">
                        <table id="zero_config" class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th width="40px">No</th>
                                    
                                    <th>Soal</th>
                                    <th>Tanggal pembuatan</th>
                                    <th>Pilihan jawaban</th>
                                     
                                   
                                    <th>aksi</th>
                                    
                                     
                                     
                                     
                                     
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($postes as $data)
<!-- Modal -->
<div class="modal fade" id="editpostes{{$data->id}}" tabindex="-1" role="dialog" aria-labelledby="editsoalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="editsoalLabel">Edit Soal</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="post" action={{route('updatesoalpostes')}}>
                @csrf
                <div class="form-group">
                  <label for="exampleInputEmail1">Soal </label>
                 <textarea name="soal" class="form-control" i  cols="30" rows="10">{{$data->soal}}</textarea>
                   
                </div>
                 
                
                  <input type="hidden" name="id" value="{{$data->id}}">     
        </div>
        <div class="modal-footer">
          
          <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

                                <!-- Modal -->
<div class="modal fade" id="tambahpilihan{{$data->id}}" tabindex="-1" role="dialog" aria-labelledby="tambahsahpilihanLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="tambahsahpilihanLabel">Tambah Pilihan</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="post" action={{route('simpanpilihanpostes')}}>
                @csrf
                <div class="form-group">
                  <label for="exampleInputEmail1">Pilihan </label>
                 <input type="text" name="pilihan" class="form-control"  > 
                   
                </div>
                 
                
                  <input type="hidden" name="seminar_id" value="{{$seminar->id}}">
                  <input type="hidden" name="postes_id" value="{{$data->id}}">     
        </div>
        <div class="modal-footer">
          
          <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>


                                    
                                @php
                                $sec = strtotime($data->created_at);  
                                //converts seconds into a specific format  
                                $newdate = date ("d/m/Y H:i", $sec);  
                                //Appends seconds with the time  
                                $newdate = $newdate . ":00";  
                                // display converted date and time    
                                @endphp
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td> 
                                        {{$data->soal}}</td>
                                    <td>{{$newdate}}</td>
                                    <td>
                                        <ol type="a">
                                 <?php
                                    $pilihan= \App\Pilihanpostes::where('postes_id',$data->id)->get();
                                      
                                    foreach ($pilihan as $pil) { ?>
                                                           <!-- Modal -->
<div class="modal fade" id="editpilihan{{$pil->id}}" tabindex="-1" role="dialog" aria-labelledby="editpilihanLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="editpilihanLabel">EditPilihan</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="post" action={{route('updatepilihanpostes')}}>
                @csrf
                <div class="form-group">
                  <label for="exampleInputEmail1">Pilihan </label>
                 <input type="text" name="pilihan" value="{{$pil->pilihan}}" class="form-control"  > 
                   
                </div>
                 
                
                  
                  <input type="hidden" name="id" value="{{$pil->id}}">     
        </div>
        <div class="modal-footer">
          
          <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
                                      <li >
                                        {{$pil->pilihan}}                                        <form action="{{route('pilihanpostes.hapus',$pil->id)}}" method="POST">
                                            <a href="#" class='btn kecil btn-warning btn-sm' data-toggle="modal" data-target="#editpilihan{{$pil->id}}"><i class="far fa-edit"></i></a> 
                                            @csrf
                                            @method('delete')
                                            <button  data-toggle="tooltip" data-placement="top" title="Hapus data?"   type="submit" onclick="return confirm('Yakin hapus data?')" class="btn btn-icon btn-xs  btn-danger kecil"><i class="fas fa-times"></i></button>
                                          
                                        </form>
                                        
                                        
                                     </li>
                                   <?php }?>
                                   
                                        </ol>
                                   {{-- @foreach($data->pilihanpostes->pilihan as $pilihan)

                                   @endforeach --}}
                                        <button class='btn btn-primary btn-xs' data-toggle="modal" data-target="#tambahpilihan{{$data->id}}"><i class="mdi mdi-plus"></i>Tambah pilihan</button> 
                                    </td>
                            
                            </td>
                                    
                                    
                                    
                                    
                                     
                                    <td>
                                        
                                         
                                        <form action="{{route('postes.hapus',$data->id)}}" method="POST">
                                            <a href="#" class='btn kecil btn-warning btn-sm' data-toggle="modal" data-target="#editpostes{{$data->id}}"><i class="far fa-edit"></i></a>
                                            @csrf
                                            @method('delete')
                                            <button  data-toggle="tooltip" data-placement="top" title="Hapus data?"   type="submit" onclick="return confirm('Yakin hapus data?')" class="btn btn-icon btn-xs  btn-danger"><i class="fas fa-times"></i></button>
                                          
                                        </form>
                                  
                                        
                                    
                                    
                                     
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