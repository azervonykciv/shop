<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class Login extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->helper(array('form','url'));
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
            foreach ($cek as $cek) {
                $Status = $cek['Status'];
                $Id = $cek['ID_User'];
                $Nama_User = $cek['Nama_User'];
                $Tokenize = $cek['Tokenize'];
            }
        }else{
            redirect('login');
        }


        if ($Status == "Admin") {

            $x = $this->session->set_userdata(array(
                'isLogin' => TRUE,
                'uname' => $Nama_User,
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
        } else
        {
            echo "Login Gagal";
        }
	}

    function logout(){
		$this->session->sess_destroy();
		redirect('login/');
	}
}
