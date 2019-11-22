<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_user extends CI_Model {
    
    function __construct() {
        parent::__construct();
    }

    public function save($data) {

        $insert = $this->db->insert("users", $data);

        if ($insert) {
            $response['status']=200;
            $response['error']=false;
            $response['message']='Data person ditambahkan.';
            return $response;
        }
        else {
            $response['status']=502;
            $response['error']=true;
            $response['message']='Data person gagal ditambahkan.';
            return $response;
        }

    }

    public function login($data) {
        $result = $this->db->get_where("users", $data)->row();
        $this->db->insert("tmp_user", $result);
            if ($result) {
                $response=false;
                return $response;
            }
            else {
                $response=true;
                return $response;
            }
    }

    public function get_login() {
        return $this->db->get("tmp_user")->result();
    }

    public function delete_tmp() {
        return $this->db->empty_table("tmp_user");
    }

    public function delete($id) {
        return $this->db->delete("users", $id);
    }

    public function update($id, $data) {
        return $this->db->update("users", $data, $id);
    }

    public function getAll() {
        return $this->db->get("users")->result();
    }

    public function getId($id) {
        return $this->db->get_where("users", $id)->row();
    }

    public function get_all() {
        $all = $this->db->get("users")->result();
        $response['status']=200;
        $response['error']=false;
        $response['person']=$all;
        return $response;
    }

}