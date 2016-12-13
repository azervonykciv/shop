<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();

	}

	public function validation($username, $password)
	{
		$user = $this->db
			->select('*')
			->where([
				'username' => $username,
				'password' => $password,])
			->get('users')
			->result();

		if ($user) {
			return (object) [
				'username' => $user[0]->username,
				'level'    => $user[0]->level,
			];
		} else {
			return false;
		}
	}

}

/* End of file Auth_model.php */
/* Location: ./application/models/Auth_model.php */
