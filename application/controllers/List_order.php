<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class List_order extends MY_Controller {

	private $select = "*";
	private $table = ["tr_order", "tr_attachment", "tr_item_graphics", "tr_task_item_graphic", "tr_chat_item_graphic"];

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
			base_url('assets/vendor/daterangepicker/daterangepicker.css'),
		];
		$this->fragment['js'] = [ 
			base_url('assets/vendor/sweetalert2/dist/sweetalert2.min.js'),
			base_url('assets/vendor/select2/dist/js/select2.min.js'),
			base_url('assets/vendor/datatables.net/js/jquery.dataTables.min.js'),
			base_url('assets/vendor/datatables.net-bs4/js/dataTables.bootstrap4.min.js'),
			base_url('assets/vendor/jquery-form/jquery.form.min.js'),
			base_url('assets/vendor/daterangepicker/moment.min.js'),
			base_url('assets/vendor/daterangepicker/daterangepicker.js'),
			base_url('assets/js/pages/list_order.js') 
		];
		$this->fragment['pagetitle'] = 'List New Order';
		$this->fragment['pagename'] = 'pages/list_order_page.php';
		$this->fragment['my_role'] = $this->log_role;

		$data_program = $this->sitemodel->view($this->table[0], 'order_id, order_name');
		$this->fragment['data_program'] = $data_program;

		$data_designer = $this->sitemodel->view('tab_user', '*', ['role_id'=>2]);
		$this->fragment['data_designer'] = $data_designer;

		$temp_order = [];
		$maxDate = date('Y-m-d');
		$minDate = date('Y-m-d', strtotime('-7 day'));

		// echo json_encode($this->input->get());die;

		if ( $this->input->get('date') ) {
			$temp = explode('_', $this->input->get('date'));
			$minDate = $temp[0];
			$maxDate = $temp[1];
		}

		$this->fragment['date_range'] = $minDate.' & '.$maxDate;

		$sql = "SELECT order_id, order_type, order_name, order_deadline, order_brief, order_source, order_output, create_by, create_name, create_date FROM vw_task WHERE";

		if ($this->log_role == 'Designer') {
			$sql.=" order_type = ".$this->log_type." AND";
		}

		$sql .= " SUBSTRING(create_date, 1, 10) >= '".$minDate."' AND SUBSTRING(create_date, 1, 10) <= '".$maxDate."'";

		$temp_p = 0;
		if ( $this->input->get('p') ) {
			$sql .= " AND order_id = " . $this->input->get('p');
			$temp_p = $this->input->get('p');
		}
		$this->fragment['temp_p'] = $temp_p;

		$temp_d = 0;
		if ( $this->input->get('d') ) {
			$sql .= " AND taken_by = " . $this->input->get('d');
			$temp_d = $this->input->get('d');
		}
		$this->fragment['temp_d'] = $temp_d;

		$sql .= " AND is_active = 1 GROUP BY order_id";

		$query_order = $this->sitemodel->custom_query($sql);
		// echo $this->db->last_query();die;
		if ($query_order) {
			foreach ($query_order as $row_order) {
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
						if( empty($row_task->task_id) == FALSE and $row_task->progress < 100 ){
							$active++;
						}
						if( empty($row_task->task_id) == FALSE and $row_task->progress == 100 ){
							$finish++;
						}
						$temp_q3['task_id'] = $row_task->task_id;
						$temp_q3['progress'] = $row_task->progress;
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
				$temp_q1['active_task'] = $active;
				$temp_q1['finish_task'] = $finish;
				$temp_order[] = $temp_q1;
			}
		}
// echo json_encode($temp_order);die;

		$this->fragment['order'] = $temp_order;

		$this->load->view('layout/main-site', $this->fragment);
	}

	public function detail($order_id)
	{
		if (!$this->hasLogin()) {
			redirect('site/login');
		}
		$this->fragment['css'] = [
			base_url('assets/vendor/sweetalert2/dist/sweetalert2.min.css'),
			base_url('assets/vendor/datatables.net-bs4/css/dataTables.bootstrap4.min.css'),
			base_url('assets/vendor/jquery-ui/jquery-ui.css'),
			base_url('assets/vendor/jquery.ganttView/example/reset.css'),
			base_url('assets/vendor/jquery.ganttView/jquery.ganttView.css'),
		];
		$this->fragment['js'] = [ 
			base_url('assets/vendor/sweetalert2/dist/sweetalert2.min.js'),
			base_url('assets/vendor/datatables.net/js/jquery.dataTables.min.js'),
			base_url('assets/vendor/datatables.net-bs4/js/dataTables.bootstrap4.min.js'),
			base_url('assets/vendor/jquery-form/jquery.form.min.js'),
			base_url('assets/vendor/daterangepicker/moment.min.js'),
			base_url('assets/vendor/jquery.ganttView/lib/date.js'),
			base_url('assets/vendor/jquery-ui/jquery-ui.js'),
			base_url('assets/vendor/jquery.ganttView/jquery.ganttView.js'),
			base_url('assets/js/pages/detail_order.js') 
		];
		$this->fragment['pagetitle'] = 'Detail Order';
		$this->fragment['pagename'] = 'pages/detail_order_page.php';

		$temp_order = [];
		$query_order = $this->sitemodel->custom_query("SELECT order_id, order_type, order_name, order_deadline, order_brief, order_source, order_output, create_by, create_name, create_date FROM vw_task WHERE order_id = ".$order_id." GROUP BY order_id");
		if ($query_order) {
			foreach ($query_order as $row_order) {
				$temp_q1 = [];
				$temp_q2 = [];
				$temp_q4 = [];
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
						$temp_q3['task_id'] = $row_task->task_id;
						$temp_q3['progress'] = $row_task->progress;
						$temp_q3['is_active'] = $row_task->is_active;
						$temp_q3['previous'] = $row_task->previous;
						$temp_q3['taken_by'] = $row_task->taken_by;
						$temp_q3['taken_name'] = $row_task->taken_name;
						$temp_q3['taken_date'] = $row_task->taken_date;
						$temp_q2[] = $temp_q3;
					}
				}
				$temp_q1['order_detail'] = $temp_q2;
				$temp_q1['allow_edit'] = 'N';
				if ( $row_order->create_by == $this->log_user ) {
					$temp_q1['allow_edit'] = 'Y';
				}

				$query_attachment = $this->sitemodel->view('tr_attachment', '*', ['order_id'=>$order_id]);
				if ($query_attachment) {
					foreach ($query_attachment as $row_attachment) {
						$temp_q5 = [];
						$temp_q5['attachment_name'] = $row_attachment->attachment_name;
						$temp_q4[] = $temp_q5;
					}
				}

				$temp_q1['attachment'] = $temp_q4;
				$temp_order[] = $temp_q1;
			}
		}
		// echo json_encode($temp_order);die;
		$this->fragment['order'] = $temp_order;
		$this->fragment['order_id'] = $order_id;
		
		$temp_log = [];
		$query_log = $this->sitemodel->view('tr_order_log', '*', ['order_id'=>$order_id]);
		if ( $query_log ) {
			foreach ($query_log as $row_log) {
				$temp_q1 = [];
				$temp_q2 = [];
				$temp_q4 = [];
				$temp_q1['order_id'] = $row_log->order_id;
				$temp_q1['order_type'] = $row_log->order_type;
				$temp_q1['order_name'] = $row_log->order_name;
				$temp_q1['order_deadline'] = $row_log->order_deadline;
				$temp_q1['order_brief'] = $row_log->order_brief;
				$temp_q1['order_source'] = $row_log->order_source;
				$temp_q1['order_output'] = $row_log->order_output;
				$temp_q1['create_by'] = $row_log->create_by;
				$temp_q1['create_name'] = $row_log->create_name;
				$temp_q1['create_date'] = $row_log->create_date;

				$query_detail_log = $this->sitemodel->view('tr_item_graphics_log', '*', ['order_id'=>$order_id]);
				if ($query_detail_log) {
					foreach ($query_detail_log as $row_detail_log) {
						$temp_q3 = [];
						$temp_q3['item_graphics_name'] = $row_detail_log->item_graphics_name;
						$temp_q2[] = $temp_q3;
					}
				}

				$query_attachment_log = $this->sitemodel->view('tr_attachment_log', '*', ['order_id'=>$order_id]);
				if ($query_attachment_log) {
					foreach ($query_attachment_log as $row_attachment_log) {
						$temp_q5 = [];
						$temp_q5['attachment_name'] = $row_attachment_log->attachment_name;
						$temp_q4[] = $temp_q5;
					}
				}

				$temp_q1['item_graphics'] = $temp_q2;
				$temp_q1['attachment'] = $temp_q4;
				$temp_log[] = $temp_q1;
			}
		}
		$this->fragment['log'] = $temp_log;
		// echo json_encode($this->fragment['log']);die;

		$temp_chat = [];
		$query_item = $this->sitemodel->custom_query("SELECT item_graphics_id, item_graphics_category, item_graphics_sub_category, item_graphics_name, task_id, progress, is_active, previous, taken_by, taken_name, taken_date, order_deadline, create_by FROM vw_chat WHERE order_id = ".$order_id." GROUP BY item_graphics_id");
		if ($query_item) {
			foreach ($query_item as $row_item) {
				$temp_q1 = [];
				$temp_q2 = [];
				$temp_q1['item_graphics_id'] = $row_item->item_graphics_id;
				$temp_q1['item_graphics_category'] = $row_item->item_graphics_category;
				$temp_q1['item_graphics_sub_category'] = $row_item->item_graphics_sub_category;
				$temp_q1['item_graphics_name'] = $row_item->item_graphics_name;
				$temp_q1['task_id'] = $row_item->task_id;
				$temp_q1['progress'] = $row_item->progress;
				$temp_q1['is_active'] = $row_item->is_active;
				$temp_q1['previous'] = $row_item->previous;
				$temp_q1['taken_by'] = $row_item->taken_by;
				$temp_q1['taken_name'] = $row_item->taken_name;
				$temp_q1['taken_date'] = $row_item->taken_date;
				$temp_q1['order_deadline'] = $row_item->order_deadline;
				$temp_q1['create_by'] = $row_item->create_by;
				if ($row_item->task_id) {
					$query_chat = $this->sitemodel->custom_query("SELECT chat_id, chat_desc, chat_sender, chat_sender_name, chat_sender_time FROM vw_chat WHERE task_id = ".$row_item->task_id." ORDER BY chat_sender_time ASC");
					if ($query_chat) {
						foreach ($query_chat as $row_chat) {
							$temp_q3 = [];
							$temp_q3['chat_id'] = $row_chat->chat_id;
							$temp_q3['chat_desc'] = $row_chat->chat_desc;
							$temp_q3['chat_sender'] = $row_chat->chat_sender;
							$temp_q3['chat_sender_name'] = $row_chat->chat_sender_name;
							$temp_q3['chat_sender_time'] = $row_chat->chat_sender_time;
							$temp_q2[] = $temp_q3;
						}
					}
				}
				$temp_q1['item_detail'] = $temp_q2;
				$temp_chat[] = $temp_q1;
			}
		}
		$this->fragment['item_chat'] = $temp_chat;

		// echo json_encode($this->fragment);die;

		$this->load->view('layout/main-site', $this->fragment);
	}

	public function view_chart()
	{
		$order_id = $this->input->post('order_id');

		$temp_order = [];
		$query_order = $this->sitemodel->custom_query("SELECT item_graphics_id, item_graphics_name, task_id,  taken_by, taken_name, taken_date FROM vw_task WHERE order_id = ".$order_id." ");
		if ($query_order) {
			foreach ($query_order as $row_order) {
				if ($row_order->task_id) {
					$temp_q1 = [];
					$temp_q2 = [];
					$temp_q3 = [];
					$temp_q1['id'] = $row_order->item_graphics_id;
					$temp_q1['name'] = $row_order->item_graphics_name;
					$temp_q2['name'] = $row_order->taken_name;
					$temp_q2['start'] = date('F d, Y', strtotime($row_order->taken_date));
					$temp_q2['end'] = date('F d, Y');
					$temp_q3[] = $temp_q2;
					$temp_q1['series'] = $temp_q3;
					$temp_order[] = $temp_q1;
				}
			}
		}

		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $temp_order;
		echo json_encode($this->response);
		exit;
	}

	public function get_designer()
	{
// echo json_encode($this->input->post());die;
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
// PARAMS
		$type_id 	= $this->input->post('type_id');
		if ( empty($type_id) ){$this->response['msg'] = "Invalid parameter.";echo json_encode($this->response);exit;}

		$check = $this->sitemodel->view("vw_designer", "*", ['role_id'=>2,'type_id'=>$type_id]);
		if (!$check) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		$temp = [];
		foreach ($check as $row) {
			$sub_temp = [];
			$sub_temp['user_nip'] = '<div class="custom-control custom-radio mb-3">
			<input type="radio" id="'.$row->user_nip.'" name="user_nip" class="custom-control-input" value="'.$row->user_nip.'">
			<label class="custom-control-label" for="'.$row->user_nip.'"></label>
			</div>';
			$sub_temp['user_name'] = $row->user_name;
			$active = $this->sitemodel->view("tr_task_item_graphic", "*", ['taken_by'=>$row->user_nip, 'progress <'=>100] );
			if ( !$active ){
				$sub_temp['active'] = 0;
			}else{
				$sub_temp['active'] = sizeof($active);
			}
			$temp[] = $sub_temp;
		}
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $temp;
		echo json_encode($this->response);
		exit;
	}

	public function set_task()
	{
		// echo json_encode($this->input->post());die;
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}

		$user_nip = $this->input->post('user_nip');
		if ( empty($user_nip) ){$this->response['msg'] = "Invalid parameter.";echo json_encode($this->response);exit;}

		$type = $this->input->post('type');
		if ( empty($type) ){$this->response['msg'] = "Invalid parameter.";echo json_encode($this->response);exit;}

		$check_designer = $this->sitemodel->view("vw_designer", "*", ['user_nip'=>$user_nip]);
		if (!$check_designer) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		$taken_name = '';
		foreach ($check_designer as $cd) {
			$taken_name = strtoupper($cd->user_name);
		}

		if ($type == 'new') {
			$item_graphics_id = $this->input->post('id');

			$data = [
				'item_graphics_id'	=> $item_graphics_id,
				'progress'			=> 0,
				'is_active'			=> 1,
				'taken_by'			=> $user_nip,
				'taken_name'		=> $taken_name,
				'taken_date'		=> date('Y-m-d H:i:s')
			];
			$result = $this->sitemodel->insert($this->table[3], $data);
		}else{
			$task_id = $this->input->post('id');
			$check_task = $this->sitemodel->view('vw_list_task', '*', ['task_id'=>$task_id]);
			// echo json_encode($check_task);die;
			foreach ($check_task as $ct) {
				$data = [
					'previous'		=> $ct->taken_by,
					'taken_by'		=> $user_nip,
					'taken_name'	=> $taken_name,
					'taken_date'	=> date('Y-m-d H:i:s'),
				];
				$result = $this->sitemodel->update($this->table[3], $data, ['task_id'=>$task_id]);
			}
		}

		$data_notification = [
			'notification_for' 		=> $user_nip,
			'notification_message'	=> $this->log_name. ' menambahkan pekerjaan',
			'notification_status' 	=> 0,
			'created_by' 			=> $this->log_user,
			'created_name' 			=> $this->log_name,
			'created_date' 			=> date('Y-m-d H:i:s'),
		];

		$result_notification = $this->sitemodel->insert('tab_notification', $data_notification);

		$check_email = $this->sitemodel->view('tab_user', '*', ['user_nip'=>$user_nip]);
		foreach ($check_email as $ce) {
			$subject = "Graphic Application - New Notification";	
			$data_email['email']['id'] = $ce->user_email;
			$data_email['email']['content'] = $ce->user_name . ', You have notification. <br><br> '.$data_notification['notification_message'].'. <br><br>Please check your application.';
			$data_email['page'] = 'email/pages/body_page.php';
			$content = $this->load->view('email/layout/main-site', $data_email, true);
			$isSent = sendEmail($ce->user_email, $subject, $content, "Graphic Application");
			if (! $isSent) {
				$this->response['msg'] = "Oops, we failed to send email";
				echo json_encode($this->response);
				exit;
			}
		}
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully set job.";
		echo json_encode($this->response);
		exit;
	}

	public function progress_form()
	{
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
		$check = $this->sitemodel->view("tr_task_item_graphic", "*", ["task_id"=>$key]);
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
		$item_graphics_id 	= $this->input->post('key');
		$data = [
			'item_graphics_id'	=> $item_graphics_id,
			'progress'			=> 0,
			'is_active'			=> 1,
			'taken_by'			=> $this->log_user,
			'taken_name'		=> $this->log_name,
			'taken_date'		=> date('Y-m-d H:i:s')
		];
		$result = $this->sitemodel->insert($this->table[3], $data);

		$create_by = 0;
		$item_graphics_name = '';
		$q1 = $this->sitemodel->view("vw_task", "*", ['item_graphics_id'=>$item_graphics_id]);
		foreach ($q1 as $row) {
			$create_by = $row->create_by;
			$item_graphics_name = $row->item_graphics_name;
		}

		$data_notification = [
			'notification_for' => $create_by,
			'notification_message'	=> 'Item '.$item_graphics_name.' telah diambil oleh '.$data['taken_name'],
			'notification_status' => 0,
			'created_by' => $this->log_user,
			'created_name' => $this->log_name,
			'created_date' => date('Y-m-d H:i:s'),
		];

		$result_notification = $this->sitemodel->insert('tab_notification', $data_notification);

		$check_email = $this->sitemodel->view('tab_user', '*', ['user_nip'=>$create_by]);
		foreach ($check_email as $ce) {
		# send email
			$subject = "Graphic Application - New Notification";	
			$data_email['email']['id'] = $ce->user_email;
			$data_email['email']['content'] = $ce->user_name . ', You have notification. <br><br> '.$data_notification['notification_message'].'. <br><br>Please check your application.';
			$data_email['page'] = 'email/pages/body_page.php';
			$content = $this->load->view('email/layout/main-site', $data_email, true);
			// echo json_encode($content);die;
			$isSent = sendEmail($ce->user_email, $subject, $content, "Graphic Application");
			if (! $isSent) {
				$this->response['msg'] = "Oops, we failed to send email";
				echo json_encode($this->response);
				exit;
			}
		}

		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully take this job.";
		echo json_encode($this->response);
		exit;
	}

	public function update()
	{
		$total_finish = 0;
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
// PARAMS
		$progress 	= $this->input->post('progress');
		$task_id 	= $this->input->post('task_id');
		$data = [
			'progress'			=> $progress,
		];
		if ($progress == 100) {
			$data['finish_date'] = date('Y-m-d H:i:s');
		}
		$result = $this->sitemodel->update($this->table[3], $data, ['task_id'=>$task_id]);

		$query_check = $this->sitemodel->custom_query("SELECT order_id FROM vw_task WHERE task_id = ".$task_id." ");
		if ($query_check) {
			foreach ($query_check as $row) {
				$q1 = $this->sitemodel->custom_query("SELECT * FROM tr_item_graphics WHERE order_id = ".$row->order_id." ");
				$total_task = sizeof($q1);

				$q2 = $this->sitemodel->custom_query("SELECT task_id FROM vw_task WHERE order_id = ".$row->order_id." AND progress = 100 ");
				if ($q2) {
					$total_finish = sizeof($q2);
				}

				if ($total_task == $total_finish) {
					$update = [
						'is_active' => 0,
						'edited_date' => date('Y-m-d H:i:s')
					];
					$query_update = $this->sitemodel->update($this->table[0], $update, ['order_id'=>$row->order_id]);
				}
			}
		}

		$create_by = 0;
		$item_graphics_name = '';
		$q1 = $this->sitemodel->view("vw_task", "*", ['task_id'=>$task_id]);
		foreach ($q1 as $row) {
			$create_by = $row->create_by;
			$item_graphics_name = $row->item_graphics_name;
		}

		$data_notification = [
			'notification_for' => $create_by,
			'notification_message'	=> 'Item '.$item_graphics_name.' mengalami peningkatan',
			'notification_status' => 0,
			'created_by' => $this->log_user,
			'created_name' => $this->log_name,
			'created_date' => date('Y-m-d H:i:s'),
		];

		$result_notification = $this->sitemodel->insert('tab_notification', $data_notification);

		$check_email = $this->sitemodel->view('tab_user', '*', ['user_nip'=>$create_by]);
		foreach ($check_email as $ce) {
		# send email
			$subject = "Graphic Application - New Notification";	
			$data_email['email']['id'] = $ce->user_email;
			$data_email['email']['content'] = $ce->user_name . ', You have notification. <br><br> '.$data_notification['notification_message'].'. <br><br>Please check your application.';
			$data_email['page'] = 'email/pages/body_page.php';
			$content = $this->load->view('email/layout/main-site', $data_email, true);
			// echo json_encode($content);die;
			$isSent = sendEmail($ce->user_email, $subject, $content, "Graphic Application");
			if (! $isSent) {
				$this->response['msg'] = "Oops, we failed to send email";
				echo json_encode($this->response);
				exit;
			}
		}

		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully update progress.";
		echo json_encode($this->response);
		exit;
	}

	public function send_message()
	{
		// echo json_encode($this->input->post());die;
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
// PARAMS
		$html = '';
		$task_id 	= $this->input->post('task_id');
		$chat_desc 	= $this->input->post('chat_desc');

		$data = [
			'task_id'			=> $task_id,
			'chat_desc'			=> $chat_desc,
			'chat_sender'		=> $this->log_user,
			'chat_sender_name'	=> $this->log_name,
			'chat_sender_time'	=> date('Y-m-d H:i:s')
		];
		$chat_id = $this->sitemodel->insert($this->table[4], $data);

		$item = $this->sitemodel->view($this->table[4], '*', ['chat_id'=>$chat_id]);
		if ($item) {
			foreach ($item as $row) {
				$class = ( $row->chat_sender == $this->log_user ? 'speech-right' : '' );
				$html .= '<li class="mar-btm">
				<div class="media-body pad-hor '.$class.'">
				<div class="speech">
				<a href="javascript:void(0)" class="media-heading">'.$row->chat_sender_name.'</a>
				<p>'.$row->chat_desc.'</p>
				<p class="speech-time">
				<i class="fa fa-clock-o fa-fw"></i>'.date('H:i:s', strtotime($row->chat_sender_time)).'
				</p>
				</div>
				</div>
				</li>';
			}
		}

		$notification_for = '';
		$q1 = $this->sitemodel->view("vw_task", "*", ['task_id'=>$task_id]);
		foreach ($q1 as $row) {
			if ( $this->log_user == $row->create_by ) {
				$notification_for = $row->taken_by;
			}
			if ( $this->log_user == $row->taken_by ) {
				$notification_for = $row->create_by;
			}
		}

		$data_notification = [
			'notification_for' 		=> $notification_for,
			'notification_message'	=> $this->log_name. ' mengirimkan pesan',
			'notification_status' 	=> 0,
			'created_by' 			=> $this->log_user,
			'created_name' 			=> $this->log_name,
			'created_date' 			=> date('Y-m-d H:i:s'),
		];

		$result_notification = $this->sitemodel->insert('tab_notification', $data_notification);

		$check_email = $this->sitemodel->view('tab_user', '*', ['user_nip'=>$notification_for]);
		foreach ($check_email as $ce) {
		# send email
			$subject = "Graphic Application - New Notification";	
			$data_email['email']['id'] = $ce->user_email;
			$data_email['email']['content'] = $ce->user_name . ', You have notification. <br><br> '.$data_notification['notification_message'].'. <br><br>Please check your application.';
			$data_email['page'] = 'email/pages/body_page.php';
			$content = $this->load->view('email/layout/main-site', $data_email, true);
			// echo json_encode($content);die;
			$isSent = sendEmail($ce->user_email, $subject, $content, "Graphic Application");
			if (! $isSent) {
				$this->response['msg'] = "Oops, we failed to send email";
				echo json_encode($this->response);
				exit;
			}
		}

		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully send message.";
		$this->response['element'] = $html;
		echo json_encode($this->response);
		exit;
	}

}
