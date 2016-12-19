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
		$setting = $this->Crud_model->get('setting', '*');

		if($setting == []){
			$setting = [
				0 => (object) [
					'id' => 0,
					'token' => '1234567890',
					'url' => 'http://localhost/shop/distributor/index.php/ApiItems',
				]
			];
			$this->Crud_model->insert('setting', $setting[0]);
			die();
		}

		$this->load->view('pages/dashboard_view', ['setting' => $setting[0]]);
	}

	public function token()
	{
		$data = $this->input->post('data');

		$this->Crud_model->update('setting', $data, ['id' => 0]);

		redirect('dashboard');
	}

}

/* End of file Dashboard.php */
/* Location: ./application/controllers/Dashboard.php */
