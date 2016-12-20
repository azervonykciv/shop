<?php
include(APPPATH.'libraries/REST_Controller.php');
class api_server extends REST_Controller
{

    public function __construct($config = 'rest')
    {
        parent::__construct($config);
        $this->load->model('crud_model');
    }


//For get barang by request
    public function index_get()
    {
      $idf = $this->get('idf');
// 01 standard req - 02 spesific req
      if($idf == "01")
      {
          $tab = $this->get('tab');
          $id_user = $this->get('id_user');
          $kat1 = $this->get('kat1');
          $kat2 = $this->get('kat2');

          $identifier = $this->crud_model->match('packages','ID_User',$id_user)->row();
          $barang = $this->crud_model->match($tab,$kat1,$kat2,$identifier->jml_brng)->result();
          if($barang){
              $this->response($barang,200);
          }
      }elseif($idf == "02")
      {
        $tab = $this->get('tab');
        $
      }
    }

    public function index_put()
    {
        $id2 = $this->put('id1');
        $barang = $this->crud_model->match('barang','KODE_BARANG',$id2)->row();
        $data['QTY'] = $barang->QTY - 1;


       $update = $this->crud_model->update('barang',$data,'KODE_BARANG',$id2);
        //if($update)
        //{
         //   $this->response($data,200);
        //} else
        //{
          //  $this->response(array('status' => 'fail',502));
        //}
    }
}
