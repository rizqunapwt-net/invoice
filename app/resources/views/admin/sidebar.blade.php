<aside class="left-sidebar" data-sidebarbg="skin5" style="background:#1A5276">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar" style="background:#1A5276;">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav" style="background:#1A5276;">
            <ul id="sidebarnav" class="p-t-30" style="background:#1A5276;">
                {{-- <li class="sidebar-item" style="background:#1A5276;"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{route('halamanutama')}}" aria-expanded="false"><i class="fas fa-home"></i><span class="hide-menu">Web Utama</span></a></li> --}}
                <li class="sidebar-item" style="background:#1A5276;"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{route('home')}}" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">Dashboard</span></a></li>
                {{-- @if (Auth::user()->level=='user') 
                <li class="sidebar-item " style="background:#1A5276;"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{route('myprofile')}}"><i class="ti-user m-r-5 m-l-5"></i> My Profile</a></li>
                <li class="sidebar-item " style="background:#1A5276;"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{route('seminarku')}}" aria-expanded="false"><i class="mdi mdi-credit-card-multiple"></i><span class="hide-menu">Seminarku</span></a></li>
                <li class="sidebar-item " style="background:#1A5276;"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{route('tagihanku')}}" aria-expanded="false"><i class="fab fa-cc-amazon-pay"></i><span class="hide-menu">Tagihanku</span></a></li>
                @endif --}}
             @if (Auth::user()->level=='admin' || Auth::user()->level == 'operator') 
             {{-- <li class="sidebar-item" style="background:#1A5276;"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{route('tos')}}" aria-expanded="false"><i class=" fas fa-balance-scale"></i><span class="hide-menu">TOS</span></a></li>   --}}
            {{-- <li class="sidebar-item" style="background:#1A5276;"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{route('users')}}" aria-expanded="false"><i class=" fas fa-users"></i><span class="hide-menu">users</span></a></li> --}}
            {{-- <li class="sidebar-item" style="background:#1A5276;"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{route('paket')}}" aria-expanded="false"><i class="fas fa-dolly-flatbed"></i><span class="hide-menu">paket</span></a></li> --}}
            <li class="sidebar-item" style="background:#1A5276;"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{route('dataorder')}}" aria-expanded="false"><i class="fas fa-sticky-note"></i><span class="hide-menu">Invoices</span></a></li>
            {{-- <li class="sidebar-item" style="background:#1A5276;"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"> <i class="fas fa-dollar-sign"></i><span class="hide-menu">Keuangan</span></a>
                <ul aria-expanded="false" class="collapse  first-level">
                    <li class="sidebar-item" style="background:#1A5276;"><a href="{{route('katpengeluaran')}}" class="sidebar-link"><i class=" fas fa-burn"></i><span class="hide-menu">Kategori Pengeluaran </span></a></li>
                    <li class="sidebar-item" style="background:#1A5276;"><a href="{{route('pengeluaran')}}" class="sidebar-link"><i class="fas fa-hand-holding-usd"></i><span class="hide-menu"> Pengeluaran </span></a></li>
                    <li class="sidebar-item" style="background:#1A5276;"><a href="{{route('rekapkeuangan')}}" class="sidebar-link"><i class=" fas fa-bookmark"></i><span class="hide-menu"> Rekap </span></a></li>
                </ul>
            </li> --}}
           
            {{-- <li class="sidebar-item " style="background:#1A5276;"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{route('seminar')}}" aria-expanded="false"><i class="mdi mdi-calendar"></i><span class="hide-menu">Seminar</span></a></li>
            <li class="sidebar-item" style="background:#1A5276;"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{route('testimoni')}}" aria-expanded="false"><i class=" fas fa-thumbs-up"></i><span class="hide-menu">testimoni</span></a></li> --}}

            @endif   
            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>