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
							<li class="breadcrumb-item"><a href="<?= base_url(); ?>item_graphic"><?= $pagetitle; ?></a></li>
						</ol>
					</nav>
				</div>
				<div class="col-lg-6 col-5 text-right">
					<a href="javascript:void(0)" class="btn btn-sm btn-neutral btn-new-item_graphic"><i class="ni ni-fat-add"></i> New Entry</a>
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
							<h3 class="mb-0">List Item Graphic</h3>
						</div>
					</div>
				</div>
				<div class="table-responsive">
					<!-- Projects table -->
					<table class="table align-items-center table-flush" id="item_graphic-table">
						<thead class="thead-light">
							<tr>
								<th scope="col">#</th>
								<th scope="col">Name</th>
								<th scope="col">Type</th>
								<th scope="col">Category</th>
								<th scope="col">Sub Category</th>
								<th scope="col">Score</th>
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
				<form method="POST" id="item_graphic-form" accept-charset="UTF-8">
					<div class="modal-header">
						<h5 class="modal-title"><?= $pagetitle; ?> - <span id="modal-type">New Entry</span></h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row clearfix">
							<div class="form-group col-md-6">
								<label>Type<span class="text-red">*</span></label>
								<select class="form-control" name="type_id" id="type_id" required="">
									<option value="">-</option>
									<?php 
									if (isset($data_type) and $data_type != 0) {
										foreach ($data_type as $type) {
											?>
											<option value="<?= $type->type_id ?>"><?= $type->type_name ?></option>
											<?php 
										}
									}
									?>
								</select>
							</div>
							<div class="form-group col-md-6">
								<label>Name <span class="text-red">*</span></label>
								<input type="text" class="form-control" id="item_graphic_name" name="item_graphic_name" placeholder="..." required>
							</div>
							<div class="form-group col-md-6">
								<label>Category <span class="text-red">*</span></label>
								<select class="form-control" name="item_graphic_category" id="item_graphic_category" required="">
									<option value="" selected=""></option>
									<option>Tipe A</option>
									<option>Tipe B</option>
									<option>Tipe C</option>
									<option>Motion Graphic</option>
									<option>Graphic Design</option>
									<option>Set Landscape</option>
									<option>Web Designer</option>
								</select>
							</div>
							<div class="form-group col-md-6">
								<label>Sub Category</label>
								<select class="form-control" name="item_graphic_sub_category" id="item_graphic_sub_category">
									<option value="-" selected=""></option>
									<option>Program Package</option>
									<option>Promotion</option>
									<option>Event</option>
									<option>Client</option>
								</select>
							</div>
							<div class="form-group col-md-6">
								<label>Score <span class="text-red">*</span></label>
								<input type="number" class="form-control" id="item_score_count" name="item_score_count" placeholder="..." required>
							</div>
							<div class="form-group col-md-6">
								<label>Description <span class="text-red">*</span></label>
								<textarea name="item_graphic_desc" class="form-control" id="item_graphic_desc" placeholder="..."></textarea>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<input type="text" class="collapse" id="type" name="type" value="">
						<input type="text" class="collapse" id="id" name="id" value="">
						<input type="text" class="collapse" id="item_score_id" name="item_score_id" value="">
						<button type="submit" id="btn-submit" class="btn btn-primary">Save changes</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>