<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Crud_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }
    public function insert($data,$table)
    {
        return $this->db->insert($table,$data);
    }

    public function get_wtcol($table,$col){
        return $this->db->select($col)->get($table);
    }

    public function get_wtcond($table,$col,$id1,$id2){
        return $this->db->where($id1,$id2)->select($col)->get($table)->result();
    }

    public function get_all($table)
    {
        return $this->db->get($table)->result();
    }

    public function cek_user($Email, $Password){

      $chk = $this->db
  			->select('*')
  			->where(['Email' => $Email,])
  			->get('user')->row();
        if(password_verify($Password,$chk->Password))
            return $this->db->get_where('user',array('Email' => $Email))->result_array();
    }

    public function get_only($table,$kolom)
    {
        $query = $this->db->query("SELECT count(*), $kolom FROM $table GROUP BY $kolom HAVING COUNT(*) > 1;");
        return $query->result();
    }

    public function check($table,$id1,$id2)
    {
        return $this->db->where($id1,$id2)->count_all_results($table);
    }
    public function match($table,$id1,$id2,$lim=NULL)
    {
            return $this->db->where($id1,$id2)->get($table,$lim);
    }

    public function get_wr($table,$id1,$id2)
    {
        return $this->db->where($id1,$id2)->get($table);
    }

    public function update($table,$data,$id1,$id2)
    {
        $this->db->where($id1,$id2);
        $this->db->update($table,$data);
    }


    public function delete($table,$id1,$id2)
    {
        $this->db->where($id1, $id2);
        $this->db->delete($table);
    }
    public function count()
    {
        return $this->db->count_all_results('barang',FALSE);
    }
}
