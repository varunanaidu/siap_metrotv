<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!-- Header -->
<div class="header bg-primary pb-6">
	<div class="container-fluid">
		<div class="header-body">
			<div class="row align-items-center py-4">
				<div class="col-lg-6 col-7">
					<nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
						<ol class="breadcrumb breadcrumb-links breadcrumb-dark">
							<li class="breadcrumb-item"><a href="<?= base_url(); ?>"><i class="fas fa-home"></i></a></li>
							<li class="breadcrumb-item"><a href="<?= base_url(); ?>navigation"><?= $pagetitle; ?></a></li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Page content -->
<div class="container-fluid mt--6">
	<div class="row">
		<div class="col-xl-12">
			<div class="card">
				<div class="card-header border-0">
					<div class="row align-items-center">
						<div class="col">
							<h3 class="mb-0">List User Access</h3>
						</div>
					</div>
				</div>
				<div class="card-body">
					<div class="row clearfix">
						<div class="col-md-12">
							<form method="POST" accept-charset="UTF-8" id="default-form">
								<div class="col-md-5 form-group">
									<label>Daftar Karyawan</label>
									<select class="form-control" id="user" name="user" >
									</select>
								</div>
								<div class="col-md-10 form-group">
									<div class="col-xs-12" id="content-uac" style="height:400px;overflow-y:scroll;">
									</div>
									<div class="col-xs-12">
										<button class="btn btn-primary" id="btn-submit">Save</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>