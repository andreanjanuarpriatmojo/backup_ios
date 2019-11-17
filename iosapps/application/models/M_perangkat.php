<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_perangkat extends CI_Model {
    function __construct() {
        parent::__construct();
    }

    function create_table($table, $field) {
        $sql = "CREATE TABLE ".$table." ( ".$field." )";
        $result = $this->db->query($sql);
        return $result;
    }

    function show_table() {
        $sql = "SHOW TABLES";
        $result = $this->db->query($sql);
        print_r($result);
        return $result;
    }

    function save($table, $data) {

        $insert = $this->db->insert($table, $data);

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

    function show($table) {
        return $this->db->get($table)->result();
    }
}