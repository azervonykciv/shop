<?php

include(APPPATH.'libraries/REST_Controller.php');
class api_server extends REST_Controller
{

    public function __construct($config = 'rest')
    {
        parent::__construct($config);
        $this->load->model('crud_model');
    }

    public function index_get()
    {


        $tab = $this->get('tab');
        $id_user = $this->get('id_user');
        $kat1 = $this->get('kat1');
        $kat2 = $this->get('kat2');
        $cond = $this->get('cond');
        // 100 = Gratis, 101 = Premium API

        $identifier = $this->crud_model->where('packages','ID_User',$id_user);

        /**echo "paket gratisan";
        echo "<pre>";
        print_r($tab);
        print_r($id_user);
        print_r($kat1);
        print_r($kat2);
        print_r($cond);
        print_r($identifier->jml_brng);
        die();**/

        //$barang = $this->crud_model->($tab,$kat1,$kat2,$identifier->jml_brng)->result_array();

        $barang = $this->crud_model->get_all('barang');

        $this->response($barang,200);

    }

    public function index_put()
    {
        $id2 = $this->put('id1');
        $barang = $this->crud_model->where('barang','KODE_BARANG',$id2,1);
        //$stok = $barang->QTY - 1;
        //$data['QTY'] = $stok;

        print_r($barang);

        die;

       // $update = $this->crud_model->update('barang',$data,'KODE_BARANG',$id2);
        //if($update)
        //{
         //   $this->response($data,200);
        //} else
        //{
          //  $this->response(array('status' => 'fail',502));
        //}

    }
}