<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
	<meta name="author" content="Creative Tim">
	<title>SIAP - Web Order Graphic Department</title>
	<!-- Favicon -->
	<link rel="icon" href="<?= base_url(); ?>assets/img/brand/favicon.png" type="image/png">
	<!-- Fonts -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
	<!-- Icons -->
	<link rel="stylesheet" href="<?= base_url(); ?>assets/vendor/nucleo/css/nucleo.css" type="text/css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
	<!-- Argon CSS -->
	<link rel="stylesheet" href="<?= base_url(); ?>assets/css/argon.css?v=1.2.0" type="text/css">
	<!-- Sweetalert2 -->
	<link rel="stylesheet" href="<?= base_url(); ?>assets/vendor/sweetalert2/dist/sweetalert2.min.css" type="text/css">
</head>

<body class="bg-default">


	<!-- Main content -->
	<div class="main-content">
		<!-- Header -->
		<div class="header bg-gradient-primary py-7 py-lg-8 pt-lg-9">
			<div class="container">
				<div class="header-body text-center mb-7">
					<div class="row justify-content-center">
						<div class="col-xl-5 col-lg-6 col-md-8 px-5">
							<h1 class="text-white"><img src="<?= base_url(); ?>assets/img/brand/logo.png" alt="SIAP"></h1>
							<h1 class="text-white">CLIENT</h1>
						</div>
					</div>
				</div>
			</div>
			<div class="separator separator-bottom separator-skew zindex-100">
				<svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
					<polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
				</svg>
			</div>
		</div>
		<!-- Page content -->
		<div class="container mt--8 pb-5">
			<div class="row justify-content-center">
				<div class="col-lg-5 col-md-7">
					<div class="card bg-secondary border-0 mb-0">

						<div class="card-body px-lg-5 py-lg-5">
							<div class="text-center text-muted mb-4">
								<small>Masuk dengan menggunakan akun Idocs Anda</small>
							</div>
							<form role="form" id="login-form" method="POST" accept-charset="UTF-8">
								<div class="form-group mb-3">
									<div class="input-group input-group-merge input-group-alternative">
										<div class="input-group-prepend">
											<span class="input-group-text"><i class="ni ni-single-02"></i></span>
										</div>
										<input class="form-control" placeholder="NIP" type="text" name="username" id="username">
									</div>
								</div>
								<div class="form-group">
									<div class="input-group input-group-merge input-group-alternative">
										<div class="input-group-prepend">
											<span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
										</div>
										<input class="form-control" placeholder="Password" type="password" name="userpass" id="userpass">
									</div>
								</div>
								<!-- <div class="custom-control custom-control-alternative custom-checkbox">
									<input class="custom-control-input" id=" customCheckLogin" type="checkbox">
									<label class="custom-control-label" for=" customCheckLogin">
										<span class="text-muted">Ingat Saya</span>
									</label>
								</div> -->
								<div class="text-center">
									<button type="submit" id="btn-submit" class="btn btn-primary my-4">Sign in</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Argon Scripts -->
	<!-- Core -->
	<script src="<?= base_url(); ?>assets/vendor/jquery/dist/jquery.min.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/js-cookie/js.cookie.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
	<!-- Argon JS -->
	<script src="<?= base_url(); ?>assets/js/argon.js?v=1.2.0"></script>
	<!-- Sweetalert2 -->
	<script src="<?= base_url(); ?>assets/vendor/sweetalert2/dist/sweetalert2.min.js"></script>
	<script type="text/javascript"> var base_url = "<?= base_url(); ?>" </script>
	<script src="<?= base_url(); ?>assets/js/pages/login.js"></script>
</body>

</html>