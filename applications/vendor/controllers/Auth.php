<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Auth_model');
	}

	public function index()
	{
		$this->load->view('login_view');
	}

	public function validation()
	{
		$username = $this->input->post('username');
		$password = $this->input->post('password');

		$user = $this->Auth_model->validation($username, $password);

		if ($user->level === 'super_admin') {
			$this->session->set_userdata('user_level', $user->level);
			$this->session->set_userdata('username', $user->username);
			redirect('dashboard');
		} elseif ($user->level === 'customer') {
			$this->session->set_userdata('user_level', $user->level);
			$this->session->set_userdata('username', $user->username);
			$this->session->set_userdata('id', $user->id);
			redirect('dashboard');
		} else {
			$this->session->set_flashdata('msg', 'anda salah memasukan username/password');
			redirect('Auth');
		}
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect('Auth');
	}

}

/* End of file  */
/* Location: ./application/controllers/ */
