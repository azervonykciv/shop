<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Order extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('username'))
			redirect('auth');
		if($this->session->userdata('user_level') !== 'super_admin')
			redirect('auth');

		$this->config->load('rest');
		$this->load->model('Orders_model');
	}

	public function index()
	{
		$data = $this->Orders_model
			->with('packages')
			->with('users')
			->get_all();

		echo "<pre>";
		print_r($data);
		die();
	}

}

/* End of file Order.php */
/* Location: ./application/controllers/Order.php */