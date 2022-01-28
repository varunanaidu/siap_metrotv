<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once APPPATH."libraries/Libcurl.php";

class Site extends MY_Controller {
	
	private $__SUPERADMIN = [
		'1193748', /*** Seftian Alfredo ***/
		'1193755', /*** Varuna Dewi ***/
	];

	function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		if (!$this->hasLogin()) {
			redirect('site/login');
		}

		$this->fragment['css'] = [
			base_url('assets/vendor/sweetalert2/dist/sweetalert2.min.css'),
		];
		$this->fragment['js'] = [
			base_url('assets/vendor/sweetalert2/dist/sweetalert2.min.js'),
			base_url('assets/vendor/chart.js/dist/Chart.min.js'),
			base_url('assets/vendor/chart.js/dist/Chart.extension.js'),
			base_url('assets/vendor/jquery-form/jquery.form.min.js'),
		];

		switch ($this->log_role) {
			case 'Designer':
			array_push($this->fragment['js'], base_url('assets/js/pages/designer_dashboard.js'));
			$temp_queue_item = 0;
			$query_queue = $this->sitemodel->view('vw_task', '*', ['task_id'=>NULL]);
			if ($query_queue) {
				$temp_queue_item = count($query_queue);
			}
			$this->fragment['queue_item'] = $temp_queue_item;

			$temp_my_item = 0;
			$query_my_item = $this->sitemodel->view('vw_task', '*', ['taken_by'=>$this->log_user, 'progress <'=>100]);
			if ($query_my_item) {
				$temp_my_item = count($query_my_item);
			}
			$this->fragment['my_item'] = $temp_my_item;

			$temp_finish_item = 0;
			$query_finish_item = $this->sitemodel->custom_query("SELECT * FROM vw_task WHERE taken_by = ".$this->log_user." AND progress = 100 AND SUBSTRING(finish_date, 6, 2) = '".date('m')."' ");
			if ($query_finish_item) {
				$temp_finish_item = count($query_finish_item);
			}
			$this->fragment['finish_item'] = $temp_finish_item;

			$temp_order_designer = [];
			$query_order_designer = $this->sitemodel->custom_query("SELECT order_id, order_type, order_name, order_deadline, order_brief, order_source, order_output, create_by, create_name, create_date FROM vw_task WHERE taken_by = ".$this->log_user." GROUP BY order_id");
			if ($query_order_designer) {
				foreach ($query_order_designer as $row_order) {
					$temp_q1 = [];
					$temp_q2 = [];
					$active = 0;
					$finish = 0;
					$temp_q1['order_id'] = $row_order->order_id;
					$temp_q1['order_type'] = $row_order->order_type;
					$temp_q1['order_name'] = $row_order->order_name;
					$temp_q1['order_deadline'] = $row_order->order_deadline;
					$temp_q1['order_brief'] = $row_order->order_brief;
					$temp_q1['order_source'] = $row_order->order_source;
					$temp_q1['order_output'] = $row_order->order_output;
					$temp_q1['create_by'] = $row_order->create_by;
					$temp_q1['create_name'] = $row_order->create_name;
					$temp_q1['create_date'] = $row_order->create_date;
					$query_task = $this->sitemodel->custom_query("SELECT item_graphics_id, item_graphics_category, item_graphics_sub_category, item_graphics_name, task_id, progress, is_active, previous, taken_by, taken_name, taken_date FROM vw_task WHERE order_id = ".$row_order->order_id." AND taken_by = ".$this->log_user." ");
					if ($query_task) {
						foreach ($query_task as $row_task) {
							$temp_q3 = [];
							$temp_q3['item_graphics_id'] = $row_task->item_graphics_id;
							$temp_q3['item_graphics_category'] = $row_task->item_graphics_category;
							$temp_q3['item_graphics_sub_category'] = $row_task->item_graphics_sub_category;
							$temp_q3['item_graphics_name'] = $row_task->item_graphics_name;
							if( empty($row_task->task_id) == FALSE ){
								$active++;
							}
							if( empty($row_task->task_id) == FALSE and $row_task->progress == 100 ){
								$finish++;
							}
							$temp_q3['task_id'] = $row_task->task_id;
							$temp_q3['progress'] = ( $row_task->progress ? $row_task->progress : 0);
							$temp_q3['is_active'] = $row_task->is_active;
							$temp_q3['previous'] = $row_task->previous;
							$temp_q3['taken_by'] = $row_task->taken_by;
							$temp_q3['taken_name'] = $row_task->taken_name;
							$temp_q3['taken_date'] = $row_task->taken_date;
							$temp_q2[] = $temp_q3;
						}
					}
					$temp_q1['order_detail'] = $temp_q2;
					$query_total_task = $this->sitemodel->custom_query("SELECT COUNT(order_id) AS total_task FROM vw_task WHERE order_id = ".$row_order->order_id." AND taken_by = ".$this->log_user." ");
					if ($query_total_task) {
						foreach ($query_total_task as $row_total) {
							$temp_q1['total_task'] = $row_total->total_task;
						}
					}
					$temp_q1['active_task'] = $active;
					$temp_q1['finish_task'] = $finish;
					$temp_order_designer[] = $temp_q1;
				}
			}

			$this->fragment['order_designer'] = $temp_order_designer;
			$this->fragment['pagename'] = 'pages/designer_dashboard_page.php';
			break;


			case 'Client':
			array_push($this->fragment['js'], base_url('assets/js/pages/client_dashboard.js'));
			$temp_queue_item = 0;
			$query_queue = $this->sitemodel->view('vw_task', '*', ['task_id'=>NULL]);
			if ($query_queue) {
				$temp_queue_item = count($query_queue);
			}
			$this->fragment['queue_item'] = $temp_queue_item;

			$temp_live_item = 0;
			$query_live_item = $this->sitemodel->view('vw_task', '*', ['create_by'=>$this->log_user, 'progress <'=>100]);
			if ($query_live_item) {
				$temp_live_item = count($query_live_item);
			}
			$this->fragment['live_item'] = $temp_live_item;

			$temp_finish_client = 0;
			$query_finish_client = $this->sitemodel->custom_query("SELECT * FROM vw_task WHERE create_by = ".$this->log_user." AND progress = 100 AND SUBSTRING(finish_date, 6, 2) = '".date('m')."' ");
			if ($query_finish_client) {
				$temp_finish_client = count($query_finish_client);
			}
			$this->fragment['finish_item_client'] = $temp_finish_client;

			$temp_order_client = [];
			$query_order_client = $this->sitemodel->custom_query("SELECT order_id, order_type, order_name, order_deadline, order_brief, order_source, order_output, create_by, create_name, create_date FROM vw_task WHERE create_by = ".$this->log_user." AND is_active = 1 GROUP BY order_id");
			if ($query_order_client) {
				foreach ($query_order_client as $row_order) {
					$temp_q1 = [];
					$temp_q2 = [];
					$active = 0;
					$finish = 0;
					$temp_q1['order_id'] = $row_order->order_id;
					$temp_q1['order_type'] = $row_order->order_type;
					$temp_q1['order_name'] = $row_order->order_name;
					$temp_q1['order_deadline'] = $row_order->order_deadline;
					$temp_q1['order_brief'] = $row_order->order_brief;
					$temp_q1['order_source'] = $row_order->order_source;
					$temp_q1['order_output'] = $row_order->order_output;
					$temp_q1['create_by'] = $row_order->create_by;
					$temp_q1['create_name'] = $row_order->create_name;
					$temp_q1['create_date'] = $row_order->create_date;
					$query_task = $this->sitemodel->custom_query("SELECT item_graphics_id, item_graphics_category, item_graphics_sub_category, item_graphics_name, task_id, progress, is_active, previous, taken_by, taken_name, taken_date FROM vw_task WHERE order_id = ".$row_order->order_id." ");
					if ($query_task) {
						foreach ($query_task as $row_task) {
							$temp_q3 = [];
							$temp_q3['item_graphics_id'] = $row_task->item_graphics_id;
							$temp_q3['item_graphics_category'] = $row_task->item_graphics_category;
							$temp_q3['item_graphics_sub_category'] = $row_task->item_graphics_sub_category;
							$temp_q3['item_graphics_name'] = $row_task->item_graphics_name;
							if( empty($row_task->task_id) == FALSE ){
								$active++;
							}
							if( empty($row_task->task_id) == FALSE and $row_task->progress == 100 ){
								$finish++;
							}
							$temp_q3['task_id'] = $row_task->task_id;
							$temp_q3['progress'] = ( $row_task->progress ? $row_task->progress : 0);
							$temp_q3['is_active'] = $row_task->is_active;
							$temp_q3['previous'] = $row_task->previous;
							$temp_q3['taken_by'] = $row_task->taken_by;
							$temp_q3['taken_name'] = $row_task->taken_name;
							$temp_q3['taken_date'] = $row_task->taken_date;
							$temp_q2[] = $temp_q3;
						}
					}
					$temp_q1['order_detail'] = $temp_q2;
					$query_total_task = $this->sitemodel->custom_query("SELECT COUNT(order_id) AS total_task FROM vw_task WHERE order_id = ".$row_order->order_id." ");
					if ($query_total_task) {
						foreach ($query_total_task as $row_total) {
							$temp_q1['total_task'] = $row_total->total_task;
						}
					}
					$temp_q1['allow_edit'] = ( $active ==  $temp_q1['total_task'] ? 'No' : 'Yes');
					$temp_q1['active_task'] = $active;
					$temp_q1['finish_task'] = $finish;
					$temp_order_client[] = $temp_q1;
				}
			}

			$this->fragment['order_client'] = $temp_order_client;
		// echo json_encode($temp_order_client);die;

			$temp_rating = [];
			$query_rating = $this->sitemodel->custom_query("SELECT order_id, order_name FROM tr_order WHERE create_by = ".$this->log_user." AND is_active = 0 AND order_id NOT IN( SELECT order_id FROM tr_rating ) ORDER BY edited_date DESC LIMIT 1 ");
			if ($query_rating) {
				foreach ($query_rating as $row_rating) {
					$temp_q1 = [];
					$temp_q2 = [];
					$temp_q1['order_id'] = $row_rating->order_id;
					$temp_q1['order_name'] = $row_rating->order_name;
					$query_rating_personal = $this->sitemodel->custom_query("SELECT task_id, item_graphics_name, taken_by, taken_name FROM vw_task WHERE order_id = ".$row_rating->order_id." ");
					if ($query_rating_personal) {
						foreach ($query_rating_personal as $row_rating_personal) {
							$temp_q3 = [];
							$temp_q3['task_id'] = $row_rating_personal->task_id;
							$temp_q3['item_graphics_name'] = $row_rating_personal->item_graphics_name;
							$temp_q3['item_graphics_name_2'] = str_replace(' ', '_', $row_rating_personal->item_graphics_name);
							$temp_q3['taken_by'] = $row_rating_personal->taken_by;
							$temp_q3['taken_name'] = $row_rating_personal->taken_name;
							$temp_q2[] = $temp_q3;
						}
					}
					$temp_q1['order_detail'] = $temp_q2;

					$temp_rating[] = $temp_q1;
				}
			}
			$this->fragment['rating'] = $temp_rating;

		// echo json_encode($temp_rating);die;
			$this->fragment['pagename'] = 'pages/client_dashboard_page.php';
			break;


			case 'Admin':
			array_push($this->fragment['js'], base_url('assets/js/pages/admin_dashboard.js'));

			$temp_queue_item = 0;
			$query_queue = $this->sitemodel->view('vw_task', '*', ['task_id'=>NULL]);
			if ($query_queue) {
				$temp_queue_item = count($query_queue);
			}
			$this->fragment['queue_item'] = $temp_queue_item;

			$temp_my_item = 0;
			$query_my_item = $this->sitemodel->view('vw_task', '*', ['progress <'=>100]);
			if ($query_my_item) {
				$temp_my_item = count($query_my_item);
			}
			$this->fragment['my_item'] = $temp_my_item;

			$temp_finish_item = 0;
			$query_finish_item = $this->sitemodel->custom_query("SELECT * FROM vw_task WHERE  progress = 100 AND SUBSTRING(finish_date, 6, 2) = '".date('m')."' ");
			if ($query_finish_item) {
				$temp_finish_item = count($query_finish_item);
			}
			$this->fragment['finish_item'] = $temp_finish_item;

			$temp_order_admin = [];
			$query_order_admin = $this->sitemodel->custom_query("SELECT order_id, order_type, order_name, order_deadline, order_brief, order_source, order_output, create_by, create_name, create_date FROM vw_task GROUP BY order_id");
			if ($query_order_admin) {
				foreach ($query_order_admin as $row_order) {
					$temp_q1 = [];
					$temp_q2 = [];
					$active = 0;
					$finish = 0;
					$temp_q1['order_id'] = $row_order->order_id;
					$temp_q1['order_type'] = $row_order->order_type;
					$temp_q1['order_name'] = $row_order->order_name;
					$temp_q1['order_deadline'] = $row_order->order_deadline;
					$temp_q1['order_brief'] = $row_order->order_brief;
					$temp_q1['order_source'] = $row_order->order_source;
					$temp_q1['order_output'] = $row_order->order_output;
					$temp_q1['create_by'] = $row_order->create_by;
					$temp_q1['create_name'] = $row_order->create_name;
					$temp_q1['create_date'] = $row_order->create_date;
					$query_task = $this->sitemodel->custom_query("SELECT item_graphics_id, item_graphics_category, item_graphics_sub_category, item_graphics_name, task_id, progress, is_active, previous, taken_by, taken_name, taken_date FROM vw_task WHERE order_id = ".$row_order->order_id." ");
					if ($query_task) {
						foreach ($query_task as $row_task) {
							$temp_q3 = [];
							$temp_q3['item_graphics_id'] = $row_task->item_graphics_id;
							$temp_q3['item_graphics_category'] = $row_task->item_graphics_category;
							$temp_q3['item_graphics_sub_category'] = $row_task->item_graphics_sub_category;
							$temp_q3['item_graphics_name'] = $row_task->item_graphics_name;

							if( empty($row_task->task_id) == FALSE ){
								$active++;
							}

							if( empty($row_task->task_id) == FALSE and $row_task->progress == 100 ){
								$finish++;
							}
							$temp_q3['task_id'] = $row_task->task_id;
							$temp_q3['progress'] = ( $row_task->progress ? $row_task->progress : 0);
							$temp_q3['is_active'] = $row_task->is_active;
							$temp_q3['previous'] = $row_task->previous;
							$temp_q3['taken_by'] = $row_task->taken_by;
							$temp_q3['taken_name'] = $row_task->taken_name;
							$temp_q3['taken_date'] = $row_task->taken_date;
							$temp_q2[] = $temp_q3;
						}
					}
					$temp_q1['order_detail'] = $temp_q2;
					$query_total_task = $this->sitemodel->custom_query("SELECT COUNT(order_id) AS total_task FROM vw_task WHERE order_id = ".$row_order->order_id." ");
					if ($query_total_task) {
						foreach ($query_total_task as $row_total) {
							$temp_q1['total_task'] = $row_total->total_task;
						}
					}
					$temp_q1['allow_edit'] = ( $active ==  $temp_q1['total_task'] ? 'No' : 'Yes');
					$temp_q1['active_task'] = $active;
					$temp_q1['finish_task'] = $finish;
					$temp_order_admin[] = $temp_q1;
				}
			}

			$this->fragment['order_admin'] = $temp_order_admin;
			$this->fragment['pagename'] = 'pages/admin_dashboard_page.php';
			break;
			case 'Developer':
			redirect(base_url().'list_order');
			break;
		}
		$this->fragment['pagetitle'] = 'Dashboard';

		// echo json_encode($this->fragment);die;
		
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function detail($param)
	{
		if (!$this->hasLogin()) {
			redirect('site/login');
		}
		$this->fragment['css'] = [
			base_url('assets/vendor/datatables.net-bs4/css/dataTables.bootstrap4.min.css'),
		];
		$this->fragment['js'] = [ 
			base_url('assets/vendor/daterangepicker/moment.min.js'),
			base_url('assets/vendor/datatables.net/js/jquery.dataTables.min.js'),
			base_url('assets/vendor/datatables.net-bs4/js/dataTables.bootstrap4.min.js'),
			base_url('assets/js/pages/detail_dashboard.js') 
		];

		$query = "SELECT * FROM vw_task WHERE 1=1";

		switch ($param) {
			case 'queue':
			$this->fragment['pagetitle'] = 'Detail Dashboard Queue';
				$query .= " AND task_id IS NULL";
				break;
			case 'live':
			$this->fragment['pagetitle'] = 'Detail Dashboard Live';
				$query .= " AND progress < 100";
				if ($this->log_role == 'Client') {
					$query .= " AND create_by = ".$this->log_user."";
				}else if($this->log_user == 'Designer'){
					$query .= " AND taken_by = ".$this->log_user."";
				}
				break;
			case 'finish':
			$this->fragment['pagetitle'] = 'Detail Dashboard Finish';
				$query .= " AND progress = 100 AND SUBSTRING(finish_date, 6, 2) = '".date('m')."'";
				if ($this->log_role == 'Client') {
					$query .= " AND create_by = ".$this->log_user."";
				}else if($this->log_user == 'Designer'){
					$query .= " AND taken_by = ".$this->log_user."";
				}
				break;
		}

		$this->fragment['data'] = $this->sitemodel->custom_query($query);
		// echo $this->db->last_query();die;
		// echo json_encode($this->fragment['data']);die;

		$this->fragment['pagename'] = 'pages/detail_dashboard_page.php';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function detailV2()
	{
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		/*** Params ***/
		/*** Required Area ***/
		$task_id = $this->input->post("task_id");
		$order_id = $this->input->post("order_id");

		$sql = "SELECT * FROM vw_task WHERE order_id = '".$order_id."' AND ";
		if ( empty($task_id) == FALSE ) {
			$sql .= "task_id = '".$task_id."' ";
		}else{
			$sql .= "task_id IS NULL ";
		}

		$check = $this->sitemodel->custom_query($sql);
		// echo $this->db->last_query();die;

		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $check;
		echo json_encode($this->response);
		exit;
	}

	public function save_rating()
	{
		// echo json_encode($this->input->post());die;
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		// PARAMS
		$order_id 				= $this->input->post('id');
		$rating_message 		= $this->input->post('rating_message');
		$rating_count 			= $this->input->post('rating_count');
		$detail_rating_count  	= $this->input->post('detail_rating_count');

		$data_head = [
			'order_id' 			=> $order_id,
			'rating_message'	=> $rating_message,
			'rating_count'		=> $rating_count,
			'create_by'			=> $this->log_user, 
			'create_name'		=> $this->log_name,
			'create_date'		=> date('Y-m-d H:i:s')
		];

		$rating_id = $this->sitemodel->insert("tr_rating", $data_head);

		foreach ($detail_rating_count as $index => $value) {
			$data_detail = [
				'rating_id'				=> $rating_id,
				'task_id'				=> $index,
				'detail_rating_count'	=> $value,
				'create_by'				=> $this->log_user, 
				'create_name'			=> $this->log_name,
				'create_date'			=> date('Y-m-d H:i:s')
			];

			$detail = $this->sitemodel->insert("tr_detail_rating", $data_detail);
		}
		
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully insert rating.";
		echo json_encode($this->response);
		exit;
	}

	public function get_pie_data()
	{
		$data = [];
		$temp_queue_item = 0;
		$query_queue = $this->sitemodel->view('vw_task', '*', ['task_id'=>NULL]);
		if ($query_queue) {
			$temp_queue_item = count($query_queue);
		}
		$data['queue_item'] = $temp_queue_item;

		$temp_my_item = 0;
		$query_my_item = $this->sitemodel->view('vw_task', '*', ['taken_by'=>$this->log_user, 'progress <'=>100]);
		if ($query_my_item) {
			$temp_my_item = count($query_my_item);
		}
		$data['my_item'] = $temp_my_item;

		$temp_finish_item = 0;
		$query_finish_item = $this->sitemodel->custom_query("SELECT * FROM vw_task WHERE taken_by = ".$this->log_user." AND progress = 100 AND SUBSTRING(finish_date, 6, 2) = '".date('m')."' ");
		if ($query_finish_item) {
			$temp_finish_item = count($query_finish_item);
		}
		$data['finish_item'] = $temp_finish_item;
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $data;
		echo json_encode($this->response);
		exit;
	}

	public function get_pie_data_admin()
	{
		$data = [];
		$temp_queue_item = 0;
		$query_queue = $this->sitemodel->view('vw_task', '*', ['task_id'=>NULL]);
		if ($query_queue) {
			$temp_queue_item = count($query_queue);
		}
		$data['queue_item'] = $temp_queue_item;

		$temp_my_item = 0;
		$query_my_item = $this->sitemodel->view('vw_task', '*', ['progress <'=>100]);
		if ($query_my_item) {
			$temp_my_item = count($query_my_item);
		}
		$data['my_item'] = $temp_my_item;

		$temp_finish_item = 0;
		$query_finish_item = $this->sitemodel->custom_query("SELECT * FROM vw_task WHERE progress = 100 AND SUBSTRING(finish_date, 6, 2) = '".date('m')."' ");
		if ($query_finish_item) {
			$temp_finish_item = count($query_finish_item);
		}
		$data['finish_item'] = $temp_finish_item;
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $data;
		echo json_encode($this->response);
		exit;
	}

	public function get_line_data()
	{
		$data = [];
		$months = [];
		$jobs = [];
		for ( $i = 8; $i >= 0; $i--) { 
			$temp = date("Y F", strtotime( date( 'Y-m-01' )." -$i months"));
			$check = $this->sitemodel->custom_query("SELECT * FROM vw_task WHERE taken_by = ".$this->log_user." AND SUBSTRING(finish_date, 1, 7) = '".date("Y-m", strtotime( date( 'Y-m-01' )." -$i months"))."' ");
			if ( !$check ) {
				$jobs[] = 0;
			}else{
				$jobs[] = sizeof($check);
			}
			$months[] = $temp;
		}
		$data['months'] = $months;
		$data['jobs'] = $jobs;
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $data;
		echo json_encode($this->response);
		exit;
	}

	public function get_all_designer_task()
	{
		$data = [];
		$months = [];
		for ( $i = 8; $i >= 0; $i--) { 
			$temp = date("Y F", strtotime( date( 'Y-m-01' )." -$i months"));
			$months[] = $temp;
		}

		$datasets = [];
		$temp_labels = [];
		$designer = $this->sitemodel->custom_query("SELECT taken_by, taken_name FROM vw_task WHERE taken_by IS NOT NULL GROUP BY taken_by");
		foreach ($designer as $d) {
			$temp_d1 = [];
			$temp_d2 = [];
			$temp_d1['name'] =  $d->taken_by.' - '.$d->taken_name;

			for ( $j = 8; $j >=0 ; $j--) { 
				$check = $this->sitemodel->custom_query("SELECT * FROM vw_task WHERE taken_by = ".$d->taken_by." AND SUBSTRING(finish_date, 1, 7) = '".date("Y-m", strtotime( date( 'Y-m-01' )." -$j months"))."' ");
				if ( !$check ) {
					$temp_d2[] = 0;
				}else{
					$temp_d2[] = sizeof($check);
				}
			}
			$temp_d1['data'] = $temp_d2;

			$temp_labels[] = $temp_d1;
		}

		$datasets['labels'] = $temp_labels;

		$data['months'] = $months;
		$data['datasets'] = $datasets;
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $data;
		echo json_encode($this->response);
		exit;
	}

	public function update_list()
	{
		$check = [];
		$query = $this->sitemodel->view('tab_notification', '*', ['notification_status'=>0, 'notification_for'=>$this->log_user], NULL, 'created_date DESC');
		if ( $query ) {
			foreach ($query as $q) {
				$temp = [];
				$temp['created_name'] = $q->created_name;
				$temp['created_date'] = date('d F Y', strtotime($q->created_date));
				$temp['notification_message'] = $q->notification_message;
				$check[] = $temp;
			}
		}
		$this->response['msg'] = $check;
		echo json_encode($this->response);
		exit;
	}

	public function read_message()
	{
		$data_notification = [
			'notification_status' => 1,
		];

		$update = $this->sitemodel->update('tab_notification', $data_notification, ['notification_status'=>0, 'notification_for'=>$this->log_user]);
		/*** Result Area ***/
		$this->response['type'] = 'done';
		echo json_encode($this->response);
		exit;
	}

	public function login()
	{
		/*** Check Session ***/
		if( $this->hasLogin() ) redirect();
		$this->load->view('login_page');
	}

	public function signin()
	{
		// echo json_encode($this->input->post());die;
		/*** Check Session ***/
		if( $this->hasLogin() ) redirect();
		/*** Check POST or GET ***/
		if ( !$_POST ){
			$this->response['msg'] = "Invalid parameters.";
			echo json_encode($this->response);
			exit;
		}
		/*** Params ***/
		$server = $this->input->post("server") ?? $_SERVER['REMOTE_ADDR'];
		$temp = explode(".", $server);
		$server = ($temp[0] == "103") ? $_SERVER['REMOTE_ADDR'] : $server;
		$browser = $_SERVER['HTTP_USER_AGENT'];
		/*** Required Area ***/
		$username = trim($this->input->post("username"));
		$password = $this->input->post("userpass");
		$ckbox = $this->input->post("ckbox");
		/*** Validate Area ***/
		if ( empty($username) or empty($password) ){
			$this->response['msg'] = "Input username or password.";
			echo json_encode($this->response);
			exit;
		}
		$ckbox = isset($ckbox) ? "on" : "off";
		/*** Accessing DB Area ***/
		$post = [
			"username"	=> $username,
			"password"	=> $password,
			"onlines"	=> $ckbox,
			"server"	=> $server,
		];

		/*$temp = new stdClass;
		$rest = [];
		$data = new stdClass;

		$temp->CEMPNIP = '9999999';
		$temp->CEMPNAME = 'Developer Metro TV';
		$temp->DATE_JOINGROUP = '01-01-0001';
		$temp->CDPTNO = '003';
		$temp->CDPTDESC = 'FIN ADM & TS - TEKNIK';
		$temp->CDICNO = '032';
		$temp->CDICDESC = 'IT';
		$temp->CSDPNO = '208';
		$temp->CSDPDESC = 'MIS';
		$temp->CDACNO = '123';
		$temp->CDACDESC = 'MIS';
		$temp->CJBTDESC = 'PROGRAMMER';
		$temp->CEMPEMAILADDR = 'DEVELOPER@METROTVNEWS.COM';
		$temp->CEMPGENDER = 'L';
		$temp->DATE_BIRTH = '01-01-0001';
		$temp->CGOLNO = '2';
		$temp->APPROVELEVEL = null;
		$temp->BIO_APPROVAL_REQ = '01-JAN-01';
		$temp->IS_SPECIALLOGIN = null;


		$rest[] = $temp;

		$data->rest = $rest;*/
		
		$curl = new Libcurl("employee", "login");
		$data = $curl->__pages($post);
		// echo json_encode($data);die;
		if ( $data == null ){
			$this->response['msg'] = "Failed to fetch from servers.";
			echo json_encode($this->response);
			exit;
		}
		
		if ( $data->status == "failed" ){
			$this->response["msg"] = $data->msg;
			echo json_encode($this->response);
			exit;
		}
		$items = $data->result[0];
		$logger = [
			"cempnip"	=> $username,
			"ip_address"=> $server,
			"browser"	=> $browser,
			"log_login"	=> date("Y-m-d H:i:s")
		];
		$this->sitemodel->insert("loglogin", $logger);
		$__isSPECIALLOGIN = ($items->IS_SPECIALLOGIN == '1');
		$__isSUPERADMIN = in_array($username, $this->__SUPERADMIN);
		if ($__isSPECIALLOGIN == FALSE){
			/*** NOT SPECIAL LOGIN (ORDINARY USER EMPLOYEE) ***/
			$sess = [
				"log_user"		=> $items->CEMPNIP,
				"log_name"		=> proper_lang($items->CEMPNAME, false),
				"log_join"		=> $items->DATE_JOINGROUP,
				"log_prs"		=> '1',									/*** Company [TEMPORARY - PLEASE UPDATE IF CHANGED] ***/
				"log_cdpt"		=> proper_lang($items->CDPTNO), 		/*** Direktorat ***/         
				"log_dir"		=> proper_lang($items->CDPTDESC), 		/*** Direktorat Name ***/
				"log_cdic"		=> proper_lang($items->CDICNO), 		/*** Division ***/
				"log_div"		=> proper_lang($items->CDICDESC), 		/*** Division Name ***/
				"log_csdp"		=> proper_lang($items->CSDPNO), 		/*** Departemen ***/
				"log_dept"		=> proper_lang($items->CSDPDESC), 		/*** Departemen Name ***/
				"log_cdac"		=> proper_lang($items->CDACNO), 		/*** Section ***/
				"log_sect"		=> proper_lang($items->CDACDESC), 		/*** Section Name ***/
				"log_post"		=> proper_lang($items->CJBTDESC), 		/*** Jabatan / Posisi ***/
				"log_email"		=> strtolower($items->CEMPEMAILADDR), 	/*** Email ***/
				"log_gender"	=> $items->CEMPGENDER, 					/*** Gender ***/
				"log_dob"		=> $items->DATE_BIRTH, 					/*** DOB (Added 2019-06-24) ***/
				"log_gold"		=> proper_lang($items->CGOLNO),			//! NEW APPROVAL LEVEL => UNTUK SISTEM APPROVAL CUTI/ABSEN, ETC
				"log_level"		=> proper_lang($items->APPROVELEVEL),	//! OLD APPROVAL LEVEL
				"log_update"	=> empty($items->BIO_APPROVAL_REQ) ? FALSE : TRUE,
			];
		}
		else {
			/*** SPECIAL LOGIN (SPECIAL USER WITHOUT EMPLOYEE DATA) ***/
			$sess = [
				"log_user"		=> $username,
				"log_name"		=> isset($items->CEMPNAME) ? proper_lang($items->CEMPNAME, false) : $username,
				"log_join"		=> isset($items->DATE_JOINGROUP) ? $items->DATE_JOINGROUP : date('d F Y'),
				"log_prs"		=> '1',																		/*** Company [TEMPORARY - PLEASE UPDATE IF CHANGED] ***/
				"log_cdpt"		=> isset($items->CDPTNO) ? proper_lang($items->CDPTNO) : '', 				/*** Direktorat ***/         
				"log_dir"		=> isset($items->CDPTDESC) ? proper_lang($items->CDPTDESC) : '', 			/*** Direktorat Name ***/
				"log_cdic"		=> isset($items->CDICNO) ? proper_lang($items->CDICNO) : '', 				/*** Division ***/
				"log_div"		=> isset($items->CDICDESC) ? proper_lang($items->CDICDESC) : '', 			/*** Division Name ***/
				"log_csdp"		=> isset($items->CSDPNO) ? proper_lang($items->CSDPNO) : '', 				/*** Departemen ***/
				"log_dept"		=> isset($items->CSDPDESC) ? proper_lang($items->CSDPDESC) : '', 			/*** Departemen Name ***/
				"log_cdac"		=> isset($items->CDACNO) ? proper_lang($items->CDACNO) : '', 				/*** Section ***/
				"log_sect"		=> isset($items->CDACDESC) ? proper_lang($items->CDACDESC) : '', 			/*** Section Name ***/
				"log_post"		=> isset($items->CJBTDESC) ? proper_lang($items->CJBTDESC) : '', 			/*** Jabatan / Posisi ***/
				"log_email"		=> isset($items->CEMPEMAILADDR) ? strtolower($items->CEMPEMAILADDR) : '', 	/*** Email ***/
				"log_gender"	=> isset($items->CEMPGENDER) ? $items->CEMPGENDER : 'L', 					/*** Gender ***/
				"log_dob"		=> isset($items->DATE_BIRTH) ? $items->DATE_BIRTH : '', 					/*** DOB (Added 2019-06-24) ***/
				"log_gold"		=> isset($items->CGOLNO) ? proper_lang($items->CGOLNO) : '',
				"log_level"		=> isset($items->APPROVELEVEL) ? proper_lang($items->APPROVELEVEL) : '',
				"log_update"	=> TRUE
			];
		}
		if ($__isSUPERADMIN){
			$sess['__nimdarepus'] = '1';
		}
		$this->session->set_userdata(SESS, (object)$sess);
		// echo json_encode($sess);die;
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully login.";
		$this->response['url'] = $this->input->post('url');
		echo json_encode($this->response);
		exit;
	}
	
	function signout(){
		$post = [
			"user"	=> $this->user->getNip(),
		];
		$curl = new Libcurl("employee", "logout");
		$curl->__pages($post);
		$this->session->sess_destroy();
		redirect ( base_url("site/login") );
	}
	
}
