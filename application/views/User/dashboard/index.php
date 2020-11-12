<html lang="en">
<head>
  <title>Dashboard</title>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Favicon -->
    <link rel="icon" href="<?php echo base_url().'assets/image/logo_malang.png';?>">
    
    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="<?php echo base_url().'assets/User/style.css';?>">
</head>   
<body>
      <?php $this->load->view('User/Template/navbar')?>
      
      <!-- ##### Hero Area Start ##### -->
      <section class="hero-area">
                <div class="hero-post-slides owl-carousel">

                    <!-- Single Hero Post -->
                    <div class="single-hero-post bg-overlay">
                        <!-- Post Image -->
                        <div class="slide-img bg-img" style="background-image: url(<?php echo base_url().'assets/User/img/bg-img/1.jpg';?>);"></div>
                        <div class="container h-100">
                            <div class="row h-100 align-items-center">
                                <div class="col-12">
                                    <!-- Post Content -->
                                    <div class="hero-slides-content text-center">
                                        <h2>Menjaga Lingkungan Agar tetap Sejuk</h2>
                                        <p>Jangan Lupa yaa :)</p>
                                        <!-- <div class="welcome-btn-group">
                                            <a href="#" class="btn alazea-btn mr-30">GET STARTED</a>
                                            <a href="#" class="btn alazea-btn active">CONTACT US</a>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Hero Post -->
                    <div class="single-hero-post bg-overlay">
                        <!-- Post Image -->
                        <div class="slide-img bg-img" style="background-image: url(<?php echo base_url().'assets/User/img/bg-img/2.jpg';?>);"></div>
                        <div class="container h-100">
                            <div class="row h-100 align-items-center">
                                <div class="col-12">
                                    <!-- Post Content -->
                                    <div class="hero-slides-content text-center">
                                        <h2>Hijaukan bumi kita! </h2>
                                        <p>Kurangi pembuangan sampah</p>
                                        <!-- <div class="welcome-btn-group">
                                            <a href="#" class="btn alazea-btn mr-30">GET STARTED</a>
                                            <a href="#" class="btn alazea-btn active">CONTACT US</a>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Service Area Start ##### -->
    <section class="our-services-area bg-gray section-padding-100-0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                        <h2>Metode Yang Kita Gunakan</h2>
                        <p>Reduce, Reuse , Recycle</p>
                    </div>
                </div>
            </div>

            <div class="row justify-content-between">
                <div class="col-12 col-lg-5">
                    <div class="alazea-service-area mb-100">

                        <!-- Single Service Area -->
                        <div class="single-service-area d-flex align-items-center wow fadeInUp" data-wow-delay="100ms">
                            <!-- Icon -->
                            <div class="service-icon mr-30">
                                <img src="<?php echo base_url().'assets/User/img/bg-img/reduce_b.png';?>" alt="">
                            </div>
                            <!-- Content -->
                            <div class="service-content">
                                <h5>Reduce</h5>
                                <p><b>Reduce</b> berarti kita mengurangi penggunaan bahan-bahan yang bisa merusak lingkungan.</p>
                            </div>
                        </div>

                        <!-- Single Service Area -->
                        <div class="single-service-area d-flex align-items-center wow fadeInUp" data-wow-delay="300ms">
                            <!-- Icon -->
                            <div class="service-icon mr-30">
                                <img src="<?php echo base_url().'assets/User/img/bg-img/reuse_b.png';?>" alt="">
                            </div>
                            <!-- Content -->
                            <div class="service-content">
                                <h5>Reuse</h5>
                                <p><b>Reuse</b> sendiri berarti pemakaian kembali seperti contohnya memberikan baju-baju bekas anda ke yatim piatu.</p>
                            </div>
                        </div>

                        <!-- Single Service Area -->
                        <div class="single-service-area d-flex align-items-center wow fadeInUp" data-wow-delay="500ms">
                            <!-- Icon -->
                            <div class="service-icon mr-30">
                                <img src="<?php echo base_url().'assets/User/img/bg-img/recycle_b.png';?>" alt="">
                            </div>
                            <!-- Content -->
                            <div class="service-content">
                                <h5>Recycle</h5>
                                <p><b>Recycle</b> adalah mendaur ulang barang. Paling mudah adalah mendaur ulang sampah organik di rumah anda</p>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-12 col-lg-6">
                    <div class="alazea-video-area mb-100">
                        <img src="<?php echo base_url().'assets/User/img/bg-img/b_3r.jpg';?>" alt="3R">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Service Area End ##### -->

        <?php $this->load->view('User/Template/footer')?>
</body>
    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="<?php echo base_url().'assets/User/js/jquery/jquery-2.2.4.min.js ';?>"></script>
    <!-- Popper js -->
    <script src="<?php echo base_url().'assets/User/js/bootstrap/popper.min.js';?>"></script>
    <!-- Bootstrap js -->
    <script src="<?php echo base_url().'assets/User/js/bootstrap/bootstrap.min.js';?>"></script>
    <!-- All Plugins js -->
    <script src="<?php echo base_url().'assets/User/js/plugins/plugins.js';?>"></script>
    <!-- Active js -->
    <script src="<?php echo base_url().'assets/User/js/active.js';?>"></script>
</html>