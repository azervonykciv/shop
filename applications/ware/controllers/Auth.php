<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->helper(array('form','url'));
		$this->load->config('rest');
		$this->load->model('crud_model');
	}

	function index(){

        $this->template->load('frontBase','auth/v_login');
	}

	function register()
	{
		$this->session->sess_destroy();
		$this->template->load('frontBase','auth/register');
	}

	function reg_ad()
	{
		$this->template->load('frontBase','auth/reg_ad');
	}

  function do_login()
  {
        $Email = $this->input->post('Email');
        $Password = $this->input->post('Password');

        $cek = $this->crud_model->cek_user($Email, $Password);

        if (count($cek) == 1) {
            foreach ($cek as $c) {
                $Status = $c['Status'];
                $Id = $c['ID_User'];
                $Nama_User = $c['Nama_User'];
                $Tokenize = $c['Tokenize'];
            }
        }else{
            $this->session->set_flashdata('erLog','Maaf Username/Password anda salah');
            redirect('login','refresh');
        }
        if ($Status == "Admin") {
            $x = $this->session->set_userdata(array(
                'isLogin' => TRUE,
                'uname' =>$Nama_User,
                'Status' => $Status,
                'id_user' => $Id,
            ));
            redirect('dashboard', 'refresh');

        }elseif($Status == "Member"){

                $x = $this->session->set_userdata(array(
                    'isLogin' => TRUE,
                    'uname' => $Nama_User,
                    'Status' => $Status,
                    'id_user' => $Id,
                    'Tokenize' => $Tokenize,
                ));
                redirect('front', 'refresh');
        }
	}

	function do_reg($role)
	{
			$tok = $this->_generate_key();
			date_default_timezone_set('Asia/Jakarta');


			// Register Admin

			if($role == "1") {

					$api_key['key'] = $tok;
					$api_key['level'] = 1;
					$api_key['ignore_limits'] = 0;
					$api_key['date_created'] = date('Y-m-d H:i:s');

					date_default_timezone_set('Asia/Jakarta');
					$user['Nama_user']    = $this->input->post('Nama_User');
					$user['Password']     = password_hash($this->input->post('Password'), PASSWORD_DEFAULT);
					$user['Email']        = $this->input->post('Email');
					$user['created_at']   = date('Y-m-d H:i:s');
					$user['updated_at']           = date('Y-m-d H:i:s');
					$user['Status']              = "Admin";
					$user['tokenize']            = $tok;

					$api_access['key']           = $tok;
					$api_access['date_created']  = date('Y-m-d H:i:s');
					$api_access['date_modified'] = date('Y-m-d H:i:s');
					$api_access['controller']    = "/api_server";

					$ck = $this->crud_model->check('user', 'Email', $user['Email']);

					if ($ck > 0) {
							$this->session->set_flashdata('eReg', 'Username sudah ada');
							redirect('register/reg_ad','refresh');
					} else {

							//$dump = [
							//  'user'       => $user,
							//'api_key'    => $api_key,
							//];
							//var($dump);
							$this->crud_model->insert($user, 'user');
							$this->crud_model->insert($api_key, 'keys');
							$this->crud_model->insert($api_access, 'access');
							redirect('login');
					}

			// Register Member
			}elseif($role == "2")
			{

				$api_key['key'] = $tok;
				$api_key['level'] = 1;
				$api_key['ignore_limits'] = 0;
				$api_key['date_created'] = date('Y-m-d H:i:s');

					$user['Nama_user']          = $this->input->post('Nama_User');
					$user['Password']           = password_hash($this->input->post('Password'), PASSWORD_DEFAULT);
					$user['Email']              = $this->input->post('Email');
					$user['created_at']         = date('Y-m-d H:i:s');
					$user['updated_at']         = date('Y-m-d H:i:s');
					$user['Status']             = "Member";
					$user['tokenize']           = $tok;
					$access['key'] = $tok;
					$ck = $this->crud_model->check('user', 'Email', $user['Email']);

					if ($ck > 0) {
							$this->session->set_flashdata('eReg', 'Username sudah ada');
							redirect('register');
					} else {

							/**$dump = [
							 * 'user'       => $user,
							 * 'api_key'    => $api_key,
							 * ];**/
							//var_dump($dump);
							$this->crud_model->insert($user, 'user');
							$this->crud_model->insert($api_key, 'keys');
							//$this->crud_model->insert($api_access,'access');
							redirect($this->index());
					}
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

    function logout(){
		$this->session->sess_destroy();
		redirect(base_url());
	}
}
