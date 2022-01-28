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
							<li class="breadcrumb-item"><a href="<?= base_url(); ?>item_graphic/set_landscape"><?= $pagetitle; ?></a></li>
						</ol>
					</nav>
				</div>
				<div class="col-lg-6 col-5 text-right">
					<a href="javascript:void(0)" class="btn btn-sm btn-neutral btn-new-set-landscape"><i class="ni ni-fat-add"></i> New Entry</a>
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
							<h3 class="mb-0">List Graphic Design</h3>
						</div>
					</div>
				</div>
				<div class="table-responsive">
					<!-- Projects table -->
					<table class="table align-items-center table-flush" id="set-landscape-table">
						<thead class="thead-light">
							<tr>
								<th scope="col">#</th>
								<th scope="col">Type</th>
								<th scope="col">Name</th>
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
				<form method="POST" id="set-landscape-form" accept-charset="UTF-8">
					<div class="modal-header">
						<h5 class="modal-title"><?= $pagetitle; ?> - <span id="modal-type">New Entry</span></h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row clearfix">
							<div class="form-group col-md-12">
								<label>Type<span class="text-red">*</span></label>
								<select class="form-control" id="set_landscape_type" name="set_landscape_type">
									<option value="">-</option>
									<option value="1">Non Other</option>
								</select>
							</div>
							<div class="form-group col-md-12">
								<label>Name<span class="text-red">*</span></label>
								<input type="text" class="form-control" id="set_landscape_name" maxlength="100" name="set_landscape_name" value="" placeholder="..." required>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<input type="text" class="collapse" id="type" name="type" value="">
						<input type="text" class="collapse" id="id" name="id" value="">
						<input type="text" class="collapse" id="item_graphic_type" name="item_graphic_type" value="set-landscape">
						<button type="submit" id="btn-submit" class="btn btn-primary">Save changes</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>