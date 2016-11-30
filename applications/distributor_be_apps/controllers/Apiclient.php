<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Apiclient extends CI_Controller
{
    var $API ="";

    function __construct() {
        parent::__construct();
        $this->API="http://localhost/wareback";
    }

    function index(){
        $data['barang'] = json_decode($this->curl->simple_get($this->API.'/api_server?tab=barang&col=NAMA_BARANG'));
        $this->load->view('mahasiswa/list',$data);
    }

}