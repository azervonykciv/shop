SELECT SUBSTRING_INDEX(`NAMA_BARANG`, ' ', 1) as `kelompok` FROM `barang` GROUP BY `kelompok`

SELECT * FROM `barang` WHERE `NAMA_BARANG` LIKE 'MADU%'
