 <!-- Footer -->
<!-- Footer -->
<footer class="page-footer font-small blue pt-4 biruku">

  <!-- Footer Links -->
  <div class="container-fluid text-center text-md-left">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-6 mt-md-0 mt-3">

        <!-- Content -->
       <img src="{{asset('logo-mesem-bw.png')}}" alt="logo mesem virtual" width="200px">
        <br>
        <p class="putih">Solusi Seminar tanpa ribet</p>
        <h4 class="putih">Office</h4>
        <p class="putih">Jalan KS Tubun Gang Camar Karangsalam Kidul 
          Purwokerto - Banyumas - Jawa Tengah</p>
      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none pb-3">

      <!-- Grid column -->
      <div class="col-md-3 mb-md-0 mb-3">

        <!-- Links -->
        <h5 class="text-uppercase putih">Links</h5>

        <ul class="list-unstyled">
          <li>
            <a href="http://rizquna.id" class="kuning footer">Rizquna.id</a>
          </li>
          <li>
            <a href="http://mesem.rizquna.id/login" class="kuning footer">Login</a>
          </li>
         
        </ul>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 mb-md-0 mb-3 putih">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d989.1267521099894!2d109.21529532913534!3d-7.408999499665891!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zN8KwMjQnMzIuNCJTIDEwOcKwMTInNTcuMCJF!5e0!3m2!1sen!2sid!4v1592982749332!5m2!1sen!2sid" width="200" height="200" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
          <br>
       

        {{-- <!-- Links -->
        <h5 class="text-uppercase">Links</h5>

        <ul class="list-unstyled">
          <li>
            <a href="#!">Link 1</a>
          </li>
          <li>
            <a href="#!">Link 2</a>
          </li>
          <li>
            <a href="#!">Link 3</a>
          </li>
          <li>
            <a href="#!">Link 4</a>
          </li>
        </ul> --}}

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3 putih">
    © {{date('Y')}} Copyright:
    <a href="http://mesem.rizquna.id/" class="putih">MesemVirtual</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->
</div>  
        {{-- end of container --}}
       
       
       
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    
    
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="{{asset('assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')}}"></script>
    <script>
      jQuery('.mydatepicker').datepicker({
        format: 'yyyy-mm-dd'
      });
      
    </script>
    </body>
</html>
