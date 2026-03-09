@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Soal Pretes ({{$seminar->namaseminar}})</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Soal Pretes</li>
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
            <form method="post" action={{route('simpansoalpretes')}}>
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
                        <table class="table ">
                            <thead>
                                <tr>
                                    <th width="40px">No</th>
                                    
                                    <th>Soal</th>
                                     
                                    
                                     
                                   
                                    
                                    
                                     
                                     
                                     
                                     
                                </tr>
                            </thead>
                            <tbody>
                                <form method="post" action="{{route('simpanjawabanpretes')}}">
                                    @csrf
                                <?php $i=0;?>
                                @foreach ($pretes as $data)


                                    
                                 
                                  
                                      <input type="hidden" name="seminar_id" value="{{$data->seminar_id}}">
                                      <input type="hidden" name="pretes_id{{$i}}" value="{{$data->id}}">
                                      <input type="hidden" name="user_id" value="{{Auth::user()->id}}">
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td> 
                                        {{$data->soal}}  
                                  
                      
                                        <ol type="A">
                                 <?php
                                    $pilihan= \App\Pilihanpretes::where('pretes_id',$data->id)->get();
                                    $cekpilihan= \App\Pilihanpretes::where('pretes_id',$data->id)->count();
                                    
                                    if ($cekpilihan==0){
                                        $cekjwb=\App\Jawabanpretes::where('pretes_id',$data->id)
                                        ->where('user_id',Auth::user()->id)
                                    ->count(); 
                                    //dd($cekjwb);
                                    if($cekjwb==0){ ?>
                                     <input   type='text' class="form-control" name="pilihan{{$i}}" 
                                     required value="" > 
                                    <?php }
                                    else {
                                        $jwb=\App\Jawabanpretes::where('pretes_id',$data->id)
                                        ->where('user_id',Auth::user()->id)
                                    ->first();  
                                    ?> <input   type='text' class="form-control" name="pilihan{{$i}}" 
                                required value="{{ $jwb->pilihanpretes_id }}" > 
                                 <?php   
                                         }
                                     }
                                             
                                    foreach ($pilihan as $pil) { ?>
                                                           <!-- Modal -->
                                                           
                                <li >
                                    <?php ///cek jawaban peserta
                                    $jawaban=\App\Jawabanpretes::where('pilihanpretes_id',$pil->id)
                                    ->where('user_id',Auth::user()->id)
                                    ->first();
                                    if($jawaban['pilihanpretes_id']==$pil->id)
                                      {  $ro=" (jawaban anda)";
                                      $disabled="disabled checked";
                                        $bg="red";}
                                    else{
                                        $ro="";
                                        $bg="";
                                        $disabled="";
                                    }
                                    
                                    ?>
                            
                                <input  {{$disabled}} type='radio' name="pilihan{{$i}}" 
                                required value="{{$pil->id}}" >  
                               
                              <font color={{$bg}}> {{$pil->pilihan}} <i>{{$ro}}</i> </font>                               
                                </li>




                                   <?php  }?>
                                   
                                        </ol>
                                    
                            
                            </td>
                                    
                                    
                                    
                                    
                                     
                                  
                                     
                                </tr>
                                <?php $i++;
                                echo "  <input type='hidden' name='n' value='".$i."' >";
                                ?>
                                @endforeach
                                <tr>
                                    <td colspan=2><button onClick="return confirm('data yang dikirim tidak bisa disunting kembali, YAKIN?')" type="submit" class="btn btn-xl btn-primary block">Kirim jawaban</button></td>
                                </tr>
                                
                            </form>
                                 
                            </tbody>
                            
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection