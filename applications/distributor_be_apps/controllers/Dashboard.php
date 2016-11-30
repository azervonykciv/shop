<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		if(!$this->session->has_userdata('username'))
			redirect('auth');
		if($this->session->userdata('user_level') !== 'super_admin')
			redirect('auth');
	}	

	public function index()
	{
		$this->load->view('pages/dashboard_view');
	}

}

/* End of file Dashboard.php */
/* Location: ./application/controllers/Dashboard.php */