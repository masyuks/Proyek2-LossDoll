<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');

    class detail_donasi extends CI_Controller {
    
        
        public function __construct()
        {
            parent::__construct();
            
        }
        
        public function index()
        {
           $data['title'] = 'Halaman Data Detail Donasi';
           $this->load->view('template/header_admin',$data);
           $this->load->view('template/sidebar_admin');
           $this->load->view('admin/detail_donasi/index', $data);
           $this->load->view('template/footer_admin');  
        }
}
?>        