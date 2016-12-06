<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class ApiUsers extends REST_Controller {

	public function __construct()
	{
		parent::__construct();
	}

	public function index_get()
	{
		$params = $this->get('fields');
		$users = $this->Crud_model->get('users', $params);
		$this->set_response($users, REST_Controller::HTTP_OK);
	}

	public function index_post()
	{

	}


}

/* End of file ApiUsers.php */
/* Location: ./application/controllers/ApiUsers.php */