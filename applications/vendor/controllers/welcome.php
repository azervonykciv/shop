<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('model_products');
		$this->load->model('Crud_model');
	}

	public function cek(){
		$data['products'] = $this->model_products->all();
		$this->load->view('home',$data);
	}

	public function cek2(){
		$data['products'] = $this->model_products->all();
		$this->load->view('checkout',$data);

	}

	public function index()
	{
		$data['products'] = $this->model_products->all();
		$this->load->view('home', $data);
	}

	public function add_to_cart($product_id){
		$product = $this->model_products->find($product_id);
		$data = array(
			'id'		=> $product->id,
			'qty'		=> 1,
			'price'		=> $product->price,
			'name'		=> $product->name,
			'image'		=> $product->image,
		);

		$this->cart->insert($data);
		redirect('welcome/cek');
	}

	public function addtocart($KODE_BARANG){
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
		foreach ($response as $res) {
		
			if($res->KODE_BARANG == $KODE_BARANG){
					$data = array(
								'id'		=> $res->KODE_BARANG,
								'qty'		=> 1,
								'price'		=> $res->HARGA_JUAL,
								'name'		=> $res->NAMA_BARANG,
					);
			}
		}

		$this->cart->insert($data);
		redirect('home');
	}

	public function cart(){
		//display what currently inside the cart
		//print_r($this->cart->contents());
		$this->load->view('show_cart');
	}

	public function clear_cart(){
		$this->cart->destroy();
		redirect('home');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */