<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api_keys_model extends MY_Model{
  public $_table = 'api_keys';
	public $belongs_to = ['users'];
}
