<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('crud_model');
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
        }
    }

	public function homeSuperAdmin(){
		$data['user'] = $this->m_login->ambil_user($this->session->userdata('uname'));
		$this->template->load('templateSuperAdmin', 'Home/homeSuperAdmin',$data);
	}
}