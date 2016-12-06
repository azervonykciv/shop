<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Auth_model');
	}

	public function index()
	{
		$this->load->view('auth/login_view');
	}

	public function validation()
	{
		$username = $this->input->post('username');
		$passowrd = $this->input->post('password');

		$user = $this->Auth_model->validation($username, $passowrd);

		if ($user->level === 'super_admin') {
			$this->session->set_userdata('user_level', $user->level);
			$this->session->set_userdata('username', $user->username);
			redirect('dashboard');
		} elseif ($user->level === 'pelanggan') {
			$this->session->set_userdata('user_level', $user->level);
			$this->session->set_userdata('username', $user->username);
			echo "yo";
		} else {
			redirect('Auth');
		}
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect('auth');
	}

}

/* End of file  */
/* Location: ./application/controllers/ */