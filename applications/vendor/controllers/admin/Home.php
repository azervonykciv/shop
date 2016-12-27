<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
* 
*/

use GuzzleHttp\Client;

class Home extends CI_Controller
{
	public function __construct(){
		parent::__construct();
		$this->load->model('model_products');
	}

	public function index(){
		$url     = 'http://localhost/shop/distributor/ApiHerbal';
		$api_key = 's0w8o4os0swgwcksk0cs8co0ss8w000gkkoo8cgs';
		// make a request to ware change X-API-KEY
		$client   = new GuzzleHttp\Client();
		$response = $client->request(
				'GET',
				$url,
				['headers' => ['X-API-KEY' => $api_key]]
		);
		$response = json_decode($response->getBody());

		$this->load->view('herbal', ['produk' => $response]);
	}
}