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
							<li class="breadcrumb-item"><a href="<?= base_url(); ?>list_order/detail/<?= $order_id ?>"><?= $pagetitle; ?></a></li>
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
		<div class="col-xl-12 order-xl-1">
			<?php 
			if (isset($order) and $order != 0) {
				for ( $i = 0; $i < sizeof($order); $i++) { 
					?>
					<div class="card">
						<div class="card-header">
							<div class="row">
								<div class="col-md-12">
									<span class="collapse" id="order_id"><?= $order[$i]['order_id'] ?></span>
									<h1 class="display-2"><?= $order[$i]['order_name'] ?></h1>
								</div>
							</div>
						</div>
						<div class="card-body">
							<div class="row clearfix">
								<div class="col-md-12">
									<div class="table-responsive">
										<hr style="border-top:2px solid maroon">
										<table width="100%">
											<tr>
												<td style="min-width: 250px;"> Type </td>
												<td style="width: 2%"> : </td>
												<td style="width: 88%"> <?= ( $order[$i]['order_type'] ? 'Daily' : 'Development' ) ?> </td>
											</tr>
											<tr>
												<td style="min-width: 250px;"> Order By </td>
												<td style="width: 2%"> : </td>
												<td style="width: 88%"> <?= $order[$i]['create_by'].' - '.$order[$i]['create_name'] ?> </td>
											</tr>
											<tr>
												<td style="min-width: 250px;"> Due Date </td>
												<td style="width: 2%"> : </td>
												<td style="width: 88%"> <?= date('d/m/Y H:i:s', strtotime($order[$i]['order_deadline'])) ?> </td>
											</tr>
											<tr>
												<td style="min-width: 250px;"> Brief </td>
												<td style="width: 2%"> : </td>
												<td style="width: 88%"> <?= $order[$i]['order_brief'] ?> </td>
											</tr>
											<tr>
												<td style="min-width: 250px;"> Source </td>
												<td style="width: 2%"> : </td>
												<td style="width: 88%"> <?= $order[$i]['order_source'] ?> </td>
											</tr>
											<tr>
												<td style="min-width: 250px;"> Output </td>
												<td style="width: 2%"> : </td>
												<td style="width: 88%"> <?= $order[$i]['order_output'] ?> </td>
											</tr>
										</table>
										<hr style="border-top:2px solid maroon">
										<table width="100%">
											<tr>
												<td style="min-width: 250px;"> Attachment </td>
												<td style="width: 2%"> : </td>
												<td style="width: 88%"></td>
											</tr>
											<?php 
											if ( sizeof($order[$i]['attachment']) != 0 ) {
												for ( $j = 0; $j < sizeof($order[$i]['attachment']); $j++) { 
													?>
													<tr>
														<td style="min-width: 250px;"></td>
														<td style="width: 2%"></td>
														<?php 
														$temp = explode('.', $order[$i]['attachment'][$j]['attachment_name']);
														$ext = end($temp);
														if ( $ext == 'jpg' || $ext == 'jpeg' || $ext == 'png' || $ext == 'gif'  ) {
															?>
															<td style="width: 88%"><a href="<?= base_url(); ?>assets/files/<?= $order[$i]['attachment'][$j]['attachment_name'] ?>" target="_blank"><img src="<?= base_url() ?>assets/files/<?= $order[$i]['attachment'][$j]['attachment_name'] ?>" style="width: 100px;"></a></td>
															<?php 
														}else{
															?>
															<td style="width: 88%"><a href="<?= base_url(); ?>assets/files/<?= $order[$i]['attachment'][$j]['attachment_name'] ?>" target="_blank"><i class="fas fa-download"></i> Attachment <?= ($j+1) ?></a></td>
															<?php 
														}
														?>
													</tr>
													<?php 
												}
											}
											?>
										</table>
										<h5 class="mb-0">(Klik file untuk mendownload)</h5>	
									</div>
								</div>
							</div>
						</div>
						<div class="card-body">
							<div class="row clearfix">
								<div class="col-md-12">
									<div id="gantt"></div>
								</div>
							</div>
						</div>
					</div>
					<?php 
				}
			}
			?>

			<div class="col-xl-12 order-xl-1">
				<div class="card">
					<div class="card-header">
						<div class="row align-items-center">
							<div class="col-8">
								<h3 class="mb-0"> Project History and Chat </h3>
							</div>
						</div>
					</div>
					<div class="card-body">
						<?php 
						if (isset($item_chat) and $item_chat != 0) {
							for ( $i = 0 ; $i < sizeof($item_chat); $i++) { 
								if ( empty($item_chat[$i]['task_id']) == FALSE) {
									?>
									<div class="row align-items-center">
										<div class="col-xl-9">
											<div class="container-fluid">
												<h2 class="mb-0"><?= $item_chat[$i]['item_graphics_name'] ?></h2>
												<h4 class="mb-0">Due date: <?= date('F d, Y', strtotime($item_chat[$i]['order_deadline'])) ?> </h4>
												<div class="col-md-12 col-lg-6">
													<div class="panel">
														<!--Heading-->
														<div class="panel-heading">
															<div class="panel-control">
																<div class="btn-group mt--6">
																	<button class="btn btn-default" type="button" data-toggle="collapse" data-target="#demo-chat-body-<?= $item_chat[$i]['task_id'] ?>"><i class="fa fa-chevron-down"></i></button>
																</div>
															</div>
														</div>

														<!--Widget body-->
														<div id="demo-chat-body-<?= $item_chat[$i]['task_id'] ?>" class="collapse in">
															<div class="nano has-scrollbar" style="height:380px">
																<div class="nano-content pad-all" tabindex="0" style="right: -17px;">
																	<ul class="list-unstyled media-block">
																		<?php 
																		for ( $j = 0; $j < sizeof($item_chat[$i]['item_detail']); $j++) { 
																			if ( empty($item_chat[$i]['item_detail'][$j]['chat_id']) == FALSE ) {
																				$class = ( $item_chat[$i]['item_detail'][$j]['chat_sender'] == $this->session->userdata(SESS)->log_user ? 'speech-right' : '' );
																				?>
																				<li class="mar-btm">
																					<div class="media-body pad-hor <?= $class ?>">
																						<div class="speech">
																							<a href="javascript:void(0)" class="media-heading"><?= $item_chat[$i]['item_detail'][$j]['chat_sender_name'] ?></a>
																							<p><?= $item_chat[$i]['item_detail'][$j]['chat_desc'] ?></p>
																							<p class="speech-time">
																								<i class="fa fa-clock-o fa-fw"></i><?= date('H:i:s', strtotime($item_chat[$i]['item_detail'][$j]['chat_sender_time'])) ?>
																							</p>
																						</div>
																					</div>
																				</li>
																				<?php 
																			}
																		}
																		?>
																	</ul>
																</div>
																<div class="nano-pane">
																	<div class="nano-slider" style="height: 141px; transform: translate(0px, 0px);"></div>
																</div>
															</div>
															<!--Widget footer-->
															<?php 
															if ($item_chat[$i]['create_by'] == $this->session->userdata(SESS)->log_user || $item_chat[$i]['taken_by'] == $this->session->userdata(SESS)->log_user ) {
																?>
																<div class="panel-footer">
																	<div class="row">
																		<div class="col-md-12">
																			<div class="input-group mb-3">
																				<input type="text" placeholder="Enter your text" class="form-control chat-input" name="chat_desc" id="chat_desc_<?= $item_chat[$i]['task_id'] ?>">
																				<div class="input-group-append">
																					<button class="btn btn-primary btn-block btn-send" type="button" data-id="<?= $item_chat[$i]['task_id'] ?>">
																						Send
																					</button>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<?php 
															}
															?>
															<!-- End Widget Footer -->
														</div>
														<!-- End Widget Body -->
													</div>
												</div>
											</div>
										</div>
									</div>
									<?php 
								}
							}
						}
						?>
					</div>
				</div>
			</div>


			<div class="col-xl-12 order-xl-1">
				<div class="card">
					<div class="card-header">
						<div class="row align-items-center">
							<div class="col-8">
								<h3 class="mb-0"> Previous version </h3>
							</div>
						</div>
					</div>
					<div class="card-body">
						<?php 
						if ( isset($log) and $log != 0 ) {
							for ( $i = 0; $i < sizeof($log); $i++) { 
								?>
								<div class="row clearfix">
									<div class="col-md-12">
										<div class="table-responsive">
											<hr style="border-top:2px solid maroon">
											<table width="100%">
												<tr>
													<td style="min-width: 250px;"> Name </td>
													<td style="width: 2%"> : </td>
													<td style="width: 88%"> <?= $log[$i]['order_name'] ?> </td>
												</tr>
												<tr>
													<td style="min-width: 250px;"> Type </td>
													<td style="width: 2%"> : </td>
													<td style="width: 88%"> <?= ( $log[$i]['order_type'] ? 'Daily' : 'Development' ) ?> </td>
												</tr>
												<tr>
													<td style="min-width: 250px;"> Deadline </td>
													<td style="width: 2%"> : </td>
													<td style="width: 88%"> <?= date('d/m/Y H:i:s', strtotime($log[$i]['order_deadline'])) ?> </td>
												</tr>
												<tr>
													<td style="min-width: 250px;"> Brief </td>
													<td style="width: 2%"> : </td>
													<td style="width: 88%"> <?= $log[$i]['order_brief'] ?> </td>
												</tr>
												<tr>
													<td style="min-width: 250px;"> Source </td>
													<td style="width: 2%"> : </td>
													<td style="width: 88%"> <?= $log[$i]['order_source'] ?> </td>
												</tr>
												<tr>
													<td style="min-width: 250px;"> Output </td>
													<td style="width: 2%"> : </td>
													<td style="width: 88%"> <?= $log[$i]['order_output'] ?> </td>
												</tr>
											</table>
											<hr style="border-top:2px solid maroon">
											<table width="100%">
												<tr>
													<td style="min-width: 250px;"> Item Graphics </td>
													<td style="width: 2%"> : </td>
													<td style="width: 88%"> </td>
												</tr>
												<?php 
												if ( sizeof($log[$i]['item_graphics']) != 0 ) {
													for ( $j = 0; $j < sizeof($log[$i]['item_graphics']); $j++) { 
														?>
														<tr>
															<td style="min-width: 250px;"></td>
															<td style="width: 2%"></td>
															<td style="width: 88%"> - <?= $log[$i]['item_graphics'][$j]['item_graphics_name'] ?></td>
														</tr>
														<?php 
													}
												}
												?>
											</table>
											<hr style="border-top:2px solid maroon">
											<table width="100%">
												<tr>
													<td style="min-width: 250px;"> Attachment </td>
													<td style="width: 2%"> : </td>
													<td style="width: 88%"></td>
												</tr>
												<?php 
												if ( sizeof($log[$i]['attachment']) != 0 ) {
													for ( $j = 0; $j < sizeof($log[$i]['attachment']); $j++) { 
														?>
														<tr>
															<td style="min-width: 250px;"></td>
															<td style="width: 2%"></td>
															<td style="width: 88%"><img src="<?= base_url() ?>assets/files/<?= $log[$i]['attachment'][$j]['attachment_name'] ?>" style="width: 100px;"></td>
														</tr>
														<?php 
													}
												}
												?>
											</table>
											<hr style="border-top:2px solid maroon">
											<p>Last Update : <?= date('d F Y H:i:s', strtotime($log[$i]['create_date'])) ?>  </p>
											<p>By : <?= $log[$i]['create_by'] . ' - ' . $log[$i]['create_name'] ?></p>
										</div>
									</div>
								</div>
								<?php 
							}
						}
						?>
					</div>
				</div>
			</div>



		</div>
		<!-- Footer -->
	</div>
</div>