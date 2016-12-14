<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class crud_model extends CI_Model
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

    public function get_spec($table,$cond1,$com){
        $query = $this->db->get_where($table,array($cond1 => $com));
        $query = $query->result_array();

        if($query){
            return $query[0];
        }
    }

    public function cek_user($Email="", $Password=""){
        $query = $this->db->get_where("user", array('Email' => $Email , password_verify('Password',$Password)));
        $query = $query->result_array();
        return $query;
    }
    public function where($table,$id1,$id2,$lim= NULL)
    {
                $this->db->where($id1,$id2);
                $this->db->get($table);
                return $this->db->limit($lim);

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

    public function check($table,$id1,$id2)
    {
        return $this->db->where($id1,$id2)->count_all_results($table);
    }
}