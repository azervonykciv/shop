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
		$orders = $this->Orders_model
			->with('packages')
			->with('users')
			->get_all();
		$this->load->view('orders/list_view', ['orders' => $orders]);
	}

	public function store()
	{
		$data = $this->input->post('data');
		$data['created_at'] = Date('Y-m-d H:i:s');

		
	}

}

/* End of file Order.php */
/* Location: ./application/controllers/Order.php */
