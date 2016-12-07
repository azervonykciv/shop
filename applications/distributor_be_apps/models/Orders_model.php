<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Orders_model extends MY_Model {

	public $_table = 'orders';
	public $belongs_to = ['packages', 'users'];

}

/* End of file Users_model.php */
/* Location: ./application/models/Users_model.php */