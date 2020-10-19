<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');

    class berita extends CI_Controller {
    
        
        public function __construct()
        {
            parent::__construct();
        }

        public function index()
        {
            // $data['berita'] = $this->berita_model->tampilBerita(); 
            $data['title'] = 'Halaman Berita';
            $this->load->view('template/header_admin',$data);
            $this->load->view('template/sidebar_admin');
            $this->load->view('admin/berita/index', $data);
            $this->load->view('template/footer_admin');
        }

    }
?>        