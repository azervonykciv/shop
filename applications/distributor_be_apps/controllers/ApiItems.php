<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class ApiItems extends REST_Controller {

	public function __construct()
	{
		parent::__construct();

		// Configure limits on our controller methods
		// Ensure you have created the 'limits' table and enabled 'limits' within application/config/rest.php
		$this->methods['users_get']['limit'] = 500; // 500 requests per hour per user/key
		$this->methods['users_post']['limit'] = 100; // 100 requests per hour per user/key
		$this->methods['users_delete']['limit'] = 50; // 50 requests per hour per user/key
	}

	public function index_get()
	{
		$items = $this->Crud_model->get('item', ['name']);
		$this->set_response($items, REST_Controller::HTTP_OK);
	}

	public function index_post()
	{
		$item = $this->input->post();

		$this->Crud_model->insert('item', $item);

		$message = [
			'name' => $this->post('name'),
			'message' => 'Added an item'
		];

		$this->set_response($message, REST_Controller::HTTP_CREATED); // CREATED (201) being the HTTP response code
	}

	public function index_patch()
	{
		$item = $this->patch();

		$this->Crud_model->update('item', $item, ['id' => $item['id']]);

		$message = [
			'name' => $item,
			'message' => 'Updated an item',
		];
		$this->set_response($message, REST_Controller::HTTP_OK);
	}

	public function index_delete($id)
	{
		$this->Crud_model->delete('item', ['id' => $id]);
		$message = [
			'name' => $item,
			'message' => 'Updated an item',
		];
		$this->set_response($message, REST_Controller::HTTP_OK);
	}

}

/* End of file Items.php */
/* Location: ./application/controllers/Items.php */
