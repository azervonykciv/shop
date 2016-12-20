 <!DOCTYPE html>
 <!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
 <!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
 <!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
 
<!-- Mirrored from htmlstream.com/preview/unify-v1.9.6/E-Commerce/shop-ui-filter-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 19 Dec 2016 00:15:21 GMT -->
<head>
 	<title>Product Grid | Unify - Responsive Website Template</title>

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
 	<link rel="stylesheet" href="<?php echo base_url('assets/plugins/noUiSlider/jquery.nouislider.min.css');?>">
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
 					<div class="shop-badge badge-icons pull-right">
 						<a href="#"><i class="fa fa-shopping-cart"></i></a>
 						
 						<span class="badge badge-sea rounded-x"><?php echo count($this->cart->contents()) ?></span>
 						<div class="badge-open">
 							<ul class="list-unstyled mCustomScrollbar" data-mcs-theme="minimal-dark">
				 				<?php 	$i=0; 
										foreach ($this->cart->contents() as $items):
										$i++; 	?>
 								<li>
 									<img src="<?php echo base_url()."uploads/".$items['image'];?>" alt="">
 									<button type="button" class="close">×</button>
 									<div class="overflow-h">
 										<span><?= $items['name'] ?></span>
 										<small><?= $items['price'] ?></small>
 									</div>
 								</li>
 								<?php endforeach ?>
 							</ul>
 							<div class="subtotal">
 								<div class="overflow-h margin-bottom-10">
 									<span>Subtotal</span>
 									<span class="pull-right subtotal-cost">$1200.00</span>
 								</div>
 								<div class="row">
 									<div class="col-xs-6">
 										
 									</div>
 									<div class="col-xs-6">
 										<a href="cek2" class="btn-u btn-u-sea-shop btn-block">Checkout</a>
 									</div>
 								</div>
 							</div>
 						</div>
 					</div>
 					<!-- End Shopping Cart -->

 					<!-- Collect the nav links, forms, and other content for toggling -->
 					<div class="collapse navbar-collapse navbar-responsive-collapse">
 						<!-- Nav Menu --> 					
 						<ul class="nav navbar-nav">
 							<!-- Pages -->
 							<li class="dropdown active">
 								<a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
 									Pages
 								</a>
 								<ul class="dropdown-menu">
 									<li><a href="index.html">Shop UI</a></li>
 									<li><a href="shop-ui-inner.html">Product Page</a></li>
 									<li class="active"><a href="shop-ui-filter-grid.html">Filter Grid Page</a></li>
 									<li><a href="shop-ui-filter-list.html">Filter List Page</a></li>
 									<li><a href="shop-ui-add-to-cart.html">Checkout</a></li>
 									<li><a href="shop-ui-login.html">Login</a></li>
 									<li><a href="shop-ui-register.html">Register</a></li>
 								</ul>
 							</li>
 							<!-- End Pages -->

 							<!-- Promotion -->
 							<li class="dropdown">
 								<a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
 									Promotion
 								</a>
 								<ul class="dropdown-menu">
 									<li class="dropdown-submenu">
 										<a href="javascript:void(0);">Jeans</a>
 										<ul class="dropdown-menu">
 											<li><a href="#">Skinny Jeans</a></li>
 											<li><a href="#">Bootcut Jeans</a></li>
 											<li><a href="#">Straight Cut Jeans</a></li>
 										</ul>
 									</li>
 									<li class="dropdown-submenu">
 										<a href="javascript:void(0);">Shoes</a>
 										<ul class="dropdown-menu">
 											<li><a href="#">Sandals</a></li>
 											<li><a href="#">Heels</a></li>
 										</ul>
 									</li>
 								</ul>
 							</li>
 							<!-- End Promotion -->

 							<!-- Gifts -->
 							<li class="dropdown mega-menu-fullwidth">
 								<a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
 									Gifts
 								</a>
 								<ul class="dropdown-menu">
 									<li>
 										<div class="mega-menu-content">
 											<div class="container">
 												<div class="row">
 													<div class="col-md-3 col-sm-12 col-xs-12 md-margin-bottom-30">
 														<h3 class="mega-menu-heading">Pellentes que nec diam lectus</h3>
 														<p>Proin pulvinar libero quis auctor pharet ra. Aenean fermentum met us orci, sedf eugiat augue pulvina r vitae. Nulla dolor nisl, molestie nec aliquam vitae, gravida sodals dolor...</p>
 														<button type="button" class="btn-u btn-u-dark">Read More</button>
 													</div>
 													<div class="col-md-3 col-sm-4 col-xs-4 md-margin-bottom-30">
 														<a href="#"><img class="product-offers img-responsive" src="<?php echo base_url('assets/img/blog/01.jpg');?>" alt=""></a>
 													</div>
 													<div class="col-md-3 col-sm-4 col-xs-4 sm-margin-bottom-30">
 														<a href="#"><img class="product-offers img-responsive" src="<?php echo base_url('assets/img/blog/02.jpg');?>" alt=""></a>
 													</div>
 													<div class="col-md-3 col-sm-4 col-xs-4">
 														<a href="#"><img class="product-offers img-responsive" src="<?php echo base_url('assets/img/blog/03.jpg');?>" alt=""></a>
 													</div>
 												</div><!--/end row-->
 											</div><!--/end container-->
 										</div><!--/end mega menu content-->
 									</li>
 								</ul><!--/end dropdown-menu-->
 							</li>
 							<!-- End Gifts -->

 							<!-- Books -->
 							<li class="dropdown mega-menu-fullwidth">
 								<a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
 									Books
 								</a>
 								<ul class="dropdown-menu">
 									<li>
 										<div class="mega-menu-content">
 											<div class="container">
 												<div class="row">
 													<div class="col-md-2 col-sm-6">
 														<h3 class="mega-menu-heading">Clothe</h3>
 														<ul class="list-unstyled style-list">
 															<li><a href="#">New in</a></li>
 															<li><a href="#">Coats &amp; Jackets</a></li>
 															<li><a href="#">Jeans</a></li>
 															<li><a href="#">Dresses</a></li>
 															<li><a href="#">Shorts</a> <span class="label label-danger-shop">New</span></li>
 															<li><a href="#">Skirts</a></li>
 															<li><a href="#">T-Shirts</a></li>
 														</ul>
 														<h3 class="mega-menu-heading">Shoes</h3>
 														<ul class="list-unstyled style-list">
 															<li><a href="#">Boots</a></li>
 															<li><a href="#">FLats</a></li>
 															<li><a href="#">Heels</a></li>
 															<li><a href="#">Sandals</a></li>
 															<li><a href="#">Sports</a></li>
 														</ul>
 													</div>

 													<div class="col-md-2 col-sm-6">
 														<h3 class="mega-menu-heading">Accessories</h3>
 														<ul class="list-unstyled style-list">
 															<li><a href="#">All accessories</a></li>
 															<li><a href="#">Bags &amp; Purses</a></li>
 															<li><a href="#">Scarvs &amp; Hats</a></li>
 															<li><a href="#">Jewellery</a></li>
 															<li><a href="#">Fragrance &amp; Beauty</a></li>
 														</ul>
 														<h3 class="mega-menu-heading">Lingerie</h3>
 														<ul class="list-unstyled style-list">
 															<li><a href="#">Linger</a> <span class="label label-danger-shop">New</span></li>
 															<li><a href="#">Slippers</a></li>
 														</ul>
 														<h3 class="mega-menu-heading">Nightwear</h3>
 														<ul class="list-unstyled style-list">
 															<li><a href="#">Nightwear</a></li>
 															<li><a href="#">Socks</a></li>
 															<li><a href="#">Tights</a></li>
 														</ul>
 													</div>

 													<div class="col-md-2 col-sm-6">
 														<h3 class="mega-menu-heading">Mixed</h3>
 														<ul class="list-unstyled style-list">
 															<li><a href="#">New in</a></li>
 															<li><a href="#">Coats &amp; Jackets</a> <span class="label label-danger-shop">New</span></li>
 															<li><a href="#">Jeans</a></li>
 															<li><a href="#">Dresses</a></li>
 															<li><a href="#">Shorts</a></li>
 															<li><a href="#">Skirts</a></li>
 															<li><a href="#">T-shirts</a></li>
 															<li><a href="#">Boots</a></li>
 															<li><a href="#">Flats</a></li>
 															<li><a href="#">Heels</a></li>
 															<li><a href="#">Sandals</a></li>
 															<li><a href="#">Sports</a></li>
 															<li><a href="#">Socks</a></li>
 															<li><a href="#">Tights</a></li>
 														</ul>
 													</div>

 													<div class="col-md-2 col-sm-6">
 														<h3 class="mega-menu-heading">Clothe</h3>
 														<ul class="list-unstyled style-list">
 															<li><a href="#">New in</a></li>
 															<li><a href="#">Coats &amp; Jackets</a></li>
 															<li><a href="#">Jeans</a></li>
 															<li><a href="#">Dresses</a></li>
 															<li><a href="#">Shorts</a> <span class="label label-danger-shop">New</span></li>
 															<li><a href="#">Skirts</a></li>
 															<li><a href="#">T-shirts</a></li>
 														</ul>
 														<h3 class="mega-menu-heading">Shoes</h3>
 														<ul class="list-unstyled style-list">
 															<li><a href="#">Boots</a></li>
 															<li><a href="#">Flats</a></li>
 															<li><a href="#">Heels</a></li>
 															<li><a href="#">Sandals</a></li>
 															<li><a href="#">Sports</a></li>
 														</ul>
 													</div>

 													<div class="col-md-2 col-sm-6">
 														<h3 class="mega-menu-heading">Accessories</h3>
 														<ul class="list-unstyled style-list">
 															<li><a href="#">All accessories</a></li>
 															<li><a href="#">Bags &amp; Purses</a></li>
 															<li><a href="#">Scarvs &amp; Hats</a></li>
 															<li><a href="#">Jewellery</a></li>
 															<li><a href="#">Fragrance &amp; Beauty</a></li>
 														</ul>
 														<h3 class="mega-menu-heading">Lingerie</h3>
 														<ul class="list-unstyled style-list">
 															<li><a href="#">Linger</a> <span class="label label-danger-shop">New</span></li>
 															<li><a href="#">Slippers</a></li>
 														</ul>
 														<h3 class="mega-menu-heading">Nightwear</h3>
 														<ul class="list-unstyled style-list">
 															<li><a href="#">Nightwear</a></li>
 															<li><a href="#">Socks</a></li>
 															<li><a href="#">Tights</a></li>
 														</ul>
 													</div>

 													<div class="col-md-2 col-sm-6">
 														<h3 class="mega-menu-heading">Mixed</h3>
 														<ul class="list-unstyled style-list">
 															<li><a href="#">New in</a></li>
 															<li><a href="#">Coats &amp; Jackets</a> <span class="label label-danger-shop">New</span></li>
 															<li><a href="#">Jeans</a></li>
 															<li><a href="#">Dresses</a></li>
 															<li><a href="#">Shorts</a></li>
 															<li><a href="#">Skirts</a></li>
 															<li><a href="#">T-shirts</a></li>
 															<li><a href="#">Boots</a></li>
 															<li><a href="#">Flats</a></li>
 															<li><a href="#">Heels</a></li>
 															<li><a href="#">Sandals</a></li>
 															<li><a href="#">Sports</a></li>
 															<li><a href="#">Socks</a></li>
 															<li><a href="#">Tights</a> <span class="label label-danger-shop">New</span></li>
 														</ul>
 													</div>
 												</div><!--/end row-->
 											</div><!--/end container-->
 										</div><!--/end mega menu content-->
 									</li>
 								</ul><!--/end dropdown-menu-->
 							</li>
 							<!-- End Books -->

 							<!-- Clothes -->
 							<li class="dropdown">
 								<a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown" data-delay="1000">
 									Clothes
 								</a>
 								<ul class="dropdown-menu">
 									<li><a href="#">Jeans</a></li>
 									<li><a href="#">T-shirts</a></li>
 									<li><a href="#">Shorts</a></li>
 								</ul>
 							</li>
 							<!-- End Clothes -->

 							<!-- Main Demo -->
 							<li><a href="http://htmlstream.com/preview/unify-v1.9.6/index.html">Main Demo</a></li>
 							<!-- Main Demo -->
 						</ul>
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
 				<span class="page-name">Product Filter Page</span>
 				<h1>Maecenas <span class="shop-green">enim</span> sapien</h1>
 				<ul class="breadcrumb-v4-in">
 					<li><a href="index.html"> </a></li>
 				</ul>
 			</div><!--/end container-->
 		</div>
 		<!--=== End Breadcrumbs v4 ===-->

 		<!--=== Content Part ===-->
 		<div class="content container">
 			<div class="row">
 				

 				<div class="col-md-9">
 					
<!-- <a class="add-to-cart" href=" <?php echo base_url()."index.php/welcome/add_to_cart/".$p->id ?> "><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
 					<div class="filter-results">
 					
 						<div class="row illustration-v2 margin-bottom-30">
 						<table class="table">
 							<thead>
 								<tr>
 									<th>NAMA_BARANG</th>
 									<th>HARGA_JUAL</th>
 									<th>QTY</th>
 									<th>Action</th>
 								</tr>
 							</thead>
 							<tbody>
		 						<?php foreach($produk as $p) :?>
									<tr>
										<td><?php echo $p->NAMA_BARANG ?></td>
										<td><?php echo $p->HARGA_JUAL ?></td>
										<td><?php echo $p->QTY ?></td>
										<td>
										<!-- <?php echo base_url()."index.php/welcome/add_to_cart/".$p->KODE_BARANG ?> -->
										<a class="btn btn-success" href="<?php echo base_url()."index.php/welcome/add_to_cart/".$p->KODE_BARANG ?>">Add to cart</a>
										</td>
									</tr>		 							
		 						<?php endforeach ?>
 							</tbody>
 						</table>
 						</div>
 						

 					</div><!--/end filter resilts-->

 					<div class="text-center">
 						<ul class="pagination pagination-v2">
 							<li><a href="#"><i class="fa fa-angle-left"></i></a></li>
 							<li><a href="#">1</a></li>
 							<li class="active"><a href="#">2</a></li>
 							<li><a href="#">3</a></li>
 							<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
 						</ul>
 					</div><!--/end pagination-->
 				</div>
 			</div><!--/end row-->
 		</div><!--/end container-->
 		<!--=== End Content Part ===-->

 		<!--=== Shop Suvbscribe ===-->
 		<div class="shop-subscribe">
 			<div class="container">
 				<div class="row">
 					<div class="col-md-4">
 						<div class="input-group">
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
 					</div>
 						</div>
 					</div><!--/end row-->
 				</div><!--/end continer-->
 			</div><!--/footer-->

 			<div class="copyright">
 				<div class="container">
 					<div class="row">
 						<div class="col-md-6">
 							
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
 					<a href="RTL/shop-ui-filter-grid.html" class="btn-u btn-u-xs btn-u-dark btn-block">RTL <small class="dp-block">Version</small></a>
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
 	<script src="<?php echo base_url('assets/plugins/noUiSlider/jquery.nouislider.all.min.js');?>"></script>
 	<script src="<?php echo base_url('assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js');?>"></script>
 	<!-- JS Customization -->
 	<script src="<?php echo base_url('assets/js/custom.js');?>"></script>
 	<!-- JS Page Level -->
 	<script src="<?php echo base_url('assets/js/shop.app.js');?>"></script>
 	<script src="<?php echo base_url('assets/js/plugins/mouse-wheel.js');?>"></script>
 	<script src="<?php echo base_url('assets/js/plugins/style-switcher.js');?>"></script>
 	<script>
 		jQuery(document).ready(function() {
 			App.init();
 			App.initScrollBar();
 			MouseWheel.initMouseWheel();
 			StyleSwitcher.initStyleSwitcher();
 		});
 	</script>
<!--[if lt IE 9]>
	<script src="<?php echo base_url('assets/plugins/respond.js');?>"></script>
	<script src="<?php echo base_url('assets/plugins/html5shiv.js');?>"></script>
	<script src="<?php echo base_url('assets/js/plugins/placeholder-IE-fixes.js');?>"></script>
	<![endif]-->
<!--[if lt IE 10]>
	<script src="<?php echo base_url('assets/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js');?>"></script>
	<![endif]-->

</body>

<!-- Mirrored from htmlstream.com/preview/unify-v1.9.6/E-Commerce/shop-ui-filter-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 19 Dec 2016 00:16:11 GMT -->
</html>
