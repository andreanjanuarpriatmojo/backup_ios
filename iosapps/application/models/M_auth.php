<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_auth extends CI_Model {
    function __construct() {
        parent::__construct();
    }
    public function login($data) {
        return $this->db->get_where("users", $data);
    }

    public function get($name) {
        $this->db->where('name', $name);
        $result = $this->db->get('users')->row();
        return $result;
    }

    // public function get($name) {
    //     $sql = "SELECT * FROM users COLLATE latin1_general_cs WHERE name = '$name'";
    //     $result = $this->db->query($sql)->row();
    //     return $result;
    // }
}