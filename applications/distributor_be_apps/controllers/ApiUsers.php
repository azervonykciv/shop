<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class ApiUsers extends REST_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('username'))
			redirect('auth');
		if($this->session->userdata('user_level') !== 'super_admin')
			redirect('auth');
	}

	public function index_get()
	{
		echo "get";
	}

	public function index_post()
	{
		echo "yo!";
		die();

		
		$user= $this->input->post('data');

		$user['password']   = password_hash($user['password'], PASSWORD_DEFAULT);
		$user['created_at'] = date('Y-m-d H:i:s');
		$user['updated_at'] = date('Y-m-d H:i:s');

		if($this->Crud_model->isExist('users', ['username' => $user['username']])){
			$this->session->set_flashdata('err', 'username sudah ada.');
			redirect('users');
		}

		$package = $this->Crud_model->where('package', ['id' => $this->input->post('package')])[0];

		$api_key['key']           = $this->_generate_key();
		$api_key['level']         = 1;
		$api_key['ignore_limits'] = 0;
		$api_key['date_created']  = date('Y-m-d H:i:s');

		$api_access['key']        = $api_key['key'];
		$api_access['date_created']  = date('Y-m-d H:i:s');
		$api_access['date_modified'] = date('Y-m-d H:i:s');
		$api_access['controller'] = $package->controller;

		$order['created_at'] = date('Y-m-d H:i:s');
		$order['username']   = $user['username'];
		$order['api_key']    = $api_key['key'];
		$order['id_package'] = $package->id;

		$dump = [
			'user'       => $user,
			'api_key'    => $api_key,
			'api_access' => $api_access,
			'order'      => $order,
		];

		echo "<pre>";
		print_r($dump);
		die();

		$this->Crud_model->insert('users', $user);
		$this->Crud_model->insert('api_keys', $api_key);
		$this->Crud_model->insert('api_access', $api_access);
		$this->Crud_model->insert('orders', $order);

		$this->session->set_flashdata('msg', 'berhasil menambahkan data.');
		redirect('users');
	}


}

/* End of file ApiUsers.php */
/* Location: ./application/controllers/ApiUsers.php */