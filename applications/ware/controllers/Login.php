<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('crud_model');
	}

	function index(){

        $this->template->load('frontBase','auth/v_login');
	}

  function do_login()
    {
        $Email = $this->input->post('Email');
        $Password = $this->input->post('Password');

        $cek = $this->crud_model->cek_user($Email, $Password);
				
        if (count($cek) == 1) {
            foreach ($cek as $c) {
                $Status = $c['Status'];
                $Id = $c['ID_User'];
                $Nama_User = $c['Nama_User'];
                $Tokenize = $c['Tokenize'];
            }
        }else{
            $this->session->set_flashdata('erLog','Maaf Username/Password anda salah');
            redirect('login','refresh');
        }
        if ($Status == "Admin") {
            $x = $this->session->set_userdata(array(
                'isLogin' => TRUE,
                'uname' =>$Nama_User,
                'Status' => $Status,
                'id_user' => $Id,
            ));
            redirect('dashboard', 'refresh');

        }elseif($Status == "Member"){

                $x = $this->session->set_userdata(array(
                    'isLogin' => TRUE,
                    'uname' => $Nama_User,
                    'Status' => $Status,
                    'id_user' => $Id,
                    'Tokenize' => $Tokenize,
                ));
                redirect('front', 'refresh');
        }
	}

    function logout(){
		$this->session->sess_destroy();
		redirect('login/');
	}
}
