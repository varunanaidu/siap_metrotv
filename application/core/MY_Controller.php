<?php if ( !defined('BASEPATH') )exit('No direct script access allowed');

class MY_Controller extends CI_Controller{

	protected $fragment  = [];
	protected $response  = [];

	protected $log_user  = '';
	protected $log_name  = '';
	protected $log_email = '';
	protected $log_role  = '';
	protected $log_type  = 0;
	
	function __construct(){
		parent::__construct();
		date_default_timezone_set('Asia/Jakarta');
		
		if ($this->hasLogin()) {
			$this->log_user = strtoupper($this->session->userdata(SESS)->log_user);
			$this->log_name = strtoupper($this->session->userdata(SESS)->log_name);
			$this->log_email = $this->session->userdata(SESS)->log_email;
			$check = $this->sitemodel->view("vw_all_user", "*", ["user_nip"=>$this->log_user]);
			if( !$check ){

				$data_user = [
					'user_nip'		=> $this->log_user,
					'role_id'		=> 1,
					'type_id'		=> 0,
					'user_comp'		=> '',
					'user_name'		=> $this->log_name,
					'user_email'	=> $this->log_email,
					'user_phone'	=> '',
					'create_by'		=> 9999999,
					'create_name'	=> 'Developer Metro TV',
					'create_date'	=> date('Y-m-d H:i:s'),
					'edited_by'		=> 9999999,
					'edited_name'	=> 'Developer Metro TV',
					'edited_date'	=> date('Y-m-d H:i:s'),
				];

				$insert = $this->sitemodel->insert('tab_user', $data_user);

				$nav = $this->sitemodel->custom_query(" SELECT * FROM tab_nav WHERE nav_id IN(3, 6) ");
				foreach ($nav as $n) {
					$data_nav = [
						'user_id'		=> $this->log_user,
						'nav_id'		=> $n->nav_id,
						'create_date'	=> date('Y-m-d H:i:s'),
						'create_by'		=> 9999999,
					];
					$insert_nav = $this->sitemodel->insert('tab_uac', $data_nav);
				}

				$this->log_role = "Client";
				$this->fragment['list_menu'] = $this->sitemodel->custom_query(" SELECT * FROM vw_nav WHERE nav_id = 3  ORDER BY nav_order ASC");
				$this->fragment['additional_menu'] = $this->sitemodel->custom_query(" SELECT * FROM vw_nav WHERE nav_id = 6  ORDER BY nav_order ASC");
			}else{
				foreach ($check as $row) {
					$this->log_role = $row->role_name;
					$this->log_type = $row->type_id;
				}
				$this->fragment['list_menu'] = $this->sitemodel->custom_query(" SELECT * FROM vw_uac WHERE user_id = ".$this->log_user." AND nav_id != 6  ORDER BY nav_order ASC");
				$this->fragment['additional_menu'] = $this->sitemodel->custom_query(" SELECT * FROM vw_uac WHERE user_id = ".$this->log_user." AND nav_id = 6  ORDER BY nav_order ASC");
			}
		}

		$total = 0;
		$q1 = $this->sitemodel->view('tab_notification', '*', ['notification_for'=>$this->log_user, 'notification_status'=>0], NULL, 'created_date DESC');
		if ( $q1 ) {
			$total = sizeof($q1);
		}
		$this->fragment['data_notification'] = $this->sitemodel->view('tab_notification', '*', ['notification_for'=>$this->log_user, 'notification_status'=>0], NULL, 'created_date DESC');
		$this->fragment['total_notif'] = $total;
	}
	
	function hasLogin() {
		return $this->session->userdata(SESS);
	}

	function compress_image($source_url, $destination_url, $quality) {
		$info = getimagesize($source_url);

		if ($info['mime'] == 'image/jpeg')
			$image = imagecreatefromjpeg($source_url);
		elseif ($info['mime'] == 'image/gif')
			$image = imagecreatefromgif($source_url);
		elseif ($info['mime'] == 'image/png')
			$image = imagecreatefrompng($source_url);
		imagejpeg($image, $destination_url, $quality);

		return true;
	}
}