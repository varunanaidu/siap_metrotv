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
	<link rel="stylesheet" href="<?= base_url(); ?>assets/vendor/bootstrap/dist/css/bootstrap.min.css">
	<!-- Fonts -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
	<!-- Icons -->
	<link rel="stylesheet" href="<?= base_url(); ?>assets/vendor/nucleo/css/nucleo.css" type="text/css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
	<!-- Page plugins -->
	<!-- Argon CSS -->
	<link rel="stylesheet" href="<?= base_url(); ?>assets/css/argon.css?v=1.2.0" type="text/css">
	<?php 
	if ( isset($css) ) {
		for ( $i = 0; $i < sizeof($css); $i++) { 
			?>
			<link rel="stylesheet" href="<?= $css[$i] ?>" type="text/css"></link>
			<?php 
		}
	}
	?>
	<style type="text/css">
		.ganttview{
			width: max-content;
		}
	</style>
</head>

<body>
	<!-- Sidenav -->
	<nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
		<div class="scrollbar-inner">
			<!-- Brand -->
			<div class="sidenav-header  align-items-center">
				<a class="navbar-brand" href="<?= base_url(); ?>">
					<img src="<?= base_url(); ?>assets/img/brand/logo.png" class="navbar-brand-img" alt="...">
				</a>
			</div>
			<div class="navbar-inner">
				<!-- Collapse -->
				<div class="collapse navbar-collapse" id="sidenav-collapse-main">
					<!-- Nav items -->
					<ul class="navbar-nav">
						<?php 
						if (isset($list_menu) and $list_menu != 0) {
							foreach ($list_menu as $menu) {
								?>
								<li class="nav-item">
									<a class="nav-link" href="<?= base_url().$menu->nav_ctr ?>">
										<i class="<?= $menu->nav_icon ?> text-primary"></i>
										<span class="nav-link-text"><?= $menu->nav_name ?></span>
									</a>
								</li>
								<?php 
							}
						}
						?>
						<?php 
						if ( isset($additional_menu) and $additional_menu != 0 ) {
							foreach ($additional_menu as $menu_add) {
								?>
								<li class="nav-item">
									<a class="nav-link" href="<?= base_url().$menu_add->nav_ctr ?>" target="_blank">
										<div class="col-lg-12 col-6">
											<a href="<?= base_url().$menu_add->nav_ctr ?>" class="btn btn-sm btn-primary"><?= $menu_add->nav_name ?></a>
										</div>
									</a>
								</li>
								<?php 
							}
						}
						?>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<!-- Main content -->
	<div class="main-content" id="panel">
		<!-- Topnav -->
		<nav class="navbar navbar-top navbar-expand navbar-dark bg-primary border-bottom">
			<div class="container-fluid">
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<!-- Navbar links -->
					<ul class="navbar-nav align-items-center  ml-md-auto ">
						<li class="nav-item d-xl-none">
							<!-- Sidenav toggler -->
							<div class="pr-3 sidenav-toggler sidenav-toggler-dark" data-action="sidenav-pin" data-target="#sidenav-main">
								<div class="sidenav-toggler-inner">
									<i class="sidenav-toggler-line"></i>
									<i class="sidenav-toggler-line"></i>
									<i class="sidenav-toggler-line"></i>
								</div>
							</div>
						</li>
						<li class="nav-item d-sm-none">
							<a class="nav-link" href="#" data-action="search-show" data-target="#navbar-search-main">
								<i class="ni ni-zoom-split-in"></i>
							</a>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="ni ni-bell-55 "></i>
							</a>
							<div class="dropdown-menu dropdown-menu-xl  dropdown-menu-right  py-0 overflow-hidden">
								<!-- Dropdown header -->
								<div class="px-3 py-3">
									<h6 class="text-sm text-muted m-0">You have <strong class="text-primary" id="total_notif"><?= $total_notif ?></strong> notifications.</h6>
									<a class="link-primary" href="javascript:void(0)" id="btn-read-all"><h6 class="text-sm text-muted m-0 text-right">Read All</h6></a>
								</div>
								<!-- List group -->
								<div class="list-group list-group-flush" id="notifContainer">
									<?php 
									if ( isset($data_notification) and $data_notification != 0 ) {
										foreach ($data_notification as $notification) {
											?>
											<a href="javascript:void(0)" class="list-group-item list-group-item-action">
												<div class="row align-items-center">
													<!-- <div class="col-auto"> -->
														<!-- Avatar -->
														<!-- <img alt="Image placeholder" src="<?= base_url(); ?>assets/img/theme/team-1.jpg" class="avatar rounded-circle"> -->
													<!-- </div> -->
													<div class="col ml--2">
														<div class="d-flex justify-content-between align-items-center">
															<div>
																<h4 class="mb-0 text-sm"><?= $notification->created_name ?></h4>
															</div>
															<div class="text-right text-muted">
																<small><?= date('d F Y', strtotime($notification->created_date)) ?></small>
															</div>
														</div>
														<p class="text-sm mb-0"><?= $notification->notification_message ?></p>
													</div>
												</div>
											</a>
											<?php 
										}
									}else{
										?>
										<a href="javascript:void(0)" class="list-group-item list-group-item-action">
											Tidak ada pemberitahuan
										</a>
										<?php 
									}
									?>
								</div>
								<!-- <a href="javascript:void(0)" class="dropdown-item text-center text-primary font-weight-bold py-3">View all</a> -->
							</div>
						</li>
					</ul>
					<ul class="navbar-nav align-items-center  ml-auto ml-md-0 ">
						<li class="nav-item dropdown">
							<a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<div class="media align-items-center">
									<span class="avatar avatar-sm rounded-circle">
										<img alt="Image placeholder" src="<?= base_url(); ?>assets/img/theme/team-4.jpg">
									</span>
									<div class="media-body  ml-2  d-none d-lg-block">
										<span class="mb-0 text-sm  font-weight-bold"><?= $this->session->userdata(SESS)->log_name; ?></span>
									</div>
								</div>
							</a>
							<div class="dropdown-menu  dropdown-menu-right ">
								<!-- <div class="dropdown-header noti-title">
									<h6 class="text-overflow m-0">Welcome!</h6>
								</div>
								<a href="javascript:void(0)" class="dropdown-item">
									<i class="ni ni-single-02"></i>
									<span>My profile</span>
								</a>
								<a href="javascript:void(0)" class="dropdown-item">
									<i class="ni ni-settings-gear-65"></i>
									<span>Settings</span>
								</a>
								<a href="javascript:void(0)" class="dropdown-item">
									<i class="ni ni-calendar-grid-58"></i>
									<span>Activity</span>
								</a>
								<a href="javascript:void(0)" class="dropdown-item">
									<i class="ni ni-support-16"></i>
									<span>Support</span>
								</a>
								<div class="dropdown-divider"></div> -->
								<a href="<?= site_url('site/signout'); ?>" class="dropdown-item">
									<i class="ni ni-user-run"></i>
									<span>Logout</span>
								</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</nav>