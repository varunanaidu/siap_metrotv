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
							<li class="breadcrumb-item"><a href="<?= base_url(); ?>list_order"><?= $pagetitle; ?></a></li>
						</ol>
					</nav>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-3 col-md-6">
					<div class="card card-stats ml-">
						<!-- Card body -->
						<div class="card-body">
							<div class="row">
								<div class="col-md-2">
									<div class="icon icon-shape bg-gradient-red text-white rounded-circle shadow">
										<i class="ni ni-calendar-grid-58"></i>
									</div>
								</div>
								<div class="col-md-10 form-group">
									<input type="text" class="form-control" name="date_range" id="date_range" readonly="" value="<?= $date_range ?>">
									<p>click to change the date range </p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-body">
							<div class="row">
								<div class="col-md-4 form-group">
									<label for="fProgramName">Nama Program</label>
									<select class="form-control" id="fProgramName" name="fProgramName">
										<option value="">--</option>
										<?php 
										if ( isset($data_program) and $data_program != 0) {
											foreach ($data_program as $p) {
												?>
												<option value="<?= $p->order_id ?>" <?= ($temp_p == $p->order_id ? 'selected' : '' ) ?>><?= $p->order_name ?></option>
												<?php 
											}
										}
										?>
									</select>
								</div>
								<div class="col-md-4 form-group">
									<label for="fDesigner">Nama Designer</label>
									<select class="form-control" id="fDesigner" name="fDesigner">
										<option value="">--</option>
										<?php 
										if ( isset($data_designer) and $data_designer != 0) {
											foreach ($data_designer as $d) {
												?>
												<option value="<?= $d->user_nip ?>" <?= ($temp_d == $d->user_nip ? 'selected' : '' ) ?>><?= $d->user_name ?></option>
												<?php 
											}
										}
										?>
									</select>
								</div>
							</div>
						</div>
						<div class="card-footer">
							<button type="button" class="btn btn-primary btn-md" id="btn-filter">Filter</button>
							<button type="button" class="btn btn-danger btn-md" id="btn-reset">Reset</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Page content -->
<div class="container-fluid">
	<div class="row">

		<?php 
		if ( isset($order) and $order != 0 ) {
			for ( $i = 0; $i < sizeof($order); $i++) { 
				$order_type = ($order[$i]['order_type'] == 1 ? 'Daily' : 'Development');
				?>
				<div class="col-xl-12">
					<div class="card">


						<div class="card-header border-0">
							<div class="row align-items-center">
								<div class="col-xl-9">
									<h1 class="mb-0"> <?= $order[$i]['order_name'] ?></h1>
									<h4 class="mb-0"> Due date : <?= date('F d, Y', strtotime($order[$i]['order_deadline'])) ?>
									<h5 class="mb-0"> (<?= $order_type ?>)
										<div class="progress">
											<?php 
											$progress = $order[$i]['finish_task'] / $order[$i]['total_task'] * 100;
											?>
											<div class="progress-bar " role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: <?= $progress ?>%;"></div>
										</div>
									</h4>
								</div>
								<div class="col text-right mt--3">
									<h4><?= $order[$i]['finish_task'] ?> task completed out of <?= $order[$i]['total_task'] ?></h4>
								</div>
							</div>
							<div class="panel-heading">
								<div class="panel-control">
									<div class="btn-group mt--6">
										<button class="btn btn-default" type="button" data-toggle="collapse" data-target="#order-<?= $order[$i]['order_id'] ?>"><i class="fa fa-chevron-down"></i></button>
										<button class="btn btn-default" type="button" data-toggle="collapse"><a href="<?= base_url().'list_order/detail/'.$order[$i]['order_id'] ?>" style="color: #fff !important;"><i class="fa fa-eye"></i></a></button>
									</div>
								</div>
							</div>
						</div>

						<div class="collapse in" id="order-<?= $order[$i]['order_id'] ?>">
							<div class="nano has-scrollbar" style="height: 380px;">
								<div class="nano-content pad-all" tabindex="0" style="right: -17px;">
									<div class="table-responsive">
										<table class="table align-items-center table-flush mt--3">
											<?php 
											for ( $j = 0; $j < sizeof($order[$i]['order_detail']); $j++) { 
												$color = ( $order[$i]['order_detail'][$j]['progress'] >= 50 ? ( $order[$i]['order_detail'][$j]['progress'] == 100 ? 'bg-gradient-success' : 'bg-gradient-warning' ) : 'bg-gradient-danger' );
												?>
												<tr>
													<th style="font-size: 20px !important;" width="30%">
														<?= $order[$i]['order_detail'][$j]['item_graphics_name'] ?>
													</th>
													<td class="col">
														<?= ( $order[$i]['order_detail'][$j]['progress'] ? $order[$i]['order_detail'][$j]['progress'] : 0) ?>%
														<div class="progress">
															<div class="progress-bar <?= $color; ?>" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: <?= $order[$i]['order_detail'][$j]['progress'] ?>%;"></div>
														</div>
													</td>
													<td class="card-profile-image2 ml--9 text-right" style="text-align: center;">
														<?php 
														if ($order[$i]['order_detail'][$j]['task_id'] != NULL) {
															echo $order[$i]['order_detail'][$j]['taken_by'] . " - " . $order[$i]['order_detail'][$j]['taken_name'] . '&nbsp;';
															if ( $my_role == 'Admin' ) {
																?>
																<button type="button" class="btn btn-sm btn-primary btn-change" data-id="<?= $order[$i]['order_detail'][$j]['task_id'] ?>" data-order_type="<?= $order[$i]['order_type'] ?>"><i class="fas fa-pencil-alt"></i></button>
																<?php
															}
														}else{
															if ( $my_role == 'Designer' ) {
																?>
																<img id="get_task" src="<?= base_url(); ?>assets/img/icons/common/add-user.png" data-id="<?= $order[$i]['order_detail'][$j]['item_graphics_id'] ?>" href="#" class="rounded-circle">
																<?php 
															}else{
																?>
																<img id="set_task_to" src="<?= base_url(); ?>assets/img/icons/common/add-user.png" data-id="<?= $order[$i]['order_detail'][$j]['item_graphics_id'] ?>" data-order_type="<?= $order[$i]['order_type'] ?>" href="#" class="rounded-circle">
																<?php 
															}
														}
														?>
													</td>
													<?php 
													if ( $order[$i]['order_detail'][$j]['taken_by'] == $this->session->userdata(SESS)->log_user AND $order[$i]['order_detail'][$j]['progress'] < 100 ) {
														?>
														<td>
															<button type="button" class="btn btn-sm btn-primary btn-update" title="Update Progress" data-id="<?= $order[$i]['order_detail'][$j]['task_id'] ?>"><i class="fas fa-pencil-alt"></i></button>
														</td>
														<?php 
													}else{
														?>
														<td></td>
														<?php 
													}
													?>
												</tr>
												<?php 
											}
											?>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<?php 
			}
		}
		?>

		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<form method="POST" id="progress-form" accept-charset="UTF-8">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="row clearfix">
								<div class="form-group input-group col-md-12">
									<div class="input-group-prepend">
										<span class="input-group-text">Update Progress</span>
									</div>
									<input type="number" class="form-control" id="progress" maxlength="100" name="progress" value="" placeholder="..." required>
									<div class="input-group-append">
										<span class="input-group-text">%</span>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<input type="text" class="collapse" id="task_id" name="task_id" value="">
							<button type="submit" id="btn-submit" class="btn btn-primary">Save changes</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
				<div class="modal-content">
					<form method="POST" id="set-form" accept-charset="UTF-8">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="row clearfix">
								<table class="table align-items-center table-flush" id="designerTbl">
									<thead>
										<tr>
											<th scope="col"> </th>
											<th scope="col">Name</th>
											<th scope="col">Total Active Task</th>
										</tr>
									</thead>
									<tbody id="designerTbl_body"></tbody>
								</table>
							</div>
						</div>
						<div class="modal-footer">
							<input type="text" class="collapse" id="id" name="id" value="">
							<input type="text" class="collapse" id="type" name="type" value="">
							<button type="submit" id="btn-submit-2" class="btn btn-primary">Save changes</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>