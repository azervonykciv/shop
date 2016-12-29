<?php
include(APPPATH.'libraries/REST_Controller.php');
class Api_server extends REST_Controller
{

    public function __construct($config = 'rest')
    {
        parent::__construct($config);
        $this->load->model('crud_model');
    }


//For get barang by request
    public function index_get()
    {
          $tab = $this->get('tab');
          $id_user = $this->get('id_user');
          $kat1 = $this->get('kat1');
          $kat2 = $this->get('kat2');

          $identifier = $this->crud_model->match('packages','ID_User',$id_user)->row();
          $barang = $this->crud_model->match($tab,$kat1,$kat2,$identifier->jml_brng)->result();
          if($barang) {
              $this->response($barang, 200);
          }
    }

    public function stock_get()
    {
        $id2 = $this->get('id1');
        $barang = $this->crud_model->match('barang','KODE_BARANG',$id2)->row();

      $data['QTY'] = $barang->QTY - 1;
      $update = $this->crud_model->update('barang',$data,'KODE_BARANG',$id2);
    }
}
