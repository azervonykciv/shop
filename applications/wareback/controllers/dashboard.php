<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('crud_model');
        $this->load->model('m_login');
        if (!($this->session->has_userdata('Status'))) {
            redirect('login');
        }
    }

    public function index()
    {
        $ambil_akun = $this->m_login->ambil_user($this->session->userdata('uname'));
        $data = array(
            'user' => $ambil_akun,
        );

        $stat = $this->session->userdata('Status');
        //if($stat == "Dosen"){
        //	$this->homeDosen();
        if ($stat == "Admin") {
            $this->homeSuperAdmin();
        } elseif ($stat == "user") {
            $this->homeUser();
        }else
{
    //	$this->logout();
    //}
}
}
	public function login(){
		$session = $this->session->userdata('isLogin');
		if($session == FALSE){
			redirect('login', 'refresh');
		}else {
			redirect('dashboard');
		}
	}


	public function logout(){
		$this->session->sess_destroy();
		$this->session->unset_userdata(array());
		redirect('login','refresh');
	}

	public function homeUser(){
		$data['barang'] = $this->bm->getAll();
		//$data['notif'] = $this->nm->get_byid("Admin");
		$data['user'] = $this->m_login->ambil_user($this->session->userdata('uname'));
		$this->template->load('template', 'Home/home', $data);
	}

	public function homeSuperAdmin(){
		$data['user'] = $this->m_login->ambil_user($this->session->userdata('uname'));
		$this->template->load('templateSuperAdmin', 'Home/homeSuperAdmin',$data);
	}
}