<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Front extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('crud_model');
    }

    public function index()
	{

        $data['status']=$this->session->userdata('Status');

		$this->template->load('frontBase','front',$data);
	}

	public function in_pack($data)
	{
        if (!($this->session->has_userdata('Status'))) {
            redirect('login');
        }

        $api_access['key']        = $this->session->userdata('Tokenize');
        $api_access['date_created']  = date_default_timezone_set('Asia/Jakarta');
        $api_access['date_modified'] = date_default_timezone_set('Asia/Jakarta');
        $api_access['controller'] = "/api_server";

        $cek = $this->crud_model->check('key',$api_access['key'],'access');

        if(count($cek) ==1)
        {
            echo "maaf data sudah ada";
        }
        else{
            $this->crud_model->insert($api_access,'access');
        }

	}
}