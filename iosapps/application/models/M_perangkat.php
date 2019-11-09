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
}