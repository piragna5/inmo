<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require(APPPATH'.libraries/REST_Controller.php');

class Casas extends REST_Controller
{
    public function index_get()
    {
        // Display all books
        $this->response($this->db->get('casas')->result());
    }

    public function index_post()
    {
        // Create a new book
    }
}

?>