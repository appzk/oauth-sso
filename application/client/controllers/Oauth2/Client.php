<?php
/**
* @package     oauth2
* @author      ahmadluky
* @link        achluky.github.io
**/

defined('BASEPATH') OR exit('No direct script access allowed');

class Client extends CI_Controller {
    function __construct(){
        @session_start();
        parent::__construct();
    }

    function index(){
        if ($this->input->get("code") != NULL) {
            if (isset($_SESSION['refresh_token']) and $_SESSION['refresh_token'] != NULL) {
                $data = array(
                    'client_id' => $_SESSION["client_id"],
                    'client_secret' => $_SESSION["client_secret"],
                    'refresh_token' => $_SESSION["refresh_token"],
                    'grant_type' => 'refresh_token',
                    'scope' => 'userinfo'
                );
                $rst = $this->curl('http://localhost/oauth/provider.php/Oauth2/authUser/refresh_token', $data);
                $rst_array = json_decode(trim($rst), TRUE);
                //token session
                $_SESSION['access_token'] = $rst_array['access_token'];
                $_SESSION['refresh_token'] = $rst_array['refresh_token'];
                $_SESSION['scope'] = $rst_array['scope'];  
            }else{  
                $data = array(
                    'code' => $this->input->get("code"),
                    'client_id' => $_SESSION["client_id"],
                    'client_secret' => $_SESSION["client_secret"],
                    'redirect_uri' => $_SESSION["redirect_uri"],
                    'grant_type' => 'authorization_code',
                    'scope' => 'userinfo'
                );
                $rst = $this->curl('http://localhost/oauth/provider.php/Oauth2/authUser/token', $data);
                $rst_array = json_decode(trim($rst), TRUE);
                //token session
                $_SESSION['access_token'] = $rst_array['access_token'];
                $_SESSION['refresh_token'] = $rst_array['refresh_token'];
                $_SESSION['scope'] = $rst_array['scope'];
            }
        }

        $this->load->view("oauth2/client");
    }

    function curl($url, $data){
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_POST, true);  // tell curl you want to post something
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        $response = curl_exec($ch);
        curl_close($ch);
        return $response;
    }
}
