<?php
/**
* @package     oauth2
* @author      xiaocao
* @link        http://homeway.me/
* @copyright   Copyright(c) 2015
* @version     15.6.29
**/

defined('BASEPATH') OR exit('No direct script access allowed');

class authUser extends CI_Controller {
    function __construct(){
        @session_start();
        parent::__construct();
        $this->load->library("Server", "server");
        $this->load->library("Auth", "auth");
        $this->load->helper('url');
    }
    function index(){}
    function login(){
        $this->server->check_client_id();
        $username = trim($this->input->post("username"));
        $password = trim($this->input->post("password"));
        if($this->auth->authLogin($username, $password)){
            $data_user = $this->auth->getUser($username, $password);
            //user session
            $_SESSION['is_login'] = 1;
            $_SESSION['username'] = $username;
            $_SESSION['first_name'] = $data_user->first_name;
            $_SESSION['last_name'] = $data_user->first_name;

            $data_client = $this->auth->getOauth_clients($this->input->get("client_id"));
            //client session
            $_SESSION['client_id'] = $data_client->client_id;
            $_SESSION['client_secret'] = $data_client->client_secret;
            $_SESSION['redirect_uri'] = $data_client->redirect_uri;
            $_SESSION['grant_type'] = $data_client->grant_types;
            $_SESSION['scope'] = $data_client->scope;
            
            $this->server->authorize(true);
        } else {
            if ( $this->input->post("username") == NULL ) {
                $data = array(
                    "error" => "Masukan User dan Passwordnya"
                );  
            } else {
                $data = array(
                    "error" => "User dan Passwordnya salah!"
                );
            }
            $this->load->view("oauth2/authuser", $data);
        }
    }
    function token(){
        $this->server->authorization_code("yes");
    }
    function refresh_token(){
        $this->server->refresh_token();
    }
    function logout(){
        session_unset();
        session_destroy();
        redirect($this->input->get("url"), 'refresh');
    }
}
