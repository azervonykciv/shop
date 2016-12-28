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
            $this->homeSuperAdmin();
    }

	public function homeSuperAdmin(){
		$data['user'] = $this->session->userdata('uname');
    $data['Status'] = $this->session->userdata('Status');
    $data['id_user'] = $this->session->userdata('id_user');
		$this->template->load('templateSuperAdmin', 'Home/homeSuperAdmin',$data);
	}
}
