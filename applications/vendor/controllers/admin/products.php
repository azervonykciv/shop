<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Products extends CI_Controller {
	public function __construct(){
		parent::__construct();
		//load model -> model_products
		$this->load->model('model_products');
	}

	public function index()
	{
		$data['products'] = $this->model_products->all();
		$this->load->view('backend/view_all_products',$data);
	}

	public function cek(){
		
	}

	 public function storebilling()
    {
        $data = [
            'bilfirst_name'       => $this->input->post('bilfirstname'),
            'billast_name'         => $this->input->post('billastname'),
            'bilemail'      	  => $this->input->post('bilemail'),
            'bilphone'         	=> $this->input->post('bilphone'),
            'biladd1'			=> $this->input->post('biladd1'),
            'biladd2' 			 => $this->input->post('biladd2'),
            'bilcity'               => $this->input->post('bilcity'),
            'bilzip'      		 => $this->input->post('bilzip'),

			'shipfirst_name'       => $this->input->post('shipfirstname'),
            'shiplast_name'         => $this->input->post('shiplastname'),
            'shipemail'      	  => $this->input->post('shipemail'),
            'shipphone'         	=> $this->input->post('shipphone'),
            'shipadd1'			=> $this->input->post('shipadd1'),
            'shipadd2' 			 => $this->input->post('shipadd2'),
            'shipcity'               => $this->input->post('shipcity'),
            'shipzip'      		 => $this->input->post('shipzip'),

            'cardholder'      		 => $this->input->post('cardholder'),
            'card_number'      		 => $this->input->post('card_number'),
            'expyear'      		 => $this->input->post('expyear'),
            'expmount'      		 => $this->input->post('expmount'),
            'csc'      		 => $this->input->post('csc'),
        
        ];
        $this->model_products->datadiri($data);
        redirect('welcome/clear_cart/');
        redirect('welcome/cek/');
    }

	public function create (){
		//form validation sebelum mengeksekusi QUERY INSERT
		$this->form_validation->set_rules('name','Product Name', 'required');
		$this->form_validation->set_rules('description','Product Description', 'required');
		$this->form_validation->set_rules('price','Product Price', 'required|integer');
		$this->form_validation->set_rules('stock','Available Stock', 'required|integer');
		//$this->form_validation->set_rules('userfile','Product Image', 'required');
	
		if ($this->form_validation->run() == FALSE)
		{
			$this->load->view('backend/form_tambah_product');
		} else {
			//load uploading file library
			$config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'jpg|png';
			$config['max_size'] = '3000'; //MB
			$config['max_width'] = '2000'; //pixels
			$config['max_height'] = '2000'; //pixel

			$this->load->library('upload', $config);

			if ( ! $this->upload->do_upload()){
				//file gagal di upload -> kembali ke form tambah
				$this->load->view('backend/form_tambah_product');
			}else{
				//file berhasil di upload -> lanjutkan ke query INSERT
				//eksekusi query INSERT
				$gambar = $this->upload->data();
				$data_product = array(
					'name'	        => set_value('name'),
					'description'	=> set_value('description'),
					'price'	        => set_value('price'),
					'stock'	        => set_value('stock'),
					'image'			=> $gambar['file_name']
				);
				$this->model_products->create($data_product);
				redirect('admin/products');
			}
		}
	}

	public function update ($id){
		$this->form_validation->set_rules('name','Product Name', 'required');
		$this->form_validation->set_rules('description','Product Description', 'required');
		$this->form_validation->set_rules('price','Product Price', 'required|integer');
		$this->form_validation->set_rules('stock','Available Stock', 'required|integer');
	
		if ($this->form_validation->run() == FALSE)
		{
			$data['product'] = $this->model_products->find($id);
			$this->load->view('backend/form_edit_product', $data);
		} else {
			if($_FILES['userfile']['name'] != ''){
				//form gambar dengan gambar diisi
				//load uploading file library
				$config['upload_path'] = './uploads/';
				$config['allowed_types'] = 'jpg|png';
				$config['max_size'] = '3000'; //MB
				$config['max_width'] = '2000'; //pixels
				$config['max_height'] = '2000'; //pixel

				$this->load->library('upload', $config);
			

				if ( ! $this->upload->do_upload())
				{
					$data['product'] = $this->model_products->find($id);
					$this->load->view('backend/form_edit_product', $data);
				} else {
					$gambar = $this->upload->data();
					$data_product = array(
						'name'	        => set_value('name'),
						'description'	=> set_value('description'),
						'price'	        => set_value('price'),
						'stock'	        => set_value('stock'),
						'image'			=> $gambar['file_name']			
					);
					$this->model_products->update($id, $data_product);
					redirect ('admin/products');
				}
			} else {
				//form submit dengan gambar dikosongkan
				$data_product = array(
					'name'	        => set_value('name'),
					'description'	=> set_value('description'),
					'price'	        => set_value('price'),
					'stock'	        => set_value('stock')	
				);
				$this->model_products->update($id, $data_product);
				redirect ('admin/products');	
			}	
		}
	}

	public function delete ($id){
		$this->model_products->delete($id);
		redirect('admin/products');
	}
}
