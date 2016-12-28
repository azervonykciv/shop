<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Crud_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
	}

	public function get($table, $select)
	{
		return $this->db
			->select($select)
			->get($table)
			->result();
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

	public function isExist($table, $where)
	{
		return $this->db
            ->where($where)
            ->count_all_results($table) > 0;
	}

}

/* End of file Crud_model.php */
/* Location: ./application/models/Crud_model.php */