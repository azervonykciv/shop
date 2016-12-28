 <!DOCTYPE html>

 <!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
 <!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
 <!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
 
<!-- Mirrored from htmlstream.com/preview/unify-v1.9.6/E-Commerce/shop-ui-filter-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 19 Dec 2016 00:15:21 GMT -->
<head>
    <title>Muslim-shop</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- bootstrap 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src= "//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="<?php echo base_url()."assets/plugins/bootstrap/css/bootstrap.min.css"; ?>">
    <link rel="stylesheet" href="<?php echo base_url()."assets/css/shop.style.css"; ?>">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="<?php echo base_url()."assets/css/headers/header-v5.css" ?>">
    <link rel="stylesheet" href="<?php echo base_url()."assets/css/footers/footer-v4.css" ?>">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="<?php echo base_url()."assets/plugins/animate.css" ?>">
    <link rel="stylesheet" href="<?php echo base_url()."assets/plugins/line-icons/line-icons.css" ?>">
    <link rel="stylesheet" href="<?php echo base_url()."assets/plugins/font-awesome/css/font-awesome.min.css" ?>">
    <link rel="stylesheet" href="<?php echo base_url()."assets/plugins/noUiSlider/jquery.nouislider.min.css" ?>">
    <link rel="stylesheet" href="<?php echo base_url()."assets/plugins/scrollbar/css/jquery.mCustomScrollbar.css" ?>">

    <!-- Style Switcher -->
    <link rel="stylesheet" href="<?php echo base_url()."assets/css/plugins/style-switcher.css" ?>">

    <!-- CSS Theme -->
    <link rel="stylesheet" href="<?php echo base_url()."assets/css/theme-colors/default.css" ?> id="style_color>

    <!-- CSS Customization -->
    <link rel="stylesheet" href="<?php echo base_url()."assets/css/custom.css" ?>">
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
                            <img id="logo-header" src="assets/img/logo.png" alt="Logo">
                        </a>
                    </div>

                    <!-- Shopping Cart -->
                    <div class="shop-badge badge-icons pull-right">
                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                        <div class="badge-open">
                            <ul class="list-unstyled mCustomScrollbar" data-mcs-theme="minimal-dark">
                                <li>
                                    <img src="assets/img/thumb/05.jpg" alt="">
                                    <button type="button" class="close">×</button>
                                    <div class="overflow-h">
                                        <span>Black Glasses</span>
                                        <small>1 x $400.00</small>
                                    </div>
                                </li>
                            </ul>
                            <div class="subtotal">
                                <div class="overflow-h margin-bottom-10">
                                    <span>Subtotal</span>
                                    <span class="pull-right subtotal-cost">$1200.00</span>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6">
                                        <a href="shop-ui-inner.html" class="btn-u btn-brd btn-brd-hover btn-u-sea-shop btn-block">View Cart</a>
                                    </div>
                                    <div class="col-xs-6">
                                        <a href="shop-ui-add-to-cart.html" class="btn-u btn-u-sea-shop btn-block">Checkout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Shopping Cart -->

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse navbar-responsive-collapse">
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
                <span class="page-name">Selamat Datang</span>
                <h1>Muslim <span class="shop-green">shop</span> Yakheer</h1>
               
            </div><!--/end container-->
        </div>
        <!--=== End Breadcrumbs v4 ===-->

        <!--=== Content Part ===-->
        <div class="content container">
            <div class="row">
                <div class="col-md-3 filter-by-block md-margin-bottom-60">
                    <h1>Filter By</h1>
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h2 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                        Brands
                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </h2>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <ul class="list-unstyled checkbox-list">
                                        <li>
                                            <label class="checkbox">
                                                <input type="checkbox" name="checkbox" checked />
                                                <i></i>
                                                Calvin Klein
                                                <small><a href="#">(23)</a></small>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="checkbox">
                                                <input type="checkbox" name="checkbox" checked />
                                                <i></i>
                                                Gucci
                                                <small><a href="#">(4)</a></small>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="checkbox">
                                                <input type="checkbox" name="checkbox" />
                                                <i></i>
                                                Adidas
                                                <small><a href="#">(11)</a></small>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="checkbox">
                                                <input type="checkbox" name="checkbox" />
                                                <i></i>
                                                Puma
                                                <small><a href="#">(3)</a></small>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="checkbox">
                                                <input type="checkbox" name="checkbox" />
                                                <i></i>
                                                Zara
                                                <small><a href="#">(87)</a></small>
                                            </label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!--/end panel group-->

                    <div class="panel-group" id="accordion-v2">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h2 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion-v2" href="#collapseTwo">
                                        Categories
                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </h2>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <ul class="list-unstyled checkbox-list">
                                        <li>
                                            <label class="checkbox">
                                                <input type="checkbox" name="checkbox" checked />
                                                <i></i>
                                                Clothes
                                                <small><a href="#">(23)</a></small>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="checkbox">
                                                <input type="checkbox" name="checkbox" checked />
                                                <i></i>
                                                Glasses
                                                <small><a href="#">(4)</a></small>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="checkbox">
                                                <input type="checkbox" name="checkbox" />
                                                <i></i>
                                                Shoes
                                                <small><a href="#">(11)</a></small>
                                            </label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!--/end panel group-->

                    <div class="panel-group" id="accordion-v3">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h2 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion-v3" href="#collapseThree">
                                        Size
                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </h2>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <ul class="list-unstyled checkbox-list">
                                        <li>
                                            <label class="checkbox">
                                                <input type="checkbox" name="checkbox" />
                                                <i></i>
                                                S
                                                <small><a href="#">(23)</a></small>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="checkbox">
                                                <input type="checkbox" name="checkbox" checked />
                                                <i></i>
                                                M
                                                <small><a href="#">(4)</a></small>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="checkbox">
                                                <input type="checkbox" name="checkbox" />
                                                <i></i>
                                                L
                                                <small><a href="#">(11)</a></small>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="checkbox">
                                                <input type="checkbox" name="checkbox" />
                                                <i></i>
                                                XL
                                                <small><a href="#">(3)</a></small>
                                            </label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!--/end panel group-->

                    <div class="panel-group" id="accordion-v4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h2 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion-v4" href="#collapseFour">
                                        Price
                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </h2>
                            </div>
                            <div id="collapseFour" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <div class="slider-snap"></div>
                                    <p class="slider-snap-text">
                                        <span class="slider-snap-value-lower"></span>
                                        <span class="slider-snap-value-upper"></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div><!--/end panel group-->

                    <div class="panel-group" id="accordion-v5">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h2 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion-v5" href="#collapseFive">
                                        Color
                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </h2>
                            </div>
                        </div>
                    </div><!--/end panel group-->
                    <button type="button" class="btn-u btn-brd btn-brd-hover btn-u-lg btn-u-sea-shop btn-block">Reset</button>
                </div>

                <div class="col-md-9">
                    <div class="row margin-bottom-5">
                        <div class="col-sm-4 result-category">
                            
                        </div>
                        <div class="col-sm-8">
                            <ul class="list-inline clear-both">
                                <li class="grid-list-icons">
                                    <a href="shop-ui-filter-list.html"><i class="fa fa-th-list"></i></a>
                                    <a href="shop-ui-filter-grid.html"><i class="fa fa-th"></i></a>
                                </li>
                                <li class="sort-list-btn">
                                    <h3>Sort By :</h3>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                            Popularity <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">All</a></li>
                                            <li><a href="#">Best Sales</a></li>
                                            <li><a href="#">Top Last Week Sales</a></li>
                                            <li><a href="#">New Arrived</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="sort-list-btn">
                                    <h3>Show :</h3>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                            20 <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">All</a></li>
                                            <li><a href="#">10</a></li>
                                            <li><a href="#">5</a></li>
                                            <li><a href="#">3</a></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div><!--/end result category-->

                    <div class="filter-results">
                    
                        <div class="row illustration-v2 margin-bottom-30">
                        <?php foreach($products as $p) :?>
                            <div class="col-sm-3 col-md-3">
                                <div class="product-img product-img-brd">
                                    <a href="#"><img class="full-width img-responsive" 
                                    src="<?php echo base_url()."uploads/". $p->image;?>" style= 'max-width: 200%; max-height:200%; height:200px' alt=""></a>

                                    
                                    <a class="add-to-cart" href="<?php echo base_url()."index.php/welcome/add_to_cart/".$p->id?>"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                    
                                </div>
                                <div class="product-description product-description-brd margin-bottom-30">
                                    <div class="overflow-h margin-bottom-5">
                                        <div class="pull-left">
                                            <h4 class="title-price"><a href="shop-ui-inner.html"></a></h4>
                                            <span class="gender text-uppercase"><?php echo $p->name?></span>
                                            <span class="gender"><?php echo $p->description?></span>
                                        </div>
                                        
                                    </div>
                                    <div class="product-price">
                                            <span class="title-price"><?php echo $p->price?></span>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach ?>
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
    <i></i>
        <div>
            <div>
            
            </div>
            
        </div>
    </div><!--/style-switcher-->
    <!--=== End Style Switcher ===-->

    <!-- JS Global Compulsory -->
    <script src="<?php echo base_url()."assets/plugins/jquery/jquery.min.js" ?>"></script>
    <script src="<?php echo base_url()."assets/plugins/jquery/jquery-migrate.min.js" ?>"></script>
    <script src="<?php echo base_url()."assets/plugins/bootstrap/js/bootstrap.min.js" ?>"></script>
    <!-- JS Implementing Plugins -->
    <script src="<?php echo base_url()."assets/plugins/back-to-top.js" ?>"></script>
    <script src="<?php echo base_url()."assets/plugins/smoothScroll.js" ?>"></script>
    <script src="<?php echo base_url()."assets/plugins/noUiSlider/jquery.nouislider.all.min.js" ?>"></script>
    <script src="<?php echo base_url()."assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js" ?>"></script>
    <!-- JS Customization -->
    <script src="<?php echo base_url()."assets/js/custom.js" ?>"></script>
    <!-- JS Page Level -->
    <script src="<?php echo base_url()."assets/js/shop.app.js" ?>"></script>
    <script src="<?php echo base_url()."assets/js/plugins/mouse-wheel.js" ?>"></script>
    <script src="assets/js/plugins/style-switcher.js"></script>
    <script>
        jQuery(document).ready(function() {
            App.init();
            App.initScrollBar();
            MouseWheel.initMouseWheel();
            StyleSwitcher.initStyleSwitcher();
        });
    </script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/js/plugins/placeholder-IE-fixes.js"></script>
    <![endif]-->
<!--[if lt IE 10]>
    <script src="assets/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
    <![endif]-->

</body>

<!-- Mirrored from htmlstream.com/preview/unify-v1.9.6/E-Commerce/shop-ui-filter-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 19 Dec 2016 00:16:11 GMT -->
</html>
