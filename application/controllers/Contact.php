<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once APPPATH."libraries/Libcurl.php";
class Contact extends MY_Controller {

	private $primary = "user_nip";
	private $table = "tab_user";
	private $select = "*";
	private $from = ["vw_client", "vw_designer", "vw_admin", "vw_all_user"];
	private $order_by = ["create_date"=>"DESC"];
	private $search = ["user_nip", "role_name", "user_comp", "user_name", "user_email", "user_phone", "role_name", "type_id", "type_name"];
	private $order = ["user_nip", "role_name", "user_comp", "user_name", "user_email", "user_phone", "role_name", "type_id", "type_name"];
	private $additional = ["tab_role"];

	function __construct()
	{
		parent::__construct();
		$this->load->library('guzzle');
	}

	public function index()
	{
		if (!$this->hasLogin()) {
			redirect('site/login');
		}

		$this->fragment['css'] = [
			base_url('assets/vendor/sweetalert2/dist/sweetalert2.min.css'),
			base_url('assets/vendor/select2/dist/css/select2.min.css'),
			base_url('assets/vendor/datatables.net-bs4/css/dataTables.bootstrap4.min.css'),
		];

		$this->fragment['js'] = [ 
			base_url('assets/vendor/sweetalert2/dist/sweetalert2.min.js'),
			base_url('assets/vendor/select2/dist/js/select2.min.js'),
			base_url('assets/vendor/datatables.net/js/jquery.dataTables.min.js'),
			base_url('assets/vendor/datatables.net-bs4/js/dataTables.bootstrap4.min.js'),
			base_url('assets/vendor/jquery-form/jquery.form.min.js'),
			base_url('assets/js/pages/contact.js') 
		];

		$this->fragment['data_role'] = $this->sitemodel->view($this->additional, $this->select, ['role_id !='=>4]);

		$this->fragment['pagetitle'] = 'Contact';
		$this->fragment['pagename'] = 'pages/contact_page.php';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function save_dir()
	{
		$data = $this->guzzle->guzzle_HRIS('department/get');
		$data_2 = json_decode($data);
		// echo json_encode($data_2);die;
		for ( $i = 0; $i < sizeof($data_2->result); $i++) { 
			$data = [
				'dept_name' => $data_2->result[$i]->DEPT_NAME
			];

			$res = $this->sitemodel->insert("tab_department", $data);
		}
	}

	public function search_emp()
	{
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		$term = $this->input->get("term");
		$post = [
			"src"	=> strtoupper($term),
		];
		$curl = new Libcurl("employee", "search-admin");
		$data = $curl->__pages($post);
		$res = [];
		if ( $data )
			$res = $data;
		echo json_encode($res);
		exit;
	}

	public function get_emp_data()
	{
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		$nip = $this->input->post("nip");
		$params = [
			"nip" => $nip
		];
		$data = $this->guzzle->guzzle_HRIS('employee/get', $params);
		$data_employee = json_decode($data);
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $data_employee;
		echo json_encode($this->response);
		exit;
	}


	public function view_contact()
	{
		$a = 1;
		$data = array();
		$res = $this->sitemodel->get_datatable($this->select, $this->from[3], $this->order_by, $this->search, $this->order);
		$temp = $this->db->last_query();
		// echo $temp;die;

		foreach ($res as $row) {
			$col = array();
			$col[] = $a;
			$col[] = $row->user_nip;
			$col[] = $row->user_name;
			$col[] = $row->user_comp;
			$col[] = $row->user_email;
			$col[] = $row->user_phone;
			$col[] = $row->role_name;
			$col[] = $row->type_name;
			$col[] = '<button class="btn btn-sm btn-warning btn-edit" title="Edit" data-id="'.$row->user_nip.'"><i class="ni ni-bullet-list-67"></i></button>&nbsp;<button class="btn btn-sm btn-danger btn-delete" title="Delete" data-id="'.$row->user_nip.'" data-name="'.$row->user_name.'"><i class="ni ni-fat-remove"></i></button>';
			$data[] = $col;
			$a++;
		}
		$output = array(
			"draw" 				=> $_POST['draw'],
			"recordsTotal" 		=> $this->sitemodel->get_datatable_count_all($this->from[3]),
			"recordsFiltered" 	=> $this->sitemodel->get_datatable_count_filtered($this->select, $this->from[3], $this->order_by, $this->search, $this->order),
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
		$check = $this->sitemodel->view($this->from[3], $this->select, [$this->primary=>$key]);
		if (!$check) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $check;
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
		$user_nip 	= $this->input->post('user_nip');
		$role_id 	= $this->input->post('role_id');
		$user_comp  = $this->input->post('user_comp');
		$user_name  = $this->input->post('user_name');
		$user_email = $this->input->post('user_email');
		$user_phone = $this->input->post('user_phone');
		$type_id 	= ($role_id == 1 ? 0 : $this->input->post('type_id'));
		$type 		= $this->input->post('type');
		$id 		= $this->input->post('id');

		$type = ($type == 'update') ? 'update' : 'new';

		$data = [
			'user_nip'		=> $user_nip,
			'role_id'		=> $role_id,
			'user_comp'		=> $user_comp,
			'user_name'		=> $user_name,
			'user_email'	=> $user_email,
			'user_phone'	=> $user_phone,
			'type_id'		=> $type_id,
			'edited_by'		=> $this->log_user, 
			'edited_name'	=> $this->log_name, 
			'edited_date'	=> date('Y-m-d H:i:s'),
		];

		if ($type == 'new') {
			$data['create_by'] = $this->log_user;
			$data['create_name'] = $this->log_name;
			$data['create_date'] = date('Y-m-d H:i:s');
		}

		if ($type == 'update') {
			$this->sitemodel->update($this->table, $data, [$this->primary=>$id]);
		}else{
			$check = $this->sitemodel->view($this->from[3], $this->select, [$this->primary=>$user_nip]);
			if ($check) {$this->response['msg'] = "User already added.";echo json_encode($this->response);exit;}
			$id = $this->sitemodel->insert($this->table, $data);
		}

		if ( $role_id == 1 ) {
			$nav_id = [3, 6];

			$this->sitemodel->delete('tab_uac', ["user_id"=>$id]);
			for ( $i = 0; $i < sizeof($nav_id); $i++) { 
				
				$data_uac = [
					'user_id' => $id,
					'nav_id'  => $nav_id[$i],
					'create_date' => date('Y-m-d H:i:s'),
					'create_by'   => $this->log_user,
				];

				$check_uac = $this->sitemodel->view('vw_uac', '*', ['user_id'=>$id, 'nav_id'=>$nav_id[$i]]);
				if ( !$check_uac ) {
					$uac = $this->sitemodel->insert('tab_uac', $data_uac);
				}
			}
		}
		else if ($role_id == 2) {
			$nav_id = [3, 4, 6];

			$this->sitemodel->delete('tab_uac', ["user_id"=>$id]);
			for ( $i = 0; $i < sizeof($nav_id); $i++) { 
				
				$data_uac = [
					'user_id' => $id,
					'nav_id'  => $nav_id[$i],
					'create_date' => date('Y-m-d H:i:s'),
					'create_by'   => $this->log_user,
				];

				$check_uac = $this->sitemodel->view('vw_uac', '*', ['user_id'=>$id, 'nav_id'=>$nav_id[$i]]);
				if ( !$check_uac ) {
					$uac = $this->sitemodel->insert('tab_uac', $data_uac);
				}
			}
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
		$check = $this->sitemodel->view($this->from[3], $this->select, [$this->primary=>$key]);
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
