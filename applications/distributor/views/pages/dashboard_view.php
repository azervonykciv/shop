<?php $this->load->view('layout/header_view') ?>
<?php $this->load->view('layout/navbar_view') ?>

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>it all starts here</small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Setting</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
          <form action="<?php echo base_url().'dashboard/token' ?>" method="post">
            <div class="form-group">
              <label for="exampleInputEmail1">MY Token</label>
              <input name="data[token]" type="text" class="form-control"
              value="<?php echo $setting->token ?>">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">MY URL</label>
              <input name="data[url]" type="text" class="form-control"
              value="<?php echo $setting->url ?>">
            </div>
            <input type="submit" class="btn btn-primary pull-right">
          </form>
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<?php $this->load->view('layout/script_view') ?>
<?php $this->load->view('layout/footer_view') ?>
