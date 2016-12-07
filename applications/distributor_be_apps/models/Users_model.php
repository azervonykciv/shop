<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users_model extends MY_Model {

	public $_table = 'users';
	public $belongs_to = ['packages'];

}

/* End of file Users_model.php */
/* Location: ./application/models/Users_model.php */