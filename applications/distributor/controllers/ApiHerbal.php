<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

use GuzzleHttp\Client;

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
		// make a request to ware change X-API-KEY
		$url      = 'http://localhost/shop/distributor/index.php/ApiItems';
		$client   = new GuzzleHttp\Client();
		$response = $client->request('GET', $url, ['headers' => ['X-API-KEY' => '1234567890']]);
		$response = json_decode($response->getBody());
		// Filtering with NAMA_BARANG
    $header  = $this->head();
    $user    = $this->Users_model->get_by('token', $header['X-API-KEY']);
		$pattern = '/'.$user->selection.'/';
		$result  = [];
		foreach ($response as $key) {
			if (preg_match($pattern, $key->NAMA_BARANG)) {
				$result[] = $key;
			}
		}
		// send response
		$this->set_response($result, REST_Controller::HTTP_OK);
	}
}

/* End of file Items.php */
/* Location: ./application/controllers/Items.php */
