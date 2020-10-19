<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');

    class admin extends CI_Controller {
    
        
        public function __construct()
        {
            parent::__construct();
            $this->load->helper('url');
        }
        
        public function index()
        {
        //    $this->admin_model->index();
            $data['title'] = 'Halaman Admin';
           $this->load->view('template/header_admin',$data);
           $this->load->view('template/sidebar_admin');
           $this->load->view('admin/home/index', $data);
           $this->load->view('template/footer_admin');  
        }
    }
        /* End of fils admin.php */
    

?>