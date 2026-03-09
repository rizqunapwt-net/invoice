@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">My Profile</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Myprofile</li>
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
                    <h5 class="card-title"> Data anda
                     </h5>
                       <div class="d-flex flex-row comment-row m-t-0">
                        <div class="p-2"></div>
                        <div class="comment-text w-100">
                            <h6 class="font-medium"><strong>{{Auth::user()->name}}</strong> </h6>
                            <span class="m-b-15 d-block">Username <strong><i>{{Auth::user()->username}}</i></strong>
                            <span class="m-b-15 d-block">Level <strong><i>{{Auth::user()->level}}</i></strong>  
                                <span class="m-b-15 d-block">Institusi/Instansi <strong><i>   {{Auth::user()->institusi}}</i></strong>  
                        <span class="m-b-15 d-block">E-mail <strong><i>   {{Auth::user()->email}}</i></strong>  
                            <hr>
                            <br>    

                        
                         <form action="{{route('updatettl')}}" method="post">
                            @csrf
                            <input type="hidden" name="id" value="{{Auth::user()->id}}">
                            
                            <h4 class="card-title text text-danger">Update Profile</h4>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-12 text-left control-label col-form-label">Tempat Lahir,dd-mm-yy</label>
                                <div class="col-sm-12">
                                    <input type="text" name="ttl" class="form-control"  requeired id="fname" value="{{ $users->ttl }}">
                                </div>
                            </div>
                         
                            <div class="form-group row">
                                <label for="fname" class="col-sm-12 text-left control-label col-form-label">Alamat  </label>
                                <div class="col-sm-12">
                                    <input type="text" name="alamat" class="form-control"  requeired id="fname" value="{{ $users->alamat    }}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-12 text-left control-label col-form-label">Phone </label>
                                <div class="col-sm-12">
                                    <input type="text" name="phone" class="form-control"  requeired id="fname" value="{{ $users->phone   }}">
                                </div>
                            </div>
                            
                            <div class="border-top">
                                <div class="card-body">
                                    <button type="submit" class="btn btn-primary">update</button>
                                </div>
                            </div>
                            </form>

                </div>
            </div>
        </div>
        <div class="col-6">
            
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"> Ubah password?
                     </h5>
                        
                            <form action="{{route('gantipassword')}}" method="post">
                            @csrf
                            <input type="hidden" name="id" value="{{Auth::user()->id}}">
                            <input type="hidden" name="tmp_paswd" value="{{Auth::user()->password}}">
                            <h4 class="card-title">Ketikkan password baru Anda</h4>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-12 text-right control-label col-form-label">new password</label>
                                <div class="col-sm-12">
                                    <input type="password" name="newpaswd" class="form-control" id="fname" placeholder="password baru">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-12 text-right control-label col-form-label">Confirm new password</label>
                                <div class="col-sm-12">
                                    <input type="password" name="newpaswdconfirm" class="form-control" id="fname" placeholder="konfirmasi password">
                                </div>
                            </div>
                            <div class="border-top">
                                <div class="card-body">
                                    <button type="submit" class="btn btn-primary">update</button>
                                </div>
                            </div>
                            </form>
                       
                        <div class="comment-text w-100">
                            
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection