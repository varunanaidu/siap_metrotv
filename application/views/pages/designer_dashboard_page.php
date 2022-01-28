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
							<li class="breadcrumb-item"><a href="<?= base_url(); ?>"><?= $pagetitle; ?></a></li>
						</ol>
					</nav>
				</div>
			</div>
			<!-- Card stats -->
			<div class="row">
				<div class="col-xl-4 col-md-6">
					<a href="<?= base_url(); ?>site/detail/queue">
						<div class="card card-stats">
							<!-- Card body -->
							<div class="card-body">
								<div class="row">
									<div class="col">
										<h5 class="card-title text-uppercase text-muted mb-3">Masih dalam Antrian</h5>
										<span class="h2 font-weight-bold mb-0"><?= $queue_item ?></span>
									</div>
									<div class="col-auto">
										<div class="icon icon-shape bg-gradient-red text-white rounded-circle shadow">
											<i class="ni ni-user-run"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-xl-4 col-md-6">
					<a href="<?= base_url(); ?>site/detail/live">
						<div class="card card-stats">
							<!-- Card body -->
							<div class="card-body">
								<div class="row">
									<div class="col">
										<h5 class="card-title text-uppercase text-muted mb-3">Pekerjaan Berlangsung</h5>
										<span class="h2 font-weight-bold mb-0"><?= $my_item ?></span>
									</div>
									<div class="col-auto">
										<div class="icon icon-shape bg-gradient-orange text-white rounded-circle shadow">
											<i class="ni ni-paper-diploma"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-xl-4 col-md-6">
					<a href="<?= base_url(); ?>site/detail/finish">
						<div class="card card-stats">
							<!-- Card body -->
							<div class="card-body">
								<div class="row">
									<div class="col">
										<h5 class="card-title text-uppercase text-muted mb-3">Total Pekerjaan Selesai Bulan Ini</h5>
										<span class="h2 font-weight-bold mb-0"><?= $finish_item ?></span>
									</div>
									<div class="col-auto">
										<div class="icon icon-shape bg-gradient-green text-white rounded-circle shadow">
											<i class="ni ni-trophy"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Page content -->
<div class="container-fluid">
	<div class="row">
		<div class="col-xl-8">
			<div class="card bg-default">
				<div class="card-header bg-transparent">
					<div class="row align-items-center">
						<div class="col">
							<h6 class="text-light text-uppercase ls-1 mb-1">Overview</h6>
							<h5 class="h3 text-white mb-0">Pekerjaan</h5>
						</div>
					</div>
				</div>
				<div class="card-body">
					<!-- Chart -->
					<div class="chart">
						<!-- Chart wrapper -->
						<canvas id="chart-line" class="chart-canvas"></canvas>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-4">
			<div class="card">
				<div class="card-header bg-transparent">
					<div class="row align-items-center">
						<div class="col">
							<h6 class="text-uppercase text-muted ls-1 mb-1">Performance</h6>
							<h5 class="h3 mb-0">Total orders</h5>
						</div>
					</div>
				</div>
				<div class="card-body">
					<!-- Chart -->
					<div class="chart">
						<canvas id="chart-doughnut" class="chart-canvas"></canvas>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<?php 
		if (isset($order_designer) and $order_designer !=0) {
			for ( $i = 0; $i < sizeof($order_designer); $i++) { 
				?>
				<div class="col-xl-12">
					<div class="card">
						<a href="<?= base_url('list_order/detail/').$order_designer[$i]['order_id'] ?>">
							<div class="card-header border-0">
								<div class="row align-items-center">
									<div class="col-xl-9">
										<h1 class="mb-0"><?= $order_designer[$i]['order_name'] ?></h1>
										<h4 class="mb-0">Due date: <?= date('F d, Y', strtotime($order_designer[$i]['order_deadline'])); ?></h4>
									</div>
									<div class="col-xl-3">
										<div class="ml--9 text-right">
											<h4><?= $order_designer[$i]['finish_task'] ?> task completed out of <?= $order_designer[$i]['total_task'] ?></h4>
										</div>
									</div>
									<div class="col-xl-3">
										<div class="col card-profile-image3">
											<h5>Order By: <?= $order_designer[$i]['create_name'] ?></h5>
										</div>
									</div>
								</div>
								<div class="row align-items-center">
									<div class="progress">
										<?php 
										$progress = $order_designer[$i]['finish_task'] / $order_designer[$i]['total_task'] * 100;
										?>
										<div class="progress-bar " role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: <?= $progress ?>%;"></div>
									</div>
								</div>
							</div>
							<div class="table-responsive">
								<!-- Projects table -->
								<table class="table align-items-center table-flush">
									<?php 
									for ( $j = 0; $j < sizeof($order_designer[$i]['order_detail']); $j++) { 
										$color = ( $order_designer[$i]['order_detail'][$j]['progress'] >= 50 ? ( $order_designer[$i]['order_detail'][$j]['progress'] == 100 ? 'bg-gradient-success' : 'bg-gradient-warning' ) : 'bg-gradient-danger' );
										?>
										<tr>
											<th style="font-size: 20px !important;" width="30%">
												<?= $order_designer[$i]['order_detail'][$j]['item_graphics_name'] ?>
											</th>
											<td>
												<?= $order_designer[$i]['order_detail'][$j]['progress'] ?>%
												<div class="progress">
													<div class="progress-bar <?= $color ?>" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: <?= $order_designer[$i]['order_detail'][$j]['progress'] ?>%;"></div>
												</div>
											</td>
										<!-- <td class="card-profile-image2">
											<img src="<?= base_url(); ?>assets/img/theme/team-1.jpg" class="rounded-circle">
										</td> -->
									</tr>
									<?php 
								}
								?>
							</table>
						</div>
					</a>
				</div>
			</div>
			<?php 
		}
	}
	?>
</div>
</div>