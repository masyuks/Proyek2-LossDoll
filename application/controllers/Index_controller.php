
<?php
defined('BASEPATH') OR exit('No direct scipt access allowes');
/**
 * 
 */
class Index_controller extends CI_Controller
{
	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
		$this->load->helper('form');
	}

	public function index(){
		...
	}
}
?>
