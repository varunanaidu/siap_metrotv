<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!-- Footer -->
<footer class="footer pt-0">
  <div class="row align-items-center justify-content-lg-between">
    <div class="col-lg-6">

    </div>
    <div class="col-lg-6">
      <ul class="nav nav-footer justify-content-center justify-content-lg-end">
        <li class="nav-item">

        </li>
        <li class="nav-item">

        </li>
        <li class="nav-item">

        </li>
        <li class="nav-item">

        </li>
      </ul>
    </div>
  </div>
</footer>
</div>
</div>
<!-- Core -->
<script type="text/javascript"> var base_url = "<?= base_url(); ?>" </script>
<script src="<?= base_url(); ?>assets/vendor/jquery/dist/jquery.min.js"></script>
<script src="<?= base_url(); ?>assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="<?= base_url(); ?>assets/vendor/js-cookie/js.cookie.js"></script>
<script src="<?= base_url(); ?>assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
<script src="<?= base_url(); ?>assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
<script src="<?= base_url(); ?>assets/js/main.js"></script>
<!-- Page Script -->
<?php 
if ( isset($js) ) {
  for ( $i = 0; $i < sizeof($js); $i++) { 
    ?>
    <script src="<?= $js[$i] ?>"></script>
    <?php 
  }
}
?>
</body>
</html>