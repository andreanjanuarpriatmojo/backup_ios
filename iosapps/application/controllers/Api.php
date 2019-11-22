<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';

class Api extends REST_Controller {
	
	public function __construct() {
		parent::__construct();
		// if($this->session->userdata('authenticated')){
		// 	redirect(base_url('auth'));
		// }
		// else {
		// 	redirect('auth');
		// }
		$this->load->model('M_user');
		$this->load->model('M_perangkat');
	}

	public function user_get() {
		$response = $this->M_user->get_all();
		$this->response($response);
	}

	public function user_post() {
		$pass = $this->post('password');
		$newpass = md5($pass);

		$data = array(
			"name"=>$this->post('name'),
			"password"=>$newpass,
			"role"=>$this->post('role')
		);

		$response = $this->M_user->save($data);
		$this->response($response);
	}

	public function login_post() {
		$data = array (
			"name"=>$this->post('name'),
			"password"=>md5($this->post('password'))
		);
		$user = $this->M_user->login($data);
		$this->response($user);
	}

	public function login_get() {
		$response = $this->M_user->get_login();
		$this->response($response);
	}

	public function delete_tmp_post() {
		$response = $this->M_user->delete_tmp();
		$this->response($response);
	}

	public function grapari_post() {
		$name = "TEST";
		$table = "grapari";
		$data = array (
			"site"=>$this->post('site'),
			"router_status"=>$this->post('router_status'),
			"router_remark"=>$this->post('router_remark'),
			"switch_status"=>$this->post('switch_status'),
			"switch_remark"=>$this->post('switch_remark'),
			"wlc_status"=>$this->post('wlc_status'),
			"wlc_remark"=>$this->post('wlc_remark'),
			"access_point_status"=>$this->post('access_point_status'),
			"access_point_remark"=>$this->post('access_point_remark'),
			"unit_ups_status"=>$this->post('unit_ups_status'),
			"unit_ups_remark"=>$this->post('unit_ups_remark'),
			"grounding_status"=>$this->post('grounding_status'),
			"grounding_remark"=>$this->post('grounding_remark'),
			"fingerprint_status"=>$this->post('fingerprint_status'),
			"fingerprint_remark"=>$this->post('fingerprint_remark'),
			"cctv_status"=>$this->post('cctv_status'),
			"cctv_remark"=>$this->post('cctv_remark'),
			"temperature_status"=>$this->post('temperature_status'),
			"temperature_remark"=>$this->post('temperature_remark'),
			"humidity_status"=>$this->post('humidity_status'),
			"humidity_remark"=>$this->post('humidity_remark'),
			"kebersihan_status"=>$this->post('kebersihan_status'),
			"kebersihan_remark"=>$this->post('kebersihan_remark'),
			"kerapihan_status"=>$this->post('kerapihan_status'),
			"kerapihan_remark"=>$this->post('kerapihan_remark'),
			"izone_status"=>$this->post('izone_status'),
			"izone_download"=>$this->post('izone_download'),
			"izone_upload"=>$this->post('izone_upload'),
			"izone_latency"=>$this->post('izone_latency'),
			"tws_status"=>$this->post('tws_status'),
			"tws_download"=>$this->post('tws_download'),
			"tws_upload"=>$this->post('tws_upload'),
			"tws_latency"=>$this->post('tws_latency'),
			"corporate_status"=>$this->post('corporate_status'),
			"corporate_download"=>$this->post('corporate_download'),
			"corporate_upload"=>$this->post('corporate_upload'),
			"corporate_latency"=>$this->post('corporate_latency'),
			"myq_status"=>$this->post('myq_status'),
			"myq_remark"=>$this->post('myq_remark'),
			"mygrapari_status"=>$this->post('mygrapari_status'),
			"mygrapari_remark"=>$this->post('mygrapari_remark'),
			"printer_status"=>$this->post('printer_status'),
			"printer_remark"=>$this->post('printer_remark'),
			"input_by"=>$name
		);

		$response = $this->M_perangkat->save($table, $data);

		$this->response($response);

	}

	public function grapari_get() {
		$table = "grapari";
		$response = $this->M_perangkat->show($table);
		$this->response($response);
	}

}