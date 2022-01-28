<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once APPPATH."libraries/Libcurl.php";
class Uac extends MY_Controller {

	private $primary = "user_id";
	private $table = "tab_uac";
	private $select = "*";
	private $from = "vw_uac";
	private $order_by = ["create_date"=>"DESC"];
	private $search = ["user_id", "nav_id", "create_by", "create_date"];
	private $order = ["user_id", "nav_id", "create_by", "create_date"];

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
			base_url('assets/vendor/select2/dist/css/select2.min.css'),
			base_url('assets/vendor/datatables.net-bs4/css/dataTables.bootstrap4.min.css'),
		];
		$this->fragment['js'] = [ 
			base_url('assets/vendor/sweetalert2/dist/sweetalert2.min.js'),
			base_url('assets/vendor/select2/dist/js/select2.min.js'),
			base_url('assets/vendor/datatables.net/js/jquery.dataTables.min.js'),
			base_url('assets/vendor/datatables.net-bs4/js/dataTables.bootstrap4.min.js'),
			base_url('assets/vendor/jquery-form/jquery.form.min.js'),
			base_url('assets/js/pages/uac.js') 
		];
		$this->fragment['pagetitle'] = 'Uac';
		$this->fragment['pagename'] = 'pages/uac_page.php';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function search_emp()
	{
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		$term = $this->input->get("term");
		$check = $this->sitemodel->custom_query("SELECT * FROM tab_user WHERE user_nip LIKE '%".$term."%' OR user_name LIKE '%".$term."%' ");
		if (!$check) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}

		/*$post = [
			"src"	=> strtoupper($term),
		];
		$curl = new Libcurl("employee", "search-admin");
		$data = $curl->__pages($post);*/
		$res = [];
		foreach ($check as $row) {
			$temp = [];
			$temp['id'] = $row->user_nip;
			$temp['text'] = $row->user_nip.' - '.$row->user_name;
			$res[] = $temp;
		}
		echo json_encode($res);
		exit;
	}


	public function setup()
	{
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameter.";echo json_encode($this->response);exit;}
		/*** Params ***/
		/*** Required Area ***/
		$key = $this->input->post("key");
		/*** Optional Area ***/
		/*** Validate Area ***/
		$html = '<div class="table-responsive"><table class="table table-bordered table-striped">
		<thead>
		<tr>
		<th>#</th>
		<th>Navigation</th>
		<th><i class="fa fa-cog"></i></th>
		</tr>
		</thead>
		<tbody>
		';

		$cekNav = $this->sitemodel->view('vw_nav', '*');

		if ($cekNav) {
			$a = 1;
			foreach ($cekNav as $row) {
				$checked  = '';
				$cekUac = $this->sitemodel->view($this->from, $this->select, ["user_id"=>$key, "nav_id"=>$row->nav_id]);
				if ($cekUac) {
					$checked = 'checked="checked" ';
				}
				$html .= '<tr>
				<td>' . $a . '</td>
				<td>' . $row->nav_name . '</td>
				<td> <input type="checkbox" name="ckbox[]" value="'.$row->nav_id.'" '.$checked.' > </td>
				</tr>';
				$a++;
			}
		}

		$html .= '</tbody></table></div>';
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $html;
		echo json_encode($this->response);
		exit;
	}

	public function save()
	{
		// echo json_encode($this->input->post());die;
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameter.";echo json_encode($this->response);exit;}
		/*** Params ***/
		/*** Required Area ***/
		$user = $this->input->post("user");
		$ckbox = $this->input->post("ckbox");
		/*** Optional Area ***/
		/*** Validate Area ***/
		if ( empty($user) ){$this->response['msg'] = "Please choose user.";echo json_encode($this->response);exit;}
		/*** Accessing DB Area ***/
		$this->sitemodel->delete($this->table, ["user_id"=>$user]);
		for($i = 0; $i < count($ckbox); $i++){
			$exp = explode(";", $ckbox[$i]);
			if ( count($exp) > 1 ){
				$find = $this->sitemodel->view($this->from, $this->select, ["user_id"=>$user, "nav_id"=>$exp[0]]);
				if ( !$find ){
					$data = [
						"user_id"	=> $user,
						"nav_id"	=> $exp[0],
						"create_date"=> date("Y-m-d H:i:s"),
						"create_by"=> $this->user->getNip()
					];
					$this->sitemodel->insert($this->table, $data);
				}
				$data = [
					"user_id"	=> $user,
					"nav_id"	=> $exp[1],
					"create_date"=> date("Y-m-d H:i:s"),
					"create_by"=> $this->user->getNip()
				];
				$this->sitemodel->insert($this->table, $data);
			}
			else{
				$data = [
					"user_id"	=> $user,
					"nav_id"	=> $ckbox[$i],
					"create_date"=> date("Y-m-d H:i:s"),
					"create_by"=> $this->user->getNip()
				];
				$this->sitemodel->insert($this->table, $data);
			}
		}
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully setup user.";
		echo json_encode($this->response);
		exit;
	}

}
