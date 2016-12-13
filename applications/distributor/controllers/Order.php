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
		$this->load->model('Api_keys_model');
		$this->load->model('Users_model');
	}

	public function index()
	{
		$orders = $this->Orders_model
			->with('packages')
			->with('users')
			->order_by('created_at', 'DESC')
			->get_all();
		$this->load->view('orders/list_view', ['orders' => $orders]);
	}

	public function store()
	{
		$data = $this->input->post('data');
		$created_at = Date('Y-m-d H:i:s');

		$user['packages_id'] = $data['packages_id'];

		$api_key['id']           = rand(0, 21474836);
		$api_key['users_id']     = $data['users_id'];
		$api_key['key']          = $this->_generate_key();
		$api_key['date_created'] = $created_at;

		$order['users_id']    = $data['users_id'];
		$order['packages_id'] = $data['packages_id'];
		$order['api_keys_id'] = $api_key['id'];
		$order['created_at']  = $created_at;

		$dump = [
			'api_key' => $api_key,
			'user' => $user,
			'order' => $order,
		];

		$this->Users_model->update('10', $user);
		$this->Api_keys_model->insert($api_key);
		$this->Orders_model->insert($order);

		redirect('order');
	}

	private function _generate_key()
	{
			do
			{
					// Generate a random salt
					$salt = base_convert(bin2hex($this->security->get_random_bytes(64)), 16, 36);

					// If an error occurred, then fall back to the previous method
					if ($salt === FALSE)
					{
							$salt = hash('sha256', time() . mt_rand());
					}

					$new_key = substr($salt, 0, config_item('rest_key_length'));
			}
			while ($this->_key_exists($new_key));

			return $new_key;
	}

	private function _key_exists($key)
	{
		return $this->db
				->where(config_item('rest_key_column'), $key)
				->count_all_results(config_item('rest_keys_table')) > 0;
	}

}

/* End of file Order.php */
/* Location: ./application/controllers/Order.php */
