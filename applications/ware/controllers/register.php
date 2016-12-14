<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Register extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->helper(array('form','url'));
        $this->load->model('crud_model');
        $this->load->config('rest');

    }

    function index()
    {
        $this->template->load('frontBase','auth/register');
    }


    function do_reg()
    {
        $user['Nama_user'] = $this->input->post('Nama_User');
        $user['Password'] = password_hash($this->input->post('password'), PASSWORD_DEFAULT);
        $user['created_at'] = date('Y-m-d H:i:s');
        $user['updated_at'] = date('Y-m-d H:i:s');
        $user['Status'] = "Admin";
        $user['tokenize'] = $tok;
        $access['key'] = $tok;
        $ck = $this->crud_model->check('user','Nama_user',$user['Nama_user']);

        if($ck>0)
        {
            $this->session->set_flashdata('err','Username sudah ada');
            redirect('register');
        }else
        {

            //$dump = [
              //  'user'       => $user,
                //'api_key'    => $api_key,
            //];

            //var($dump);
            $this->crud_model->insert($user,'user');
            //$this->crud_model->insert($api_access,'access');

            redirect('login');
        }
    }

    private function _generate_key()
    {
        do
        {
            // Generate a random salt
            $salt = base_convert(bin2hex($this->security->get_random_bytes(64)), 16, 36);

            // If an error occurred, then fall back to the previous method
            if ($salt === FALSE)
            {
                $salt = hash('sha256', time() . mt_rand());
            }

            $new_key = substr($salt, 0, config_item('rest_key_length'));
        }
        while ($this->_key_exists($new_key));

        return $new_key;
    }


    private function _key_exists($key)
    {
        return $this->db
            ->where(config_item('rest_key_column'), $key)
            ->count_all_results(config_item('rest_keys_table')) > 0;
    }






    public function index()
  {
    $this->template->load('frontBase','auth/register');
  }

  public function do_reg()
  {

        $tok = $this->_generate_key();
        $api_key['key']           = $tok;
        $api_key['level']         = 1;
        $api_key['ignore_limits'] = 0;
        $api_key['date_created']  = date('Y-m-d H:i:s');

        /**$api_access['key']        = $api_key['key'];
        $api_access['date_created']  = date_default_timezone_set('Asia/Jakarta');
        $api_access['date_modified'] = date_default_timezone_set('Asia/Jakarta');
        $api_access['controller'] = $package->controller;
        **/


        $user['Nama_user']  = $this->input->post('Nama_User');
        $user['Password']   = password_hash($this->input->post('password'), PASSWORD_DEFAULT);
        $user['Email']      = $this->input->post('Email');
        $user['created_at'] = date('Y-m-d H:i:s');
        $user['updated_at'] = date('Y-m-d H:i:s');
        $user['Status'] = "Member";
        $user['tokenize'] = $tok;
        $access['key'] = $tok;
        $ck = $this->crud_model->check('user','Email',$user['Email']);

        if($ck>0)
        {
            $this->session->set_flashdata('err','Username sudah ada');
            redirect('register');
        }else
        {

            /**$dump = [
                'user'       => $user,
                'api_key'    => $api_key,
            ];**/



            //var_dump($dump);
        
            $this->crud_model->insert($user,'user');
            $this->crud_model->insert($api_key,'keys');
            //$this->crud_model->insert($api_access,'access');

            redirect('login');
        }
    }

    private function _generate_key()
    {
        do
        {
            // Generate a random salt
            $salt = base_convert(bin2hex($this->security->get_random_bytes(64)), 16, 36);

            // If an error occurred, then fall back to the previous method
            if ($salt === FALSE)
            {
                $salt = hash('sha256', time() . mt_rand());
            }

            $new_key = substr($salt, 0, config_item('rest_key_length'));
        }
        while ($this->_key_exists($new_key));

        return $new_key;
    }



    private function _key_exists($key)
    {
        return $this->db
            ->where(config_item('rest_key_column'), $key)
            ->count_all_results(config_item('rest_keys_table')) > 0;
    }
}
