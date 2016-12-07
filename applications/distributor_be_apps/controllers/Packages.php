<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Packages extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('username'))
			redirect('auth');
		if($this->session->userdata('user_level') !== 'super_admin')
			redirect('auth');

		$this->load->model('Users_model');
	}

	public function index()
	{
		$data = $this->Crud_model->get('packages', '*');
		$this->load->view('packages/list_view', [ 'data' => $data, ]);
	}

	public function create()
	{
		$this->load->view('packages/form_view');
	}

	public function store()
	{
		$user = $this->input->post('data');

		$this->Crud_model->insert('packages', $user);
		$this->session->set_flashdata('success', 'anda berhasil menambahkan data');
		redirect('packages');
	}

	public function edit($id)
	{
		$data = $this->Crud_model->where('packages', ['id' => $id]);
		$this->load->view('packages/form_view', ['data' => $data[0]]);
	}

	public function update($id)
	{
		$user = $this->input->post('data');

		$this->Crud_model->update('packages', $user, ['id' => $id]);
		$this->session->set_flashdata('success', 'anda berhasil mengubah data');
		redirect('packages');
	}

	public function delete($id)
	{
		$this->Crud_model->delete('packages', ['id' => $id]);
		$this->session->set_flashdata('success', 'Anda berhasil menghapus admin');
		redirect('packages');
	}

	public function user($id)
	{
		$data = [
			'user' => $this->Users_model->with('packages')->get($id),
			'packages' => $this->Crud_model->get('packages', '*'),
		];
		$this->load->view('packages/user_view', $data);
	}

	public function set_package_user($id)
	{
		$data = $this->input->post('data');
		$data['id'] = $id;

		echo "<pre>";
		print_r($data);
		die();

		$user               = $this->input->post('data');
		$user['password']   = password_hash($user['password'], PASSWORD_DEFAULT);
		$user['updated_at'] = date('Y-m-d H:i:s');

		$this->Crud_model->update('users', $user, ['id' => $id]);
		$this->session->set_flashdata('success', 'anda berhasil mengubah data');
		redirect('users');
	}
}

/* End of file Packages.php */
/* Location: ./application/controllers/Packages.php */