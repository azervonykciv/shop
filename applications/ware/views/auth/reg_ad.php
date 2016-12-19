<!--content wrapper-->
<div class="content-wrapper">

  <?php if($this->session->flashdata('eReg')) :?>
  <div class="modal fade" id="helloModal" role="dialog">
      <div class="modal-dialog">
          <!-- Modal content-->
          <div class="modal-content">
              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Muslim Shop Warehouse System</h4>
              </div>
              <div class="modal-body">
                  <p><?php echo $this->session->flashdata('eReg'); ?></p>
              </div>
              <div class="modal-footer">
                  <button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
              </div>
          </div>
      </div>
  </div>
  <?php endif ?>

    <!--logo-->

    <div class="logo-sl-page text-center"> <a href="#"><img src="img/logo.svg" alt="logo"></a> </div>

    <!--logo end-->

    <!--cta signup form-->

    <section class="cta-form cta-light section-spacing">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-md-5 center-block">
                    <?php echo form_open('register/do_reg/1','id="cta-signup-form" class="cta-signup-form"') ?>

                    <header class="section-header text-center">
                        <h2>Buat Akun Admin Anda</h2>
                    </header>
                    <div class="form-group">
                        <input type="text" class="form-control input-lg" id="input-name" name="Nama_User" placeholder="Nama Anda" required>
                        <label for="input-name"><span class="required">*</span>Nama Anda</label>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control input-lg" id="input-email" name="Email" placeholder="Email" required>
                        <label for="input-email"><span class="required">*</span>Email</label>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control input-lg" id="input-password" name="Password" placeholder="Password" pattern=".{8,10}" required>
                        <label for="input-password"><span class="required">*</span>Minimal 8 Karakter</label>
                    </div>
                    <div class="form-btn">
                        <button type="submit" class="btn">Daftar</button>
                        <p class="form-terms">Dengan mengklik Daftar maka anda menyetujui <a href="#" data-toggle="modal" data-target="#modal-terms">Terms</a> dan read our <a href="#" data-toggle="modal" data-target="#modal-terms">Privacy Policy</a>.</p>
                    </div>
                    <h3 class="text-center">Sudah Memiliki Akun? <a href="signin.html">Masuk</a></h3>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!--cta signup form end-->

    <!--chat btn-->
    <a href="#" class="chat-btn" data-toggle="modal" data-target="#modal-contact-form"></a>
    <!--chat btn-->

    <!--Copyright terms-->

    <footer class="copyright-terms">
        <div class="container">
            <div class="row">
                <div class="col-sm-5 col-md-6"> <small> &copy; 2016 Muslim Shop Warehouse System. All rights reserved.</small> </div>
                <div class="col-sm-7 col-md-6">
                    <ul class="terms-privacy">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#modal-terms">Terms</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#modal-terms">Privacy</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

    <!--Copyright terms end-->

</div>

<!--content wrapper end-->

<!--Site policy modal -->

<!--Site policy modal end-->

<!--contact form modal-->

<div class="modal fade" id="modal-contact-form" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <div class="modal-body">

                <!--contact form-->

                <div class="contact-form text-center">
                    <header class="section-header"> <img src="img/support-icon.svg" alt="support icon">
                        <h2>Contact us</h2>
                        <h3>Have any questions? Send us a message.</h3>
                    </header>
                    <form class="cta-form cta-light" action="http://csmthemes.com/themes/archer/image/php/contact.php" method="post">
                        <div class="form-group">
                            <input  type="text" name="name" class="contact-name form-control input-lg" placeholder="Name *" id="contact-name">
                        </div>
                        <div class="form-group">
                            <input  type="text"  name="email" class="contact-email form-control input-lg" placeholder="Email address *" id="contact-email">
                        </div>
                        <div class="form-group">
                            <textarea name="message" class="contact-message form-control input-lg" rows="4" placeholder="Message *" id="contact-message"></textarea>
                        </div>
                        <div class="form-group">
                            <input type="text" name="antispam" placeholder="Antispam question: 7 + 5 = ?" class="contact-antispam form-control input-lg" id="contact-antispam">
                        </div>
                        <button type="submit" class="btn">SEND MESSAGE</button>
                    </form>
                </div>

                <!--contact form end-->

                <p class="contact-form-success"><i class="fa fa-check"></i><span>Thanks for contacting us!</span> We will get back to you very soon.</p>
            </div>
        </div>
    </div>
</div>



<!--contact form modal end-->
