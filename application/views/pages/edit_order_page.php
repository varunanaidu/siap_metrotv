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
							<li class="breadcrumb-item"><a href="<?= base_url(); ?>new_order/edit_order/<?= $order_id ?>"><?= $pagetitle; ?></a></li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid mt-2">
	<div class="row">
		<div class="col-xl-12 order-xl-1">
			<div class="card">
				<div class="card-header">
					<div class="row align-items-center">
						<div class="col-8">
							<a href="<?= base_url(); ?>" class="btn btn-sm btn-primary">Kembali ke Dashboard</a>
						</div>
					</div>
				</div>
				<div class="card-body">
					<?php 
					if ( isset($data_order) and $data_order != 0 ) {
						for ( $i = 0 ; $i < sizeof($data_order); $i++) { 
							?>
							<form action="<?= base_url() ?>new_order/save" method="POST" id="order-form" accept-charset="UTF-8" enctype="multipart/form-data">
								<div class="pl-lg-4">
									<div class="row">
										<div class="col-lg-12 form-group">
											<h6 class="heading-small text-muted mb-4">Tipe</h6>
											<label class="form-control-label" for="">Tipe order <span class="text-red">*</span></label>
											<select id="order_type" name="order_type" class="form-control" required="">
												<?php 
												if ( isset($type) and $type != 0 ) {
													foreach ($type as $t) {
														?>
														<option value="<?= $t->type_id ?>" <?= ($data_order[$i]['order_type'] == $t->type_id ? 'selected' : '') ?> ><?= $t->type_name ?></option>
														<?php 
													}
												}
												?>
											</select>
										</div>
										<div class="col-lg-6 form-group">
											<h6 class="heading-small text-muted mb-4">Program</h6>
											<label class="form-control-label" for="">Nama Program <span class="text-red">*</span></label>
											<input type="text" id="order_name" name="order_name" class="form-control" placeholder="..." required="" value="<?= $data_order[$i]['order_name'] ?>">
										</div>
										<div class="col-lg-3 mt-5 form-group">
											<label class="form-control-label" for="">Deadline <span class="text-red">*</span></label>
											<input type="date" id="order_deadline" name="order_deadline" class="form-control" required="" value="<?= date('Y-m-d', strtotime($data_order[$i]['order_deadline'])) ?>">
										</div>
										<div class="col-lg-3 mt-5 form-group" id="time_container">
											<label class="form-control-label" for="">Time <span class="text-red">*</span></label>
											<!-- <input type="text" class="form-control" id="time_picker" name="time_picker"> -->
											<div class="input-group date" id="timepicker" data-target-input="nearest">
												<input type="text" class="form-control datetimepicker-input" name="time_picker" data-target="#timepicker" value="<?= date('H:i:s', strtotime($data_order[$i]['time_picker'])) ?>">
												<div class="input-group-append" data-target="#timepicker" data-toggle="datetimepicker">
													<div class="input-group-text"><i class="far fa-clock"></i></div>
												</div>
											</div>
										</div>
										<div class="col-lg-12 form-group">
											<label class="form-control-label">Brief <span class="text-red">*</span></label>
											<textarea rows="4" id="order_brief" name="order_brief" class="form-control" placeholder="Hint Text" required=""><?= $data_order[$i]['order_brief'] ?></textarea>
										</div>
										<div class="col-lg-12 form-group" id="order_source_container">
											<label class="form-control-label" for="">Sumber <span class="text-red">*</span></label>
											<input type="text" id="order_source" name="order_source" class="form-control" placeholder="..." value="<?= $data_order[$i]['order_source'] ?>">
										</div>
									</div>
									<div class="row" id="daily_item_graphic" style="height: 500px; overflow-y: auto;">
										<div class="col-lg-12 form-group">
											<label class="form-control-label" for="">Item Grafis <span class="text-red">*</span></label>
											<ul class="tabs" role="tablist">
												<?php
												if ( isset($item_graphic_daily) and $item_graphic_daily != 0 ) {
													for ( $j = 0; $j < sizeof($item_graphic_daily); $j++) { 
														$index1 = str_replace(' ', '_', $item_graphic_daily[$j]['item_graphic_category']);
														?>
														<li>
															<input type="radio" name="tabs" id="tab<?= $j ?>" <?= ($j == 0 ? 'checked' : '') ?> />
															<label for="tab<?= $j ?>" role="tab" aria-selected="true" aria-controls="panel<?= $j ?>" tabindex="0"><?= $item_graphic_daily[$j]['item_graphic_category'] ?></label>
															<div id="tab-content<?= $j ?>" class="tab-content" role="tabpanel" aria-labelledby="description" aria-hidden="false">
																<p>
																	<?php 
																	for ( $k = 0; $k < sizeof($item_graphic_daily[$j]['item_graphic_detail']); $k++) { 
																		?>
																		<u><?= ($item_graphic_daily[$j]['item_graphic_detail'][$k]['item_graphic_sub_category'] == '-' ? '' : $item_graphic_daily[$j]['item_graphic_detail'][$k]['item_graphic_sub_category']) ?></u><br>
																		<table class="table align-items-center table-flush">
																			<tr>
																				<?php 
																				for ( $l = 0; $l < sizeof($item_graphic_daily[$j]['item_graphic_detail'][$k]['item_graphic_sub_detail']); $l++) { 
																					$index2 = str_replace(' ', '_', $item_graphic_daily[$j]['item_graphic_detail'][$k]['item_graphic_sub_category']);
																					?>
																					<td>
																						<input type="checkbox" name="item_graphic[<?= $index1 ?>][<?= $index2 ?>][]" value="<?= $item_graphic_daily[$j]['item_graphic_detail'][$k]['item_graphic_sub_detail'][$l]['item_graphic_name'] ?>" data-toggle="tooltip" data-placement="bottom" title="<?= $item_graphic_daily[$j]['item_graphic_detail'][$k]['item_graphic_sub_detail'][$l]['item_graphic_desc'] ?>" > <?= $item_graphic_daily[$j]['item_graphic_detail'][$k]['item_graphic_sub_detail'][$l]['item_graphic_name'] ?>
																					</td>
																					<?php 
																					if (($l+1)%4 == 0 && $l != 0) {
																						?>
																					</tr><tr>
																						<?php 
																					}
																				}
																				?>
																			</tr>
																		</table>
																		<?php 
																	}
																	?>
																</p>
															</div>
														</li>
														<?php 
													}
												} 
												?>
											</ul>
										</div>
									</div>
									<div class="row collapse" id="development_item_graphic" style="height: 500px; overflow-y: auto;">
										<div class="col-lg-12 form-group">
											<label class="form-control-label" for="">Item Grafis <span class="text-red">*</span></label>
											<ul class="tabs" role="tablist">
												<?php
												if ( isset($item_graphic_development) and $item_graphic_development != 0 ) {
													for ( $j = 0; $j < sizeof($item_graphic_development); $j++) { 
														$index1 = str_replace(' ', '_', $item_graphic_development[$j]['item_graphic_category']);
														?>
														<li>
															<input type="radio" name="tabs" id="tab<?= $j+4 ?>" <?= ($j+4 == 0 ? 'checked' : '') ?> />
															<label for="tab<?= $j+4 ?>" role="tab" aria-selected="true" aria-controls="panel<?= $j+4 ?>" tabindex="0"><?= $item_graphic_development[$j]['item_graphic_category'] ?></label>
															<div id="tab-content<?= $j+4 ?>" class="tab-content" role="tabpanel" aria-labelledby="description" aria-hidden="false">
																<p>
																	<?php 
																	for ( $k = 0; $k < sizeof($item_graphic_development[$j]['item_graphic_detail']); $k++) { 
																		?>
																		<u><?= ($item_graphic_development[$j]['item_graphic_detail'][$k]['item_graphic_sub_category'] == '-' ? '' : $item_graphic_development[$j]['item_graphic_detail'][$k]['item_graphic_sub_category']) ?></u><br>
																		<table class="table align-items-center table-flush">
																			<tr>
																				<?php 
																				for ( $l = 0; $l < sizeof($item_graphic_development[$j]['item_graphic_detail'][$k]['item_graphic_sub_detail']); $l++) { 
																					$index2 = str_replace(' ', '_', $item_graphic_development[$j]['item_graphic_detail'][$k]['item_graphic_sub_category']);
																					?>
																					<td>
																						<input type="checkbox" name="item_graphic[<?= $index1 ?>][<?= $index2 ?>][]" value="<?= $item_graphic_development[$j]['item_graphic_detail'][$k]['item_graphic_sub_detail'][$l]['item_graphic_name'] ?>" data-toggle="tooltip" data-placement="bottom" title=" <?= $item_graphic_development[$j]['item_graphic_detail'][$k]['item_graphic_sub_detail'][$l]['item_graphic_desc'] ?>" > <?= $item_graphic_development[$j]['item_graphic_detail'][$k]['item_graphic_sub_detail'][$l]['item_graphic_name'] ?>
																					</td>
																					<?php 
																					if (($l+1)%4 == 0 && $l != 0) {
																						?>
																					</tr><tr>
																						<?php 
																					}
																				}
																				?>
																			</tr>
																		</table>
																		<?php 
																	}
																	?>
																</p>
															</div>
														</li>
														<?php 
													}
												} 
												?>
											</ul>
										</div>
									</div>
									<div class="row">
										<div id="attachment_container" class="col-lg-12 form-group">
											<label class="form-control-label">Lampiran</label>
											<div class="fallback">
												<input class="form-control" name="attachment_name[]" type="file" multiple />
											</div>
											<?php 
											if ( sizeof($data_order[$i]['attachment']) != 0 ) {
												for ( $k = 0; $k < sizeof($data_order[$i]['attachment']); $k++) { 
													?>
													<a class="btn btn-default" target="_blank" href="<?= base_url(); ?>assets/files/<?= $data_order[$i]['attachment'][$k]['attachment_name'] ?>">
														<span><?= $data_order[$i]['attachment'][$k]['attachment_name'] ?></span>
														<span class="badge badge-primary" data-id="<?= $data_order[$i]['attachment'][$k]['attachment_id'] ?>"><i class="fas fa-trash-alt"></i></span>
													</a>
													<?php 
												}
											}
											?>
										</div>
										<div class="col-lg-12 form-group">
											<label class="form-control-label">Output</label>
											<textarea rows="4" class="form-control" id="order_output" name="order_output" placeholder="Harap diisi untuk keterangan spesifik:ukuran/resolusi media atau bidang (HD, SD, Potrait, Landscape, Billboard, Web Banner, dll), format file(mov, dxv, mxf, html, dalet, dll)"><?= $data_order[$i]['order_output'] ?></textarea>
										</div>
									</div>
									<div class="row align-items-center" style="position: relative;">
										<input type="text" id="id" name="id" class="collapse" value="<?= $data_order[$i]['order_id'] ?>">
										<input type="text" id="type" name="type" class="collapse" value="edit">
										<button type="submit" id="btn-submit" class="btn btn-sm btn-primary button">SUBMIT</button>
										<button type="button" class="btn btn-sm btn-secondary button2">CANCEL</button>
									</div>
								</div>
							</form>
							<?php 
						}
					}
					?>
				</div>
			</div>
		</div>
	</div>
</div>