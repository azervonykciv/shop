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
        $col = $this->get('col');
        $barang = $this->crud_model->get_wtcol($tab,$col)->result();

        if($barang)
        {
            $this->response($barang,200);
        }

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