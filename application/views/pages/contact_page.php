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
							<li class="breadcrumb-item"><a href="<?= base_url(); ?>contact"><?= $pagetitle; ?></a></li>
						</ol>
					</nav>
				</div>
				<div class="col-lg-6 col-5 text-right">
					<a href="javascript:void(0)" class="btn btn-sm btn-neutral btn-new-contact"><i class="ni ni-fat-add"></i> New Entry</a>
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
							<h3 class="mb-0">List Contact</h3>
						</div>
					</div>
				</div>
				<div class="table-responsive">
					<!-- Projects table -->
					<table class="table align-items-center table-flush" id="contact-table">
						<thead class="thead-light">
							<tr>
								<th scope="col">#</th>
								<th scope="col">Nip</th>
								<th scope="col">Name</th>
								<th scope="col">Company</th>
								<th scope="col">Email</th>
								<th scope="col">Phone</th>
								<th scope="col">Role</th>
								<th scope="col">Type</th>
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
		<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
			<div class="modal-content">
				<form method="POST" id="contact-form" accept-charset="UTF-8">
					<div class="modal-header">
						<h5 class="modal-title"><?= $pagetitle; ?> - <span id="modal-type">New Entry</span></h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row clearfix">
							<div class="form-group col-md-6">
								<label>Nip<span class="text-red">*</span></label>
								<select class="form-control" id="user_nip" name="user_nip" style="width: 100%;" required="">
									<option value="-">-</option>
								</select>
							</div>
							<div class="form-group col-md-6">
								<label>Full Name<span class="text-red">*</span></label>
								<input type="text" class="form-control" id="user_name" name="user_name" value="" placeholder="..." required>
							</div>
							<div class="form-group col-md-6">
								<label>Company<span class="text-red">*</span></label>
								<input type="text" class="form-control" id="user_comp" name="user_comp" value="" placeholder="..." required>
							</div>
							<div class="form-group col-md-6">
								<label>Email<span class="text-red">*</span></label>
								<input type="text" class="form-control" id="user_email" name="user_email" value="" placeholder="..." required>
							</div>
							<div class="form-group col-md-6">
								<label>Phone Number<span class="text-red">*</span></label>
								<input type="text" class="form-control" id="user_phone" name="user_phone" value="" placeholder="..." required>
							</div>
							<div class="form-group col-md-6">
								<label>Role<span class="text-red">*</span></label>
								<select class="form-control" id="role_id" name="role_id">
									<option value="">-</option>
									<?php 
									if ( isset($data_role) and $data_role != 0 ) {
										foreach ($data_role as $row) {
											?>
											<option value="<?= $row->role_id ?>"><?= $row->role_name ?></option>
											<?php 
										}
									}
									?>
								</select>
							</div>
							<div class="form-group col-md-6" id="type_container" style="display: none;">
								<label>Type<span class="text-red">*</span></label>
								<select class="form-control" id="type_id" name="type_id">
									<option value="0" selected>-</option>
									<option value="1">Daily</option>
									<option value="2">Development</option>
								</select>
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