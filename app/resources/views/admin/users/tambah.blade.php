@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Tambah user</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Tambah user</li>
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
                    <form class="form-horizontal" method="post" action="{{route('users.simpan')}}">
                        @csrf
                        <div class="card-body">
                            <h4 class="card-title">Isikan data dengan benar</h4>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">username</label>
                                <div class="col-sm-9">
                                    <input type="text" name="username" class="form-control" id="fname" placeholder="username ">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Nama user</label>
                                <div class="col-sm-9">
                                    <input type="text" name="name" class="form-control" id="fname" placeholder="nama user">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Email</label>
                                <div class="col-sm-9">
                                    <input type="email" name="email" class="form-control" id="fname" placeholder="email user">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">password</label>
                                <div class="col-sm-9">
                                    <input type="password" name="password" class="form-control" id="fname" placeholder="8 karakter">
                                </div>
                            </div>
                            


                          
                            <div class="form-group row">
                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">Level</label>
                                <div class="col-sm-9">
                                    <select name="level"  class="select2 form-control custom-select">
                                        <option value="">pilih</option>
                                       
                                        @if (Auth::user()->level == 'admin')
                                        <option value="admin">admin</option>
                                        @endif
                                          
                                            <option value="operator">operator</option>
                                    
                
                
                                    </select>
                                </div>
                            </div>
                            
                            
                        </div>
                        <div class="border-top">
                            <div class="card-body">
                                <button type="submit" class="btn btn-primary">Simpan</button>
                            </div>
                        </div>
                    </form>
                    <div class="table-responsive">
                         
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection