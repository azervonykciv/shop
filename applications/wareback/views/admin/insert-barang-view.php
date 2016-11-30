<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Data Barang
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?php echo base_url(); ?>dosen">Barang</a></li>
        <li class="active">Masukan</li>
    </ol>
</section>
<style type="text/css">
    .input-group{
        padding-bottom: 2em;
    }
</style>
<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Masukan Barang</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <form action="<?php echo base_url(); ?>admin/storedosen" method="POST">
                        <input name="ID_User" type="hidden" value="<?php echo $user['ID_User']; ?>">
                        <div class="input-group">
                            <label>ID Barang</label>
                            <input name="nidn" type="text" class="form-control" placeholder="012345">
                        </div>
                        <div class="input-group">
                            <label>Nama Barang</label>
                            <input name="nama_barang" type="text" class="form-control" placeholder="Nama Barang">
                        </div>
                        <div class="input-group">
                            <label>Kategori</label>
                            <input name="kategori" type="text" class="form-control" placeholder="Kategori">
                        </div>
                        <div class="input-group">
                            <label>Stok Barang</label>
                            <input name="stok" type="text" class="form-control" placeholder="Stok Barang">
                        </div>
                        <div class="input-group">
                            <label>Kode Rak</label>
                            <input name="kode_rak" type="text" class="form-control" placeholder="Kode Rak">
                        </div>
                        <div class="input-group">
                            <label>Harga</label>
                            <input name="harga" type="text" class="form-control" placeholder="Harga">
                        </div>
                        
                        <div class="input-group">
                            <input class="btn btn-primary" type="submit" value="Submit">
                        </div>
                    </form>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col -->
    </div><!-- /.row -->
</section><!-- /.content -->