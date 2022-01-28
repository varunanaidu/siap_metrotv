<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class New_order extends MY_Controller {

	private $select = "*";
	private $table = ["tr_order", "tr_attachment", "tr_item_graphics"];

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
			base_url('assets/vendor/datatables.net-bs4/css/dataTables.bootstrap4.min.css'),
			base_url('assets/vendor/dropzone/dist/dropzone.css'),
			base_url('assets/vendor/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css'),
		];
		$this->fragment['js'] = [ 
			base_url('assets/vendor/sweetalert2/dist/sweetalert2.min.js'),
			base_url('assets/vendor/datatables.net/js/jquery.dataTables.min.js'),
			base_url('assets/vendor/datatables.net-bs4/js/dataTables.bootstrap4.min.js'),
			base_url('assets/vendor/jquery-form/jquery.form.min.js'),
			base_url('assets/vendor/dropzone/dist/dropzone.js'),
			base_url('assets/vendor/moment/moment.min.js'),
			base_url('assets/vendor/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js'),
			base_url('assets/js/pages/new_order.js') 
		];
		$this->fragment['pagetitle'] = 'Buat Order Baru';
		$this->fragment['pagename'] = 'pages/new_order_page.php';

		$this->fragment['type'] = $this->sitemodel->view("tab_type", "*");

		$temp_item_graphic_daily = [];
		$q_item_graphic_daily = $this->sitemodel->custom_query("SELECT item_graphic_category FROM vw_item_graphic WHERE type_id = 1 GROUP BY item_graphic_category");
		foreach ($q_item_graphic_daily as $row_daily) {
			$temp_q1 = [];
			$temp_q2 = [];
			$temp_q1['item_graphic_category'] = $row_daily->item_graphic_category;
			$q1  = $this->sitemodel->custom_query("SELECT item_graphic_sub_category FROM vw_item_graphic WHERE item_graphic_category = '".$row_daily->item_graphic_category."' GROUP BY item_graphic_sub_category");
			foreach ($q1 as $row_q1) {
				$temp_q3 = [];
				$temp_q4 = [];
				$temp_q3['item_graphic_sub_category'] = $row_q1->item_graphic_sub_category;
				$q2 = $this->sitemodel->custom_query("SELECT * FROM vw_item_graphic WHERE item_graphic_category = '".$row_daily->item_graphic_category."' AND item_graphic_sub_category = '".$row_q1->item_graphic_sub_category."' ");
				foreach ($q2 as $row_q2) {
					$temp_q5 = [];
					$temp_q5['item_graphic_id'] = $row_q2->item_graphic_id;
					$temp_q5['item_graphic_category'] = $row_q2->item_graphic_category;
					$temp_q5['item_graphic_sub_category'] = $row_q2->item_graphic_sub_category;
					$temp_q5['item_graphic_name'] = $row_q2->item_graphic_name;
					$temp_q5['item_graphic_desc'] = $row_q2->item_graphic_desc;
					$temp_q4[] = $temp_q5;
				}
				$temp_q3['item_graphic_sub_detail'] = $temp_q4;
				$temp_q2[] = $temp_q3; 
			}

			$temp_q1['item_graphic_detail'] = $temp_q2;
			$temp_item_graphic_daily[] = $temp_q1;
		}

		$this->fragment['item_graphic_daily'] = $temp_item_graphic_daily;
		// echo json_encode($temp_item_graphic_daily);die;

		$temp_item_graphic_development = [];
		$q_item_graphic_development = $this->sitemodel->custom_query("SELECT item_graphic_category FROM vw_item_graphic WHERE type_id = 2 GROUP BY item_graphic_category");
		foreach ($q_item_graphic_development as $row_development) {
			$temp_q1 = [];
			$temp_q2 = [];
			$temp_q1['item_graphic_category'] = $row_development->item_graphic_category;
			$q1  = $this->sitemodel->custom_query("SELECT item_graphic_sub_category FROM vw_item_graphic WHERE item_graphic_category = '".$row_development->item_graphic_category."' GROUP BY item_graphic_sub_category");
			foreach ($q1 as $row_q1) {
				$temp_q3 = [];
				$temp_q4 = [];
				$temp_q3['item_graphic_sub_category'] = $row_q1->item_graphic_sub_category;
				$q2 = $this->sitemodel->custom_query("SELECT * FROM vw_item_graphic WHERE item_graphic_category = '".$row_development->item_graphic_category."' AND item_graphic_sub_category = '".$row_q1->item_graphic_sub_category."' ");
				foreach ($q2 as $row_q2) {
					$temp_q5 = [];
					$temp_q5['item_graphic_id'] = $row_q2->item_graphic_id;
					$temp_q5['item_graphic_category'] = $row_q2->item_graphic_category;
					$temp_q5['item_graphic_sub_category'] = $row_q2->item_graphic_sub_category;
					$temp_q5['item_graphic_name'] = $row_q2->item_graphic_name;
					$temp_q5['item_graphic_desc'] = $row_q2->item_graphic_desc;
					$temp_q4[] = $temp_q5;
				}
				$temp_q3['item_graphic_sub_detail'] = $temp_q4;
				$temp_q2[] = $temp_q3; 
			}

			$temp_q1['item_graphic_detail'] = $temp_q2;
			$temp_item_graphic_development[] = $temp_q1;
		}

		$this->fragment['item_graphic_development'] = $temp_item_graphic_development;
		

		$this->load->view('layout/main-site', $this->fragment);
	}

	public function edit_order($order_id)
	{
		if (!$this->hasLogin()) {
			redirect('site/login');
		}

		$this->fragment['css'] = [
			base_url('assets/vendor/sweetalert2/dist/sweetalert2.min.css'),
			base_url('assets/vendor/datatables.net-bs4/css/dataTables.bootstrap4.min.css'),
			base_url('assets/vendor/dropzone/dist/dropzone.css'),
			base_url('assets/vendor/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css'),
		];

		$this->fragment['js'] = [ 
			base_url('assets/vendor/sweetalert2/dist/sweetalert2.min.js'),
			base_url('assets/vendor/datatables.net/js/jquery.dataTables.min.js'),
			base_url('assets/vendor/datatables.net-bs4/js/dataTables.bootstrap4.min.js'),
			base_url('assets/vendor/jquery-form/jquery.form.min.js'),
			base_url('assets/vendor/dropzone/dist/dropzone.js'),
			base_url('assets/vendor/moment/moment.min.js'),
			base_url('assets/vendor/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js'),
			base_url('assets/js/pages/edit_order.js') 
		];
		
		$this->fragment['pagetitle'] = 'Edit Order';
		$this->fragment['pagename'] = 'pages/edit_order_page.php';

		$this->fragment['type'] = $this->sitemodel->view("tab_type", "*");
		$this->fragment['order_id'] = $order_id;

		$temp_order = [];
		$q_order = $this->sitemodel->view('tr_order', '*', ['order_id'=>$order_id]);
		
		if ($q_order) {
			foreach ($q_order as $r_order) {
				$temp_q1 = [];
				$temp_q2 = [];
				$temp_q3 = [];
				$temp_q1['order_id'] = $r_order->order_id;
				$temp_q1['order_type'] = $r_order->order_type;
				$temp_q1['order_name'] = $r_order->order_name;
				$temp_q1['order_deadline'] = $r_order->order_deadline;
				$temp_q1['time_picker'] = date('H:i:s', strtotime($r_order->order_deadline));
				$temp_q1['order_brief'] = $r_order->order_brief;
				$temp_q1['order_source'] = $r_order->order_source;
				$temp_q1['order_output'] = $r_order->order_output;

				$q_detail = $this->sitemodel->view('tr_item_graphics', '*', ['order_id'=>$r_order->order_id]);
				if ($q_detail) {
					foreach ($q_detail as $r_detail) {
						$temp_q4 = [];
						$temp_q4['item_graphics_id'] = $r_detail->item_graphics_id;
						$temp_q4['item_graphics_category'] = $r_detail->item_graphics_category;
						$temp_q4['item_graphics_sub_category'] = $r_detail->item_graphics_sub_category;
						$temp_q4['item_graphics_name'] = $r_detail->item_graphics_name;

						$temp_q2[] = $temp_q4;
					}
				}
				$temp_q1['item_graphic'] = $temp_q2;

				$q_attachment = $this->sitemodel->view('tr_attachment', '*', ['order_id'=>$r_order->order_id]);
				if ($q_attachment) {
					foreach ($q_attachment as $r_attachment) {
						$temp_q5 = [];
						$temp_q5['attachment_id'] = $r_attachment->attachment_id;
						$temp_q5['attachment_name'] = $r_attachment->attachment_name;

						$temp_q3[] = $temp_q5;
					}
				}
				$temp_q1['attachment'] = $temp_q3;

				$temp_order[] = $temp_q1;
			}
		}
		$this->fragment['data_order'] = $temp_order;

		$temp_item_graphic_daily = [];
		$q_item_graphic_daily = $this->sitemodel->custom_query("SELECT item_graphic_category FROM vw_item_graphic WHERE type_id = 1 GROUP BY item_graphic_category");
		foreach ($q_item_graphic_daily as $row_daily) {
			$temp_q1 = [];
			$temp_q2 = [];
			$temp_q1['item_graphic_category'] = $row_daily->item_graphic_category;
			$q1  = $this->sitemodel->custom_query("SELECT item_graphic_sub_category FROM vw_item_graphic WHERE item_graphic_category = '".$row_daily->item_graphic_category."' GROUP BY item_graphic_sub_category");
			foreach ($q1 as $row_q1) {
				$temp_q3 = [];
				$temp_q4 = [];
				$temp_q3['item_graphic_sub_category'] = $row_q1->item_graphic_sub_category;
				$q2 = $this->sitemodel->custom_query("SELECT * FROM vw_item_graphic WHERE item_graphic_category = '".$row_daily->item_graphic_category."' AND item_graphic_sub_category = '".$row_q1->item_graphic_sub_category."' ");
				foreach ($q2 as $row_q2) {
					$temp_q5 = [];
					$temp_q5['item_graphic_id'] = $row_q2->item_graphic_id;
					$temp_q5['item_graphic_category'] = $row_q2->item_graphic_category;
					$temp_q5['item_graphic_sub_category'] = $row_q2->item_graphic_sub_category;
					$temp_q5['item_graphic_name'] = $row_q2->item_graphic_name;
					$temp_q5['item_graphic_desc'] = $row_q2->item_graphic_desc;
					$temp_q4[] = $temp_q5;
				}
				$temp_q3['item_graphic_sub_detail'] = $temp_q4;
				$temp_q2[] = $temp_q3; 
			}

			$temp_q1['item_graphic_detail'] = $temp_q2;
			$temp_item_graphic_daily[] = $temp_q1;
		}

		$this->fragment['item_graphic_daily'] = $temp_item_graphic_daily;

		$temp_item_graphic_development = [];
		$q_item_graphic_development = $this->sitemodel->custom_query("SELECT item_graphic_category FROM vw_item_graphic WHERE type_id = 2 GROUP BY item_graphic_category");
		foreach ($q_item_graphic_development as $row_development) {
			$temp_q1 = [];
			$temp_q2 = [];
			$temp_q1['item_graphic_category'] = $row_development->item_graphic_category;
			$q1  = $this->sitemodel->custom_query("SELECT item_graphic_sub_category FROM vw_item_graphic WHERE item_graphic_category = '".$row_development->item_graphic_category."' GROUP BY item_graphic_sub_category");
			foreach ($q1 as $row_q1) {
				$temp_q3 = [];
				$temp_q4 = [];
				$temp_q3['item_graphic_sub_category'] = $row_q1->item_graphic_sub_category;
				$q2 = $this->sitemodel->custom_query("SELECT * FROM vw_item_graphic WHERE item_graphic_category = '".$row_development->item_graphic_category."' AND item_graphic_sub_category = '".$row_q1->item_graphic_sub_category."' ");
				foreach ($q2 as $row_q2) {
					$temp_q5 = [];
					$temp_q5['item_graphic_id'] = $row_q2->item_graphic_id;
					$temp_q5['item_graphic_category'] = $row_q2->item_graphic_category;
					$temp_q5['item_graphic_sub_category'] = $row_q2->item_graphic_sub_category;
					$temp_q5['item_graphic_name'] = $row_q2->item_graphic_name;
					$temp_q5['item_graphic_desc'] = $row_q2->item_graphic_desc;
					$temp_q4[] = $temp_q5;
				}
				$temp_q3['item_graphic_sub_detail'] = $temp_q4;
				$temp_q2[] = $temp_q3; 
			}

			$temp_q1['item_graphic_detail'] = $temp_q2;
			$temp_item_graphic_development[] = $temp_q1;
		}

		$this->fragment['item_graphic_development'] = $temp_item_graphic_development;

		// echo json_encode($this->fragment);die;		

		$this->load->view('layout/main-site', $this->fragment);
	}

	public function get_item_graphic()
	{
		$order_id = $this->input->post('key');

		$o_type = '';
		$type = $this->sitemodel->view('tr_order', 'order_type', ['order_id'=>$order_id]);
		foreach ($type as $t ) {
			$o_type = ( $t->order_type == 1 ? 'Daily' : 'Development');
		}

		$check = $this->sitemodel->view('vw_task', '*', ['order_id'=>$order_id]);
		if (!$check) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		$data = [];

		foreach ($check as $row) {
			$temp_q1 = [];
			$temp_q1['item_graphics_id'] = $row->item_graphics_id;
			$temp_q1['item_graphics_category'] = str_replace(' ', '_', $row->item_graphics_category);
			$temp_q1['item_graphics_sub_category'] = str_replace(' ', '_', $row->item_graphics_sub_category);
			$temp_q1['item_graphics_name'] = $row->item_graphics_name;
			$temp_q1['task_id'] = ($row->task_id ? $row->task_id : '-');
			$temp_q1['taken_by'] = ($row->taken_by ? $row->taken_by : '-');
			$temp_q1['taken_name'] = ($row->taken_name ? $row->taken_name : '-');
			$temp_q1['taken_date'] = ($row->taken_date ? date('d/m/Y H:i:s', strtotime($row->taken_date)) : '-') ;
			$data[] = $temp_q1;
		}

		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $data;
		$this->response['msg2'] = $o_type;
		echo json_encode($this->response);
		exit;
	}

	public function save()
	{
		// echo json_encode($this->input->post());die;
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		// PARAMS

		$order_type 		= $this->input->post('order_type');
		$order_name 		= $this->input->post('order_name');
		$order_deadline  	= $this->input->post('order_deadline');
		$order_brief  		= $this->input->post('order_brief');
		$order_source  		= $this->input->post('order_source');
		$order_output  		= $this->input->post('order_output');
		$item_graphic  		= $this->input->post('item_graphic');
		$item_graphics_id  	= $this->input->post('item_graphics_id');
		$attachment 		= $_FILES['attachment_name'];

		$time_picker 		= $this->input->post('time_picker');
		if ($time_picker != '') {
			$time_picker = date('H:i:s', strtotime($time_picker));
			$order_deadline = $order_deadline.' '.$time_picker;
		}else{
			$time_picker = '00:00:00';
		}


		$id = $this->input->post('id');
		$type = $this->input->post('type');

		if ( $type == 'edit') {
			$this->add_log($id);
		}

		$data_header = [
			'order_type' 		=> $order_type,
			'order_name'		=> $order_name,
			'order_deadline'	=> $order_deadline,
			'order_brief'		=> $order_brief,
			'order_source'		=> $order_source,
			'order_output'		=> $order_output,
			'is_active'			=> 1,
			'edited_by'			=> $this->log_user, 
			'edited_name'		=> $this->log_name, 
			'edited_date'		=> date('Y-m-d H:i:s'),
		];

		if ($type == 'new') {
			$data_header['create_by'] = $this->log_user;
			$data_header['create_name'] = $this->log_name;
			$data_header['create_date'] = date('Y-m-d H:i:s');

			$id = $this->sitemodel->insert($this->table[0], $data_header);
		}else{
			$this->sitemodel->update($this->table[0], $data_header, ['order_id'=>$id]);
		}

		// echo json_encode($item_graphic);die;

		if ($type == 'edit') {
			$this->sitemodel->custom_delete("DELETE FROM tr_item_graphics WHERE order_id = ".$id." AND item_graphics_id NOT IN (".implode(',', $item_graphics_id).") ");
		}

		if ( $item_graphic ) {
			foreach ( $item_graphic as $i => $temp_value){

				foreach ($temp_value as $key => $value) {

					for ( $j = 0; $j < sizeof($item_graphic[$i][$key]); $j++) { 

						$data_detail = [
							'order_id' 						=> $id,
							'item_graphics_category' 		=> str_replace('_', ' ', $i),
							'item_graphics_sub_category' 	=> str_replace('_', ' ', $key),
							'item_graphics_name'			=> $item_graphic[$i][$key][$j]
						];

						$tr_item_graphics = $this->sitemodel->insert($this->table[2], $data_detail);

					}

				}

			}
		}

		for ( $i = 0; $i < sizeof($attachment['name']); $i++) { 
			if ( $attachment['name'][$i] != "" ) {
				$target_dir = 'assets/files/';

				$temp_name = $attachment['name'][$i];
				$ext = explode('.', $temp_name);
				$end = strtolower(end($ext));

				if (!file_exists($target_dir)) {
					mkdir($target_dir, 0777, true);
				}

				$attachment_name = md5($temp_name.date("YmdHis")).".".$end;

				move_uploaded_file($attachment['tmp_name'][$i], $target_dir.$attachment_name);

				$data_attachment = [
					'order_id'			=> $id,
					'attachment_name'	=> $attachment_name,
				];

				$tr_attachment = $this->sitemodel->insert($this->table[1], $data_attachment);
			}
		}
		
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = ($type == 'new' ? "Successfully created order.": "Successfully update order.");
		echo json_encode($this->response);
		exit;
	}

	public function add_log($order_id)
	{
		$check_log = $this->sitemodel->view('vw_order_log', '*', ['order_id'=>$order_id]);
		
		if ( empty($check_log) == FALSE ) {
			$this->sitemodel->delete('tr_order_log', ['order_id'=>$order_id]);
			$this->sitemodel->delete('tr_item_graphics_log', ['order_id'=>$order_id]);
			$this->sitemodel->delete('tr_attachment_log', ['order_id'=>$order_id]);
		}

		$order = $this->sitemodel->view('tr_order', '*', ['order_id'=>$order_id]);
		foreach ($order as $o) {

			$data_header = [
				'order_id'			=> $o->order_id,
				'order_type' 		=> $o->order_type,
				'order_name'		=> $o->order_name,
				'order_deadline'	=> $o->order_deadline,
				'order_brief'		=> $o->order_brief,
				'order_source'		=> $o->order_source,
				'order_output'		=> $o->order_output,
				'is_active'			=> $o->is_active,
				'create_by'			=> $o->create_by,
				'create_name'		=> $o->create_name,
				'create_date'		=> $o->create_date,
				'edited_by'			=> $o->edited_by,
				'edited_name'		=> $o->edited_name,
				'edited_date'		=> $o->edited_date,
			];

			$insert_order = $this->sitemodel->insert('tr_order_log', $data_header);

		}

		$item_graphics = $this->sitemodel->view('tr_item_graphics', '*', ['order_id'=>$order_id]);
		foreach ($item_graphics as $o) {

			$data_header = [
				'item_graphics_id'				=> $o->item_graphics_id,
				'order_id' 						=> $o->order_id,
				'item_graphics_category'		=> $o->item_graphics_category,
				'item_graphics_sub_category'	=> $o->item_graphics_sub_category,
				'item_graphics_name'			=> $o->item_graphics_name,
			];

			$insert_order = $this->sitemodel->insert('tr_item_graphics_log', $data_header);

		}

		$attachment = $this->sitemodel->view('tr_attachment', '*', ['order_id'=>$order_id]);
		foreach ($attachment as $o) {

			$data_header = [
				'attachment_id'		=> $o->attachment_id,
				'order_id' 			=> $o->order_id,
				'attachment_name'	=> $o->attachment_name,
			];

			$insert_order = $this->sitemodel->insert('tr_attachment_log', $data_header);

		}
	}

	public function delete(){
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		/*** Params ***/
		/*** Required Area ***/
		$key = $this->input->post("key");
		/*** Optional Area ***/
		/*** Validate Area ***/
		if ( empty($key) ){$this->response['msg'] = "Invalid parameter.";echo json_encode($this->response);exit;}
		/*** Accessing DB Area ***/
		$check = $this->sitemodel->view('tr_order', '*', ['order_id'=>$key]);
		if (!$check) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		// Delete 
		$this->sitemodel->delete('tr_order', ['order_id'=>$key]);
		$this->sitemodel->delete('tr_item_graphics', ['order_id'=>$key]);
		$this->sitemodel->delete('tr_attachment', ['order_id'=>$key]);

		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully remove data.";
		echo json_encode($this->response);
		exit;
	}

	public function delete_attachment(){
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		/*** Params ***/
		/*** Required Area ***/
		$key = $this->input->post("key");
		/*** Optional Area ***/
		/*** Validate Area ***/
		if ( empty($key) ){$this->response['msg'] = "Invalid parameter.";echo json_encode($this->response);exit;}
		/*** Accessing DB Area ***/
		$check = $this->sitemodel->view('tr_attachment', '*', ['attachment_id'=>$key]);
		if (!$check) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		// Delete 
		$this->sitemodel->delete('tr_attachment', ['attachment_id'=>$key]);
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully remove data.";
		echo json_encode($this->response);
		exit;
	}

}
