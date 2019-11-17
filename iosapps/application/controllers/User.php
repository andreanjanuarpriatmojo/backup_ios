<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

    public function __construct() {
        parent::__construct();
		$this->load->model('M_user');
	}

	public function index() {
        if ($this->session->userdata('authenticated')) {
            $data["temp"] = $this->M_user->getAll();
            $this->load->view('user/list', $data);
        }
        else {
            redirect('auth');
        }
        
    }

    public function add() {
        $this->load->view('user/add');
    }

    public function edit($id) {
        $where = array('id' => $id);
        $data["temp"] = $this->M_user->getId($where);
        //var_dump($data);
        $this->load->view('user/edit', $data);
    }

    public function delete($id) {
        $where = array('id' => $id);
        $this->M_user->delete($where);
        redirect('user','refresh');

    }

    public function save() {
        $newpass = md5($this->input->post('password'));

        $data = array(
            "name"=>$this->input->post('name'),
            "password"=>$newpass,
            "role"=>$this->input->post('role')
        );

        $this->M_user->save($data);

        redirect('user','refresh');

    }

    public function update($id) {
        $newpass = md5($this->input->post('password'));
        $where = array('id' => $id);
        $data = array(
            "name"=>$this->input->post('name'),
            "password"=>$newpass,
            "role"=>$this->input->post('role')
        );

        $this->M_user->update($where, $data);

        redirect('user','refresh');
    }

}