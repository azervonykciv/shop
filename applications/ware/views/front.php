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
        <li class="hidden-xs"><a href="<?php echo base_url()."login/logout"; ?>">Keluar</a></li>
          <?php else:?>
          <li class="hidden-xs"><a href="<?php echo base_url()."login"; ?>">Masuk</a></li>
        <?php endif ?>
        <li><a href="<?php echo base_url()."register"; ?>" class="btn btn-nav">Daftar</a></li>
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
        <li class="hidden-sm"><a href="<?php echo base_url()."login/logout"; ?>">Sign Out</a></li>
        <?php endif ?>
        <li class="hidden-sm"><a href="<?php echo base_url()."login"; ?>">Sign In</a></li>
      </ul>
    </nav>
  </div>
  <!--mobile navigation end--> 
  
  <!--welcome message-->


  
  <section class="container text-center welcome-message">
    <div class="row">
      <div class="col-md-12">
        <h1>Welcome To Warehouse System Muslim Shop</h1>
        <h2>Use this template to promote and describe the benefits of your product.</h2>
        <a href="<?php echo base_url()."register"; ?>" class="btn btn-cta-hero">DAFTAR</a> </div>
    </div>
  </section>
  <!--welcome message end-->
</header>

<!--hero section end--> 

<!--How it works-->

<section class="how-it-works section-spacing">
  <div class="container">


    <header class="section-header text-center">
      <h2>How it works</h2>
      <h3>Understanding our easy to use product</h3>
    </header>
    <div class="row">
      <div class="col-md-11 center-block"> 
        
        <!--step 1-->
        <div class="row">
          <div class="col-md-6 col-md-push-6 text-center"> <img src="img/step-1.svg" alt="step-1"> </div>
          <div class="col-md-6 col-md-pull-6">
            <div class="step-number"><span>1</span></div>
            <h4>Planning</h4>
            <p>Duis suscipit, eros vel tincidunt mollis, sapien ligula mollismi, ac hendrerit ante tellus sit amet eros.</p>
          </div>
        </div>
        <!--step 1 end--> 
        
        <!--step 2-->
        <div class="row">
          <div class="col-md-6 text-center"> <img src="img/step-2.svg" alt="step-2"> </div>
          <div class="col-md-6">
            <div class="step-number"><span>2</span></div>
            <h4>Prototyping</h4>
            <p>Maecenas vel congue velit. Cras odio nunc, pellentesque vitae libero id, dapibus egestas justo.</p>
          </div>
        </div>
        <!--step 2 end--> 
        
        <!--step 3-->
        <div class="row">
          <div class="col-md-6 col-md-push-6 text-center"> <img src="img/step-3.svg" alt="step-3"> </div>
          <div class="col-md-6 col-md-pull-6">
            <div class="step-number"><span>3</span></div>
            <h4>Visual Design</h4>
            <p>Tiam vel pellentesque sapien. Donec eleifend sagittis lacus. Praesent in quam nec mi malesuada laoreet.</p>
          </div>
        </div>
        <!--step 3 end--> 
        
        <!--step 4-->
        <div class="row">
          <div class="col-md-6 text-center"> <img src="img/step-4.svg" alt="step-4"> </div>
          <div class="col-md-6">
            <div class="step-number"><span>4</span></div>
            <h4>Production</h4>
            <p>Nulla tincidunt finibus dignissim. In sit amet rutrum eros. Nulla accumsan rutrum nisl vitae, semper nunc.</p>
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
      <div class="col-md-4 text-center feature-bg"> <img src="img/features.jpg" alt="feature" class="hidden-md hidden-lg"> </div>
      <div class="col-md-7 col-md-offset-1">
        <div class="section-spacing row-margin">
          <header class="section-header">
            <h2>Fitur Muslim Shop Warehouse System</h2>
          </header>
          <div class="row"> 
            <!--features 1-->
            <div class="col-sm-6"> <img src="img/feature-1.svg" alt="feature-1">
              <h4>API By Request</h4>
              <p>Kami menyediakan layanan API Muslim Online Shop sesuai dengan keinginan user</p>
            </div>
            <!--features 1 end--> 
            <!--features 2-->
            <div class="col-sm-6"> <img src="img/feature-2.svg" alt="feature-2">
              <h4>HTML 5 & CSS3</h4>
              <p>Proin convallis sodales volutpat. Suspene varius mollis risus arcu.</p>
            </div>
            <!--features 2 end--> 
          </div>
          <div class="row"> 
            <!--features 3-->
            <div class="col-sm-6"> <img src="img/feature-3.svg" alt="feature-3">
              <h4>Fully Responsive</h4>
              <p>Integer sit amet efficitur odio, nec varius vulputate rhoncus justo. </p>
            </div>
            <!--features 3 end--> 
            <!--features 4-->
            <div class="col-sm-6"> <img src="img/feature-4.svg" alt="feature-4">
              <h4>Google Maps</h4>
              <p>Nullam pellentesque nisl nec tincidunt viverra hendrerit felis mi. </p>
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
<div class="video-intro section-spacing">
  <div class="container">
    <div class="row">
      <div class="col-md-5 col-md-push-6">
        <aside class="text-center"> <img src="img/video-intro.jpg" alt="video intro"> <a href="https://vimeo.com/109054393" class="play-btn"><i class="fa fa-play fa-2x"></i> </a> </aside>
      </div>
      <div class="col-md-5 col-md-offset-2 col-md-pull-6">
        <article>
          <h2>Video about the product</h2>
          <p>Brief introduction demo video highlighting the important advantages of the product and explaining the working.</p>
        </article>
      </div>
    </div>
  </div>
</div>

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

<!--About us -->

<section class="about-us section-spacing" id="team">
  <div class="container">
    <header class="section-header text-center">
      <h2>About us</h2>
      <h3>Creative team behind this product</h3>
    </header>
    <div class="row about-us-img-grid text-center">
      <div class="col-md-3"> <img src="img/about-us-grid-1-mobile.jpg" alt="about us" class="visible-xs-inline-block"> <img src="img/about-us-grid-1-tablet.jpg" alt="about us" class="visible-sm-inline-block"> <img src="img/about-us-grid-1.jpg" alt="about us" class="hidden-xs hidden-sm"> </div>
      <div class="col-md-9">
        <div class="row">
          <div class="col-sm-6"> <img src="img/about-us-grid-2.jpg" alt="about us"> </div>
          <div class="col-sm-6"> <img src="img/about-us-grid-3.jpg" alt="about us"> </div>
        </div>
        <div class="row">
          <div class="col-xs-4"> <img src="img/about-us-grid-4.jpg" alt="about us"> </div>
          <div class="col-xs-4"> <img src="img/about-us-grid-5.jpg" alt="about us"> </div>
          <div class="col-xs-4"> <img src="img/about-us-grid-6.jpg" alt="about us"> </div>
        </div>
      </div>
    </div>
    <div class="row about-us-into">
      <div class="col-md-10 center-block">
        <div class="row">
          <div class="col-md-6">
            <article>
              <h4>About archer</h4>
              <p>Consectetur adipiscing elit. Donec luctus at augue id tincidunt. Proin nulla risus, pharetra id aliquet quis, cursus interdum orci cras ullamcorper tellus a massa ornare, non ornare arcu cursus.</p>
            </article>
          </div>
          <div class="col-md-6">
            <article>
              <h4>Our mission</h4>
              <p>Nam tristique diam quis ex venenatis lobortis. Vivamus dapibus tincidunt commodo. Praesent a euismod risus. Morbi condimentum ut turpis lobortis aliquet. Aliquam eget diam lorem. </p>
            </article>
          </div>
        </div>
      </div>
    </div>
    <div class="row text-center team-details">
      <div class="col-md-11 center-block">
        <h4>The team</h4>
        <div class="team-slider owl-carousel owl-theme"> 
          
          <!--Team 1-->
          <div class="item"> <img src="img/team-1.jpg" alt="team member" class="img-circle">
            <h5>Hi, i’m <span class="bold">Nicole Ortega</span><span class="team-position">Founder</span></h5>
            <ul class="social">
              <li><a href="#" class="a-facebook"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#" class="a-twitter"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#" class="a-google-plus"><i class="fa fa-google-plus"></i></a></li>
            </ul>
            <p>Fusce laoreet lectus tellus, aliquam maximus magna auctor suscipit. Praesent sed lacinia lectus. Ut laoreet finibus odio quis laoreet.</p>
          </div>
          <!--Team 1 end--> 
          
          <!--Team 2-->
          <div class="item"> <img src="img/team-2.jpg" alt="team member" class="img-circle">
            <h5>Hi, i’m <span class="bold">Diana Oliver</span><span class="team-position">Co-founder</span></h5>
            <ul class="social">
              <li><a href="#" class="a-facebook"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#" class="a-twitter"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#" class="a-google-plus"><i class="fa fa-google-plus"></i></a></li>
            </ul>
            <p>Morbi condimentum ut turpis lobortis aliquet. Aliquam eget diam lorem. Aliquam erat volutpat. Pellentesque vulputate placerat pharetra.</p>
          </div>
          <!--Team 2 end--> 
          
          <!--Team 3-->
          <div class="item"> <img src="img/team-3.jpg" alt="team member" class="img-circle">
            <h5>Hi, i’m <span class="bold">Alan Garrett</span><span class="team-position">CEO</span></h5>
            <ul class="social">
              <li><a href="#" class="a-facebook"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#" class="a-twitter"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#" class="a-google-plus"><i class="fa fa-google-plus"></i></a></li>
            </ul>
            <p>Aliquam maximus magna fusce laoreet lectus tellus, auctor suscipit. Praesent sed lacinia lectus. Ut laoreet finibus odio quis laoreet.</p>
          </div>
          <!--Team 3 end--> 
          
          <!--Team 4-->
          <div class="item"> <img src="img/team-4.jpg" alt="team member" class="img-circle">
            <h5>Hi, i’m <span class="bold">Brenda Payne</span><span class="team-position">Manager</span></h5>
            <ul class="social">
              <li><a href="#" class="a-facebook"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#" class="a-twitter"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#" class="a-google-plus"><i class="fa fa-google-plus"></i></a></li>
            </ul>
            <p>Onec mattis ac dui eget fringilla. Sed vitae nisl sit amet dui dapibus lacinia. Etiam facilisis, nunc eu fringilla lacus augue felis luctus libero. </p>
          </div>
          <!--Team 4 end--> 
          
          <!--Team 5-->
          <div class="item"> <img src="img/team-5.jpg" alt="team member" class="img-circle">
            <h5>Hi, i’m <span class="bold">Ethan Smith</span><span class="team-position">Designer</span></h5>
            <ul class="social">
              <li><a href="#" class="a-facebook"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#" class="a-twitter"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#" class="a-google-plus"><i class="fa fa-google-plus"></i></a></li>
            </ul>
            <p> Vivamus sed lectus placerat, tristique faucibus , pellentesque odio. Duis ut luctus eros pellentesque a urna et, feugiat blandit quam.</p>
          </div>
          <!--Team 5 end--> 
          
        </div>
      </div>
    </div>
  </div>
</section>

<!--About us end--> 

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
      <div class="col-sm-5 col-md-6"> <small> &copy; 2016 Archer. All rights reserved.</small> </div>
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

  <!-- modal form -->
  <div id="myModal" class="modal fade" aria-labelledby="myModalLabel" aria-hidden="true" tabindex="-1" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <?php echo form_open('front/in_pack/1','class="cta-form cta-light"') ?>

        <div class="contact-form text-center">
          <header class="section-header"> <img src="img/support-icon.svg" alt="support icon">
            <h2>Dapatkan API Muslim Shop Warehouse</h2>
            <h3>Anda memilih paket API gratis</h3>
          </header>

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        </div>
        <div class="modal-body" id="myModalBody">
          <div class="form-group">
            <label for="name">Paket</label>
            <input disabled class="form-control" id="paket" name="paket" placeholder="Paket API" type="text" value="Gratis" />
          </div>

          <div class="form-group">
            <label for="sel1">Pilih kategori barang</label>
            <select class="form-control" id="kategori" name="kategori">
              <option value="none" selected="selected">---Pilih Kategori barang yang anda inginkan----</option>
              <?php
              foreach ($kategori as $kat) : ?>
                <option><?php echo $kat->KODE_KLASIFIKASI ?></option>
              <?php endforeach ?>
            </select>
          </div>

          <div id="alert-msg"></div>
        </div>
        <div class="modal-footer">
          <input class="btn btn-default" id="submit" name="submit" type="button" value="Send Mail" />
        </div>
        <?php echo form_close(); ?>
      </div>
    </div>
  </div>

<div class="modal fade" id="modal-form-free" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <div class="modal-body"> 
        
        <!--contact form-->
        
        <div class="contact-form text-center">
          <header class="section-header"> <img src="img/support-icon.svg" alt="support icon">
            <h2>Dapatkan API Muslim Shop Warehouse</h2>
            <h3>Anda memilih paket API gratis</h3>
          </header>
          <?php echo form_open('front/in_pack/1','class="cta-form cta-light"') ?>
            <div class="form-group">
              <input  type="text" name="paket" value="Gratis" class="contact-name form-control input-lg" placeholder="Gratis" id="paket" disabled>
            </div>

            <div class="form-group">
              <label for="sel1">Pilih kategori barang</label>
              <select class="form-control" id="kategori" name="kategori">
                <option value="none" selected="selected">---Pilih Kategori barang yang anda inginkan----</option>
                <?php
                foreach ($kategori as $kat) : ?>
                    <option><?php echo $kat->KODE_KLASIFIKASI ?></option>
                <?php endforeach ?>
              </select>
            </div>
          <input class="btn " id="submit" name="submit" type="button" value="Kirim" />
          </form>
        </div>
        <!--contact form end-->
        
        <p class="contact-form-success"><i class="fa fa-check"></i><span>Thanks for contacting us!</span> We will get back to you very soon.</p>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="modal-form-premium" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <div class="modal-body">

        <!--contact form-->

        <div class="contact-form text-center">
          <header class="section-header"> <img src="img/support-icon.svg" alt="support icon">
            <h2>Dapatkan API Muslim Shop Warehouse</h2>
            <h3>Anda memilih paket API Premium</h3>
          </header>

          <?php echo form_open('front/in_pack/2','class="cta-form cta-light"') ?>
            <div class="form-group">
              <input  type="text" name="paket" value="Premium" class="contact-name form-control input-lg" placeholder="Gratis" id="contact-name" disabled>
            </div>

            <div class="form-group">
              <label for="sel1">Pilih kategori barang</label>
              <select class="form-control" id="sel1" name="kategori">
                <option value="none" selected="selected">---Pilih Kategori barang yang anda inginkan----</option>
                <?php
                foreach ($kategori as $kat) : ?>
                  <option>
                    <?php echo $kat->KODE_KLASIFIKASI ?>
                  </option>
                <?php endforeach ?>
              </select>
            </div>
            <a href="" class="btn">Kirim</a>
          </form>
        </div>
