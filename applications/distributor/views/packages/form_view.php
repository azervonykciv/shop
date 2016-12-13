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
          <h3 class="box-title">Form Tambah/Edit</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
          <?php if ($this->uri->segment(2) === 'create'): ?>
            <form role="form" action="<?php echo base_url().'packages/store' ?>" method='post'>
          <?php else: ?>
            <form role="form" action="<?php echo base_url().'packages/update/'.$data->id ?>" method='post'>
          <?php endif ?>
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Name</label>
                  <input name="data[name]" type="text" class="form-control" placeholder="Name"
                    value="<?php if (isset($data->name)) { echo $data->name; }   ?>" >
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
<?php $this->load->view('layout/script_view') ?>
<?php $this->load->view('layout/footer_view') ?>
