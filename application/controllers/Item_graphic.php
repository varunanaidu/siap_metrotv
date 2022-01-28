<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Item_graphic extends MY_Controller {

	private $primary = ["infographic_id", "graphic_design_id", "immersive_id", "operational_id", "motion_graphic_id", "set_landscape_id", "web_designer_id", "item_graphic_id", "item_score_id"];
	private $table = ["tab_infographic", "tab_graphic_design", "tab_immersive", "tab_operational", "tab_motion_graphic", "tab_set_landscape", "tab_web_designer", "tab_item_graphic", "tab_score_item"];
	private $select = "*";
	private $from = ["vw_item_graphic", "vw_score_item_graphic"];
	private $order_by = ["item_graphic_id"=>"ASC"];
	private $search = ["item_graphic_id", "item_graphic_name", "type_name", "item_graphic_category", "item_graphic_sub_category", "item_score_count"];
	private $order = ["item_graphic_id", "item_graphic_name", "type_name", "item_graphic_category", "item_graphic_sub_category", "item_score_count"];

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
		];
		$this->fragment['js'] = [ 
			base_url('assets/vendor/sweetalert2/dist/sweetalert2.min.js'),
			base_url('assets/vendor/datatables.net/js/jquery.dataTables.min.js'),
			base_url('assets/vendor/datatables.net-bs4/js/dataTables.bootstrap4.min.js'),
			base_url('assets/vendor/jquery-form/jquery.form.min.js'),
			base_url('assets/js/pages/item_graphic.js') 
		];

		$this->fragment['data_type'] = $this->sitemodel->view('tab_type', '*');
		$this->fragment['pagetitle'] = 'Item Graphic';
		$this->fragment['pagename'] = 'pages/item_graphic_page.php';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function view_item_graphic()
	{
		$a = 1;
		$data = array();
		$res = $this->sitemodel->get_datatable($this->select, $this->from[1], $this->order_by, $this->search, $this->order);
		$temp = $this->db->last_query();
		// echo $temp;die;

		foreach ($res as $row) {
			$col = array();
			$col[] = $a;
			$col[] = $row->item_graphic_name;
			$col[] = $row->type_name;
			$col[] = $row->item_graphic_category;
			$col[] = $row->item_graphic_sub_category;
			$col[] = $row->item_score_count;
			$col[] = '<button class="btn btn-sm btn-warning btn-edit" title="Edit" data-id="'.$row->item_graphic_id.'" data-item_score_id="'.$row->item_score_id.'"><i class="ni ni-bullet-list-67"></i></button>&nbsp;<button class="btn btn-sm btn-danger btn-delete" title="Delete" data-id="'.$row->item_graphic_id.'" data-item_score_id="'.$row->item_score_id.'" data-name="'.$row->item_graphic_name.'"><i class="ni ni-fat-remove"></i></button>';
			$data[] = $col;
			$a++;
		}
		$output = array(
			"draw" 				=> $_POST['draw'],
			"recordsTotal" 		=> $this->sitemodel->get_datatable_count_all($this->from[1]),
			"recordsFiltered" 	=> $this->sitemodel->get_datatable_count_filtered($this->select, $this->from[1], $this->order_by, $this->search, $this->order),
			"data" 				=> $data,
			"q"					=> $temp //temp for tracing db query

		);
		echo json_encode($output);
		exit;
	}


	function find(){
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		/*** Params ***/
		/*** Required Area ***/
		$item_graphic_id = $this->input->post("item_graphic_id");
		$key = $this->input->post("key");
		$type = $this->input->post("type");
		/*** Validate Area ***/
		if ( empty($item_graphic_id) ){$this->response['msg'] = "Invalid parameter.";echo json_encode($this->response);exit;}
		/*** Accessing DB Area ***/
		$check = $this->sitemodel->view($this->from[1], $this->select, [$this->primary[7]=>$item_graphic_id]);
		if (!$check) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $check;
		echo json_encode($this->response);
		exit;
	}

	public function save()
	{
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		// PARAMS
		$type_id 					= $this->input->post('type_id');
		$item_graphic_category 		= $this->input->post('item_graphic_category');
		$item_graphic_sub_category 	= $this->input->post('item_graphic_sub_category');
		$item_graphic_name 			= $this->input->post('item_graphic_name');
		$item_score_count 			= $this->input->post('item_score_count');
		$item_graphic_desc 			= $this->input->post('item_graphic_desc');

		$item_graphic_id 			= $this->input->post('id');
		$item_score_id 				= $this->input->post('item_score_id');
		$type 						= $this->input->post('type');

		$type = ($type == 'update') ? 'update' : 'new';

		$data = [
			'type_id'					=> $type_id,
			'item_graphic_category'		=> $item_graphic_category,
			'item_graphic_sub_category'	=> $item_graphic_sub_category,
			'item_graphic_name'			=> $item_graphic_name,
			'item_graphic_desc'			=> $item_graphic_desc,
			'edited_by'					=> $this->log_user,
			'edited_name'				=> $this->log_name,
			'edited_date'				=> date('Y-m-d H:i:s')
		];
		
		if ($type == 'new') {
			$data['create_by'] = $this->log_user;
			$data['create_name'] = $this->log_name;
			$data['create_date'] = date('Y-m-d H:i:s');
		}

		if ($type == 'update') {
			$result = $this->sitemodel->update($this->table[7], $data, [$this->primary[7]=>$item_graphic_id]);

			$data_score = [
				'item_graphic_id' 	=> $item_graphic_id,
				'item_score_count'	=> $item_score_count,
				'edited_by'			=> $this->log_user,
				'edited_name'		=> $this->log_name,
				'edited_date'		=> date('Y-m-d H:i:s')
			];

			$result2 = $this->sitemodel->update($this->table[8], $data_score, [$this->primary[8]=>$item_score_id]);

		}else{
			$result = $this->sitemodel->insert($this->table[7], $data);

			$data_score = [
				'item_graphic_id' 	=> $result,
				'item_score_count'	=> $item_score_count,
				'create_by'			=> $this->log_user,
				'create_name'		=> $this->log_name,
				'create_date'		=> date('Y-m-d H:i:s'),
				'edited_by'			=> $this->log_user,
				'edited_name'		=> $this->log_name,
				'edited_date'		=> date('Y-m-d H:i:s')
			];

			$result2 = $this->sitemodel->insert($this->table[8], $data_score);
		}
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = ($type == "update") ? "Successfully modified data." : "Successfully insert data.";
		echo json_encode($this->response);
		exit;
	}

	function delete(){
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		/*** Params ***/
		/*** Required Area ***/
		$key = $this->input->post("key");
		$type = $this->input->post("type");
		/*** Optional Area ***/
		/*** Validate Area ***/
		if ( empty($key) ){$this->response['msg'] = "Invalid parameter.";echo json_encode($this->response);exit;}
		/*** Accessing DB Area ***/
		$this->sitemodel->delete($this->table[7], [$this->primary[7]=>$key]);
		$this->sitemodel->delete($this->table[8], [$this->primary[7]=>$key]);
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully remove data.";
		echo json_encode($this->response);
		exit;
	}

}
