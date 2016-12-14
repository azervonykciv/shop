<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Data Barang
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?php echo base_url(); ?>dosen">Barang</a></li>
        <li class="active">Edit</li>
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
                    <h3 class="box-title">Edit Barang</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <form action="<?php echo base_url(); ?>admin/updateBarang" method="POST">
                        <input name="ID_User" type="hidden" value="<?php echo $user['ID_User']; ?>">
                        <div class="input-group">
                            <label>Kode Barang</label>
                            <input name="KODE_BARANG" value="<?php echo $barang[0]->KODE_BARANG; ?>" type="text" class="form-control" placeholder="Id Barang" readonly>
                        </div>
                        <div class="input-group">
                            <label>Nama Barang</label>
                            <input name="NAMA_BARANG" value="<?php echo $barang[0]->NAMA_BARANG; ?>" type="text" class="form-control" placeholder="Nama Barang">
                        </div>
                        <div class="input-group">
                            <label>Kategori</label>
                            <input name="KODE_KLASIFIKASI" value="<?php echo $barang[0]->KODE_KLASIFIKASI; ?>" type="text" class="form-control" placeholder="Kategori">
                        </div>
                        <div class="input-group">
                            <label>Stok</label>
                            <input name="QTY" value="<?php echo $barang[0]->QTY; ?>" type="text" class="form-control" placeholder="Stok">
                        </div>
                        <div class="input-group">
                            <label>Harga</label>
                            <input name="HARGA_JUAL" value="<?php echo $barang[0]->HARGA_JUAL; ?>" type="text" class="form-control" placeholder="Harga">
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