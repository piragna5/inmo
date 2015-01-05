<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

function __construct()
	{
		parent::__construct();

		$this->load->database();
		$this->load->helper('url');

        /* ------------------ */    
 
        $this->load->library('grocery_CRUD');
        $this->load->library('image_CRUD');  
	}

	function _example_output($output = null)
    {
        $this->load->view('example.php',$output);  

    }

function index(){
	$crud = new grocery_CRUD();
        $crud->set_table('casas');
        $crud->set_subject('Casa');
        $crud->columns('precio','terreno_m2','construccion_m2');
        $crud->set_language("spanish");
        $crud->add_action('Equippos', base_url('assets/grocery_crud/themes/flexigrid/css/images/add_image.png'), 'admin/imageUpload');
        $output = $crud->render();
        $this->_example_output($output);
}

function imageUpload($primary_key)
{
      
    
   
    $image_crud = new image_CRUD();
 
    $image_crud->set_table('example_1');
    
    //If your table have by default the "id" field name as a primary key this line is not required
    $image_crud->set_primary_key_field('id');
    $image_crud->set_url_field('url');
    $image_crud->set_image_path('assets/uploads');
    $image_crud->set_relation_field('idCasa');
    $output = $image_crud->render();
 
    $this->_example_output($output);
}

}
?>