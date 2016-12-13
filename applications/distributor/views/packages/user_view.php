<?php $this->load->view('layout/header_view') ?>
<?php $this->load->view('layout/navbar_view') ?>

<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				Packages
				<small>it all starts here</small>
			</h1>
		</section>

		<!-- Main content -->
		<section class="content">

			<!-- Default box -->
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">Package User</h3>

					<div class="box-tools pull-right">
						<button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
							<i class="fa fa-minus"></i></button>
					</div>
				</div>
				<div class="box-body">
						<form role="form" action="<?php echo base_url().'packages/set_package_user/'.$user->id ?>" method='post'>
							<div class="box-body">
								<div class="form-group">
									<label>Name :</label>
									<input name="data[username]" type="text" class="form-control" placeholder="Name" readonly
										value="<?php if (isset($user->username)) { echo $user->username; }   ?>" >
								</div>

								<div class="form-group">
									<label>Package :</label>
									<select name="data[package_id]" class="form-control">
										<?php foreach ($packages as $key): ?>
											<?php if ($user->packages->id === $key->id): ?>
												<option value="<?php echo $key->id ?>" selected >
													<?php echo $key->name ?>
												</option>
											<?php else: ?>
												<option value="<?php echo $key->id ?>" >
													<?php echo $key->name ?>
												</option>
											<?php endif ?>
										<?php endforeach ?>
									</select>
								</div>

								<div class="box-footer">
									<button type="submit" class="btn btn-primary pull-right">Submit</button>
								</div>
						</form>
					</div>
				</div>
			</div>
			<!-- /.box -->

		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 2.3.5
		</div>
		<strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
		reserved.
	</footer>

<?php $this->load->view('layout/script_view') ?>
<?php $this->load->view('layout/footer_view') ?>
