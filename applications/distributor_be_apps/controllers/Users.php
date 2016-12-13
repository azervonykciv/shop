<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('username'))
			redirect('auth');
		if($this->session->userdata('user_level') !== 'super_admin')
			redirect('auth');

		$this->config->load('rest');
		$this->load->model('Users_model');
	}

	public function index()
	{
		// $users   = $this->Crud_model->get('users', '*');
		$users = $this->Users_model->get_all();
		$this->load->view('users/list_view', [ 'users' => $users, ]);
	}

	public function create()
	{
		$this->load->view('users/form_view');
	}

	public function store()
	{
		$user = $this->input->post('data');
		$user['password']   = password_hash($user['password'], PASSWORD_DEFAULT);

		$this->Users_model->insert($user);
		$this->session->set_flashdata('success', 'anda berhasil menambahkan data');
		redirect('users');
	}

	public function edit($id)
	{
		$user = $this->Users_model->get($id);
		$this->load->view('users/form_view', ['data' => $user]);
	}

	public function update($id)
	{
		$user               = $this->input->post('data');
		$user['password']   = password_hash($user['password'], PASSWORD_DEFAULT);

		$user = $this->Users_model->update($id, $user);
		$this->session->set_flashdata('success', 'anda berhasil mengubah data');
		redirect('users');
	}

	public function delete($id)
	{
		if (!$this->Users_model->get($id)) {
			$this->session->set_flashdata('warning', 'item yang ingin anda hapus tidak ada');
			redirect('users');
		}

		$this->Crud_model->Users_model('users', ['id' => $id]);
		$this->session->set_flashdata('success', 'Anda berhasil menghapus admin');
		redirect('users');
	}

	public function package($id)
	{
		$data = [
			'user' => $this->Users_model->with('packages')->get($id),
			'packages' => $this->Crud_model->get('packages', '*'),
		];
		$this->load->view('users/package_view', $data);
	}

	public function set_package_user($id)
	{
		$data               = $this->input->post('data');
		$data['id']         = $id;

		$this->Crud_model->update('users', $data, ['id' => $id]);
		$this->session->set_flashdata('success', 'anda berhasil mengubah data');
		redirect('users');
	}




























	public function store_all()
	{
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

		$this->Crud_model->insert('users', $user);
		$this->Crud_model->insert('api_keys', $api_key);
		$this->Crud_model->insert('api_access', $api_access);
		$this->Crud_model->insert('orders', $order);

		$this->session->set_flashdata('msg', 'berhasil menambahkan data.');
		redirect('users');
	}

	// for API KEYS
		protected function _generate_key()
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

/* End of file Users.php */
/* Location: ./application/controllers/Users.php */
