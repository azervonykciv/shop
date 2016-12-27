<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller{

  public function __construct()
  {
    parent::__construct();
    $this->config->load('rest');
    $this->load->helper('MyCons');
    $this->load->model('Orders_model');
		$this->load->model('Api_keys_model');
    $this->load->model('Users_model');
  }

  public function index()
  {
    $data = [
      'selection' => getSelectionHerbal(),
    ];
    $this->load->view('pages/home_view', $data);
  }

  public function daftar()
  {
    $user = $this->input->post('data');
		$user['password']   = password_hash($user['password'], PASSWORD_DEFAULT);

		$this->Users_model->insert($user);
		redirect('home');
  }

  public function profile()
  {
    if(!$this->session->has_userdata('username'))
			redirect('auth');

    $user = $this->Users_model
      ->with('packages')
      ->get($this->session->userdata('id'));

     // echo "asd <pre>";
     // print_r($user);
     // die();

    $this->load->view('pages/profile_view', ['data' => $user]);
  }

  public function order($packages_id)
  {
    $data = $this->input->post('data');
    $data['users_id'] = $this->session->userdata('id');
		$created_at = Date('Y-m-d H:i:s');

		$api_key['id']           = rand(0, 21474836);
		$api_key['users_id']     = $data['users_id'];
		$api_key['key']          = $this->_generate_key();
		$api_key['date_created'] = $created_at;

    $api_access['key']           = $api_key['key'];
    $api_access['controller']    = '/ApiHerbal';
    $api_access['date_created']  = $created_at;
    $api_access['date_modified'] = $created_at;


		$order['users_id']    = $data['users_id'];
		$order['packages_id'] = $packages_id;
		$order['api_keys_id'] = $api_key['id'];
		$order['created_at']  = $created_at;

		$user['packages_id'] = $packages_id;
		$user['token']       = $api_key['key'];
		$user['selection']   = $data['selection'];

		$dump = [
			'data'       => $data,
			'api_key'    => $api_key,
			'api_access' => $api_access,
			'user'       => $user,
			'order'      => $order,
		];

    $this->Users_model->update($data['users_id'], $user);
		$this->Api_keys_model->insert($api_key);
		$this->Crud_model->insert('api_access', $api_access);
		$this->Orders_model->insert($order);

    redirect('home/profile');
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
