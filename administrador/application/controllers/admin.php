<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

function __construct()
	{
		parent::__construct();

		$this->load->database();
		$this->load->helper('url');

        /* ------------------ */    
 
        $this->load->library('grocery_CRUD');
	}

	function _example_output($output = null)
    {
        $this->load->view('example.php',$output);  

    }

function index(){
	$crud = new grocery_CRUD();
        $crud->set_table('casas');
        $crud->set_subject('Casa');
        $crud->set_language("spanish");
        $output = $crud->render();
        $this->_example_output($output);
}

}


?>