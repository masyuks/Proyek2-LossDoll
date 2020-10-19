<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');

    class pegawai extends CI_Controller {
    
        
        public function __construct()
        {
            parent::__construct();
        }
        
        public function index()
        {
        
           $data['title'] = 'Halaman Data Pegawai';
           $this->load->view('template/header_admin',$data);
           $this->load->view('template/sidebar_admin');
           $this->load->view('admin/pegawai/index', $data);
           $this->load->view('template/footer_admin');  
        }
        /* End of fils admin.php */
    }    
?>