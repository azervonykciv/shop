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
		$this->load->model('Crud_model');
	}

	public function index(){
		$setting = $this->Crud_model->get('setting','*');
		$url     = $setting[0]->url;
		$api_key = $setting[0]->token;
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