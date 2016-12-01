<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class W_cont extends CI_Controller
{

	protected $table;
	protected $view;
	protected $


	function __construct()
	{
		parent::__construct();
		$this->load->model('crud_model');
	}
	public function get($data)
	{
		
	}
}