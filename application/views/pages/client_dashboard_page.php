<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!-- Header -->
<div class="header">
  <div class="container-fluid">
    <div class="header-body">
      <div class="row align-items-center py-4">
        <div class="col-lg-6 col-7">
          <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
              <li class="breadcrumb-item"><a href="<?= base_url(); ?>"><i class="fas fa-home"></i></a></li>
              <li class="breadcrumb-item"><a href="<?= base_url(); ?>"><?= $pagetitle ?></a></li>
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
                    <span class="h2 font-weight-bold mb-0"><?= $live_item ?></span>
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
                    <span class="h2 font-weight-bold mb-0"><?= $finish_item_client ?></span>
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
    <div class="col-xl-9">
      <?php 
      if (isset($order_client) and $order_client != 0) {
        for ( $i = 0; $i < sizeof($order_client); $i++) { 
         ?>
         <div class="row">
           <div class="col-xl-12">
            <div class="card">
              <a href="<?= base_url('list_order/detail/').$order_client[$i]['order_id'] ?>">
                <div class="card-header border-0">
                  <div class="card-tools">
                    <?php 
                    if ( $order_client[$i]['allow_edit'] == 'Yes' ) {
                      ?>
                      <a href="javascript:void(0)" class="btn btn-sm btn-primary btn-edit" data-id="<?= $order_client[$i]['order_id'] ?>"> Edit</a>
                      <a href="javascript:void(0)" class="btn btn-sm btn-primary btn-delete" data-id="<?= $order_client[$i]['order_id'] ?>"> Delete</a>
                      <?php 
                    }
                    ?>
                  </div>
                  <div class="row align-items-center">
                    <div class="col-xl-9">
                      <h1 class="mb-0"><?= $order_client[$i]['order_name'] ?></h1>
                      <h4 class="mb-0">Due date: <?= date('F d, Y', strtotime($order_client[$i]['order_deadline'])); ?></h4>
                    </div>
                    <div class="col-xl-3">
                      <div class="col text-right">
                        <h4><?= $order_client[$i]['finish_task'] ?> task completed out of <?= $order_client[$i]['total_task'] ?></h4>
                      </div>
                    </div>
                  </div>
                  <div class="row align-items-center">
                    <div class="col-xl-12">
                      <div class="progress">
                        <?php 
                        $progress = $order_client[$i]['finish_task'] / $order_client[$i]['total_task'] * 100;
                        ?>
                        <div class="progress-bar " role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: <?= $progress ?>%;">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="table-responsive">
                  <!-- Projects table -->
                  <table class="table align-items-center table-flush">
                    <?php 
                    for ( $j = 0; $j < sizeof($order_client[$i]['order_detail']); $j++) { 
                      $color = ( $order_client[$i]['order_detail'][$j]['progress'] >= 50 ? ( $order_client[$i]['order_detail'][$j]['progress'] == 100 ? 'bg-gradient-success' : 'bg-gradient-warning' ) : 'bg-gradient-danger' );
                      ?>
                      <tr>
                        <th style="font-size: 20px !important;" width="30%">
                          <?= $order_client[$i]['order_detail'][$j]['item_graphics_name'] ?>
                        </th>
                        <td class="col">
                          <?= $order_client[$i]['order_detail'][$j]['progress'] ?>%
                          <div class="progress">
                            <div class="progress-bar <?= $color ?>" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: <?= $order_client[$i]['order_detail'][$j]['progress'] ?>%;"></div>
                          </div>
                        </td>
                        <td class="ml--9 text-right">
                          <!-- <img src="<?= base_url(); ?>assets/img/theme/team-1.jpg" class="rounded-circle"> -->
                          <h5><?= $order_client[$i]['order_detail'][$j]['taken_by'].' - '. $order_client[$i]['order_detail'][$j]['taken_name']?></h5>
                        </td>
                      </tr>
                      <?php 
                    }
                    ?>
                  </table>
                </div>
              </a>
            </div>
          </div>
        </div>
        <?php 
      }
    }
    ?>
  </div>
  <?php 
  if (isset($rating) and $rating != 0) {
    for ( $i = 0; $i < sizeof($rating); $i++) { 
     ?>
     <div class="col-xl-3">
      <div class="card card-stats">
        <form method="POST" id="rating-form" accept-charset="UTF-8">
          <div class="card-header bg-transparent">
            <div class="align-items-center">
              <h5 class="card-title h3 mb-0">Beri Ulasan</h5>
            </div>
          </div>
          <div class="card-body text-center">
            <h5 class="h3"><?= $rating[$i]['order_name'] ?></h5>
            <!-- <img src="<?= base_url(); ?>assets/img/theme/test.jpg" class="rounded-circle" style="width: 150px;"> -->
            <div class="h1 font-weight-300">
              <ul class="list-inline">
                <?php 
                for ( $count = 1 ; $count <= 5 ; $count++) { 
                 ?>
                 <li class="rating list-inline-item head" id="<?= $rating[$i]['order_id'].'_'.$count ?>" data-index="<?= $count ?>" data-name="<?= $rating[$i]['order_id'] ?>" style="cursor: pointer; color: gray;">&#9733;</li>
                 <?php 
               }
               ?>
             </ul>
             <input type="number" class="collapse" name="rating_count" id="rating_count" >
           </div>
           <div class="form-group">
            <input type="text" id="rating_message" name="rating_message" class="form-control" placeholder="Tulis Ulasan Anda...">
          </div>
          <i class="ni education_hat mr-2"></i>Tim yang Terlibat
          <div class="table-responsive">
            <table class="table align-items-center table-flush">
              <?php 
              for ( $j = 0; $j < sizeof($rating[$i]['order_detail']); $j++) { 
               ?>
               <tr>
                <td><?= $rating[$i]['order_detail'][$j]['item_graphics_name'].'<br>('.$rating[$i]['order_detail'][$j]['taken_name'].')' ?></td>
                <td>
                  <div class="d-flex align-items-center">
                    <ul class="list-inline">
                      <?php 
                      for ( $count = 1 ; $count <= 5 ; $count++) { 
                       ?>
                       <li class="rating list-inline-item" id="detail_<?= $rating[$i]['order_detail'][$j]['task_id'].'_'.$count ?>" data-index="<?= $count ?>" data-name="detail_<?= $rating[$i]['order_detail'][$j]['task_id'] ?>" data-task_id="<?= $rating[$i]['order_detail'][$j]['task_id'] ?>" style="cursor: pointer; color: gray;">&#9733;</li>
                       <?php 
                     }
                     ?>
                     <input type="number" class="collapse" name="detail_rating_count[<?= $rating[$i]['order_detail'][$j]['task_id'] ?>]" id="detail_rating_count" >
                   </ul>
                 </div>
               </td>
             </tr>
             <?php 
           }
           ?>
         </table>
       </div>
     </div>
     <div class="card-footer text-right">
      <input type="text" name="id" id="id" class="collapse" value="<?= $rating[$i]['order_id'] ?>">
      <button type="sumbit" id="btn-submit" class="btn btn-sm btn-primary">Submit</button>
      <button type="button" id="btn-remove" class="btn btn-sm btn-secondary">Cancel</button>
    </div>
  </form>
</div>
</div>
<?php 
}
}
?>
</div>
</div>