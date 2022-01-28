<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Navigation extends MY_Controller {

	private $primary = "nav_id";
	private $table = "tab_nav";
	private $select = "*";
	private $from = "vw_nav";
	private $order_by = ["nav_order"=>"ASC"];
	private $search = ["nav_id", "nav_name", "nav_ctr", "nav_order"];
	private $order = ["nav_id", "nav_name", "nav_ctr", "nav_order"];

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
			base_url('assets/js/pages/navigation.js') 
		];
		$this->fragment['pagetitle'] = 'Navigation';
		$this->fragment['pagename'] = 'pages/navigation_page.php';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function view_nav()
	{
		$a = 1;
		$data = array();
		$res = $this->sitemodel->get_datatable($this->select, $this->from, $this->order_by, $this->search, $this->order);
		$temp = $this->db->last_query();
		// echo $temp;die;

		foreach ($res as $row) {
			$col = array();
			$col[] = $a;
			$col[] = $row->nav_name;
			$col[] = $row->nav_ctr;
			$col[] = $row->nav_order;
			$col[] = '<button class="btn btn-sm btn-warning btn-edit" title="Edit" data-id="'.$row->nav_id.'>"><i class="ni ni-bullet-list-67"></i></button>&nbsp;<button class="btn btn-sm btn-danger btn-delete" title="Delete" data-id="'.$row->nav_id.'>" data-name="'.$row->nav_name.'"><i class="ni ni-fat-remove"></i></button>';
			$data[] = $col;
			$a++;
		}
		$output = array(
			"draw" 				=> $_POST['draw'],
			"recordsTotal" 		=> $this->sitemodel->get_datatable_count_all($this->from),
			"recordsFiltered" 	=> $this->sitemodel->get_datatable_count_filtered($this->select, $this->from, $this->order_by, $this->search, $this->order),
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
		$key = $this->input->post("key");
		/*** Optional Area ***/
		/*** Validate Area ***/
		if ( empty($key) ){$this->response['msg'] = "Invalid parameter.";echo json_encode($this->response);exit;}
		/*** Accessing DB Area ***/
		$check = $this->sitemodel->view($this->from, $this->select, [$this->primary=>$key]);
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
		$nav_name 	= $this->input->post('nav_name');
		$nav_ctr 	= $this->input->post('nav_ctr');
		$nav_order  = $this->input->post('nav_order');
		$nav_icon  = $this->input->post('nav_icon');
		$type 		= $this->input->post('type');
		$id 		= $this->input->post('id');

		$type = ($type == 'update') ? 'update' : 'new';

		$data = [
			'nav_name' 		=> $nav_name,
			'nav_ctr'		=> $nav_ctr,
			'nav_order'		=> $nav_order,
			'nav_icon'		=> $nav_icon,
			'edited_date'	=> date('Y-m-d H:i:s'),
			'edited_by'		=> $this->log_user, 
		];

		if ($type == 'new') {
			$data['create_date'] = date('Y-m-d H:i:s');
			$data['create_by'] = $this->log_user;
		}

		if ($type == 'update') {
			$this->sitemodel->update($this->table, $data, [$this->primary=>$id]);
		}else{
			$result = $this->sitemodel->insert($this->table, $data);
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
		/*** Optional Area ***/
		/*** Validate Area ***/
		if ( empty($key) ){$this->response['msg'] = "Invalid parameter.";echo json_encode($this->response);exit;}
		/*** Accessing DB Area ***/
		$check = $this->sitemodel->view($this->from, $this->select, ['nav_id'=>$key]);
		if (!$check) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		// Delete 
		$this->sitemodel->delete($this->table, [$this->primary=>$key]);
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully remove data.";
		echo json_encode($this->response);
		exit;
	}

}
