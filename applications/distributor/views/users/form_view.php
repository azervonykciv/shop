<?php $this->load->view('layout/header_view') ?>
<?php $this->load->view('layout/navbar_view') ?>

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Users
        <small>it all starts here</small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Form Tambah/Edit</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
          <?php if ($this->uri->segment(2) === 'create'): ?>
            <form role="form" action="<?php echo base_url().'users/store' ?>" method='post'>
          <?php else: ?>
            <form role="form" action="<?php echo base_url().'users/update/'.$data->id ?>" method='post'>
          <?php endif ?>
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Username</label>
                  <input name="data[username]" type="text" class="form-control" placeholder="Username"
                    value="<?php if (isset($data->username)) echo $data->username;?>" >
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input name="data[password]" type="password" class="form-control" placeholder="Password" >
                </div>
                <div class="form-group">
									<label>Package :</label>
									<select name="data[level]" class="form-control">
											<option value="customer" <?php if (isset($data->level)){
                        if ($data->level === 'customer') echo "selected"; }?> >
                        customer</option>
											<option value="super admin" <?php if (isset($data->level)){
                        if ($data->level === 'super admin') echo "selected"; }?> >
                        super admin</option>
									</select>
								</div>
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
