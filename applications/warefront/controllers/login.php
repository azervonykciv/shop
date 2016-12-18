<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller
{

	function __construct()
    {
        parent::__construct();
        $this->load->model('crud_model');
    }

	public function index()
	{
		$this->template->load('frontBase','auth/login');
	}


	function do_login(){

		$Email = $this->input->post('Email');
		$Password  = $this->input->post('Password');

		$cek=$this->crud_model->cek_user($Email, $Password);
		if(count($cek) == 1){
			foreach($cek as $cek) {
				$Status = $cek['Status'];
                $Id     = $cek['ID_User'];
                $Nama_user	= $cek['Nama_User'];
                $Tokenize   = $cek['Tokenize'];
			}
            $x=$this->session->set_userdata(array(
				'isLogin'	=> TRUE,
				'uname'		=> $Nama_user,
				'Status'	=> $Status,
                'id_user'   => $Id,
                'Tokenize'  => $Tokenize,
			));
			redirect('front', 'refresh');
		}else{
			redirect('login');
		}
	}


	function logout()
    {
        $this->session->sess_destroy();
        redirect('front');
    }
}