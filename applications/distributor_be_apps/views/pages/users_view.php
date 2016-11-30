<?php $this->load->view('layout/header_view') ?>
<style>
</style>
<!-- FAB -->
<div class="btn-floating" id="help-actions">
	<div class="btn-bg"></div>
	<button type="button" class="btn btn-default btn-toggle" data-toggle="modal" data-target="#myModal">
		<i class="icon fa fa-plus"></i>
	</button>
</div>
<!-- End FAB -->
<!-- modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog">
		<div class="modal-content">
			<form class="form form-horizontal" method="post" action="<?php echo base_url()."users/store" ?>">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">Insert</h4>
				</div>
				<div class="modal-body">
						<div class="form-group">
							<label class="col-xs-3 control-label">Username</label>
							<div class="col-xs-9">
								<input name="data[username]" type="text" class="form-control" placeholder="username" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label">Password</label>
							<div class="col-xs-9">
								<input name="data[password]" type="password" class="form-control" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label">Level</label>
							<div class="col-xs-9">
								<select name="data[level]" class="form-control" required>
									<option value="pelanggan">Pelanggan</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label">Paket</label>
							<div class="col-xs-9">
								<select name="package" class="form-control" required>
									<?php foreach ($package as $key): ?>
										<option value="<?php echo $key->id ?>"><?php echo $key->name ?></option>
									<?php endforeach ?>
								</select>
							</div>
						</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-sm btn-success">Submit</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- END modal -->
<?php if ($this->session->flashdata('err')): ?>
	<div class="row">
		<div class="col-sm-12">
			<div class="alert alert-warning alert-dismissible" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true"><i class="fa fa-close"></i></span></button>
					<strong>Warning!</strong> <?php echo $this->session->flashdata('err') ?>
			</div>
		</div>	
	</div>	
<?php endif ?>
<?php if ($this->session->flashdata('msg')): ?>
	<div class="row">
		<div class="col-sm-12">
			<div class="alert alert-success alert-dismissible" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true"><i class="fa fa-close"></i></span></button>
					<strong>Warning!</strong> <?php echo $this->session->flashdata('msg') ?>
			</div>
		</div>	
	</div>	
<?php endif ?>

<div class="row">
	<div class="col-xs-12">
		<div class="card">
			<div class="card-header">
				<div class="card-title">Users</div>
			</div>
			<div class="card-body table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th style="width: 5%">#</th>
							<th style="width: 30%">Username</th>
							<th style="width: 25%">Item</th>
							<th style="width: 20%">Paket</th>
							<th style="width: 20%">Action</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Test</td>
							<td>Test</td>
							<td>Test</td>
							<td></td>
						</tr>
						<tr>
							<td>2</td>
							<td>Test</td>
							<td>Test</td>
							<td>Test</td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<?php $this->load->view('layout/script_view') ?>
<script src="<?php echo base_url()."assets/plugins/datatables/js/datatables.min.js" ?>"></script>
<script>
	$('table').dataTable();
</script>
<?php $this->load->view('layout/footer_view') ?>