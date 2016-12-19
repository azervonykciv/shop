<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class ApiHerbal extends REST_Controller {

	public function __construct()
	{
		parent::__construct();

    $this->load->model('Users_model');

		// Configure limits on our controller methods
		// Ensure you have created the 'limits' table and enabled 'limits' within application/config/rest.php
		$this->methods['users_get']['limit'] = 500; // 500 requests per hour per user/key
		$this->methods['users_post']['limit'] = 100; // 100 requests per hour per user/key
		$this->methods['users_delete']['limit'] = 50; // 50 requests per hour per user/key
	}

	public function index_get()
	{
    // $data = $this->Users_model->get_by('token', )
    $header = $this->head();
    $user = $this->Users_model->get_by('token', $header['X-API-KEY']);

    print_r($user);
	}

}

/* End of file Items.php */
/* Location: ./application/controllers/Items.php */
