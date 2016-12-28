<body>

<header class="hero-section">
  <!--navigation-->

  <nav class="navbar navbar-default" data-spy="affix" data-offset-top="450">
    <div class="container">

      <?php if($this->session->flashdata('success')):?>
      <div class="alert alert-success alert-dismissable">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
        <strong><?php echo $this->session->flashdata('success');?> !</strong>
      </div>
      <?php endif ?>

      <?php if($this->session->flashdata('error')) :?>
      <div class="alert alert-danger alert-dismissable">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
        <strong>Danger!</strong> <?php $this->session->flashdata('error');?>
      </div>
      <?php endif ?>
      <div class="navbar-header"> <a class="navbar-brand" href="#"><img class="logo" alt="logo" src="img/logo.svg"><img class="logo-nav" alt="logo-nav" src="img/logo-nav.svg"></a> </div>
      <ul class="nav navbar-nav navbar-right">
        <li class="hidden-xs hidden-sm"><a href="#features">Features</a></li>
        <li class="hidden-xs hidden-sm"><a href="#pricing">Api Service</a></li>
        <?php if($status === 'Member'):?>
        <li class="hidden-xs"><a href="<?php echo base_url()."front/profile/".$this->session->userdata('id_user'); ?>">Profile</a></li>
        <?php endif ?>
        <?php if($status === 'Member'):?>
        <li class="hidden-xs"><a href="<?php echo base_url()."Auth/logout"; ?>">Keluar</a></li>
          <?php else:?>
          <li class="hidden-xs"><a href="<?php echo base_url()."Auth"; ?>">Masuk</a></li>
        <?php endif ?>
        <li><a href="<?php echo base_url()."Auth/register"; ?>" class="btn btn-nav">Daftar</a></li>
        <li class="hidden-md hidden-lg"><a id="toggle"><i class="fa fa-bars fa-2x"></i><i class="fa fa-times fa-2x"></i></a></li>
      </ul>
    </div>
  </nav>

  <!--navigation end-->

  <!--mobile navigation-->

  <div class="mobile-nav-overlay hidden-md hidden-lg" id="mobile-nav-overlay">
    <nav class="mobile-nav">
      <ul>
        <li><a href="#features">Features</a></li>
        <li><a href="#pricing">API Service</a></li>
        <li><a href="#team">Team</a></li>
        <?php if($status === 'Member'):?>
        <li class="hidden-sm"><a href="<?php echo base_url()."Auth/logout"; ?>">Sign Out</a></li>
        <?php endif ?>
        <li class="hidden-sm"><a href="<?php echo base_url()."Auth"; ?>">Sign In</a></li>
      </ul>
    </nav>
  </div>
  <!--mobile navigation end-->

  <!--welcome message-->



  <section class="container text-center welcome-message">
    <div class="row">
      <div class="col-md-12">
        <h1>Selamat Datang di Sistem Warehouse Muslim Shop</h1>
        <a href="<?php echo base_url()."Auth/register"; ?>" class="btn btn-cta-hero">DAFTAR</a> </div>
    </div>
  </section>
  <!--welcome message end-->
</header>

<!--hero section end-->

<!--How it works-->

<section class="how-it-works section-spacing">
  <div class="container">


    <header class="section-header text-center">
      <h2>Tahapan menggunakan sistem warehouse Muslim Shop</h2>
      <h3>4 Tahapan</h3>
    </header>
    <div class="row">
      <div class="col-md-11 center-block">

        <!--step 1-->
        <div class="row">
          <div class="col-md-6 col-md-push-6 text-center"></div>
          <div class="col-md-6 col-md-pull-6">
            <div class="step-number"><span>1</span></div>
            <h4>Registrasi</h4>
            <p>User melakukan registrasi terlebih dahulu</p>
          </div>
        </div>
        <!--step 1 end-->

        <!--step 2-->
        <div class="row">
          <div class="col-md-6 text-center"></div>
          <div class="col-md-6">
            <div class="step-number"><span>2</span></div>
            <h4>Dapatkan API Key</h4>
            <p>Dapatkan API Key setelah melakukan registrasi</p>
          </div>
        </div>
        <!--step 2 end-->

        <!--step 3-->
        <div class="row">
          <div class="col-md-6 col-md-push-6 text-center"></div>
          <div class="col-md-6 col-md-pull-6">
            <div class="step-number"><span>3</span></div>
            <h4>Pilih paket barang yang diinginkan</h4>
            <p>Pilihlah paket barang yang diperlukan sesuai dengan dua pilihan paket yaitu gratis atau premium</p>
          </div>
        </div>
        <!--step 3 end-->

        <!--step 4-->
        <div class="row">
          <div class="col-md-6 text-center"></div>
          <div class="col-md-6">
            <div class="step-number"><span>4</span></div>
            <h4>Masukkan URL pada website anda</h4>
            <p>Masukkan URL yang telah anda dapatkan pada website anda</p>
          </div>
        </div>
        <!--step 4 end-->

      </div>
    </div>
  </div>
</section>

<!--How it works end-->

<!--features-->

<section class="features" id="features">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-7 col-md-offset-1">
        <div class="section-spacing row-margin">
          <header class="section-header">
            <h2>Fitur Muslim Shop Warehouse System</h2>
          </header>
          <div class="row">
            <!--features 1-->
              <h4>API By Request</h4>
              <p>Kami menyediakan layanan API Muslim Online Shop sesuai dengan keinginan user</p>
            </div>
            <!--features 1 end-->
            <!--features 2-->
              <h4>Security</h4>
              <p>API Service kami menggunakan unique key yang didapatkan ketika user melakukan registrasi</p>
            </div>
            <!--features 2 end-->
          </div>
            <!--features 4 end-->
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!--features end-->
<!--video intro-->

<!--video intro end-->

<!--User reviews-->


<!--User reviews end-->

<!--learn more-->

<!--learn more end-->

<!--cta-->


<!--cta end-->

<!--new feature-->


<!--new feature end-->

<!--cta info-->

<!--cta info end -->

<!--Pricing-->

<section class="pricing section-spacing text-center" id="pricing">
  <div class="container">
    <header class="section-header">
      <h2>API Service Packages</h2>
      <h3>Barang per kategori pada Muslim SHop</h3>
    </header>
    <div class="row">

      <!--pricing tabel 1-->
      <div class="col-sm-6">
        <div class="pricing-table-container">
          <div class="plan-type">
            <h4>Basic</h4>
          </div>
          <div class="plan-price">
            <h5>Gratis</h5>
          </div>
          <div class="plan-cta"> <span>Try first, upgrade later</span> <a href="<?php echo base_url()."front/in_pack/1"; ?>" class="btn">Gratis</a> </div>
          <div class="plan-details">
            <ul>
              <li><strong>Maks 10</strong> barang<i class="fa fa-exclamation-circle" data-toggle="tooltip" title="Maksimal barang yang bisa didapatkan adalah 10 Item pada kategori yang sama"></i> </li>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <!--pricing tabel 1 end-->

      <!--pricing tabel 2-->
      <div class="col-sm-6">
        <div class="pricing-table-container plan-popular">
          <div class="plan-type">
            <h4>Premium</h4>
          </div>
          <div class="plan-price">
            <h5><span class="plan-currency">$</span>30<span class="plan-duration">P/M</span></h5>
          </div>
          <div class="plan-cta"> <span>Limited time 10% off</span> <a href="<?php echo base_url()."front/in_pack/2"; ?>" class="btn">GET STARTED</a> </div>
          <div class="plan-details">
            <ul>

              <li><strong>Sesuaikan sendiri banyaknya</strong> barang<i class="fa fa-exclamation-circle" data-toggle="tooltip" title="Banyaknya barang yang dapat kita ambil dapat ditentukan sendiri"></i></li>
              <li>Analytics</li>
            </ul>
          </div>
        </div>
      </div>
      <!--pricing tabel 2 end-->

    </div>
  </div>
</section>

<!--Pricing end-->

<!--testimonial-->

<!--testimonial end-->

<!--FAQ-->


<!--FAQ end-->

<!--cta signup form-->



<!--cta signup form end-->

<!--Trusted clients-->



<!--trusted clients end-->

<!--video tour-->

<!--video tour end-->

<!--CTA footer-->

<!--CTA footer end-->

<!--Twitter reviews-->

<!--Twitter reviews end-->

<!--App download-->

<!--App download end-->

<!--Features cta-->


<!--Features cta end-->

<!--Site footer-->

<footer class="site-footer section-spacing">
  <div class="container">
    <div class="row">
      <div class="col-md-5 sub-form">
        <h3>SUBSCRIBE</h3>
        <p>Get news delivered directly to your inbox.</p>
        <form id="mc-form">
          <div id="mc-error"><i class="fa fa-exclamation-triangle"></i> Please enter a value</div>
          <div id="mc-success"><i class="fa fa-envelope"></i> Awesome! We have sent you a confirmation email</div>
          <div class="input-group"> <i class="fa fa-envelope"></i>
            <input type="email" class="form-control input-lg" placeholder="Email Address" required id="mc-email">
            <span class="input-group-btn">
            <button type="submit" class="btn"><i class="fa fa-paper-plane"></i></button>
            </span> </div>
        </form>
        <p class="form-terms">By signing up you agree to our <a href="#" data-toggle="modal" data-target="#modal-terms">terms</a>.</p>
      </div>
      <div class="col-md-7 text-center twitter-feed">
        <div class="twitter-icon"> <i class="fa fa-twitter"></i> </div>
        <div class="tweet"> </div>
      </div>
    </div>
    <div class="row footer-col-spacing">
      <div class="col-md-2 footer-logo"> <a href="#"><img src="img/logo-nav.svg" alt="logo footer"></a> </div>
      <div class="col-sm-4 col-md-2">
        <ul class="footer-nav">
          <li>
            <h3>LEARN MORE</h3>
          </li>
          <li><a href="#">Pricing</a></li>
          <li><a href="#">Reviews</a></li>
          <li><a href="#">Features</a></li>
          <li><a href="#">Register</a></li>
        </ul>
      </div>
      <div class="col-sm-4 col-md-2">
        <ul class="footer-nav">
          <li>
            <h3>Resources</h3>
          </li>
          <li><a href="#">Support</a></li>
          <li><a href="#">Blog</a></li>
          <li><a href="#">API</a></li>
          <li><a href="#">Affiliates</a></li>
        </ul>
      </div>
      <div class="col-sm-4 col-md-3">
        <ul class="footer-nav">
          <li>
            <h3>CONTACT US</h3>
          </li>
          <li>4751 Clarksburg Park Road</li>
          <li>Call us <a href="tel:+1856-236-1853">+1856-236-1853</a></li>
          <li><a href="mailto:Contact@archer.com">Contact@archer.com</a></li>
          <li><a href="#" data-toggle="modal" data-target="#modal-google-map">Locate on Google Map</a></li>
        </ul>
      </div>
      <!--Use clearfix after every 12 columns-->
      <div class="clearfix visible-sm-block"></div>
      <div class="col-md-3">
        <ul class="social">
          <li><a href="#" class="a-facebook"><i class="fa fa-facebook"></i></a></li>
          <li><a href="#" class="a-twitter"><i class="fa fa-twitter"></i></a></li>
          <li><a href="#" class="a-google-plus"><i class="fa fa-google-plus"></i></a></li>
        </ul>
      </div>
    </div>
  </div>

<!--Site footer end-->

<!--Copyright terms-->

<footer class="copyright-terms">
  <div class="container">
    <div class="row">
      <div class="col-sm-5 col-md-6"> <small> &copy; 2016 Muslim Online Shop. All rights reserved.</small> </div>
      <div class="col-sm-7 col-md-6">
        <ul class="terms-privacy">
          <li><a href="#" data-toggle="modal" data-target="#modal-terms">Terms</a></li>
          <li><a href="#" data-toggle="modal" data-target="#modal-terms">Privacy</a></li>
          <li><a href="#" data-toggle="modal" data-target="#modal-terms">Cookies</a></li>
        </ul>
      </div>
    </div>
  </div>
</footer>

<!--Copyright terms end-->

<!-- Google map modal -->
<div class="modal fade" id="modal-google-map" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <div class="modal-body">
        <div class="map">
          <div id="map-canvas"></div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Google map modal end-->

<!--Site policy modal -->
<div class="modal fade site-policy" id="modal-terms" tabindex="-1" role="dialog" aria-labelledby="ModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <div class="modal-header">
        <h2 class="modal-title text-center" id="ModalLabel">Terms of Use</h2>
      </div>
      <div class="modal-body">
        <p>This privacy policy discloses the privacy practices for (website address). This privacy policy applies solely to information collected by this web site. It will notify you of the following: </p>
        <ul>
          <li>What personally identifiable information is collected from you through the web site, how it is used and with whom it may be shared.</li>
          <li>What choices are available to you regarding the use of your data.</li>
          <li>The security procedures in place to protect the misuse of your information.</li>
          <li>How you can correct any inaccuracies in the information.</li>
        </ul>
        <h3>Information Collection, Use, and Sharing </h3>
        <p>We are the sole owners of the information collected on this site. We only have access to/collect information that you voluntarily give us via email or other direct contact from you. We will not sell or rent this information to anyone.</p>
        <p>We will use your information to respond to you, regarding the reason you contacted us. We will not share your information with any third party outside of our organization, other than as necessary to fulfill your request, e.g. to ship an order.</p>
        <p>Unless you ask us not to, we may contact you via email in the future to tell you about specials, new products or services, or changes to this privacy policy.</p>
        <h3>Your Access to and Control Over Information </h3>
        <p>You may opt out of any future contacts from us at any time. You can do the following at any time by contacting us via the email address or phone number given on our website:</p>
        <ul>
          <li>See what data we have about you, if any.</li>
          <li>Change/correct any data we have about you.</li>
          <li>Have us delete any data we have about you.</li>
          <li>Express any concern you have about our use of your data.</li>
        </ul>
        <h3>Security </h3>
        <p>We take precautions to protect your information. When you submit sensitive information via the website, your information is protected both online and offline.</p>
        <p>Wherever we collect sensitive information (such as credit card data), that information is encrypted and transmitted to us in a secure way. You can verify this by looking for a closed lock icon at the bottom of your web browser, or looking for "https" at the beginning of the address of the web page.</p>
        <p>While we use encryption to protect sensitive information transmitted online, we also protect your information offline. Only employees who need the information to perform a specific job (for example, billing or customer service) are granted access to personally identifiable information. The computers/servers in which we store personally identifiable information are kept in a secure environment.</p>
        <h3>Registration </h3>
        <p>In order to use this website, a user must first complete the registration form. During registration a user is required to give certain information (such as name and email address). This information is used to contact you about the products/services on our site in which you have expressed interest. At your option, you may also provide demographic information (such as gender or age) about yourself, but it is not required.</p>
        <h3>Orders </h3>
        <p>We request information from you on our order form. To buy from us, you must provide contact information (like name and shipping address) and financial information (like credit card number, expiration date). This information is used for billing purposes and to fill your orders. If we have trouble processing an order, we'll use this information to contact you.</p>
        <h3>Cookies </h3>
        <p>We use "cookies" on this site. A cookie is a piece of data stored on a site visitor's hard drive to help us improve your access to our site and identify repeat visitors to our site. For instance, when we use a cookie to identify you, you would not have to log in a password more than once, thereby saving time while on our site. Cookies can also enable us to track and target the interests of our users to enhance the experience on our site. Usage of a cookie is in no way linked to any personally identifiable information on our site.</p>
        <h3>Updates</h3>
        <p>Our Privacy Policy may change from time to time and all updates will be posted on this page.</p>
        <p>If you feel that we are not abiding by this privacy policy, you should contact us immediately via telephone at <a href="tel:+1856-236-1853">+1856-236-1853</a> or via email <a href="mailto:Contact@archer.com">Contact@archer.com</a></p>
      </div>
    </div>
  </div>
</div>

<!--Site policy modal end-->

<!--contact form modal-->
