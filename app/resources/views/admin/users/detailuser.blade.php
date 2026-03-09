@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Detail user</h4>
            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="{{route('users')}}">users</a></li>
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
                    <h5 class="card-title">
                        {{$user->name}}</h5>
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
                        usrname:<b>{{$user->username}}</b><br>
                         Alamat:<b>{{$user->alamat}}</b><br>
                         Email:<b>{{$user->email}}</b><br>
                         Phone:<b>{{$user->phone}}</b><br>
                         <hr>
                         Data Seminar<br>
                      <?php   $skipped = $peserta->currentPage() * $peserta->perPage();?>
                          
                         @foreach ($peserta as $data)
                         {{ $loop->iteration+$skipped-$peserta->perPage()}}. <a href="{{route('adminseminar.detail',$data->seminar->id)}}">{{$data->seminar->namaseminar}}</a> <br>
                         @endforeach
                       
                         {!! $peserta->render() !!}
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection