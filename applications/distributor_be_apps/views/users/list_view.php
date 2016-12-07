<?php $this->load->view('layout/header_view') ?>
<?php $this->load->view('layout/navbar_view') ?>
<!-- DataTables -->
<link rel="stylesheet" href="<?php echo base_url() ?>assets/plugins/datatables/css/datatables.min.css">

<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				Blank page
				<small>it all starts here</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li><a href="#">Examples</a></li>
				<li class="active">Blank page</li>
			</ol>
		</section>

		<!-- Main content -->
		<section class="content">

			<!-- Default box -->
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">Title</h3>

					<div class="box-tools pull-right">
						<button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
							<i class="fa fa-minus"></i></button>
					</div>
				</div>
				<div class="box-body">
					<?php if ($this->session->flashdata('success')): ?>
						<div class="alert alert-success alert-dismissible">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
							<h4><i class="icon fa fa-check"></i> Sukses!</h4>
							<?php echo $this->session->flashdata('success') ?>
						</div>
					<?php endif ?>
					<div class="row">
						<div class="col-md-12">
							<a style="margin-bottom: 12px;" href="<?php echo base_url().'users/create' ?>" class="btn btn-success pull-right">Tambah</a>
						</div>
					</div>
					<table class="table table-responsive">
						<thead>
							<th style="width: 5%">#</th>
							<th style="width: 55%">Username</th>
							<th style="width: 40%">Action</th>
						</thead>
						<tbody>
							<?php $rowNum = 1; ?>
							<?php foreach ($users as $key): ?>
								<tr>
									<td><?php echo $rowNum++; ?></td>
									<td><?php echo $key->username; ?></td>
									<td>
										<a href="<?php echo base_url().'users/package/'.$key->id ?>" class="btn btn-primary">Paket</a>
										<a href="<?php echo base_url().'users/edit/'.$key->id ?>" class="btn btn-warning">Edit</a>
										<a href="<?php echo base_url().'users/delete/'.$key->id ?>" class="btn btn-danger"
											onclick="return confirm('Are you sure you want to delete this item?');">delete</a>
									</td>
								</tr>
							<?php endforeach ?>
						</tbody>
					</table>
				</div>
				<!-- /.box-body -->
				<div class="box-footer">
					Footer
				</div>
				<!-- /.box-footer-->
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
		<strong>Copyright &copy; 2014-2016 <a href="">Almsaeed Studio</a>.</strong> All rights
		reserved.
	</footer>

<?php $this->load->view('layout/script_view') ?>
<!-- DataTables -->
<script src="<?php echo base_url() ?>assets/plugins/datatables/js/datatables.min.js"></script>
<script>
	$(function(){
		$('table').DataTable();

	});
</script>
<?php $this->load->view('layout/footer_view') ?>