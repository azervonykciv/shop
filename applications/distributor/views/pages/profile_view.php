
<!DOCTYPE HTML>
<!--
	Projection by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Generic - Projection by TEMPLATED</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="<?php echo base_url().'assets/projection/css/main.css' ?>" />
	</head>
	<body class="subpage">

		<!-- Header -->
			<header id="header">
				<div class="inner">
					<a href="index.html" class="logo"><strong>Projection</strong> by TEMPLATED</a>
					<nav id="nav">
            <a href="<?php echo base_url().'home' ?>">Home</a>
            <a href="<?php echo base_url().'home/profile' ?>">My Profile</a>
            <a href="<?php echo base_url().'auth/logout' ?>">Logout</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>

		<!-- Three -->
			<section id="three" class="wrapper">
				<div class="inner">
					<header class="align-center">
						<h2><?php echo $data->username ?></h2>
					</header>
          <table>
            <tr>
              <td>
                Token
              </td>
              <td>
                : <?php echo $data->token ?>
              </td>
            </tr>
            <tr>
              <td>
								Paket
							</td>
              <td>
								: <?php echo $data->packages->name ?>
							</td>
            </tr>
            <tr>
              <td>
								Merk
							</td>
              <td>
								: <?php echo $data->selection ?>
							</td>
            </tr>
						<tr>
              <td>
								URL
							</td>
              <td>
								: /ApiHerbal
							</td>
            </tr>
          </table>

				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">

					<div class="copyright">
						&copy; Untitled. Design: <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com">Unsplash</a>.
					</div>

				</div>
			</footer>

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
