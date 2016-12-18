<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        <?php if ($user['Status'] === 'Admin'):?>
            Manajemen Data Barang
        <?php elseif ($user['Status'] === 'Member') :?>
            Daftar Barang
        <?php endif ?>
        <small>table</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Barang</li>
    </ol>
</section>
<style type="text/css">
    .btn-submit{
        margin-bottom: 2em;
    }
</style>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Daftar Data Barang</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>KODE BARANG</th>
                            <th>NAMA BARANG</th>
                            <th>KODE UNIT</th>
                            <th>HARGA BARANG</th>
                            <th>KODE KURS</th>
                            <th>KATEGORI</th>
                            <th>STOK</th>
                            <th>TANGGAL PRODUKSI</th>
                            <th>ACTION</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($barang as $key): ?>
                            <tr>
                                <td><?php echo $key->KODE_BARANG ?></td>
                                <td><?php echo $key->NAMA_BARANG ?></td>
                                <td><?php echo $key->KODE_UNIT ?></td>
                                <td><?php echo $key->HARGA_JUAL ?></td>
                                <td><?php echo $key->KODE_KURS ?></td>
                                <td><?php echo $key->KODE_KLASIFIKASI ?></td>
                                <td><?php echo $key->QTY ?></td>
                                <td><?php echo $key->TGLPRODUKSI ?></td>

                                <td>
                                    <?php if($user['Status'] === 'Admin'):?>
                                        <a class="btn btn-warning" href="<?php echo base_url()."admin/editBarang/".$key->KODE_BARANG; ?>">Edit</a>
                                        <a class="btn btn-danger" href="<?php echo base_url()."admin/deleteBarang/".$key->KODE_BARANG."/".$user['ID_User']; ?>">Delete</a>
                                    <?php endif ?>
                                </td>
                            </tr>
                        <?php endforeach ?>
                        </tbody>
                    </table>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col -->
    </div><!-- /.row -->
</section><!-- /.content -->