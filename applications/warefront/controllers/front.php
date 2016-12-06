<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Front extends CI_Controller
{
	public function index()
	{
		$this->template->load('frontTemp','front');
	}

	public function login()
	{
		$this->template->load('frontTemp','login');
	}
}