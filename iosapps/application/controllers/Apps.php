<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Apps extends CI_Controller {

	function __construct(){
		parent::__construct();
	}

	public function index() {
		if ($this->session->userdata('authenticated')) {
            $this->load->view('home');
        }
        else {
            redirect('auth');
        }
		
	}
}