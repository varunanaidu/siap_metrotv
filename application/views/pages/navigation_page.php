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
				<div class="col-lg-6 col-5 text-right">
					<a href="javascript:void(0)" class="btn btn-sm btn-neutral btn-new-navigation"><i class="ni ni-fat-add"></i> New Entry</a>
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
							<h3 class="mb-0">List Navigation</h3>
						</div>
					</div>
				</div>
				<div class="table-responsive">
					<!-- Projects table -->
					<table class="table align-items-center table-flush" id="nav-table">
						<thead class="thead-light">
							<tr>
								<th scope="col">#</th>
								<th scope="col">Navigation Name</th>
								<th scope="col">Controller</th>
								<th scope="col">Order</th>
								<th scope="col"><i class="ni ni-settings-gear-65"></i></th>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<form method="POST" id="nav-form" accept-charset="UTF-8">
					<div class="modal-header">
						<h5 class="modal-title"><?= $pagetitle; ?> - <span id="modal-type">New Entry</span></h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row clearfix">
							<div class="form-group col-md-12">
								<label>Navigation Name <span class="text-red">*</span></label>
								<input type="text" class="form-control" id="nav_name" maxlength="100" name="nav_name" value="" placeholder="..." required>
							</div>
							<div class="form-group col-md-12">
								<label>Controller Name <span class="text-red">*</span></label>
								<input type="text" class="form-control" id="nav_ctr" maxlength="100" name="nav_ctr" value="" placeholder="..." required>
							</div>
							<div class="form-group col-md-12">
								<label>Navigation Order <span class="text-red">*</span></label>
								<input type="number" class="form-control" id="nav_order" maxlength="100" name="nav_order" value="" placeholder="..." required>
							</div>
							<div class="form-group col-md-12">
								<label>Navigation Icon </label>
								<input type="text" class="form-control" id="nav_icon" maxlength="100" name="nav_icon" value="" placeholder="..." >
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<input type="text" class="collapse" id="type" name="type" value="">
						<input type="text" class="collapse" id="id" name="id" value="">
						<button type="submit" id="btn-submit" class="btn btn-primary">Save changes</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>