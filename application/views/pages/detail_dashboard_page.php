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
							<h3 class="mb-0"><?= $pagetitle ?></h3>
						</div>
					</div>
				</div>
				<div class="table-responsive">
					<!-- Projects table -->
					<table class="table align-items-center table-flush" id="detail-table">
						<thead class="thead-light">
							<tr>
								<th scope="col">#</th>
								<th scope="col">Graphic Items</th>
								<th scope="col">Category</th>
								<th scope="col">Sub Category</th>
								<th scope="col">Order Name</th>
								<th scope="col">Order Type</th>
								<th scope="col">Order By</th>
								<th scope="col"><i class="ni ni-settings-gear-65"></i></th>
							</tr>
						</thead>
						<tbody>
							<?php 
							if ( isset($data) and $data != 0 ) {
								$a = 1;
								foreach ($data as $row) {
									?>
									<tr >
										<td><?= $a; ?></td>
										<td><?= $row->item_graphics_name; ?></td>
										<td><?= $row->item_graphics_category; ?></td>
										<td><?= $row->item_graphics_sub_category; ?></td>
										<td><?= $row->order_name; ?></td>
										<td><?= ( $row->order_type == 1 ? 'Daily' : 'Development' ); ?></td>
										<td><?= $row->create_by .' - '. $row->create_name; ?></td>
										<td><button class="btn btn-sm btn-info btn-detail" title="Detail" data-order_id="<?= $row->order_id ?>" data-task_id="<?= $row->task_id ?>"><i class="far fa-eye"></i></button></td>
									</tr>
									<?php 
									$a++;
								}
							}
							?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div class="row clearfix">
						<div class="table-responsive">
							<hr style="border-top:2px solid maroon">
							<table style="width: 100%; font-size: 12pt;">
								<tr>
									<td style="min-width:250px;" valign="top">Order Name </td>
									<td style="width:2%;" valign="top">:</td>
									<td style="min-width:250px;" id="text_order_name"></td>
									<td style="min-width:250px;" valign="top">Order Type </td>
									<td style="width:2%;" valign="top">:</td>
									<td style="min-width:250px;" id="text_order_type"></td>
								</tr>
								<tr>
									<td style="min-width:250px;" valign="top">Order Brief</td>
									<td style="width:2%;" valign="top">:</td>
									<td style="min-width:250px;" id="text_order_brief"></td>
									<td style="min-width:250px;" valign="top">Order Source </td>
									<td style="width:2%;" valign="top">:</td>
									<td style="min-width:250px;" id="text_order_source"></td>
								</tr>
								<tr>
									<td style="min-width:250px;" valign="top">Order Output</td>
									<td style="width:2%;" valign="top">:</td>
									<td style="min-width:250px;" id="text_order_output"></td>
									<td style="min-width:250px;" valign="top">Order Deadline</td>
									<td style="width:2%;" valign="top">:</td>
									<td style="min-width:250px;" id="text_order_deadline"></td>
								</tr>
								<tr>
									<td style="min-width:250px;" valign="top">Order By</td>
									<td style="width:2%;" valign="top">:</td>
									<td style="min-width:250px;" id="text_order_by"></td>
								</tr>
							</table>
							<hr style="border-top:2px solid maroon">
							<table style="width: 100%; font-size: 12pt;">
								<tr>
									<td style="min-width:250px;" valign="top">Graphic Item</td>
									<td style="width:2%;" valign="top">:</td>
									<td style="min-width:250px;" id="text_item_graphics_name"></td>
									<td style="min-width:250px;" valign="top">Graphic Item Category</td>
									<td style="width:2%;" valign="top">:</td>
									<td style="min-width:250px;" id="text_item_graphics_category"></td>
									<td style="min-width:250px;" valign="top">Graphic Item Sub Category</td>
									<td style="width:2%;" valign="top">:</td>
									<td style="min-width:250px;" id="text_item_graphics_sub_category"></td>
								</tr>
								<tr>
									<td style="min-width:250px;" valign="top">Taken By</td>
									<td style="width:2%;" valign="top">:</td>
									<td style="min-width:250px;" id="text_taken_by"></td>
									<td style="min-width:250px;" valign="top">Taken Date</td>
									<td style="width:2%;" valign="top">:</td>
									<td style="min-width:250px;" id="text_taken_date"></td>
									<td style="min-width:250px;" valign="top">Finish Date</td>
									<td style="width:2%;" valign="top">:</td>
									<td style="min-width:250px;" id="text_finish_date"></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="modal-footer">
				</div>
			</div>
		</div>
	</div>
</div>