<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Crud_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
	}

	public function get($table)
	{
		return $this->db->get($table)->result();
	}

	public function where($table, $where)
	{
		return $this->db
			->where($where)
			->get($table)
			->result();
	}

	public function insert($table, $data)
	{
		return $this->db->insert($table, $data);
	}

	public function update($table, $data, $where)
	{
		return $this->db
			->where($where)
        	->update($table, $data);
	}

	public function delete($table, $where)
	{
		return $this->db
			->where($where)
        	->delete($table);
	}

	public function validation($user, $pass)
	{
		$query = $this->db->where('username', $user)
			->from('mahasiswa')
			->get();

		if (password_verify($pass, $query->row()->password)) {
			return TRUE;
		} else {
			return FALSE;
		}
	}

}

/* End of file Crud_model.php */
/* Location: ./application/models/Crud_model.php */