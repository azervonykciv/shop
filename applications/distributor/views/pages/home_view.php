<!DOCTYPE HTML>
<!--
	Projection by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Projection by TEMPLATED</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="<?php echo base_url().'assets/projection/css/main.css' ?>" />
	</head>
	<body>

		<!-- Header -->
			<header id="header">
				<div class="inner">
					<a href="index.html" class="logo"><strong>Projection</strong> by TEMPLATED</a>
					<?php if ($this->session->has_userdata('username')): ?>
						<nav id="nav">
							<a href="<?php echo base_url().'home' ?>">Home</a>
							<a href="<?php echo base_url().'home/profile' ?>">My Profile</a>
							<a href="<?php echo base_url().'auth/logout' ?>">Logout</a>
						</nav>
			    <?php else: ?>
						<nav id="nav">
							<a href="<?php echo base_url().'auth' ?>">Login</a>
						</nav>
			    <?php endif ?>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>

		<!-- Banner -->
			<section id="banner">
				<div class="inner">
					<header>
						<h1>API Distributtor Herbal</h1>
					</header>

					<div class="flex ">

						<div>
							<span class="icon fa-user"></span>
							<h3>Siapa</h3>
							<p>vendor yang menjual produk herbal</p>
						</div>

						<div>
							<span class="icon fa-server"></span>
							<h3>Apa</h3>
							<p>Info barang herbal</p>
						</div>

						<div>
							<span class="icon fa-question"></span>
							<h3>Bagaimana</h3>
							<p>
								Daftarkan vendor anda
							</p>
						</div>

					</div>

					<footer>
						<!-- <a href="#" class="button">Get Started</a> -->
					</footer>
				</div>
			</section>


		<!-- Three -->
			<section id="three" class="wrapper align-center">
				<div class="inner">
					<div class="flex flex-2">
						<article>
							<header>
								<h3>Free</h3>
							</header>
							<p>
                Morbi in sem quis dui placerat ornare. Pellentesquenisi<br />
                euismod in, pharetra a, ultricies in diam sed arcu. Cras<br />
                consequat  egestas augue vulputate.
              </p>
							<footer>
								<?php if ($this->session->has_userdata('username')): ?>
									<a href="#" class="button" data-toggle="modal" data-target="#free-modal">Learn More</a>
								<?php else: ?>
									<a href="<?php echo base_url().'auth' ?>" class="button">Learn More</a>
						    <?php endif ?>
							</footer>
						</article>

						<article>
							<header>
								<h3>Premium</h3>
							</header>
							<p>
                Pellentesque fermentum dolor. Aliquam quam lectus<br />
                facilisis auctor, ultrices ut, elementum vulputate, nunc<br />
                blandit ellenste egestagus commodo.
              </p>
							<footer>
								<?php if ($this->session->has_userdata('username')): ?>
									<a href="#" class="button" data-toggle="modal" data-target="#premium-modal">Learn More</a>
								<?php else: ?>
									<a href="<?php echo base_url().'auth' ?>" class="button">Learn More</a>
						    <?php endif ?>
							</footer>
						</article>
					</div>
				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<h3>Daftar</h3>

					<form action="<?php echo base_url().'home/daftar' ?>" method="post">
						<div class="field half first">
							<label for="name">Username</label>
							<input name="data[username]" type="text" placeholder="Name" required>
						</div>
						<div class="field half">
							<label for="email">Password</label>
							<input name="data[password]" type="password" required>
						</div>
						<input type="hidden" name="data[level]" value="customer">
						<ul class="actions">
							<li>
								<input class="button alt" type="submit">
							</li>
						</ul>
					</form>

					<div class="copyright">
						&copy; Untitled. Design:
            <a href="https://templated.co">TEMPLATED</a>.
            Images: <a href="https://unsplash.com">Unsplash</a>.
					</div>

				</div>
			</footer>

      <div id="free-modal" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> -->
              <h4 class="modal-title">Free</h4>
            </div>
            <div class="modal-body">
              <form action="<?php echo base_url().'home/order/1' ?>" method="post">
                <div class="form-group">
                  <label for="">Merk</label>
                  <select class="" name="data[selection]">
										<?php foreach ($selection as $key): ?>
											<option value="<?php echo $key ?>">
												<?php echo $key ?>
											</option>
										<?php endforeach; ?>
                  </select>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="button" data-dismiss="modal">Close</button>
              <button type="submit" class="button">submit</button>
            </div>
          </form>
          </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->

      <div id="premium-modal" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> -->
              <h4 class="modal-title">Premium</h4>
            </div>
            <div class="modal-body">
              <form action="<?php echo base_url().'home/order/2' ?>" method="post">
                <div class="form-group">
                  <label for="">Merk</label>
                  <select class="" name="data[selection]">
										<?php foreach ($selection as $key): ?>
											<option value="<?php echo $key ?>">
												<?php echo $key ?>
											</option>
										<?php endforeach; ?>
                  </select>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="button" data-dismiss="modal">Close</button>
              <button type="submit" class="button">submit</button>
            </div>
          </form>
          </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->

		<!-- Scripts -->
      <!-- jQuery 2.2.3 -->
      <script src="<?php echo base_url() ?>assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
      <!-- Bootstrap 3.3.6 -->
      <script src="<?php echo base_url() ?>assets/bootstrap/js/bootstrap.min.js"></script>
			<script src="<?php echo base_url().'assets/projection/js/skel.min.js' ?>"></script>
			<script src="<?php echo base_url().'assets/projection/js/util.js' ?>"></script>
			<script src="<?php echo base_url().'assets/projection/js/main.js' ?>"></script>

	</body>
</html>
