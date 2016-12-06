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
        $col = $this->get('col');
        $tab = $this->get('tab');
        $barang = $this->crud_model->get_wtcol($tab,$col)->result();
        $this->response($barang,200);
    }

    public function index_put()
    {
        $col = $this->put('KODE_BARANG');
        $barang = $this->crud_model->update('barang',$data,'KODE_BARANG','')
    }
}