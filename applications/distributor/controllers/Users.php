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
		$this->load->helper('mycons');
	}

	public function index()
	{
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
			'user'     => $this->Users_model->with('packages')->get($id),
			'packages' => $this->Crud_model->get('packages', '*'),
			'selection'=> getSelectionHerbal(),
		];
		$this->load->view('users/package_view', $data);
	}
}

/* End of file Users.php */
/* Location: ./application/controllers/Users.php */
