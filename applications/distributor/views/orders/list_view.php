<?php $this->load->view('layout/header_view') ?>
<?php $this->load->view('layout/navbar_view') ?>
<!-- DataTables -->
<link rel="stylesheet" href="<?php echo base_url() ?>assets/plugins/datatables/css/datatables.min.css">

<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				Order
				<small>it all starts here</small>
			</h1>
		</section>

		<!-- Main content -->
		<section class="content">
			<!-- Default box -->
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">Orders</h3>

					<div class="box-tools pull-right">
						<button type="button" class="btn btn-box-tool"
							data-widget="collapse" data-toggle="tooltip" title="Collapse">
							<i class="fa fa-minus"></i></button>
					</div>
				</div>
				<div class="box-body">
					<?php if ($this->session->flashdata('success')): ?>
						<div class="alert alert-success alert-dismissible">
							<button type="button" class="close" data-dismiss="alert"
								aria-hidden="true">&times;</button>
							<h4><i class="icon fa fa-check"></i> Sukses!</h4>
							<?php echo $this->session->flashdata('success') ?>
						</div>
					<?php endif ?>
					<table class="table table-responsive">
						<thead>
							<th style="width: 5%">#</th>
							<th style="width: 30%">Username</th>
							<th style="width: 40%">Packages</th>
							<th style="width: 25%">Date</th>
						</thead>
						<tbody>
							<?php $rowNum = 1; ?>
							<?php foreach ($orders as $key): ?>
								<tr>
									<td><?php echo $rowNum++; ?></td>
									<td><?php echo $key->users->username; ?></td>
									<td><?php echo $key->packages->name; ?></td>
									<td><?php echo $key->created_at; ?></td>
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

<?php $this->load->view('layout/script_view') ?>
<!-- DataTables -->
<script src="<?php echo base_url() ?>assets/plugins/datatables/js/datatables.min.js"></script>
<script>
	$(function(){
		$('table').DataTable();
	});
</script>
<?php $this->load->view('layout/footer_view') ?>
