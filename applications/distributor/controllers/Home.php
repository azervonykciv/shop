<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller{

  public function __construct()
  {
    parent::__construct();
    $this->load->helper('MyCons');

  }

  public function index()
  {
    $data = [
      'selection' => getSelection(),
    ];
    $this->load->view('pages/home_view', $data);
  }

  public function transaction($package)
  {
    if(!$this->session->has_userdata('username'))
      redirect('auth');

    $input = $this->input->post('selection');
    echo "<pre>";
    print_r([$package, $input]);
    die();
  }

}
