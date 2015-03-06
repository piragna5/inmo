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
    //echo "hola".$this->getRandomCode();
    if($this->session->userdata('logged_in'))
   {
	$crud = new grocery_CRUD();
        $crud->set_table('casas');
        $crud->set_subject('Casa');
        $crud->columns('precio','terreno_m2','direccion_colonia','direccion_calle','direccion_numero','destacada');
        //$crud->fields('precio','rama','fecha_inicio','fecha_termino', 'puntos_por_ganar', 'puntos_por_perder');
        $crud->required_fields('venta_renta','terreno_m2','construccion_m2','direccion_numero','direccion_calle','direccion_colonia',
            'direccion_municipio','direccion_estado','recamaras','banos','precio',
            'agua','drenaje','luz','contacto_telefono','descripcion');
        $crud->display_as('banos','Baños');
        $crud->display_as('destacada','Destacada');
        $crud->display_as('venta_renta','Venta o Renta');
        $crud->display_as('construccion_m2','Construccion en metros cuadrados');
        $crud->display_as('terreno_m2','Terreno en metros cuadrados');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_numero','Numero');
        $crud->display_as('direccion_colonia','Colonia');
        $crud->display_as('direccion_municipio','Municipio');
        $crud->display_as('direccion_estado','Estado');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_codigo_postal','Codigo Postal');
        $crud->display_as('direccion_pais','Pais');
        $crud->display_as('espacio_autos','Espacio para Autos');
        $crud->display_as('contacto_telefono','Telefono');
        $crud->display_as('contacto_email','Email');
        $crud->display_as('mascotas','Admiten Mascotas');
        $crud->set_rules('banos','Baños','integer');
        $crud->set_rules('construccion_m2','Construccion en metros cuadrados','integer');
        $crud->set_rules('terreno_m2','Terreno en metros cuadrados','integer');
        $crud->set_rules('precio','Precio','numeric');
        $crud->set_rules('recamaras','Recamaras','integer');
        $crud->set_rules('patios','Patios','integer');
        $crud->set_rules('espacio_autos','Espacio para Autos','integer');
        $crud->set_rules('accesos','Accesos','integer');
        $crud->set_rules('banos','Baños','integer');
        $crud->set_rules('contacto_telefono','Telefono','integer');
        $crud->set_rules('direccion_codigo_postal','Codigo Postal','integer');

        $crud->field_type('direccion_latitud', 'hidden');
        $crud->field_type('direccion_longitud', 'hidden');
        //$crud->field_type('primer_rama','enum',array('femenil','varonil'));
        $crud->field_type('idcasa', 'hidden', $this->getRandomCode());
        $crud->set_language("spanish");
        $crud->add_action('Equippos', base_url('assets/grocery_crud/themes/flexigrid/css/images/add_image.png'), 'admin/imageUpload');
       
        //$crud->callback_after_insert(array($this, 'insertarLatLon'));

        $output = $crud->render();
        $this->_example_output($output);
}
else
   {
     //If no session, redirect to login page
     redirect('login', 'refresh');
   }
}

function insertarLatLon($post_array,$primary_key)
{
    $user_logs_insert = array(
        "user_id" => $primary_key,
        "created" => date('Y-m-d H:i:s'),
        "last_update" => date('Y-m-d H:i:s')
    );
 
    $this->db->insert('user_logs',$user_logs_insert);
 
    return true;
}

function terrenos(){
    if($this->session->userdata('logged_in'))
   {
    $crud = new grocery_CRUD();
        $crud->set_table('terrenos');
        $crud->set_subject('Terreno');
        $crud->columns('precio','terreno_m2','direccion_colonia','direccion_calle','direccion_numero','destacada');
        $crud->required_fields('venta_renta','terreno_m2','direccion_numero','direccion_calle','direccion_colonia',
            'direccion_municipio','direccion_estado','precio',
            'agua','drenaje','luz','contacto_telefono','descripcion');
        $crud->display_as('venta_renta','Venta o Renta');
        $crud->display_as('destacada','Destacado');
        $crud->display_as('terreno_m2','Terreno en metros cuadrados');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_numero','Numero');
        $crud->display_as('direccion_colonia','Colonia');
        $crud->display_as('direccion_municipio','Municipio');
        $crud->display_as('direccion_estado','Estado');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_codigo_postal','Codigo Postal');
        $crud->display_as('direccion_pais','Pais');
        $crud->display_as('direccion_latitud','Latitud');
        $crud->display_as('direccion_longitud','Longitud');
        $crud->display_as('contacto_telefono','Telefono');
        $crud->display_as('contacto_email','Email');
        
        $crud->set_rules('terreno_m2','Terreno en metros cuadrados','integer');
        $crud->set_rules('precio','Precio','numeric');
        $crud->set_rules('direccion_codigo_postal','Codigo Postal','integer');
        $crud->display_as('contacto_telefono','Telefono');
        $crud->field_type('direccion_latitud', 'hidden');
        $crud->field_type('direccion_longitud', 'hidden');
        $crud->field_type('idterrenos', 'hidden', $this->getRandomCode());
        $crud->set_language("spanish");

        $crud->add_action('Equippos', base_url('assets/grocery_crud/themes/flexigrid/css/images/add_image.png'), 'admin/imageUpload');
        $output = $crud->render();
        $this->_example_output($output);
}
else
   {
     //If no session, redirect to login page
     redirect('login', 'refresh');
   }
}

function departamentos(){
    if($this->session->userdata('logged_in'))
   {
    $crud = new grocery_CRUD();
        $crud->set_table('departamentos');
        $crud->set_subject('Departamento');
        $crud->columns('precio','terreno_m2','direccion_colonia','direccion_calle','direccion_numero','destacada');
        $crud->required_fields('venta_renta','terreno_m2','construccion_m2','direccion_numero','direccion_calle','direccion_colonia',
            'direccion_municipio','direccion_estado','recamaras','banos','precio',
            'agua','drenaje','luz','contacto_telefono','descripcion');
        $crud->display_as('banos','Baños');
        $crud->display_as('destacada','Destacado');
        $crud->display_as('venta_renta','Venta o Renta');
        $crud->display_as('construccion_m2','Construccion en metros cuadrados');
        $crud->display_as('terreno_m2','Terreno en metros cuadrados');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_numero','Numero');
        $crud->display_as('direccion_colonia','Colonia');
        $crud->display_as('direccion_municipio','Municipio');
        $crud->display_as('direccion_estado','Estado');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_codigo_postal','Codigo Postal');
        $crud->display_as('direccion_pais','Pais');
        $crud->display_as('direccion_latitud','Latitud');
        $crud->display_as('direccion_longitud','Longitud');
        $crud->display_as('espacio_autos','Espacio para Autos');
        $crud->display_as('contacto_telefono','Telefono');
        $crud->display_as('contacto_email','Email');
        $crud->display_as('mascotas','Admiten Mascotas');
        $crud->set_rules('construccion_m2','Construccion en metros cuadrados','integer');
        $crud->set_rules('terreno_m2','Terreno en metros cuadrados','integer');
        $crud->set_rules('precio','Precio','numeric');
        $crud->set_rules('banos','Baños','integer');
        $crud->set_rules('recamaras','Recamaras','integer');
        $crud->set_rules('espacio_autos','Espacio para Autos','integer');
        $crud->set_rules('direccion_codigo_postal','Codigo Postal','integer');
        $crud->set_rules('contacto_telefono','Telefono','integer');
        $crud->field_type('direccion_latitud', 'hidden');
        $crud->field_type('direccion_longitud', 'hidden');
        $crud->field_type('iddepartamentos', 'hidden', $this->getRandomCode());
        $crud->set_language("spanish");
        $crud->add_action('Equippos', base_url('assets/grocery_crud/themes/flexigrid/css/images/add_image.png'), 'admin/imageUpload');
        $output = $crud->render();
        $this->_example_output($output);
}
else
   {
     //If no session, redirect to login page
     redirect('login', 'refresh');
   }
}

function bodegas(){
    if($this->session->userdata('logged_in'))
   {
    $crud = new grocery_CRUD();
        $crud->set_table('bodegas');
        $crud->set_subject('Bodega');
        $crud->columns('precio','terreno_m2','direccion_colonia','direccion_calle','direccion_numero','destacada');
        $crud->required_fields('venta_renta','terreno_m2','construccion_m2','direccion_numero','direccion_calle','direccion_colonia',
            'direccion_municipio','direccion_estado','recamaras','banos','precio',
            'agua','drenaje','luz','contacto_telefono','descripcion');
        $crud->display_as('banos','Baños');
        $crud->display_as('destacada','Destacada');
        $crud->display_as('altura_m','Altura en metros');
        $crud->display_as('venta_renta','Venta o Renta');
        $crud->display_as('construccion_m2','Construccion en metros cuadrados');
        $crud->display_as('terreno_m2','Terreno en metros cuadrados');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_numero','Numero');
        $crud->display_as('direccion_colonia','Colonia');
        $crud->display_as('direccion_municipio','Municipio');
        $crud->display_as('direccion_estado','Estado');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_codigo_postal','Codigo Postal');
        $crud->display_as('direccion_pais','Pais');
        $crud->display_as('direccion_latitud','Latitud');
        $crud->display_as('direccion_longitud','Longitud');
        $crud->display_as('espacio_autos','Espacio para Autos');
        $crud->display_as('contacto_telefono','Telefono');
        $crud->display_as('contacto_email','Email');
        $crud->display_as('ideal','Ideal para');
        $crud->display_as('patio_maniobras','Patio de Maniobras');
        $crud->display_as('montacarga','Zona de Montacargas');
        
        $crud->set_rules('construccion_m2','Construccion en metros cuadrados','integer');
        $crud->set_rules('terreno_m2','Terreno en metros cuadrados','integer');
        $crud->set_rules('precio','Precio','numeric');
        $crud->set_rules('direccion_codigo_postal','Codigo Postal','integer');
        $crud->set_rules('banos','Baños','integer');
        $crud->set_rules('contacto_telefono','Telefono','integer');
        $crud->field_type('direccion_latitud', 'hidden');
        $crud->field_type('direccion_longitud', 'hidden');
        $crud->add_action('Equippos', base_url('assets/grocery_crud/themes/flexigrid/css/images/add_image.png'), 'admin/imageUpload');
        $crud->field_type('idbodega', 'hidden', $this->getRandomCode());
        $crud->set_language("spanish");
        //$crud->add_action('Equippos', base_url('assets/grocery_crud/themes/flexigrid/css/images/add_image.png'), 'admin/imageUpload');
        $output = $crud->render();
        $this->_example_output($output);
}
else
   {
     //If no session, redirect to login page
     redirect('login', 'refresh');
   }
}

function oficinas(){
    if($this->session->userdata('logged_in'))
   {
    $crud = new grocery_CRUD();
        $crud->set_table('oficinas');
        $crud->set_subject('Oficina');
        $crud->columns('precio','terreno_m2','direccion_colonia','direccion_calle','direccion_numero','destacada');
        $crud->required_fields('venta_renta','terreno_m2','construccion_m2','direccion_numero','direccion_calle','direccion_colonia',
            'direccion_municipio','direccion_estado','recamaras','banos','precio',
            'agua','drenaje','luz','contacto_telefono','descripcion');
        $crud->display_as('banos','Baños');
        $crud->display_as('destacada','Destacada');
        $crud->display_as('venta_renta','Venta o Renta');
        $crud->display_as('construccion_m2','Construccion en metros cuadrados');
        $crud->display_as('terreno_m2','Terreno en metros cuadrados');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_numero','Numero');
        $crud->display_as('direccion_colonia','Colonia');
        $crud->display_as('direccion_municipio','Municipio');
        $crud->display_as('direccion_estado','Estado');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_codigo_postal','Codigo Postal');
        $crud->display_as('direccion_pais','Pais');
        $crud->display_as('direccion_latitud','Latitud');
        $crud->display_as('direccion_longitud','Longitud');
        $crud->display_as('espacio_autos','Espacio para Autos');
        $crud->display_as('contacto_telefono','Telefono');
        $crud->display_as('contacto_email','Email');
        $crud->display_as('sala_juntas','Sala de Juntas');
        $crud->display_as('numero_usuarios','Numero de Usuarios');
        
        $crud->set_rules('construccion_m2','Construccion en metros cuadrados','integer');
        $crud->set_rules('terreno_m2','Terreno en metros cuadrados','integer');
        $crud->set_rules('precio','Precio','numeric');
        $crud->set_rules('banos','Baños','integer');
        $crud->set_rules('direccion_codigo_postal','Codigo Postal','integer');
        $crud->set_rules('espacio_autos','Espacio para Autos','integer');
        $crud->set_rules('contacto_telefono','Telefono','integer');
        $crud->set_rules('numero_usuarios','Numero de Usuarios','integer');
        $crud->field_type('direccion_latitud', 'hidden');
        $crud->field_type('direccion_longitud', 'hidden');
        $crud->add_action('Equippos', base_url('assets/grocery_crud/themes/flexigrid/css/images/add_image.png'), 'admin/imageUpload');
        $crud->field_type('idoficina', 'hidden', $this->getRandomCode());
        $crud->set_language("spanish");
        //$crud->add_action('Equippos', base_url('assets/grocery_crud/themes/flexigrid/css/images/add_image.png'), 'admin/imageUpload');
        $output = $crud->render();
        $this->_example_output($output);
}
else
   {
     //If no session, redirect to login page
     redirect('login', 'refresh');
   }
}

function locales(){
     if($this->session->userdata('logged_in'))
   {
    $crud = new grocery_CRUD();
        $crud->set_table('locales');
        $crud->set_subject('Local');
        $crud->required_fields('venta_renta','terreno_m2','construccion_m2','direccion_numero','direccion_calle','direccion_colonia',
            'direccion_municipio','direccion_estado','recamaras','banos','precio',
            'agua','drenaje','luz','contacto_telefono','descripcion');
        $crud->columns('precio','terreno_m2','direccion_colonia','direccion_calle','direccion_numero','destacada');
        $crud->display_as('banos','Baños');
        $crud->display_as('destacada','Destacado');
        $crud->display_as('venta_renta','Venta o Renta');
        $crud->display_as('construccion_m2','Construccion en metros cuadrados');
        $crud->display_as('terreno_m2','Terreno en metros cuadrados');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_numero','Numero');
        $crud->display_as('direccion_colonia','Colonia');
        $crud->display_as('direccion_municipio','Municipio');
        $crud->display_as('direccion_estado','Estado');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_codigo_postal','Codigo Postal');
        $crud->display_as('direccion_pais','Pais');
        $crud->display_as('direccion_latitud','Latitud');
        $crud->display_as('direccion_longitud','Longitud');
        $crud->display_as('espacio_autos','Espacio para Autos');
        $crud->display_as('contacto_telefono','Telefono');
        $crud->display_as('contacto_email','Email');
        
        $crud->set_rules('construccion_m2','Construccion en metros cuadrados','integer');
        $crud->set_rules('terreno_m2','Terreno en metros cuadrados','integer');
        $crud->set_rules('precio','Precio','numeric');
        $crud->set_rules('banos','Baños','integer');
        $crud->set_rules('direccion_codigo_postal','Codigo Postal','integer');
        $crud->set_rules('espacio_autos','Espacio para Autos','integer');
        $crud->set_rules('contacto_telefono','Telefono','integer');
        $crud->field_type('direccion_latitud', 'hidden');
        $crud->field_type('direccion_longitud', 'hidden');
        $crud->field_type('idlocal', 'hidden', $this->getRandomCode());
        $crud->set_language("spanish");
        $crud->add_action('Equippos', base_url('assets/grocery_crud/themes/flexigrid/css/images/add_image.png'), 'admin/imageUpload');
        $output = $crud->render();
        $this->_example_output($output);
}
else
   {
     //If no session, redirect to login page
     redirect('login', 'refresh');
   }
}

function nave_industrial(){
     if($this->session->userdata('logged_in'))
   {
    $crud = new grocery_CRUD();
        $crud->set_table('nave_industrial');
        $crud->set_subject('Nave Industrial');
        $crud->columns('precio','terreno_m2','direccion_colonia','direccion_calle','direccion_numero','destacada');
        $crud->required_fields('venta_renta','terreno_m2','construccion_m2','direccion_numero','direccion_calle','direccion_colonia',
            'direccion_municipio','direccion_estado','recamaras','banos','precio',
            'agua','drenaje','luz','contacto_telefono','descripcion');
        $crud->display_as('banos','Baños');
        $crud->display_as('destacada','Destacada');
        $crud->display_as('venta_renta','Venta o Renta');
        $crud->display_as('construccion_m2','Construccion en metros cuadrados');
        $crud->display_as('terreno_m2','Terreno en metros cuadrados');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_numero','Numero');
        $crud->display_as('direccion_colonia','Colonia');
        $crud->display_as('direccion_municipio','Municipio');
        $crud->display_as('direccion_estado','Estado');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_codigo_postal','Codigo Postal');
        $crud->display_as('direccion_pais','Pais');
        $crud->display_as('direccion_latitud','Latitud');
        $crud->display_as('direccion_longitud','Longitud');
        $crud->display_as('espacio_autos','Espacio para Autos');
        $crud->display_as('contacto_telefono','Telefono');
        $crud->display_as('contacto_email','Email');
        $crud->display_as('patio_maniobras','Patio de Maniobras');
        
        $crud->set_rules('construccion_m2','Construccion en metros cuadrados','integer');
        $crud->set_rules('terreno_m2','Terreno en metros cuadrados','integer');
        $crud->set_rules('precio','Precio','numeric');
        $crud->set_rules('banos','Baños','integer');
        $crud->set_rules('altura','Altura','integer');
        $crud->set_rules('direccion_codigo_postal','Codigo Postal','integer');
        $crud->set_rules('contacto_telefono','Telefono','integer');
        $crud->field_type('direccion_latitud', 'hidden');
        $crud->field_type('direccion_longitud', 'hidden');
        $crud->field_type('idnave_industrial', 'hidden', $this->getRandomCode());
        $crud->set_language("spanish");
        $crud->add_action('Equippos', base_url('assets/grocery_crud/themes/flexigrid/css/images/add_image.png'), 'admin/imageUpload');
        $output = $crud->render();
        $this->_example_output($output);
}
else
   {
     //If no session, redirect to login page
     redirect('login', 'refresh');
   }
}

function rancho(){
     if($this->session->userdata('logged_in'))
   {
    $crud = new grocery_CRUD();
        $crud->set_table('rancho');
        $crud->set_subject('Rancho');
        $crud->columns('precio','terreno_m2','direccion_colonia','direccion_calle','direccion_numero','destacada');
        $crud->required_fields('venta_renta','terreno_m2','construccion_m2','direccion_numero','direccion_calle','direccion_colonia',
            'direccion_municipio','direccion_estado','recamaras','banos','precio',
            'agua','drenaje','luz','contacto_telefono','descripcion');
        $crud->display_as('banos','Baños');
        $crud->display_as('destacada','Destacado');
        $crud->display_as('venta_renta','Venta o Renta');
        $crud->display_as('construccion_m2','Construccion en metros cuadrados');
        $crud->display_as('terreno_m2','Terreno en metros cuadrados');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_numero','Numero');
        $crud->display_as('direccion_colonia','Colonia');
        $crud->display_as('direccion_municipio','Municipio');
        $crud->display_as('direccion_estado','Estado');
        $crud->display_as('direccion_calle','Calle');
        $crud->display_as('direccion_codigo_postal','Codigo Postal');
        $crud->display_as('direccion_pais','Pais');
        $crud->display_as('direccion_latitud','Latitud');
        $crud->display_as('direccion_longitud','Longitud');
        $crud->display_as('espacio_autos','Espacio para Autos');
        $crud->display_as('contacto_telefono','Telefono');
        $crud->display_as('contacto_email','Email');
        
        $crud->set_rules('construccion_m2','Construccion en metros cuadrados','integer');
        $crud->set_rules('terreno_m2','Terreno en metros cuadrados','integer');
        $crud->set_rules('precio','Precio','numeric');
        $crud->set_rules('banos','Baños','integer');
        $crud->set_rules('direccion_codigo_postal','Codigo Postal','integer');
        $crud->set_rules('recamaras','Recamaras','integer');
        $crud->set_rules('contacto_telefono','Telefono','integer');
        $crud->field_type('direccion_latitud', 'hidden');
        $crud->field_type('direccion_longitud', 'hidden');
        $crud->field_type('idrancho', 'hidden', $this->getRandomCode());
        $crud->set_language("spanish");
        $crud->add_action('Equippos', base_url('assets/grocery_crud/themes/flexigrid/css/images/add_image.png'), 'admin/imageUpload');
        $output = $crud->render();
        $this->_example_output($output);
}
else
   {
     //If no session, redirect to login page
     redirect('login', 'refresh');
   }
}

function usuarios()
{
    if($this->session->userdata('logged_in'))
   {
    $crud = new grocery_CRUD();
        $crud->set_table('usuarios');
        $crud->set_subject('Usuario');
        $crud->columns('username');
        $crud->required_fields('username','password');
        $crud->display_as('username','Usuario');
        $crud->display_as('password','Contraseña');
        $crud->field_type('id','hidden', $this->getRandomCode());
        $crud->set_language("spanish");
        $output = $crud->render();
        $this->_example_output($output);

}
else
   {
     //If no session, redirect to login page
     redirect('login', 'refresh');
   }
}

function imageUpload($primary_key)
{ 
    //$crud = new grocery_CRUD();
    $image_crud = new image_CRUD();
    $image_crud->set_primary_key_field('id');
    $image_crud->set_url_field('url');
    $image_crud->set_table('images')
        ->set_image_path('assets/uploads'); 
    $image_crud->set_relation_field('idcasa'); 
    //$crud->field_type('id','hidden', $this->getRandomCode());  
    $output = $image_crud->render();
    $this->_example_output($output);      



}


function getRandomCode(){
    $an = "0123456789";
    $su = strlen($an) - 1;
    return substr($an, rand(0, $su), 1) .
            substr($an, rand(0, $su), 1).
            substr($an, rand(0, $su), 1).
            substr($an, rand(0, $su), 1).
            substr($an, rand(0, $su), 1).
            substr($an, rand(0, $su), 1).
            substr($an, rand(0, $su), 1).
            substr($an, rand(0, $su), 1).
            substr($an, rand(0, $su), 1).
            substr($an, rand(0, $su), 1).
            substr($an, rand(0, $su), 1).
            substr($an, rand(0, $su), 1).
            substr($an, rand(0, $su), 1).
            substr($an, rand(0, $su), 1).
            substr($an, rand(0, $su), 1);
    }

function logout()
 {
   $this->session->unset_userdata('logged_in');
   session_destroy();
   redirect('login', 'refresh');
 }

}
?>