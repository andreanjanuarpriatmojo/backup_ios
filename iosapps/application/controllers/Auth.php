<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {
    public function __construct() {
		parent::__construct();
		$this->load->model('M_auth');
    }
    
    public function index() {
        if ($this->session->userdata('authenticated')) {
            redirect('apps');
        }
        else {
            $this->load->view('login');
        }
    }

    public function login() {
        $data = array (
            "name" => $this->input->post('name'),
            "password" => md5($this->input->post('password'))
        );
        $login = $this->M_auth->login($data)->num_rows();
        if($login > 0) {
            $data_session = array (
                "name" => $this->input->post('name'),
                "status" => "login"
            );
            $this->session->set_userdata($data_session);
            redirect(base_url("apps"));
        }
        else {
            echo "username password salah!";
        }
    }

    public function login2() {
        $name = $this->input->post('name');
        $password = md5($this->input->post('password'));
        $user = $this->M_auth->get($name);
        if(empty($user)) {
            echo "Username tidak ditemukan";
        }
        else {
            if($password == $user->password) {
                $session = array (
                    'authenticated'=>true,
                    'name'=>$user->name,
                    'password'=>$user->password,
                    'role'=>$user->role
                );
                $this->session->set_userdata($session);
                redirect('apps');
            }
            else {
                echo "Password Salah";
                redirect('auth');
            }
        }
    }

    public function logout() {
        $this->session->sess_destroy();
        redirect(base_url('auth'));
    }

}