<?php

class Auth{
	/**
	 * CI Singleton
	 * @var	object
	 */
	protected $CI;

	function __construct(){
		$this->CI =& get_instance();
       	$this->CI->load->database();
	}

	function authLogin($username, $password){
		$sql = "SELECT * FROM oauth_users WHERE username='".$username."' and password='".$password."' ";
		$rst = $this->CI->db->query($sql);
		if ($rst->num_rows() > 0)
			return true;
		else
			return false;
	}

	function getUser($username, $password){
		$sql = "SELECT * FROM oauth_users WHERE username='".$username."' and password='".$password."' ";
		$rst = $this->CI->db->query($sql);
		if ($rst->num_rows() > 0)
		{
		   $row = $rst->row();
		   return $row;
		}
	}

	function getOauth_clients($client_id){
		$sql = "SELECT * FROM oauth_clients WHERE client_id='".$client_id."' ";
		$rst = $this->CI->db->query($sql);
		if ($rst->num_rows() > 0)
		{
		   return $rst->row();
		}
	}
}