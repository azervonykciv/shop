<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('model_products');
	}

	public function cek(){
		$data['product'] = $this->model_products->all();
		$this->load->view('home',$data);
	}

	public function cek2(){
		$data['product'] = $this->model_products->all();
		$this->load->view('checkout',$data);

	}public function cek3(){
		$data['produk'] = $this->model_products->all();
		$this->load->view('herbal',$data);
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
		redirect('welcome/cek3');
	}

	public function cart(){
		//display what currently inside the cart
		//print_r($this->cart->contents());
		$this->load->view('show_cart');
	}

	public function clear_cart(){
		$this->cart->destroy();
		redirect('welcome/cek');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */