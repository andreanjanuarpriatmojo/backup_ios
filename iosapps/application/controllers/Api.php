<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';

class Api extends REST_Controller {
	
	public function __construct() {
		parent::__construct();
		$this->load->model('M_user');
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

}