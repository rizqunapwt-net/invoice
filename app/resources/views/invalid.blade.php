@extends('layouts.app')

@section('content')
<title>VALIDSI SERTIFIKAT| {{config('app.name')}}</title>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Validasi Sertifikat') }}</div>

                <div class="card-body">
                    @if(Session::has('error'))
                    <div class="alert alert-danger alert-dismissible show fade">
                        <div class="alert-body">
                          <button class="close" data-dismiss="alert">
                            <span>&times;</span>
                          </button>
                          {{Session('error')}}
                          <a href="{{url('/login')}}" class="btn btn-warning">Login</a>
                        </div>
                      </div>
        
                    @endif
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
 
                   
               
                
                    

             <div class="alert alert-danger alert-dismissible show fade">
                <div class="alert-body">
                   
                 DATA TIDAK VALID!!!
                </div>
              </div>
                         
                  
                     
                      
                    
                </div> 
            </div>
        </div>
    </div>
</div>
@endsection
