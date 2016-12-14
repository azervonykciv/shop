<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Front extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('crud_model');
    }

    public function index()
	{

        $data['status']=$this->session->userdata('Status');


		$this->template->load('frontBase','front',$data);
	}

	public function in_pack($data)
	{

        $data2['kategori'] = $this->crud_model->get_only('barang','KODE_KLASIFIKASI');

	    if($data == 1){
            if (!($this->session->has_userdata('Status'))) {
                redirect('login');
            }
            $this->template->load('frontBase','packages/gratis',$data2);


        }elseif($data == 2)
        {
            if (!($this->session->has_userdata('Status'))) {
                redirect('login');
            }
            $this->template->load('frontBase','packages/premium',$data2);
        }


	}

	public function pack_store($index)
    {
        if($index == 1)
        {
            $packages['ID_User'] = $this->session->userdata('id_user');
            $packages['Nama_User'] = $this->session->userdata('uname');
            $packages['Package']   = $this->input->post('kategori');
            $packages['jml_brng'] = 50;



            $api_access['key']= $this->session->userdata('Tokenize');
            $api_access['date_created']  = date_default_timezone_set('Asia/Jakarta');
            $api_access['date_modified'] = date_default_timezone_set('Asia/Jakarta');
            $api_access['controller'] = "/api_server";

            echo "paket gratisan";
                echo "<pre>";
                print_r($packages);
                print_r($api_access);
            die();

            $cek1 = $this->crud_model->check('key',$api_access['key'],'access');
            $cek2 = $this->crud_model->check('Package',$packages['Package'],'packages');



            if(count($cek1) >0 && count($cek2) == 0)
            {
                $this->crud_model->insert($packages);
            }
            else{
                $this->crud_model->insert($api_access,'access');
                $this->crud_model->insert($packages,'packages');
            }

        }
        elseif($index == 2)
        {
            $packages['ID_User']    = $this->session->userdata('id_user');
            $packages['Nama_User']  = $this->session->userdata('uname');
            $packages['Package']    = $this->input->post('kategori');
            $packages['jml_brng']   = $this->input->post('jml');
            $packages['type']       = 2;



            $api_access['key']= $this->session->userdata('Tokenize');
            $api_access['date_created']  = date_default_timezone_set('Asia/Jakarta');
            $api_access['date_modified'] = date_default_timezone_set('Asia/Jakarta');
            $api_access['controller'] = "/api_server";

            /**echo "paket gratisan";
            echo "<pre>";
            print_r($packages);
            print_r($api_access);
            die();**/

            $cek1 = $this->crud_model->check('access','key',$api_access['key']);
            $cek2 = $this->crud_model->check('packages','Package',$packages['Package']);
            $cek3 = $this->crud_model->check('packages','type',$packages['type']);

            if(count($cek1)>0)
            {
                if(count($cek2)>0 || count($cek3)>0)
                {
                    $this->crud_model->insert($packages,'packages');
                }

            }
            else{
                $this->crud_model->insert($api_access,'access');
                $this->crud_model->insert($packages,'packages');
            }
        }
    }
}