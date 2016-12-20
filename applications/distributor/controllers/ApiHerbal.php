<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

use GuzzleHttp\Client;

class ApiHerbal extends REST_Controller {

	public function __construct()
	{
		parent::__construct();
    $this->load->model('Users_model');
	}

	public function index_get()
	{
		// get my setting
		$setting = $this->Crud_model->get('setting', '*');
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
		// Filtering with NAMA_BARANG
    $header  = $this->head();
    $user    = $this->Users_model->get_by('token', $header['X-API-KEY']);
		$pattern = '/'.$user->selection.'/';
		$package = $user->packages_id;
		$result  = [];
		// free or premium
		if ($package == 1) {
			$count = 0;
			foreach ($response as $key) {
				if (preg_match($pattern, $key->NAMA_BARANG) && $count < 5) {
					$result[] = $key;
					$count++;
				}
			}
		} else {
			foreach ($response as $key) {
				if (preg_match($pattern, $key->NAMA_BARANG)) {
					$result[] = $key;
				}
			}
		}
		// send response
		$this->set_response($result, REST_Controller::HTTP_OK);
	}
}

/* End of file Items.php */
/* Location: ./application/controllers/Items.php */
