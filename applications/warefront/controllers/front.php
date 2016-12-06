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
		
	}
}