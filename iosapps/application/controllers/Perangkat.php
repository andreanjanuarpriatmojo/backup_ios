<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Perangkat extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('M_perangkat');
    }

	public function index() {
        if ($this->session->userdata('authenticated')) {
            $this->load->view('perangkat/add');
        }
        else {
            redirect('auth');
        }
    }
    public function add() {
        $this->load->view('perangkat/add');
    }
    public function edit() {
        $this->load->view('perangkat/edit');
    }
    public function saveTable() {
        $data['nama_perangkat'] = str_replace(' ','_',strtolower($this->input->post('nama_perangkat')));
        $data['nama_atribut'] = $this->input->post('nama_atribut');
        $data['tipe_data'] = $this->input->post('tipe_data');
        $data['panjang_data'] = $this->input->post('panjang_data');

        $isi = "";
        $jumlah = count($data['nama_atribut']);
        $fields =   "id_perangkat INT(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
                    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,";

        for ($i=0; $i<$jumlah; $i++) {
            if ($data['nama_atribut'] == 'VARCHAR' || $data['nama_atribut'] == 'DOUBLE') {
                if ($i == ($jumlah-1)) {
                    $fields.= $data['nama_atribut'][$i]." ".$data['tipe_data'][$i]."(".$data['panjang_data'][$i].")";
                }
                else {
                    $fields.= $data['nama_atribut'][$i]." ".$data['tipe_data'][$i]."(".$data['panjang_data'][$i].") ,";
                }
            }
            else {
                if ($i == ($jumlah-1)) {
                    $fields.= $data['nama_atribut'][$i]." ".$data['tipe_data'][$i];
                }
                else {
                    $fields.= $data['nama_atribut'][$i]." ".$data['tipe_data'][$i]." ,";
                }
            }
        }

        $table = $data['nama_perangkat'];

        $result = $this->M_perangkat->create_table($table, $fields);

        
    }
}