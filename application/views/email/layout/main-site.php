<?php if ( !defined('BASEPATH') )exit('No direct script access allowed');
$this->load->view('email/layout/layout-top');
$this->load->view($page);
$this->load->view('email/layout/layout-bot'); ?>