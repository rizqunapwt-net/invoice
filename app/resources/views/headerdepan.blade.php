<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
      <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-150108191-2"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-150108191-2');
</script>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16" href="{{asset('assets/images/favicon.png')}}">
        <title>{{config('app.name')}}</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="{{asset('assets/libs/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')}}">
      
        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                background:url({{asset('pattern.png')}}) repeat;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }
            .biruku{
              background-color:#1A5276;
            }
            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
            .button {
 
  color: white;padding:0 10px;border-radius: 5px;
  border: 2px solid #ffffff; /* Green */
}
        </style>
    </head>
    <body>
        <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark biruku fixed-top">
    <div class="container">
      <a class="navbar-brand" href="{{route('halamanutama')}}">MesemVirtual</a>
      <a  href="{{url('/login')}}" class="button">login</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
       
          <li class="nav-item">
            <a class="nav-link" href="{{url('/about')}}">About</a>
          </li>
          {{-- <li class="nav-item">
            <a class="nav-link" href="#">Services</a>
          </li> --}}
          <li class="nav-item">
            <a class="nav-link " href="https://api.whatsapp.com/send?phone=6285257288761">Contact</a>
          </li>
          <li class="nav-item">
            <a class="nav-link"  href="{{ url('/ketentuan-layanan') }}">Ketentuan Layanan</a>
          </li>
          @if (Auth::user())
          <li class="nav-item">
            <a class="nav-link"  href="{{ route('home') }}">Dashboard</a>
          </li>
          @else
          <li class="nav-item">
            <a class="nav-link"  href="{{ route('login') }}">Login</a>
          </li>
         @endif
        </ul>
      </div>
    </div>
  </nav>
