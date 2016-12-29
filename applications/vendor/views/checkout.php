<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- Mirrored from htmlstream.com/preview/unify-v1.9.6/E-Commerce/shop-ui-add-to-cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 19 Dec 2016 00:17:12 GMT -->
<head>
	<title>Check Out | Unify - Responsive Website Template</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Web Fonts -->
	<link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="<?php echo base_url('assets/plugins/bootstrap/css/bootstrap.min.css');?>">
	<link rel="stylesheet" href="<?php echo base_url('assets/css/shop.style.css');?>">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="<?php echo base_url('assets/css/headers/header-v5.css');?>">
	<link rel="stylesheet" href="<?php echo base_url('assets/css/footers/footer-v4.css');?>">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="<?php echo base_url('assets/plugins/animate.css');?>">
	<link rel="stylesheet" href="<?php echo base_url('assets/plugins/line-icons/line-icons.css');?>">
	<link rel="stylesheet" href="<?php echo base_url('assets/plugins/font-awesome/css/font-awesome.min.css');?>">
	<link rel="stylesheet" href="<?php echo base_url('assets/plugins/jquery-steps/css/custom-jquery.steps.css');?>">
	<link rel="stylesheet" href="<?php echo base_url('assets/plugins/scrollbar/css/jquery.mCustomScrollbar.css');?>">

	<!-- Style Switcher -->
	<link rel="stylesheet" href="<?php echo base_url('assets/css/plugins/style-switcher.css');?>">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="<?php echo base_url('assets/css/theme-colors/default.css');?>" id="style_color">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="<?php echo base_url('assets/css/custom.css');?>">

</head>
<body class="header-fixed">

	<div class="wrapper">
		<!--=== Header v5 ===-->
		<div class="header-v5 header-static">
			<!-- Topbar v3 -->
			<div class="topbar-v3">
				<div class="search-open">
					<div class="container">
						<input type="text" class="form-control" placeholder="Search">
						<div class="search-close"><i class="icon-close"></i></div>
					</div>
				</div>

				<div class="container">
					<div class="row">
						<div class="col-sm-6">
							<!-- Topbar Navigation -->
							<ul class="left-topbar">
								<li>
									<a>Currency (USD)</a>
									<ul class="currency">
										<li class="active">
											<a href="#">USD <i class="fa fa-check"></i></a>
										</li>
										<li><a href="#">Euro</a></li>
										<li><a href="#">Pound</a></li>
									</ul>
								</li>
								<li>
									<a>Language (EN)</a>
									<ul class="language">
										<li class="active">
											<a href="#">English (EN)<i class="fa fa-check"></i></a>
										</li>
										<li><a href="#">Spanish (SPN)</a></li>
										<li><a href="#">Russian (RUS)</a></li>
										<li><a href="#">German (GRM)</a></li>
									</ul>
								</li>
							</ul><!--/end left-topbar-->
						</div>
						<div class="col-sm-6">
							<ul class="list-inline right-topbar pull-right">
								<li><a href="#">Account</a></li>
								<li><a href="shop-ui-add-to-cart.html">Wishlist (0)</a></li>
								<li><a href="shop-ui-login.html">Login</a> | <a href="shop-ui-register.html">Register</a></li>
								<li><i class="search fa fa-search search-button"></i></li>
							</ul>
						</div>
					</div>
				</div><!--/container-->
			</div>
			<!-- End Topbar v3 -->

			<!-- Navbar -->
			<div class="navbar navbar-default mega-menu" role="navigation">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="index.html">
							<img id="logo-header" src="<?php echo base_url('assets/img/logo3.png');?>" alt="Logo">
						</a>
					</div>

					<!-- Shopping Cart -->
					
					<!-- End Shopping Cart -->

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-responsive-collapse">
						<!-- Nav Menu -->
						
						<!-- End Nav Menu -->
					</div>
				</div>
			</div>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v5 ===-->

		<!--=== Breadcrumbs v4 ===-->
		<div class="breadcrumbs-v4">
			<div class="container">
 				<span class="page-name">  </span>
 				<h1>Yakher <span class="shop-green">Shop</span></h1>
 				<ul class="breadcrumb-v4-in">
 					<li><a href="index.html"> </a></li>
 				</ul>
 			</div><!--/end container-->
		</div>
		<!--=== End Breadcrumbs v4 ===-->

		<!--=== Content Medium Part ===-->
		<div class="content-md margin-bottom-30">
			<div class="container">
				<form class="shopping-cart" action="<?php echo site_url().'/admin/products/storebilling' ?>" method="POST">
					<div>
						<div class="header-tags">
							<div class="overflow-h">
								<h2>Shopping Cart</h2>
								<p>Review &amp; edit your product</p>
								<i class="rounded-x fa fa-check"></i>
							</div>
						</div>
						<section>
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>#</th>
											<th>Product</th>
											<th>Price</th>
											<th>Qty</th>
											<th>Total</th>
										</tr>
									</thead>
									<tbody>
									<?php	$i=0; 
											foreach ($this->cart->contents() as $items):
											$i++; ?>
								
										<tr>
											<td><?= $i ?></td>
											<td class="product-in-table">
												<div class="product-it-in">
													<h3><?= $items['name'] ?></h3>
													<h3> </h3>
												</div>
											</td>
											<td ><?= number_format($items['price'],0,',','.') ?></td>
											<td type="hidden" id="price" ><?= $items['price'] ?></td>
											<td>
												<button type='button' class="quantity-button" name='subtract' onclick='javascript: document.getElementById("<?php echo "qty".$i; ?>").value--;' value='-'>-</button>
												<input type='text' class="quantity-field" name='<?php echo "qty".$i; ?>' value="1" id='<?php echo "qty".$i; ?>'/>
												<button type='button' class="quantity-button" name='add' onclick='javascript: document.getElementById("<?php echo "qty".$i; ?>").value++;' value='+'>+</button>
											</td>
											<td>
												<button type="button" class="close"><span>&times;</span><span class="sr-only">Close</span></button>
											</td>
										</tr>
									<?php endforeach; ?>
									</tbody>
								</table>
							</div>
							<div align="center">
							<?= anchor('welcome/clear_cart','Clear Cart',['class'=>'btn btn-danger']) ?>
							<?= anchor('Home','Continues Shopping',['class'=>'btn btn-primary']) ?>
		</div>
						</section>

						<div class="header-tags">
							<div class="overflow-h">
								<h2>Billing infoo</h2>
								<p>Shipping and address infot</p>
								<i class="rounded-x fa fa-home"></i>
							</div>
						</div>
						<section class="billing-info">
							<div class="row">
								<div class="col-md-6 md-margin-bottom-40">
									<h2 class="title-type">Billing Address</h2>
									<div class="billing-info-inputs checkbox-list">
										<div class="row">
											<div class="col-sm-6">
												<input id="name" type="text" placeholder="First Name" name="bilfirstname" class="form-control required">
												<input id="email" type="text" placeholder="Email" name="bilemail" class="form-control required email">
											</div>
											<div class="col-sm-6">
												<input id="surname" type="text" placeholder="Last Name" name="billastname" class="form-control required">
												<input id="phone" type="tel" placeholder="Phone" name="bilphone" class="form-control required">
											</div>
										</div>
										<input id="billingAddress" type="text" placeholder="Address Line 1" name="biladd1" class="form-control required">
										<input id="billingAddress2" type="text" placeholder="Address Line 2" name="biladd2" class="form-control required">
										<div class="row">
											<div class="col-sm-6">
												<input id="city" type="text" placeholder="City" name="bilcity" class="form-control required">
											</div>
											<div class="col-sm-6">
												<input id="zip" type="text" placeholder="Zip/Postal Code" name="bilzip" class="form-control required">
											</div>
										</div>

										<label class="checkbox text-left">
											<input type="checkbox" name="checkbox"/>
											<i></i>
											Ship item to the above billing address
										</label>
									</div>
								</div>

								<div class="col-md-6">
									<h2 class="title-type">Shipping Address</h2>
									<div class="billing-info-inputs checkbox-list">
										<div class="row">
											<div class="col-sm-6">
												<input id="name2" type="text" placeholder="First Name" name="shipfirstname" class="form-control">
												<input id="email2" type="text" placeholder="Email" name="shipemail" class="form-control email">
											</div>
											<div class="col-sm-6">
												<input id="surname2" type="text" placeholder="Last Name" name="shiplastname" class="form-control">
												<input id="phone2" type="tel" placeholder="Phone" name="shipphone" class="form-control">
											</div>
										</div>
										<input id="shippingAddress" type="text" placeholder="Address Line 1" name="shipadd1" class="form-control">
										<input id="shippingAddress2" type="text" placeholder="Address Line 2" name="shipadd2" class="form-control">
										<div class="row">
											<div class="col-sm-6">
												<input id="city2" type="text" placeholder="City" name="shipcity" class="form-control">
											</div>
											<div class="col-sm-6">
												<input id="zip2" type="text" placeholder="Zip/Postal Code" name="shipzip" class="form-control">
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>

						<div class="header-tags">
							<div class="overflow-h">
								<h2>Payment</h2>
								<p>Select Payment method</p>
								<i class="rounded-x fa fa-credit-card"></i>
							</div>
						</div>
						<section>
							<div class="row">
								<div class="col-md-6 md-margin-bottom-50">
									<h2 class="title-type">Choose a payment method</h2>
									<!-- Accordion -->
									<div class="accordion-v2">
										<div class="panel-group" id="accordion">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
															<i class="fa fa-credit-card"></i>
															Credit or Debit Card
														</a>
													</h4>
												</div>
												<div id="collapseOne" class="panel-collapse collapse in">
													<div class="panel-body cus-form-horizontal">
														<div class="form-group">
															<label class="col-sm-4 no-col-space control-label">Cardholder Name</label>
															<div class="col-sm-8">
																<input type="text" class="form-control required" name="cardholder" placeholder="">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 no-col-space control-label">Card Number</label>
															<div class="col-sm-8">
																<input type="text" class="form-control required" name="card_number" placeholder="">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 no-col-space control-label">Payment Types</label>
															<div class="col-sm-8">
																<ul class="list-inline payment-type">
																	<li><i class="fa fa-cc-paypal"></i></li>
																	<li><i class="fa fa-cc-visa"></i></li>
																	<li><i class="fa fa-cc-mastercard"></i></li>
																	<li><i class="fa fa-cc-discover"></i></li>
																</ul>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4">Expiration Date</label>
															<div class="col-sm-8 input-small-field">
																<input type="text" name="expmount" placeholder="MM" class="form-control required sm-margin-bottom-20">
																<span class="slash">/</span>
																<input type="text" name="expyear" placeholder="YY" class="form-control required">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 no-col-space control-label">CSC</label>
															<div class="col-sm-8 input-small-field">
																<input type="text" name="csc" placeholder="" class="form-control required">
																<a href="#">What's this?</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
															<i class="fa fa-paypal"></i>
															Pay with PayPal
														</a>
													</h4>
												</div>
												<div id="collapseTwo" class="panel-collapse collapse">
													<div class="content margin-left-10">
														<a href="#"><img src="../../../../www.paypalobjects.com/webstatic/en_US/i/buttons/PP_logo_h_150x38.png');?>" alt="PayPal"></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- End Accordion -->
								</div>

								
							</div>
						</section>

						<div class="coupon-code">
							<div class="row">
								<div class="col-sm-4 sm-margin-bottom-30">
								</div>
								<div class="col-sm-3 col-sm-offset-5">
									<ul class="list-inline total-result">
										<li>
											<h4>Subtotal:</h4>
											<div class="total-result-in">
												<span>$ 1280.00</span>
											</div>
										</li>
										<li>
											<h4>Shipping:</h4>
											<div class="total-result-in">
												<span class="text-right">- - - -</span>
											</div>
										</li>
										<li class="divider"></li>
										<li class="total-price">
											<h4>Total:</h4>
											<div class="total-result-in">
												<span>$ 1280.00</span>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<button type="submit" class="btn-u btn-u-sea-shop">Apply Coupon</button>
					</form>
			</div><!--/end container-->
		</div>
		<!--=== End Content Medium Part ===-->

		<!--=== Shop Suvbscribe ===-->
		<div class="shop-subscribe">
			<div class="container">
				<div class="row">
					<div class="col-md-8 md-margin-bottom-20">
						<h2>subscribe to our weekly <strong>newsletter</strong></h2>
					</div>
					<div class="col-md-4">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Email your email...">
							<span class="input-group-btn">
								<button class="btn" type="button"><i class="fa fa-envelope-o"></i></button>
							</span>
						</div>
					</div>
				</div>
			</div><!--/end container-->
		</div>
		<!--=== End Shop Suvbscribe ===-->

		<!--=== Footer v4 ===-->
		<div class="footer-v4">
			<div class="footer">
				<div class="container">
					<div class="row">
						<!-- About -->
						<div class="col-md-4 md-margin-bottom-40">
							<a href="index.html"><img class="footer-logo" src="<?php echo base_url('assets/img/logo-2.png');?>" alt=""></a>
							<p>About Unify dolor sit amet, consectetur adipiscing elit. Maecenas eget nisl id libero tincidunt sodales.</p>
							<br>
							<ul class="list-unstyled address-list margin-bottom-20">
								<li><i class="fa fa-angle-right"></i>California, US, Lorem Lis Street, Orange, 25</li>
								<li><i class="fa fa-angle-right"></i>Phone: 800 123 3456</li>
								<li><i class="fa fa-angle-right"></i>Fax: 800 123 3456</li>
								<li><i class="fa fa-angle-right"></i>Email: info@anybiz.co</li>
							</ul>

							<ul class="list-inline shop-social">
								<li><a href="#"><i class="fb rounded-md fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="tw rounded-md fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="gp rounded-md fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="yt rounded-md fa fa-youtube"></i></a></li>
							</ul>
						</div>
						<!-- End About -->

						<!-- Simple List -->
						<div class="col-md-2 col-sm-3">
							<div class="row">
								<div class="col-sm-12 col-xs-6">
									<h2 class="thumb-headline">Secciones</h2>
									<ul class="list-unstyled simple-list margin-bottom-20">
										<li><a href="#">Ultima Hora</a></li>
										<li><a href="#">Exclusiva</a></li>
										<li><a href="#">Documentos </a></li>
										<li><a href="#">Francisco papa</a></li>
										<li>...</li>
									</ul>
								</div>

								<div class="col-sm-12 col-xs-6">
									<h2 class="thumb-headline">Temas</h2>
									<ul class="list-unstyled simple-list">
										<li><a href="#">Ultima Hora</a></li>
										<li><a href="#">Exclusiva</a></li>
										<li><a href="#">Documentos </a></li>
										<li><a href="#">Francisco papa</a></li>
										<li>...</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="col-md-2 col-sm-3">
							<div class="row">
								<div class="col-sm-12 col-xs-6">
									<h2 class="thumb-headline">Utilidades</h2>
									<ul class="list-unstyled simple-list margin-bottom-20">
										<li><a href="#">Ultima Hora</a></li>
										<li><a href="#">Exclusiva</a></li>
										<li><a href="#">Documentos </a></li>
										<li>...</li>
									</ul>
								</div>

								<div class="col-sm-12 col-xs-6">
									<h2 class="thumb-headline">Documentos</h2>
									<ul class="list-unstyled simple-list">
										<li><a href="#">Ultima Hora</a></li>
										<li><a href="#">Exclusiva</a></li>
										<li><a href="#">Documentos </a></li>
										<li><a href="#">Francisco papa</a></li>
										<li>...</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="col-md-2 col-sm-3">
							<div class="row">
								<div class="col-sm-12 col-xs-6">
									<h2 class="thumb-headline">Publicidad</h2>
									<ul class="list-unstyled simple-list margin-bottom-20">
										<li><a href="#">Ultima Hora</a></li>
										<li><a href="#">Exclusiva</a></li>
										<li><a href="#">Documentos </a></li>
										<li><a href="#">Francisco papa</a></li>
										<li>...</li>
									</ul>
								</div>

								<div class="col-sm-12 col-xs-6">
									<h2 class="thumb-headline">Contacto</h2>
									<ul class="list-unstyled simple-list">
										<li><a href="#">Ultima Hora</a></li>
										<li><a href="#">Exclusiva</a></li>
										<li><a href="#">Documentos </a></li>
										<li><a href="#">Francisco papa</a></li>
										<li>...</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="col-md-2 col-sm-3">
							<div class="row">
								<div class="col-sm-12 col-xs-6">
									<h2 class="thumb-headline">Utilidades</h2>
									<ul class="list-unstyled simple-list margin-bottom-20">
										<li><a href="#">Ultima Hora</a></li>
										<li><a href="#">Exclusiva</a></li>
										<li>...</li>
									</ul>
								</div>

								<div class="col-sm-12 col-xs-6">
									<h2 class="thumb-headline">Documentos</h2>
									<ul class="list-unstyled simple-list">
										<li><a href="#">Ultima Hora</a></li>
										<li><a href="#">Exclusiva</a></li>
										<li>...</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- End Simple List -->
					</div><!--/end row-->
				</div><!--/end continer-->
			</div><!--/footer-->

			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<p>
								2014 &copy; Unify. ALL Rights Reserved.
								<a target="_blank" href="https://twitter.com/htmlstream">Htmlstream</a> | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
							</p>
						</div>
						<div class="col-md-6">
							<ul class="list-inline sponsors-icons pull-right">
								<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div><!--/copyright-->
		</div>
		<!--=== End Footer v4 ===-->
	</div><!--/wrapper-->

	
	<!--=== Style Switcher ===-->
	<i class="style-switcher-btn fa fa-cogs hidden-xs"></i>
	<div class="style-switcher animated fadeInRight">
		<div class="style-swticher-header">
			<div class="style-switcher-heading">Style Switcher</div>
			<div class="theme-close"><i class="icon-close"></i></div>
		</div>

		<div class="style-swticher-body">
			<!-- Theme Colors -->
			<div class="style-switcher-heading">Theme Colors</div>
			<ul class="list-unstyled">
				<li class="theme-green" data-style="green" data-header="light"></li>
				<li class="theme-blue" data-style="blue" data-header="light"></li>
				<li class="theme-orange" data-style="orange" data-header="light"></li>
				<li class="theme-red" data-style="red" data-header="light"></li>
				<li class="theme-light" data-style="light" data-header="light"></li>
				<li class="theme-purple last" data-style="purple" data-header="light"></li>
				<li class="theme-aqua theme-active" data-style="aqua" data-header="light"></li>
				<li class="theme-brown" data-style="brown" data-header="light"></li>
				<li class="theme-dark-blue" data-style="dark-blue" data-header="light"></li>
				<li class="theme-light-green" data-style="light-green" data-header="light"></li>
				<li class="theme-dark-red" data-style="dark-red" data-header="light"></li>
				<li class="theme-teal last" data-style="teal" data-header="light"></li>
			</ul>

			<hr>

			<!-- Theme Type -->
			<div class="style-switcher-heading">Theme Types and Versions</div>
			<div class="row no-col-space margin-bottom-10">
				<div class="col-xs-6">
					<a href="http://htmlstream.com/preview/unify-v1.9.6/index.html" class="btn-u btn-u-xs btn-u-dark btn-block">Unify Main <small class="dp-block">Template</small></a>
				</div>
				<div class="col-xs-6">
					<a href="http://htmlstream.com/preview/unify-v1.9.6/One-Pages/Classic/index.html" class="btn-u btn-u-xs btn-u-dark btn-block">One Page <small class="dp-block">Template</small></a>
				</div>
			</div>

			<div class="row no-col-space">
				<div class="col-xs-6">
					<a href="http://htmlstream.com/preview/unify-v1.9.6/Blog-Magazine/index.html" class="btn-u btn-u-xs btn-u-dark btn-block">Blog <small class="dp-block">Template</small></a>
				</div>
				<div class="col-xs-6">
					<a href="RTL/shop-ui-add-to-cart.html" class="btn-u btn-u-xs btn-u-dark btn-block">LTR <small class="dp-block">Version</small></a>
				</div>
			</div>
		</div>
	</div><!--/style-switcher-->
	<!--=== End Style Switcher ===-->


	<!-- JS Global Compulsory -->
	<script src="<?php echo base_url('assets/plugins/jquery/jquery.min.js');?>"></script>
	<script src="<?php echo base_url('assets/plugins/jquery/jquery-migrate.min.js');?>"></script>
	<script src="<?php echo base_url('assets/plugins/bootstrap/js/bootstrap.min.js');?>"></script>
	<!-- JS Implementing Plugins -->
	<script src="<?php echo base_url('assets/plugins/back-to-top.js');?>"></script>
	<script src="<?php echo base_url('assets/plugins/smoothScroll.js');?>"></script>
	<script src="<?php echo base_url('assets/plugins/jquery-steps/build/jquery.steps.js');?>"></script>
	<script src="<?php echo base_url('assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js');?>"></script>
	<script src="<?php echo base_url('assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js');?>"></script>
	<!-- JS Customization -->
	<script src="<?php echo base_url('assets/js/custom.js');?>"></script>
	<!-- JS Page Level -->
	<script src="<?php echo base_url('assets/js/shop.app.js');?>"></script>
	<script src="<?php echo base_url('assets/js/forms/page_login.js');?>"></script>
	<script src="<?php echo base_url('assets/js/plugins/stepWizard.js');?>"></script>
	<script src="<?php echo base_url('assets/js/forms/product-quantity.js');?>"></script>
	<script src="<?php echo base_url('assets/js/plugins/style-switcher.js');?>"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			Login.initLogin();
			App.initScrollBar();
			StepWizard.initStepWizard();
			StyleSwitcher.initStyleSwitcher();
		});
	</script>

<!--[if lt IE 9]>
	<script src="<?php echo base_url('assets/plugins/respond.js');?>"></script>
	<script src="<?php echo base_url('assets/plugins/html5shiv.js');?>"></script>
	<script src="<?php echo base_url('assets/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js');?>"></script>
	<![endif]-->
<!--[if lt IE 10]>
	<script src="<?php echo base_url('assets/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js');?>"></script>
	<![endif]-->

</body>

<!-- Mirrored from htmlstream.com/preview/unify-v1.9.6/E-Commerce/shop-ui-add-to-cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 19 Dec 2016 00:17:24 GMT -->
</html>
