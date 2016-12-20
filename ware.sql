-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2016 at 10:20 AM
-- Server version: 5.6.31
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ware`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE IF NOT EXISTS `access` (
  `id` int(11) unsigned NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `all_access` tinyint(1) NOT NULL DEFAULT '0',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `key`, `all_access`, `controller`, `date_created`, `date_modified`) VALUES
(4, '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', 0, '/api_server', '2016-12-17 02:12:51', '2016-12-16 19:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `KODE_BARANG` varchar(5) NOT NULL,
  `NAMA_BARANG` varchar(55) NOT NULL,
  `KODE_UNIT` varchar(3) DEFAULT NULL,
  `HARGA_JUAL` int(11) NOT NULL,
  `KODE_KURS` varchar(3) DEFAULT NULL,
  `KODE_KLASIFIKASI` varchar(60) DEFAULT NULL,
  `QTY` int(11) NOT NULL,
  `TGLPRODUKSI` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`KODE_BARANG`, `NAMA_BARANG`, `KODE_UNIT`, `HARGA_JUAL`, `KODE_KURS`, `KODE_KLASIFIKASI`, `QTY`, `TGLPRODUKSI`) VALUES
('HJ1', 'JADIED PROPOLIS', 'PCS', 30000, 'IDR', 'HERBAL', 104, NULL),
('HJ2', 'JADIED LAMBUNG', 'PCS', 25000, 'IDR', 'HERBAL', 197, NULL),
('HJ3', 'JADIED KIDS', 'PCS', 25000, 'IDR', 'HERBAL', 171, NULL),
('HJ4', 'JADIED STAMINA', 'PCS', 45000, 'IDR', 'HERBAL', 0, NULL),
('HM1', 'MADU BOTOL RANDU', 'PCS', 60000, 'IDR', 'HERBAL', 0, NULL),
('HM10', 'MADU BOTOL MULTIFLORA', 'PCS', 0, 'IDR', 'HERBAL', 9, NULL),
('HM11', 'MADU BOTOL KECIL RANDU', 'PCS', 20000, 'IDR', 'HERBAL', 10, NULL),
('HM12', 'MADU BOTOL KECIL RAMBUTAN', 'PCS', 20000, 'IDR', 'HERBAL', 11, NULL),
('HM13', 'MADU BOTOL KECIL KALIMANTAN', 'PCS', 20000, 'IDR', 'HERBAL', 12, NULL),
('HM14', 'MADU BOTOL KECIL KARET', 'PCS', 20000, 'IDR', 'HERBAL', 13, NULL),
('HM15', 'MADU BOTOL KECIL SONO', 'PCS', 20000, 'IDR', 'HERBAL', 14, NULL),
('HM16', 'MADU BOTOL KECIL MANGGA', 'PCS', 20000, 'IDR', 'HERBAL', 15, NULL),
('HM17', 'MADU BOTOL KECIL SUMBAWA', 'PCS', 20000, 'IDR', 'HERBAL', 16, NULL),
('HM18', 'MADU BOTOL KECIL KALIANDRA', 'PCS', 20000, 'IDR', 'HERBAL', 17, NULL),
('HM19', 'MADU BOTOL KECIL  KELENGKENG', 'PCS', 20000, 'IDR', 'HERBAL', 18, NULL),
('HM2', 'MADU BOTOL RAMBUTAN', 'PCS', 80000, 'IDR', 'HERBAL', 1, NULL),
('HM20', 'MADU BOTOL KECIL MULTIFLORA', 'PCS', 20000, 'IDR', 'HERBAL', 19, NULL),
('HM21', 'MADU YAMAN 2 (1KG)', 'PCS', 600000, 'IDR', 'HERBAL', 12, NULL),
('HM22', 'MADU YAMAN 1 (? KG)', 'PCS', 1000000, 'IDR', 'HERBAL', 7, NULL),
('HM23', 'MADU KHASMIR 2KG', 'PCS', 240000, 'IDR', 'HERBAL', 8, NULL),
('HM24', 'MADU KHASMIR 1 ? KG', 'PCS', 225000, 'IDR', 'HERBAL', 3, NULL),
('HM25', 'MADU KHASMIR 1KG', 'PCS', 150000, 'IDR', 'HERBAL', 140, NULL),
('HM26', 'MADU KHASMIR (1) 1KG', 'PCS', 175000, 'IDR', 'HERBAL', 0, NULL),
('HM27', 'MADU AUSTRALIA 1KG', 'PCS', 175000, 'IDR', 'HERBAL', 4, NULL),
('HM28', 'MADU KHASMIR MUMTAZ ? KG', 'PCS', 160000, 'IDR', 'HERBAL', 0, NULL),
('HM29', 'MADU KHASMIR (ACASIA HONEY) ?', 'PCS', 75000, 'IDR', 'HERBAL', 2, NULL),
('HM3', 'MADU BOTOL KALIMANTAN', 'PCS', 70000, 'IDR', 'HERBAL', 2, NULL),
('HM30', 'MADU KHASMIR HERBAL HONEY ? KG', 'PCS', 75000, 'IDR', 'HERBAL', 24, NULL),
('HM31', 'MADU ASYFA ? KG', 'PCS', 75000, 'IDR', 'HERBAL', 27, NULL),
('HM32', 'MADU KHASMIRI 400 GR', 'PCS', 70000, 'IDR', 'HERBAL', 0, NULL),
('HM33', 'MADU KHASMIRI 250 GR', 'PCS', 45000, 'IDR', 'HERBAL', 17, NULL),
('HM34', 'MADU PAHIT', 'PCS', 50000, 'IDR', 'HERBAL', 4, NULL),
('HM35', 'MADU DIABET', 'PCS', 60000, 'IDR', 'HERBAL', 20, NULL),
('HM36', 'MADU KEJANTANAN', 'PCS', 90000, 'IDR', 'HERBAL', 3, NULL),
('HM4', 'MADU BOTOL KARET', 'PCS', 60000, 'IDR', 'HERBAL', 3, NULL),
('HM5', 'MADU BOTOL SONO', 'PCS', 60000, 'IDR', 'HERBAL', 4, NULL),
('HM6', 'MADU BOTOL MANGGA', 'PCS', 80000, 'IDR', 'HERBAL', 5, NULL),
('HM7', 'MADU BOTOL SUMBAWA', 'PCS', 60000, 'IDR', 'HERBAL', 6, NULL),
('HM8', 'MADU BOTOL KALIANDRA', 'PCS', 60000, 'IDR', 'HERBAL', 7, NULL),
('HM9', 'MADU BOTOL KELENGKENG', 'PCS', 80000, 'IDR', 'HERBAL', 8, NULL),
('HZ1', 'ZAITUN BORGES 500 ML', 'PCS', 85000, 'IDR', 'HERBAL', 40, NULL),
('HZ2', 'ZAITUN BORGES 250 ML', 'PCS', 45000, 'IDR', 'HERBAL', 49, NULL),
('HZ3', 'ZAITUN FIRDAUS 250 ML', 'PCS', 40000, 'IDR', 'HERBAL', 156, NULL),
('HZ4', 'ZAITUN BURCINO 250 ML', 'PCS', 40000, 'IDR', 'HERBAL', 51, NULL),
('HZ5', 'ZAITUN LE RICHE 300ML', 'PCS', 35000, 'IDR', 'HERBAL', 91, NULL),
('IQ1', 'AL-WAFU WAL IBTIDA 1', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ10', 'AL-WAFU WAL IBTIDA 9', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ11', 'AL-WAFU WAL IBTIDA 10', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ12', 'AL-WAFU WAL IBTIDA 11', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ13', 'AL-WAFU WAL IBTIDA 12', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ14', 'AL-WAFU WAL IBTIDA 13', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ15', 'AL-WAFU WAL IBTIDA 14', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ16', 'AL-WAFU WAL IBTIDA 15', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ17', 'AL-WAFU WAL IBTIDA 16', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ18', 'AL-WAFU WAL IBTIDA 17', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ19', 'AL-WAFU WAL IBTIDA 18', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ2', 'AL-WAFU WAL IBTIDA 2', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ20', 'AL-WAFU WAL IBTIDA  19', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ21', 'AL-WAFU WAL IBTIDA 20', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ22', 'AL-WAFU WAL IBTIDA 21', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ23', 'AL-WAFU WAL IBTIDA 22', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ24', 'AL-WAFU WAL IBTIDA 23', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ25', 'AL-WAFU WAL IBTIDA 24', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ26', 'AL-WAFU WAL IBTIDA 25', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ27', 'BUKU FASIH 1', 'PCS', 1500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ28', 'BUKU FASIH 2', 'PCS', 1500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ29', 'BUKU FASIH 3', 'PCS', 1500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ3', 'AL-WAFU WAL IBTIDA 3', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ30', 'BUKU FASIH 4', 'PCS', 1500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ31', 'BUKU FASIH 5', 'PCS', 1500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ32', 'BUKU FASIH 6', 'PCS', 1500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ33', 'KHOT PRAKTIS 1 KECIL', 'PCS', 1250, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ34', 'KHOT PRAKTIS 2 KECIL', 'PCS', 1250, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ35', 'KHOT PRAKTIS 3   KECIL', 'PCS', 1250, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ36', 'KHOT PRAKTIS 1 BESAR', 'PCS', 2600, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ37', 'KHOT PRAKTIS 2  BESAR', 'PCS', 2600, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ38', 'KHOT PRAKTIS 3  BESAR', 'PCS', 2600, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ39', 'IQRO 1  KECIL', 'PCS', 1250, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ4', 'AL-WAFU WAL IBTIDA 3', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ40', 'IQRO 2  KECIL', 'PCS', 1250, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ41', 'IQRO 3  KECIL', 'PCS', 1250, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ42', 'IQRO 4  KECIL', 'PCS', 1250, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ43', 'IQRO 5  KECIL', 'PCS', 1250, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ44', 'IQRO 6  KECIL', 'PCS', 1250, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ45', 'IQRO 1  BESAR', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ46', 'IQRO 2  BESAR', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ47', 'IQRO 3  BESAR', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ48', 'IQRO 4  BESAR', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ49', 'IQRO 5  BESAR', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ5', 'AL-WAFU WAL IBTIDA 4', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ50', 'IQRO 6  BESAR', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ51', 'IQRO BENDEL KECIL', 'PCS', 6250, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ6', 'AL-WAFU WAL IBTIDA 5', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ7', 'AL-WAFU WAL IBTIDA 6', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ8', 'AL-WAFU WAL IBTIDA 7', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('IQ9', 'AL-WAFU WAL IBTIDA 8', 'PCS', 2500, 'IDR', 'IQRO DIBA', 0, NULL),
('PA', 'PASS MINA ANITA', 'PCS', 27500, 'IDR', 'PASMINA SURBAN SONGKOK', 0, NULL),
('PCW', 'PASS MINA CORAK WARNA', 'PCS', 0, 'IDR', 'PASMINA SURBAN SONGKOK', 0, NULL),
('PFY12', 'PASS MINA FY-12', 'PCS', 0, 'IDR', 'PASMINA SURBAN SONGKOK', 0, NULL),
('PHM11', 'PASS MINA HM-11', 'PCS', 65000, 'IDR', 'PASMINA SURBAN SONGKOK', 18, NULL),
('PHM17', 'PASS MINA HM-17', 'PCS', 45000, 'IDR', 'PASMINA SURBAN SONGKOK', 84, NULL),
('PHM21', 'PASS MINA HM-21', 'PCS', 47500, 'IDR', 'PASMINA SURBAN SONGKOK', 38, NULL),
('PHM30', 'PASS MINA HM-30', 'PCS', 50000, 'IDR', 'PASMINA SURBAN SONGKOK', 9, NULL),
('PHM35', 'PASS MINA HM-35', 'PCS', 60000, 'IDR', 'PASMINA SURBAN SONGKOK', 22, NULL),
('PHM7', 'PASS MINA HM-7', 'PCS', 55000, 'IDR', 'PASMINA SURBAN SONGKOK', 0, NULL),
('PHP', 'PASS MINA HITAM PUTIH', 'PCS', 0, 'IDR', 'PASMINA SURBAN SONGKOK', 0, NULL),
('PHX5', 'PASS MINA HX-5', 'PCS', 55000, 'IDR', 'PASMINA SURBAN SONGKOK', 44, NULL),
('PJK23', 'PASS MINA JK230', 'PCS', 0, 'IDR', 'PASMINA SURBAN SONGKOK', 17, NULL),
('PJKWS', 'PASS MINA JKWS-002', 'PCS', 0, 'IDR', 'PASMINA SURBAN SONGKOK', 11, NULL),
('PK', 'PASS MINA KEMBANG', 'PCS', 25000, 'IDR', 'PASMINA SURBAN SONGKOK', 326, NULL),
('PKC', 'PASS MINA KEMBANG CINA', 'PCS', 25000, 'IDR', 'PASMINA SURBAN SONGKOK', 90, NULL),
('PL', 'PASS MINA LORENG', 'PCS', 35000, 'IDR', 'PASMINA SURBAN SONGKOK', 0, NULL),
('PL1', 'PASS MINA L', 'PCS', 35000, 'IDR', 'PASMINA SURBAN SONGKOK', 0, NULL),
('PL2', 'PASS MINA AL-OSTORAH', 'PCS', 0, 'IDR', 'PASMINA SURBAN SONGKOK', 0, NULL),
('PL3', 'PASS MINA GLISTSER', 'PCS', 27500, 'IDR', 'PASMINA SURBAN SONGKOK', 0, NULL),
('PL4', 'PASS MINA 3 WARNA', 'PCS', 0, 'IDR', 'PASMINA SURBAN SONGKOK', 0, NULL),
('PL5', 'PASS MINA   TIPIS', 'PCS', 0, 'IDR', 'PASMINA SURBAN SONGKOK', 0, NULL),
('PL6', 'PASS MINA ABU HAGAR', 'PCS', 0, 'IDR', 'PASMINA SURBAN SONGKOK', 0, NULL),
('PLD48', 'PASS MINA LD-48', 'PCS', 65000, 'IDR', 'PASMINA SURBAN SONGKOK', 77, NULL),
('PLD53', 'PASS MINA LD-53', 'PCS', 65000, 'IDR', 'PASMINA SURBAN SONGKOK', 58, NULL),
('PLD56', 'PASS MINA  LD-56', 'PCS', 60000, 'IDR', 'PASMINA SURBAN SONGKOK', 36, NULL),
('PLD57', 'PASS MINA LD-57', 'PCS', 60000, 'IDR', 'PASMINA SURBAN SONGKOK', 21, NULL),
('PLDB', 'PASS MINA LD-B', 'PCS', 55000, 'IDR', 'PASMINA SURBAN SONGKOK', 60, NULL),
('PLDE', 'PASS MINA LD-E', 'PCS', 47500, 'IDR', 'PASMINA SURBAN SONGKOK', 33, NULL),
('PLDF', 'PASS MINA LD-F', 'PCS', 45000, 'IDR', 'PASMINA SURBAN SONGKOK', 30, NULL),
('PLDK', 'PASS MINA LD-K', 'PCS', 55000, 'IDR', 'PASMINA SURBAN SONGKOK', 55, NULL),
('PLDY', 'PASS MINA LD-Y', 'PCS', 55000, 'IDR', 'PASMINA SURBAN SONGKOK', 60, NULL),
('PLZ1', 'PASS MINA LZ-1', 'PCS', 60000, 'IDR', 'PASMINA SURBAN SONGKOK', 30, NULL),
('PLZ4', 'PASS MINA LZ-4', 'PCS', 50000, 'IDR', 'PASMINA SURBAN SONGKOK', 49, NULL),
('PO1', 'PARIS OBAMA BANDOL', 'PCS', 30000, 'IDR', 'PASMINA SURBAN SONGKOK', 218, NULL),
('PO2', 'PARIS OBAMA KONCER', 'PCS', 27500, 'IDR', 'PASMINA SURBAN SONGKOK', 0, NULL),
('PR', 'KERUDUNG PARIS', 'PCS', 15000, 'IDR', 'PASMINA SURBAN SONGKOK', 900, NULL),
('PS911', 'PASS MINA SUPER 9118', 'PCS', 0, 'IDR', 'PASMINA SURBAN SONGKOK', 0, NULL),
('PXD71', 'PASS MINA XD-71', 'PCS', 0, 'IDR', 'PASMINA SURBAN SONGKOK', 135, NULL),
('PXY1', 'PASS MINA XY-1', 'PCS', 55000, 'IDR', 'PASMINA SURBAN SONGKOK', 47, NULL),
('PXY7', 'PASS MINA XY-7', 'PCS', 50000, 'IDR', 'PASMINA SURBAN SONGKOK', 60, NULL),
('QB1', 'QURAN BESAR CD GARIS AIN SYAM', 'PCS', 25000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB10', 'QURAN BESAR HVS  GARIS MADKURSURABAYA', 'PCS', 35000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB11', 'QURAN BESAR HVS POLOS NURCAHAYA', 'PCS', 35000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB12', 'QURAN BESAR  HVS POLOS DUTA ILMUAL-BARI', 'PCS', 35000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB13', 'QURAN BESAR HVS POLOS DUTA ILMUAR-RAHMAN', 'PCS', 35000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB14', 'QURAN BESAR HVS GARIS RAJAPUBLISHING', 'PCS', 35000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB15', 'QURAN BESAR HVS GARIS(RAHMAN)RAJA PUBLISHING', 'PCS', 35000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB16', 'QURAN  BESAR HVS  GARIS HIKMAHPRESS', 'PCS', 35000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB17', 'QURAN BESAR HVS POLOS MAHALHIDAYAH', 'PCS', 40000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB18', 'QURAN BESAR HVS GARIS MAHALHIDAYAH', 'PCS', 40000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB19', 'QURAN BESAR HVS POLOS AL-MAJIDTOHA PUTRA', 'PCS', 56000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB2', 'QURAN BESAR CD GARIS MADKURSURABAYA', 'PCS', 25000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB20', 'QURAN  BESAR HVS POLOS AL-MUAKHIRTOHA PUTRA', 'PCS', 57500, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB21', 'QURAN BESARHVS  GARIS AR-RASYIDTOHA PUTRA', 'PCS', 62500, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB22', 'QURAN BESAR HVS EMAS KALAM ALI', 'PCS', 45000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB23', 'QURAN BESAR HVS EMAS  GARIS ISTANAKARYA MULIA', 'PCS', 45000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB24', 'QURAN BESAR HVS GARIS PERAK KALAMALI', 'PCS', 40000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB25', 'QURAN BESAR HVS  BATIK KALAM ALI', 'PCS', 45000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB26', 'QURAN BESAR HIKMAH LUX TAJWID', 'PCS', 95000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB27', 'QURAN BESAR FOKUS MEDIA', 'PCS', 35000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB28', 'QURAN BESAR MAGFIROH TAJWID', 'PCS', 155000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB29', 'QURAN BESAR HVS GARIS BINA ILMU', 'PCS', 45000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB3', 'QURAN  BESAR CD GARIS ASSSALAM', 'PCS', 25000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB30', 'QURAN BESAR REST KALAM ALI', 'PCS', 62000, 'IDR', 'AL-QUR''AN', 1, NULL),
('QB31', 'QURAN BESAR VELCRO KALAM ALI', 'PCS', 62000, 'IDR', 'AL-QUR''AN', 2, NULL),
('QB4', 'QURAN BESAR CD POLOS  KARYA PUTRAUTAMA', 'PCS', 25000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB5', 'QURAN BESAR CD POLOS MENARAKUDUS', 'PCS', 25000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB6', 'QURAN BESAR HVS GARIS QOMARI', 'PCS', 35000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB7', 'QURAN BESAR HVS GARIS KALAM ALIBATIK', 'PCS', 40000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB8', 'QURAN BESAR HVS  KARYA PUTRAUTAMA', 'PCS', 35000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QB9', 'QURAN BESAR  HVS  GARIS AIN SYAMS', 'PCS', 35000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT1', 'QURAN TANGGUNG CD POLOS PUSTAKAAS', 'PCS', 20000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT10', 'QURAN TANGGUNG HVS POLOS ISTANA KARYA MULIA', 'PCS', 25000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT11', 'QURAN TANGGUNG HVS POLOS AL-HIDAYAH', 'PCS', 25000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT12', 'QURAN TANGGUNG HVS POLOS DUTAILMU', 'PCS', 25000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT13', 'QURAN TANGGUNG HVS GARIS  AINSYAMS', 'PCS', 25000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT14', 'QURAN TANGGUNG HVS GARIS KALAMALI  BATIK', 'PCS', 25000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT15', 'QURAN TANGGUNG HVS AWWAL TOHAPUTRA', 'PCS', 35000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT16', 'QURAN TANGGUNG HVS  KALAM ALI KAIN', 'PCS', 30000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT17', 'QURAN TANGGUNG HVS KALAM ALI VELCROWWARNA', 'PCS', 36000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT18', 'QURAN TANGGUNG KALM ALI  RESTWARNA', 'PCS', 36000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT19', 'QURAN TANGGUNG MAP CD POLOSAL-HIDAYAH', 'PCS', 30000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT2', 'QURAN TANGGUNG CD POLOS DUTAILMU', 'PCS', 20000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT20', 'QURAN TANGGUNG MAP HVS AL-HIDAYAH', 'PCS', 35000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT21', 'QURAN TANGGUNG MAP HVS GARISKARINDO', 'PCS', 35000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT22', 'QURAN TANGGUNG MAP HVS GARISDUTA ILMU', 'PCS', 35000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT23', 'QURAN TANGGUNG HVS EMAS GARIS BINSYUAIB', 'PCS', 30000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT24', 'QURAN TANGGUNG HVS EMAS  GARISKALAM ALI', 'PCS', 30000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT25', 'QURAN TANGGUNG HVS EMAS GARIS DUTA ILMU', 'PCS', 30000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT3', 'QURAN TANGGUNG CD POLOS AL-FATAHDUTA ILMU', 'PCS', 20000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT4', 'QURAN TANGGUNG CD POLOSAL-HIDAYAH', 'PCS', 20000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT5', 'QURAN TANGGUNG CD POLOS AISYAH', 'PCS', 20000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT6', 'QURAN TANGGUNG CD POLOS BINTANGTERANG', 'PCS', 20000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT7', 'QURAN TANGGUNG CD POLOS ISTANAKARYA MULIA', 'PCS', 20000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT8', 'QURAN TANGGUNG HVS POLOS KARYAPUTRA UTAMA SEMARANG', 'PCS', 25000, 'IDR', 'AL-QUR''AN', 0, NULL),
('QT9', 'QURAN TANGGUNG HVS GARIS QOMARI', 'PCS', 25000, 'IDR', 'AL-QUR''AN', 0, NULL),
('SY1', 'SY ABI JAMROH (AL-HIDAYAH)', 'PCS', 18000, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY10', 'SY AL-MINAHUS SANIYAH (AL-HIDAYAH)', 'PCS', 3300, 'IDR', 'KITAB KURASAN', 88, NULL),
('SY100', 'SY MUKHTASHOR SHOFI  (HAROMAIN)', 'PCS', 4600, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY101', 'SY NASHOIHUD DINIYAH  (AL-HIDAYAH)', 'PCS', 8500, 'IDR', 'KITAB KURASAN', 32, NULL),
('SY102', 'SY NASHOIHUD DINIYAH  (HAROMAIN)', 'PCS', 9400, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY103', 'SY NASHOIHUL IBAD (AL-HIDAYAH)', 'PCS', 7200, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY104', 'SY NASHOIHUL IBAD (HAROMAIN)', 'PCS', 7900, 'IDR', 'KITAB KURASAN', 59, NULL),
('SY105', 'SY NURUDZ DZOLAM (AL-HIDAYAH)', 'PCS', 4800, 'IDR', 'KITAB KURASAN', 236, NULL),
('SY106', 'SY NURUDZ DZOLAM (HAROMAIN)', 'PCS', 5300, 'IDR', 'KITAB KURASAN', 35, NULL),
('SY107', 'SY QOMIUT TUHYAN (AL-HIDAYAH)', 'PCS', 3400, 'IDR', 'KITAB KURASAN', 189, NULL),
('SY108', 'SY QOMIUT TUHYAN (HAROMAIN)', 'PCS', 3700, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY109', 'SY QOTRUL QOIS (AL-HIDAYAH)', 'PCS', 2500, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY11', 'SY AL-MINAHUS SANIYAH (HAROMAIN)', 'PCS', 3700, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY110', 'SY QOTRUL QOIS (HAROMAIN)', 'PCS', 2900, 'IDR', 'KITAB KURASAN', 112, NULL),
('SY111', 'SY QOTRUN NADA (AL-HIDAYAH)', 'PCS', 14000, 'IDR', 'KITAB KURASAN', 11, NULL),
('SY112', 'SY QURTHUBI  (AL-HIDAYAH)', 'PCS', 13500, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY113', 'SY QURROTUL UYUN  (AL-HIDAYAH)', 'PCS', 8500, 'IDR', 'KITAB KURASAN', 134, NULL),
('SY114', 'SY QURROTUL UYUN  (HAROMAIN)', 'PCS', 8500, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY115', 'SY RIYADHUL BADIAH  (AL-HIDAYAH)', 'PCS', 8200, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY116', 'SY RIYADHUL BADIAH  (HAROMAIN)', 'PCS', 9000, 'IDR', 'KITAB KURASAN', 72, NULL),
('SY117', 'SY RISALATUL MUAWANAH (AL-HIDAYAH)', 'PCS', 4300, 'IDR', 'KITAB KURASAN', 25, NULL),
('SY118', 'SY RISALATUL MUAWANAH  (HAROMAIN)', 'PCS', 4700, 'IDR', 'KITAB KURASAN', 140, NULL),
('SY119', 'SY SABAH KUTUB MUFID  (AL-HIDAYAH)', 'PCS', 18500, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY12', 'SY ASMAWI (AL-HIDAYAH)', 'PCS', 4700, 'IDR', 'KITAB KURASAN', 26, NULL),
('SY120', 'SY SAFINATUN NAJAH (AL-HIDAYAH)', 'PCS', 10000, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY121', 'SY SAFINATUN NAJAH (HAROMAIN)', 'PCS', 10900, 'IDR', 'KITAB KURASAN', 186, NULL),
('SY122', 'SY SANUSIYAH (AL-HIDAYAH)', 'PCS', 5600, 'IDR', 'KITAB KURASAN', 232, NULL),
('SY123', 'SY SIL-SIL MADHOL (AL-HIDAYAH)', 'PCS', 3800, 'IDR', 'KITAB KURASAN', 28, NULL),
('SY124', 'SY SIL-SIL MADHOL (HAROMAIN)', 'PCS', 4300, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY125', 'SY SITTIN MASALAH  (AL-HIDAYAH)', 'PCS', 7600, 'IDR', 'KITAB KURASAN', 148, NULL),
('SY126', 'SY SITTIN MASALAH  (HAROMAIN)', 'PCS', 8500, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY127', 'SY SULLAM MALAWI  (AL-HIDAYAH)', 'PCS', 16000, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY128', 'SY SULLAM MUNAJAT  (AL-HIDAYAH)', 'PCS', 3300, 'IDR', 'KITAB KURASAN', 108, NULL),
('SY129', 'SY SULLAM MUNAJAT  (HAROMAIN)', 'PCS', 3700, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY13', 'SY ASMAWI (HAROMAIN)', 'PCS', 5200, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY130', 'SY SULLAM TAUFIQ  (AL-HIDAYAH)', 'PCS', 7800, 'IDR', 'KITAB KURASAN', 20, NULL),
('SY131', 'SY SUDURRUDZ DZAHAB  (AL-HIDAYAH)', 'PCS', 9000, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY132', 'SY SYARQOWI HUD- HUDI  (AL-HIDAYAH)', 'PCS', 12000, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY133', 'SY TAFTAZANI  (AL-HIDAYAH)', 'PCS', 5000, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY134', 'SY TAFTAZANI  (HAROMAIN)', 'PCS', 5500, 'IDR', 'KITAB KURASAN', 40, NULL),
('SY135', 'SY TALHISUL ASAS  (HAROMAIN)', 'PCS', 6500, 'IDR', 'KITAB KURASAN', 41, NULL),
('SY136', 'SY TAKLIM MUTAALIM  (AL-HIDAYAH)', 'PCS', 4800, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY137', 'SY TAKLIM MUTAALIM  (HAROMAIN)', 'PCS', 5200, 'IDR', 'KITAB KURASAN', 156, NULL),
('SY138', 'SY TANBIHUL MUHTARIN  (AL-HIDAYAH)', 'PCS', 12000, 'IDR', 'KITAB KURASAN', 8, NULL),
('SY139', 'SY TANQIHUL QOUL (AL-HIDAYAH)', 'PCS', 6000, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY14', 'SY AYYUHAL WALAD (AL-HIDAYAH)', 'PCS', 4200, 'IDR', 'KITAB KURASAN', 132, NULL),
('SY140', 'SY TANQIHUL QOUL (HAROMAIN)', 'PCS', 6700, 'IDR', 'KITAB KURASAN', 311, NULL),
('SY141', 'SY TARGHIBUL MUSTAQIM (AL-HIDAYAH)', 'PCS', 4800, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY142', 'SY TASWIQUL HOLAN  (AL-HIDAYAH)', 'PCS', 18000, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY143', 'SY TIJANUD DURORI  (AL-HIDAYAH)', 'PCS', 2500, 'IDR', 'KITAB KURASAN', 143, NULL),
('SY144', 'SY TIJANUD DURORI  (HAROMAIN)', 'PCS', 2900, 'IDR', 'KITAB KURASAN', 3, NULL),
('SY145', 'SY TUHFATUL AHBAB  (AL-HIDAYAH)', 'PCS', 5000, 'IDR', 'KITAB KURASAN', 89, NULL),
('SY146', 'SY TUHFATUL AHBAB  (HAROMAIN)', 'PCS', 5500, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY147', 'SY TUHFATUTH TULLAB  (AL-HIDAYAH)', 'PCS', 11500, 'IDR', 'KITAB KURASAN', 46, NULL),
('SY148', 'SY TUHFATUTH TULLAB  (HAROMAIN)', 'PCS', 12800, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY149', 'SY UMDATUSH SALIK  (AL-HIDAYAH)', 'PCS', 6700, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY15', 'SY AYYUHAL WALAD (HAROMAIN)', 'PCS', 4200, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY150', 'SY UMDATUSH SALIK  (HAROMAIN)', 'PCS', 7600, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY151', 'SY UQUDULUJAIN  (AL-HIDAYAH)', 'PCS', 3000, 'IDR', 'KITAB KURASAN', 21, NULL),
('SY152', 'SY UQUDULUJAIN  (HAROMAIN)', 'PCS', 3400, 'IDR', 'KITAB KURASAN', 129, NULL),
('SY153', 'SY UQUDUL JUMAN  (AL-HIDAYAH)', 'PCS', 16000, 'IDR', 'KITAB KURASAN', 6, NULL),
('SY154', 'SY UQUDUL JUMAN  (HAROMAIN)', 'PCS', 16200, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY155', 'SY USFURIYAH  (AL-HIDAYAH)', 'PCS', 3500, 'IDR', 'KITAB KURASAN', 367, NULL),
('SY156', 'SY USFURIYAH  (HAROMAIN)', 'PCS', 4200, 'IDR', 'KITAB KURASAN', 150, NULL),
('SY157', 'SY WAROQOD  (AL-HIDAYAH)', 'PCS', 3100, 'IDR', 'KITAB KURASAN', 49, NULL),
('SY158', 'SY WAROQOD  (HAROMAIN)', 'PCS', 3500, 'IDR', 'KITAB KURASAN', 60, NULL),
('SY16', 'SY AWAMIL JARJANI (AL-HIDAYAH)', 'PCS', 4200, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY17', 'SY BAHJATUL WASAIL (AL-HIDAYAH)', 'PCS', 4200, 'IDR', 'KITAB KURASAN', 123, NULL),
('SY18', 'SY BAHJATUL WASAIL (HAROMAIN)', 'PCS', 4700, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY19', 'SY BAIKUNIYAH (AL-HIDAYAH)', 'PCS', 7800, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY2', 'SY ABI JAMROH (HAROMAIN)', 'PCS', 18000, 'IDR', 'KITAB KURASAN', 0, NULL),
('SY20', 'SY BAIKUNIYAH (HAROMAIN)', 'PCS', 8600, 'IDR', 'KITAB KURASAN', 26, NULL),
('TA1', 'TASBEH ASEM BESAR', 'KOD', 15000, 'IDR', 'TASBIH & PARFUM', 27, NULL),
('TA2', 'TASBEH ASEM KECIL', 'KOD', 12500, 'IDR', 'TASBIH & PARFUM', 28, NULL),
('TA3', 'TASBEH ASEM 33', 'KOD', 7500, 'IDR', 'TASBIH & PARFUM', 29, NULL),
('TB1', 'TASBEH BUNUL 33', 'KOD', 2000, 'IDR', 'TASBIH & PARFUM', 30, NULL),
('TB2', 'TASBEH BUNUL 99', 'KOD', 3500, 'IDR', 'TASBIH & PARFUM', 31, NULL),
('TC1', 'TASBEH CRISTAL 99', 'KOD', 27500, 'IDR', 'TASBIH & PARFUM', 226, NULL),
('TC2', 'TASBEH CRISTAL 33', 'KOD', 12500, 'IDR', 'TASBIH & PARFUM', 928, NULL),
('TG', 'TASBEH GAHRU AGATIS', 'KOD', 50000, 'IDR', 'TASBIH & PARFUM', 15, NULL),
('TG1', 'TASBEH GAHRU BESAR', 'KOD', 50000, 'IDR', 'TASBIH & PARFUM', 16, NULL),
('TG2', 'TASBEH GAHRU KECIL  HITAM', 'KOD', 50000, 'IDR', 'TASBIH & PARFUM', 17, NULL),
('TG3', 'TASBEH GAHRU BESAR HITAM', 'KOD', 60000, 'IDR', 'TASBIH & PARFUM', 18, NULL),
('TK1', 'TASBEH KAUKAH PANSET B', 'KOD', 300000, 'IDR', 'TASBIH & PARFUM', 1, NULL),
('TK10', 'TASBEH GELANG KAUKAH MERICA', 'KOD', 20000, 'IDR', 'TASBIH & PARFUM', 10, NULL),
('TK11', 'TASBEH GELANG KAUKAH PANSED', 'KOD', 30000, 'IDR', 'TASBIH & PARFUM', 11, NULL),
('TK12', 'TASBEH GELANG KAUKAH', 'KOD', 25000, 'IDR', 'TASBIH & PARFUM', 12, NULL),
('TK13', 'TASBEH KAUKAH 33 AREN', 'KOD', 250000, 'IDR', 'TASBIH & PARFUM', 13, NULL),
('TK14', 'TASBEH KAYU KAUKAH 33', 'KOD', 100000, 'IDR', 'TASBIH & PARFUM', 14, NULL),
('TK2', 'TASBEH KAUKAH BESAR', 'KOD', 300000, 'IDR', 'TASBIH & PARFUM', 2, NULL),
('TK3', 'TASBEH KAUKAH AREN', 'KOD', 325000, 'IDR', 'TASBIH & PARFUM', 3, NULL),
('TK4', 'TASBEH KAUKAH KAYU B', 'KOD', 425000, 'IDR', 'TASBIH & PARFUM', 4, NULL),
('TK5', 'TASBEH KAUKAH KAYU K', 'KOD', 350000, 'IDR', 'TASBIH & PARFUM', 5, NULL),
('TK6', 'TASBEH KAUKAH TANGGUNG (B)', 'KOD', 165000, 'IDR', 'TASBIH & PARFUM', 6, NULL),
('TK7', 'TASBEH KAUKAH KECIL (S)', 'KOD', 125000, 'IDR', 'TASBIH & PARFUM', 7, NULL),
('TK8', 'TASBEH KAUKAH BINTANG', 'KOD', 165000, 'IDR', 'TASBIH & PARFUM', 8, NULL),
('TK9', 'TASBEH KAUKAH PANSET K', 'KOD', 200000, 'IDR', 'TASBIH & PARFUM', 9, NULL),
('TL1', 'TASBEH LOREX 33', 'KOD', 3500, 'IDR', 'TASBIH & PARFUM', 38, NULL),
('TL2', 'TASBEH LOREX 99', 'KOD', 6000, 'IDR', 'TASBIH & PARFUM', 39, NULL),
('TM1', 'TASBEH MAWAR 33', 'KOD', 2500, 'IDR', 'TASBIH & PARFUM', 140, NULL),
('TM2', 'TASBEH MUTIARA 33', 'KOD', 3500, 'IDR', 'TASBIH & PARFUM', 33, NULL),
('TM3', 'TASBEH MUTIARA 33 BAGUS', 'KOD', 8500, 'IDR', 'TASBIH & PARFUM', 34, NULL),
('TM4', 'TASBEH MUTIARA 99 BAGUS', 'KOD', 15000, 'IDR', 'TASBIH & PARFUM', 125, NULL),
('TP1', 'FOSFOR HIJAU BESAR', 'KOD', 5000, 'IDR', 'TASBIH & PARFUM', 48, NULL),
('TP2', 'FOSFOR HIJAU TANGGUNG', 'KOD', 3500, 'IDR', 'TASBIH & PARFUM', 0, NULL),
('TP3', 'FOSFOR HIJAU KECIL', 'KOD', 2500, 'IDR', 'TASBIH & PARFUM', 24, NULL),
('TP4', 'FOSFOR PUTIH BESAR', 'KOD', 6000, 'IDR', 'TASBIH & PARFUM', 12, NULL),
('TP5', 'FOSFOR PUTIH TANGGUNG', 'KOD', 4000, 'IDR', 'TASBIH & PARFUM', 24, NULL),
('TP6', 'FOSFOR PUTIH KECIL', 'KOD', 3000, 'IDR', 'TASBIH & PARFUM', 48, NULL),
('TS1', 'TASBEH STIGI BESAR', 'KOD', 17500, 'IDR', 'TASBIH & PARFUM', 40, NULL),
('TS2', 'TASBEH STIGI TANGGUNG', 'KOD', 12500, 'IDR', 'TASBIH & PARFUM', 41, NULL),
('TW1', 'TASBEH WALIKUKUN BESAR (99)', 'KOD', 17500, 'IDR', 'TASBIH & PARFUM', 19, NULL),
('TW2', 'TASBEH WALIKUKUN TANGGUNG (99)', 'KOD', 7500, 'IDR', 'TASBIH & PARFUM', 20, NULL),
('TW3', 'TASBEH WALIKUKUN KECIL (99)', 'KOD', 5000, 'IDR', 'TASBIH & PARFUM', 21, NULL),
('TW4', 'TASBEH WALIKUKUN BESAR (33)', 'KOD', 7500, 'IDR', 'TASBIH & PARFUM', 22, NULL),
('TW5', 'TASBEH WALIKUKUN TANGGUNG (33)', 'KOD', 4000, 'IDR', 'TASBIH & PARFUM', 23, NULL),
('TZ1', 'TASBEH ZAITUN BESAR', 'KOD', 12500, 'IDR', 'TASBIH & PARFUM', 24, NULL),
('TZ2', 'TASBEH ZAITUN TANGGUNG', 'KOD', 10000, 'IDR', 'TASBIH & PARFUM', 25, NULL),
('TZ3', 'TASBEH ZAITUN KECIL', 'KOD', 7500, 'IDR', 'TASBIH & PARFUM', 26, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE IF NOT EXISTS `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(11) NOT NULL DEFAULT '0',
  `date_created` timestamp NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `key`, `level`, `ignore_limits`, `date_created`) VALUES
(1, '40s0w4s884w0wo8go004k8ogwos8gcsgo40c04kc', 1, 0, '0000-00-00 00:00:00'),
(2, '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', 1, 0, '0000-00-00 00:00:00'),
(3, '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', 1, 0, '0000-00-00 00:00:00'),
(4, 'ssss4gg04oo84gkwskg4k0o8sgoc4sssgocs0kg8', 1, 0, '0000-00-00 00:00:00'),
(6, '8o8gcwso0s4o880og4o0c0gkwcwwkg4g0sggs0kw', 1, 0, '0000-00-00 00:00:00'),
(7, 's8o8kwswgos8wokgs00kk8ooc4oscc4ksg804ccc', 1, 0, '2016-12-20 10:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `Log`
--

CREATE TABLE IF NOT EXISTS `Log` (
  `ID_Log` int(10) NOT NULL,
  `ID_User` varchar(20) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `Aktifitas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'api_server', 'get', 'a:9:{s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"4b533334-abc8-7093-8fa4-6f47a0a2b1e6";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1480389952, 0.00774193, '0', 403),
(2, 'api_server', 'get', 'a:10:{s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"c7d8e98c-4f24-961f-1201-111c95274223";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=m3skhm62c9oog0t7q7020sr712cfjjh9";}', '', '::1', 1480390454, NULL, '1', 0),
(3, 'api_server', 'get', 'a:10:{s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"ecd9710e-0d4c-ff98-50b0-89c4de50ae15";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=idetcffu5dgjga2ee6v9cfdmnhn58rn1";}', '', '::1', 1480390493, 0.00771117, '1', 0),
(4, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"e383f844-d0fb-082f-10b7-cff53b55278d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=idetcffu5dgjga2ee6v9cfdmnhn58rn1";}', '', '::1', 1480390649, 0.00850892, '1', 200),
(5, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"40s0w4s884w0wo8go004k8ogwos8gcsgo40c04kc";s:13:"Postman-Token";s:36:"8b63c2e7-71fe-becf-57c5-cb1537110283";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '40s0w4s884w0wo8go004k8ogwos8gcsgo40c04kc', '::1', 1480435684, 0.0100489, '0', 401),
(6, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"40s0w4s884w0wo8go004k8ogwos8gcsgo40c04kc";s:13:"Postman-Token";s:36:"b1da5c54-01c1-80aa-2958-780539a49428";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uph98q09qvscra2ls0jg29f0ta8alttj";}', '40s0w4s884w0wo8go004k8ogwos8gcsgo40c04kc', '::1', 1480435707, 0.013911, '1', 200),
(7, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"6021b55e-7db0-e64e-d464-e5358143b52a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uph98q09qvscra2ls0jg29f0ta8alttj";}', '', '::1', 1480435711, 0.00509405, '0', 403),
(8, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"37f4599c-2533-41f5-6d0a-f773b1841cef";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uph98q09qvscra2ls0jg29f0ta8alttj";}', '', '::1', 1480435726, 0.00542593, '0', 403),
(9, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"29e823ac-663e-5a66-3536-32d11f20792d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uph98q09qvscra2ls0jg29f0ta8alttj";}', '', '::1', 1480435727, 0.00329399, '0', 403),
(10, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"cf9a9307-bf9d-7a5f-5667-afe7bec75033";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uph98q09qvscra2ls0jg29f0ta8alttj";}', '', '::1', 1480435727, 0.00636101, '0', 403),
(11, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"4640e2b3-64bc-d05f-fec0-5f78da3b3a79";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uph98q09qvscra2ls0jg29f0ta8alttj";}', '', '::1', 1480435728, 0.00330114, '0', 403),
(12, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"40s0w4s884w0wo8go004k8ogwos8gcsgo40c04kc";s:13:"Postman-Token";s:36:"636c2b1a-197a-fa5a-9f69-824e4ead671d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uph98q09qvscra2ls0jg29f0ta8alttj";}', '40s0w4s884w0wo8go004k8ogwos8gcsgo40c04kc', '::1', 1480435738, 0.00966382, '1', 200),
(13, 'api_server', 'get', 'a:10:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"25d2cc07-feca-2703-dd7d-cc195eb29de0";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1480469032, 0.0065341, '0', 403),
(14, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"2cd299bd-5f49-e038-dfe2-654020ef0592";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=p6aliueb17iiq0q6e4trcu1m3oaku5rf";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480469044, 0.014061, '1', 200),
(15, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:16:"KODE_KLASIFIKASI";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"9acd6f80-cb69-eb9d-c12e-7c652c5c9205";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=p6aliueb17iiq0q6e4trcu1m3oaku5rf";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480469074, 0.00882101, '1', 200),
(16, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:16:"KODE_KLASIFIKASI";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"c509e815-d257-caaa-7c01-8a9ce5e22f05";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=p6aliueb17iiq0q6e4trcu1m3oaku5rf";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480469092, 0.0141461, '1', 200),
(17, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:16:"KODE_KLASIFIKASI";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"06f747bc-eed7-798f-efb8-e28eda4bb6d3";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=p6aliueb17iiq0q6e4trcu1m3oaku5rf";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480470341, 0.00952101, '1', 200),
(18, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:16:"KODE_KLASIFIKASI";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"f0767f3d-bc26-4615-6ed7-5af3c36f1749";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=99i4rq51tgqqb5nptsgqvqce26nijngb";}', '', '::1', 1480470427, 0.00734901, '0', 403),
(19, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:16:"KODE_KLASIFIKASI";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"b0c1fbe7-f599-505d-fbf9-59818745c170";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=99i4rq51tgqqb5nptsgqvqce26nijngb";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480470438, 0.0116591, '1', 200),
(20, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"4f12b66f-545e-d3cc-5a2d-223149101207";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=99i4rq51tgqqb5nptsgqvqce26nijngb";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480470454, 0.0134141, '1', 200),
(21, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:"''BAJU ";s:3:"GA''";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"efd16b97-5519-9dbf-3c21-f691c3e6d1eb";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=99i4rq51tgqqb5nptsgqvqce26nijngb";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480471930, 0.0128469, '1', 0),
(22, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:"''BAJU ";s:3:"GA''";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"7b4704c4-edce-db98-5036-508e1c246704";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480471948, NULL, '1', 0),
(23, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:"''BAJU ";s:3:"GA''";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"eeaa185c-e0d7-db7a-c87b-32deeb40fc0e";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480471966, 0.00844312, '1', 200),
(24, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:"''BAJU ";s:3:"GA''";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"bf5dcc88-ab10-353b-6316-e1ddb9e98ef4";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480471971, 0.00772214, '1', 200),
(25, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:""BAJU ";s:3:"GA"";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"faf982c8-e6bc-b1f6-f1fa-ed610ce94228";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480471981, 0.0059011, '1', 200),
(26, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:5:"BAJU ";s:2:"GA";s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"ef20438f-af55-f197-e7f1-d1c2406657e7";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472015, 0.0170732, '1', 200),
(27, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:"''BAJU ";s:3:"GA''";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"dc6332d1-ddb9-9844-1ab7-b99432b018ae";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472111, 0.00689387, '1', 200),
(28, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:18:"''KODE_KLASIFIKASI''";s:5:"cond2";s:6:"''BAJU ";s:3:"GA''";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"d85474c4-6fc9-d84f-85de-844f41622604";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472128, 0.00903702, '1', 200),
(29, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:18:"''KODE_KLASIFIKASI''";s:5:"cond2";s:6:"''BAJU ";s:3:"GA''";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"40c4108c-b047-ac90-1bc0-d565dd8b317d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472221, 0.00946116, '1', 0),
(30, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:18:"''KODE_KLASIFIKASI''";s:5:"cond2";s:9:"''BAJU_GA''";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"ed2edc76-140e-739e-d756-6c583c04843a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472268, 0.007828, '1', 0),
(31, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:18:"''KODE_KLASIFIKASI''";s:5:"cond2";s:9:"''BAJU_GA''";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"2ebbde78-8841-ea06-16d9-7902d93bdbed";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=t432qqklhe93g2ean0bbbd1jn64skbrl";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472283, 0.00887895, '1', 200),
(32, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:18:"''KODE_KLASIFIKASI''";s:5:"cond2";s:9:"''BAJU_GA''";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"11b4ee67-cba4-2b86-c5ea-a446d1375a53";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=t432qqklhe93g2ean0bbbd1jn64skbrl";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472314, 0.010772, '1', 0),
(33, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:18:"''KODE_KLASIFIKASI''";s:5:"cond2";s:9:"''BAJU_GA''";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"bd02f5a1-36bd-4cc6-c418-f67436214db4";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=t432qqklhe93g2ean0bbbd1jn64skbrl";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472450, 0.00883007, '1', 0),
(34, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:7:"BAJU_GA";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"de98b17d-ffd7-6279-0129-2f00177f2e9c";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=t432qqklhe93g2ean0bbbd1jn64skbrl";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472510, 0.00784397, '1', 0),
(35, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:5:"BAJU ";s:2:"GA";s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"9b385981-4460-c53e-f94e-ef856e13ece1";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=t432qqklhe93g2ean0bbbd1jn64skbrl";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472525, 0.00493908, '1', 0),
(36, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:7:"BAJU GA";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"eb4ba05f-3640-0ae9-0457-31e447836d13";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=t432qqklhe93g2ean0bbbd1jn64skbrl";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472553, 0.00431418, '1', 0),
(37, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:7:"BAJU GA";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"6d20c1eb-ec5e-edbf-30d2-ef1de9b53da3";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=t432qqklhe93g2ean0bbbd1jn64skbrl";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480476148, 0.00513387, '1', 0),
(38, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:10:"BAJU GAMIS";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"bb2099fe-c2c7-2319-20a0-a46fb62d59f2";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=sengk3sql8h2ql923rdj4dthqls098sg";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480476160, 0.00455213, '1', 0),
(39, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:"HERBAL";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"de6c9d59-6bba-a924-46fd-69d6481bc2d8";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=sengk3sql8h2ql923rdj4dthqls098sg";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480476181, 0.00444388, '1', 0),
(40, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:"HERBAL";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"a72f501c-f642-cfcc-15c0-931ae35c17a5";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=sengk3sql8h2ql923rdj4dthqls098sg";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480476359, 0.00804281, '1', 200),
(41, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:9:"AL-QUR''AN";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"f622ba80-eb69-c3a6-8a24-cbfa740f4b68";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=sengk3sql8h2ql923rdj4dthqls098sg";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480476441, 0.00915599, '1', 200),
(42, 'api_server', 'put', 'a:11:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"5054cceb-8e5f-376c-2239-d29723e655fe";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481077574, 0.0126948, '1', 200),
(43, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"52500ef6-56e2-8442-437c-6aac21b7d6db";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=5plg675ra6s4fsbp3ilmcufmfhpn7ej1";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481077613, 0.00663614, '1', 200),
(44, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"9af58b44-904c-2ef9-08bc-696d76aa4840";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=5plg675ra6s4fsbp3ilmcufmfhpn7ej1";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481077675, 0.00637603, '1', 0),
(45, 'api_server', 'get', 'a:12:{s:3:"col";s:11:"NAMA_BARANG";s:3:"tab";s:6:"barang";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"4ba2b879-7f6e-025c-2403-66da9c8344bb";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=5plg675ra6s4fsbp3ilmcufmfhpn7ej1";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481077711, 0.00735116, '1', 200),
(46, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"65ac3ce5-b7ab-2144-dfe1-c689de72a5e0";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=5plg675ra6s4fsbp3ilmcufmfhpn7ej1";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481077823, 0.00531793, '1', 0),
(47, 'api_server', 'get', 'a:11:{s:3:"col";s:11:"NAMA_BARANG";s:3:"tab";s:6:"barang";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"2b1b07f1-ff20-8e5b-c3e6-450427410f86";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=5plg675ra6s4fsbp3ilmcufmfhpn7ej1";}', '', '::1', 1481081065, 0.00709105, '0', 403),
(48, 'api_server', 'get', 'a:12:{s:3:"col";s:11:"NAMA_BARANG";s:3:"tab";s:6:"barang";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"1e8d9acc-5e11-b41a-43be-3488f877788a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=5plg675ra6s4fsbp3ilmcufmfhpn7ej1";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481081090, 0.00905204, '1', 200),
(49, 'api_server', 'get', 'a:12:{s:3:"col";s:11:"NAMA_BARANG";s:3:"tab";s:6:"barang";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"178f4d67-5526-c1b3-118e-fdd91b0b650a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=5plg675ra6s4fsbp3ilmcufmfhpn7ej1";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481081726, 0.00702405, '1', 200),
(50, 'api_server', 'put', 'a:11:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"82659588-3118-1248-906c-2a89f207a7d2";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097189, 0.0172601, '1', 0),
(51, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"68e3c661-f522-c0ed-1f86-def923f84748";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=9ofrtan4s26djdag8g8ces3emrr8vk00";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097326, 0.00931692, '1', 0),
(52, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"d9921b9b-6a9d-e6e1-39f5-7f7d62436a53";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=9ofrtan4s26djdag8g8ces3emrr8vk00";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097366, 0.016098, '1', 0),
(53, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"e85db415-c102-6271-4786-cc0dc9419f96";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=9ofrtan4s26djdag8g8ces3emrr8vk00";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097477, 0.0148349, '1', 0),
(54, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"274246e9-bbb3-931f-6d97-c130bb514345";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=9ofrtan4s26djdag8g8ces3emrr8vk00";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097514, 0.00753307, '1', 0),
(55, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"b5793829-06a3-cdca-51ee-7b9b51517a32";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=fv61s1miror8kfjpgds70m1rau5rrrlg";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097522, 0.00652885, '1', 0),
(56, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"b6d2ad5f-4a29-91ce-62fc-bb1f2a792642";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=fv61s1miror8kfjpgds70m1rau5rrrlg";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097525, 0.00715423, '1', 0),
(57, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"19342025-3ede-91ea-4e70-2ef0029436c7";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=fv61s1miror8kfjpgds70m1rau5rrrlg";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097553, 0.00585008, '1', 0),
(58, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"ac9b4846-3f66-2dac-70a1-8b89dc3e46b6";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=fv61s1miror8kfjpgds70m1rau5rrrlg";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097589, 0.00871396, '1', 0),
(59, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"f6fde892-bf04-2882-824a-339fa67e6445";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=fv61s1miror8kfjpgds70m1rau5rrrlg";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097837, 0.015059, '1', 0),
(60, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"a98bdb03-3ad9-20fc-ffdb-f230e4e0b9b3";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=anu7pnbadju4sdl2as8mr0q3u6nk6mhs";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097849, 0.00940704, '1', 0),
(61, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"e7649942-8638-0a32-e73e-ec8b30c33fc7";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=anu7pnbadju4sdl2as8mr0q3u6nk6mhs";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097855, 0.00474501, '1', 0),
(62, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"a1c33639-ddcc-6454-a118-a19903e3f475";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=anu7pnbadju4sdl2as8mr0q3u6nk6mhs";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097868, 0.00496411, '1', 0),
(63, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"9c413d2d-5a24-8fb7-3030-54a45a4280e7";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=anu7pnbadju4sdl2as8mr0q3u6nk6mhs";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097869, 0.00520587, '1', 0),
(64, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"5bc8cb0d-76d5-df32-2f7e-e1959562113b";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=anu7pnbadju4sdl2as8mr0q3u6nk6mhs";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097919, 0.00643682, '1', 0),
(65, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"6602edc5-dc45-4bd7-ea33-efa29391736c";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=anu7pnbadju4sdl2as8mr0q3u6nk6mhs";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097944, 0.00493002, '1', 0),
(66, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"9c1654e7-db02-58f6-1583-fa7770fa1abb";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=anu7pnbadju4sdl2as8mr0q3u6nk6mhs";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481097975, 0.00868201, '1', 0);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(67, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"9f0ae4d2-f4fd-f4b9-afb2-7ddd60691c59";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=anu7pnbadju4sdl2as8mr0q3u6nk6mhs";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481098121, 0.00763488, '1', 0),
(68, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"2d8ecab4-8702-c070-5346-05b386ab7586";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=anu7pnbadju4sdl2as8mr0q3u6nk6mhs";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481098212, 0.00553679, '1', 200),
(69, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"5d5d39d3-7a95-f3f4-4367-a29ba54ef0cb";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=sj98f3pfbn0alletbrhms4at3dv4d3n5";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481098270, 0.0126212, '1', 200),
(70, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"c45d34c7-e22d-11da-a7d2-9822c6c80db5";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=sj98f3pfbn0alletbrhms4at3dv4d3n5";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481098276, 0.00623798, '1', 200),
(71, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"2d2cc5d7-6ca4-f4e1-77d3-f745e31d3d4a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=sj98f3pfbn0alletbrhms4at3dv4d3n5";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481098296, 0.00571012, '1', 0),
(72, 'api_server', 'put', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"d9993e32-cb56-127e-b5fe-40378530e36e";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=sj98f3pfbn0alletbrhms4at3dv4d3n5";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481098314, 0.00912619, '1', 0),
(73, 'api_server', 'get', 'a:12:{s:3:"id1";s:3:"HJ1";s:3:"tab";s:6:"barang";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"3a93218b-260d-5c5f-7bcb-c6c5ce3aeb70";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=sj98f3pfbn0alletbrhms4at3dv4d3n5";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481098430, 0.009166, '1', 200),
(74, 'api_server', 'get', 'a:12:{s:3:"id1";s:3:"HJ1";s:3:"tab";s:6:"barang";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"935f2f8c-0895-bac8-12f0-44dfc3f60ec2";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=sj98f3pfbn0alletbrhms4at3dv4d3n5";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481098951, 0.00738597, '1', 200),
(75, 'api_server', 'get', 'a:12:{s:3:"id1";s:3:"HJ1";s:3:"tab";s:6:"barang";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"657da8a7-525f-a0f3-f916-8b9ac4c4540f";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uv6vuffi66oglp15pv6o5cq1r1cn8nnh";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481098980, 0.00638294, '1', 200),
(76, 'api_server', 'get', 'a:12:{s:3:"id1";s:3:"HJ1";s:3:"tab";s:6:"barang";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"06804a6d-8889-1079-1b2f-96f9dca1f7db";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uv6vuffi66oglp15pv6o5cq1r1cn8nnh";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481098995, 0.00709391, '1', 200),
(77, 'api_server', 'get', 'a:12:{s:3:"id1";s:3:"HJ1";s:3:"tab";s:6:"barang";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"a3a5ffd7-e618-3907-6141-c924aa1bb967";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uv6vuffi66oglp15pv6o5cq1r1cn8nnh";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481099047, 0.00864196, '1', 200),
(78, 'api_server', 'get', 'a:12:{s:3:"id1";s:3:"HJ1";s:3:"tab";s:6:"barang";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"73780795-dced-b6be-d85d-22a09c151d59";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uv6vuffi66oglp15pv6o5cq1r1cn8nnh";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481099065, 0.00637889, '1', 200),
(79, 'api_server', 'get', 'a:12:{s:3:"id1";s:3:"HJ1";s:3:"tab";s:6:"barang";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"1c117fa2-2156-ce3d-b8d8-cda33fff8750";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uv6vuffi66oglp15pv6o5cq1r1cn8nnh";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481100048, 0.0232451, '1', 200),
(80, 'api_server', 'get', 'a:12:{s:3:"id1";s:3:"HJ1";s:3:"tab";s:6:"barang";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"ea6b807b-155e-4d4b-9737-d5e8f45c1904";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uv6vuffi66oglp15pv6o5cq1r1cn8nnh";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481100071, 0.00626898, '1', 200),
(81, 'api_server', 'get', 'a:12:{s:3:"id1";s:3:"HJ1";s:3:"tab";s:6:"barang";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"d580126a-24f3-bb3d-fb23-d77c80d93ada";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uv6vuffi66oglp15pv6o5cq1r1cn8nnh";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481100090, 0.00822902, '1', 200),
(82, 'api_server', 'get', 'a:12:{s:3:"id1";s:3:"HJ1";s:3:"tab";s:6:"barang";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"b0ac82fb-cff4-8eeb-f221-22ffd124367a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uv6vuffi66oglp15pv6o5cq1r1cn8nnh";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481100154, 0.00988388, '1', 200),
(83, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"cond";s:3:"100";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"5b43b1ce-8072-7f71-c9cf-8243f8bc9064";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481694687, 0.017354, '0', 401),
(84, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"cond";s:3:"100";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"a310657b-983f-12a0-f928-bda9d3c672d4";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=kg9j4p9m31kraak816ta1bevj0rafb2j";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481694715, NULL, '1', 0),
(85, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"cond";s:3:"100";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"af4bc623-8da2-e1be-793e-f55649c1ba33";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=kg9j4p9m31kraak816ta1bevj0rafb2j";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481694875, 0.00697088, '1', 0),
(86, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"cond";s:3:"100";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"460cc86f-0167-614f-80a8-b15708b241bc";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=kg9j4p9m31kraak816ta1bevj0rafb2j";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481694933, 0.00597095, '1', 0),
(87, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"cond";s:3:"100";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"2a81a301-b20b-bff6-1240-44012282aa1e";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=kg9j4p9m31kraak816ta1bevj0rafb2j";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481694959, 0.00561881, '1', 0),
(88, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"cond";s:3:"100";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"ae509540-20ef-4c78-22c9-5f22330acc3c";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=kg9j4p9m31kraak816ta1bevj0rafb2j";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481694972, 0.00541878, '1', 0),
(89, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"cond";s:3:"100";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"0e6eed41-0fe9-b1db-73c4-c6afa552d28e";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=kg9j4p9m31kraak816ta1bevj0rafb2j";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481695035, 0.00693989, '1', 0),
(90, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"cond";s:3:"100";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"4b02441c-c379-62e9-0c21-10bfef5d320e";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=73rsiekrnururk228o71ulvjbj3ffns6";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481695114, 0.0058322, '1', 0),
(91, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"d30cd6b3-6249-ab63-30ca-3b96982dd3ea";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=73rsiekrnururk228o71ulvjbj3ffns6";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481701885, 0.0117781, '1', 200),
(92, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:9:"AL-QUR''AN";s:4:"cond";s:3:"100";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"e9e8c373-ad40-926e-0cfe-8e760f34ec7a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481941502, NULL, '1', 0),
(93, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:9:"AL-QUR''AN";s:4:"cond";s:3:"100";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"8707f19f-07ba-865a-1980-ec7d71b4c977";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=u1egf78an1gk7dghu5jl98dmn29ki721";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481941518, NULL, '1', 0),
(94, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:9:"AL-QUR''AN";s:4:"cond";s:3:"100";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"856853ed-b4d0-6578-d2b9-f9315e0a141f";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=u1egf78an1gk7dghu5jl98dmn29ki721";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481941546, NULL, '1', 0),
(95, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"1f1633f0-9012-c31c-aba7-6ac060b8a463";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=u1egf78an1gk7dghu5jl98dmn29ki721";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481941552, NULL, '1', 0),
(96, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"8a4ac94a-6a91-41bc-b0fa-07ae5bce3ed1";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=u1egf78an1gk7dghu5jl98dmn29ki721";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481941568, NULL, '1', 0),
(97, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"9aa49dbf-75a1-128a-d561-6471b5916660";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=u1egf78an1gk7dghu5jl98dmn29ki721";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481941671, NULL, '1', 0),
(98, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"c554ae1d-48ee-b427-0fbd-fbddc22f3dc0";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=u1egf78an1gk7dghu5jl98dmn29ki721";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481941672, NULL, '1', 0),
(99, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"9cd684c6-dfd8-7624-2256-80719b9b1fbb";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=u1egf78an1gk7dghu5jl98dmn29ki721";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481941672, NULL, '1', 0),
(100, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"9f83dc76-5cf6-55aa-e0d0-1d5203d118ff";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=u1egf78an1gk7dghu5jl98dmn29ki721";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481941675, NULL, '1', 0),
(101, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"01af8fe6-3b50-7a92-50f2-c3944b64620f";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=u1egf78an1gk7dghu5jl98dmn29ki721";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481941760, 0.0111799, '1', 200),
(102, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"8872257a-a6be-f9fc-1268-b731a4fab20e";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=u1egf78an1gk7dghu5jl98dmn29ki721";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481941788, NULL, '1', 0),
(103, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"f18b4ca4-9540-b7ae-9b36-dd4d04a7f43b";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=u1egf78an1gk7dghu5jl98dmn29ki721";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481941845, 0.0116458, '1', 200),
(104, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:9:"AL-QUR''AN";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"a239c5b3-18ff-ea03-ed67-940b38e2c493";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=55s74ci2vsqa4ea3ruvpani541te1ccg";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481941943, NULL, '1', 0),
(105, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"b74264d8-d3e5-f6fc-c1d2-f109e125b62a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=55s74ci2vsqa4ea3ruvpani541te1ccg";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481941987, NULL, '1', 0),
(106, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"bb4abbc7-d3c3-87fc-52de-c57bba3cee20";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=55s74ci2vsqa4ea3ruvpani541te1ccg";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481947619, NULL, '1', 0),
(107, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"2011fd5b-87d7-e40a-b1f1-186be7615bc4";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=aunk62vnb26smq9he4j8q3dl9g5a7uq8";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481947992, NULL, '1', 0),
(108, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"c4df2d37-678d-bb03-f175-3b4509e350dd";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948030, NULL, '1', 0),
(109, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"a0cd3637-b619-2976-66d5-45b865d981f2";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948044, NULL, '1', 0),
(110, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"f545904c-7ed7-26d0-7355-0a42be690844";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948048, NULL, '1', 0),
(111, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"8f99e7d7-bbca-a645-f59d-f1dd30c7f93e";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948058, NULL, '1', 0),
(112, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"56e63975-4c16-33ad-5e8d-6bcb6ffa2def";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948062, NULL, '1', 0),
(113, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"5310514e-82a8-b15b-4e30-bf73707f4e19";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948063, NULL, '1', 0),
(114, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"9b05e436-8242-65e3-37e7-ddfa8503249d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948064, NULL, '1', 0),
(115, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"a6004fd9-5f1a-ecdd-b7de-037cb686680c";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948070, NULL, '1', 0),
(116, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"114426f4-0062-3c3d-cea0-3c4dabcf57d8";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948071, NULL, '1', 0),
(117, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"c65e5cc8-1b17-7a8f-6c31-b25b82879278";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948071, NULL, '1', 0),
(118, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"95bcdf8e-32de-570e-2bee-379e19b4a13a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948108, NULL, '1', 0),
(119, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"66945e2d-718f-b614-7990-0dc4e3f19aae";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948136, NULL, '1', 0),
(120, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"76d06a6f-e4c8-a4c0-950d-e5b690926d77";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948137, NULL, '1', 0),
(121, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"db161793-e347-f005-6a39-4b5a1e30b7ed";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948138, NULL, '1', 0),
(122, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"027dac4b-bd42-a32c-6cba-74fe7ceafd97";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948139, NULL, '1', 0),
(123, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"3928168a-cf24-486d-b75f-816d72f5fcc1";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948171, NULL, '1', 0),
(124, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"86dcbe67-acc8-bc28-16f1-7bd527dc6e5b";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948184, NULL, '1', 0),
(125, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"2528e0f9-6b89-b72e-c99c-9f73c26db0b7";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948214, 0.00854301, '1', 200),
(126, 'api_server', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"80bb4624-15c3-f151-d365-2e468ff3760d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948231, NULL, '1', 0),
(127, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:9:"AL-QUR''AN";s:4:"cond";s:3:"100";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"43fac2c8-a19a-06e5-87d8-b96b3e29b0a5";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948264, NULL, '1', 0),
(128, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:9:"AL-QUR''AN";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"3b4b0ea8-c3b1-ea70-a398-3edfb922c261";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948270, NULL, '1', 0),
(129, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"4f23d70a-dccd-7454-8211-4bbb9da598b6";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948279, NULL, '1', 0),
(130, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"9858c88a-d5f3-b515-c5be-706accdec6e4";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=cnejdv8nh56t1v4hc7prem3um709c9o7";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948318, NULL, '1', 0),
(131, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"8385cdb0-8152-4a38-c419-f7f96efe425f";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=n2rbvgtv598gupckth7ovcgdu3l7f6k3";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948357, NULL, '1', 0),
(132, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"7594715a-e903-7d3b-06dd-c32f74f18623";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=n2rbvgtv598gupckth7ovcgdu3l7f6k3";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948426, NULL, '1', 0),
(133, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"541a8f57-cb76-3561-2c7d-7c63e6aecd87";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=n2rbvgtv598gupckth7ovcgdu3l7f6k3";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948462, NULL, '1', 0),
(134, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"349d5737-161f-1627-2d87-ec83719294e3";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=n2rbvgtv598gupckth7ovcgdu3l7f6k3";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948534, 0.00698996, '1', 200);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(135, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:6:"HERBAL";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"c61fa461-4b30-a56f-853e-960ec7a02ff2";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=n2rbvgtv598gupckth7ovcgdu3l7f6k3";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948546, 0.00750899, '1', 200),
(136, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:9:"AL-QUR''AN";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"21917ca6-19f1-ef3e-67a4-b5f7b79bd9cb";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=n2rbvgtv598gupckth7ovcgdu3l7f6k3";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948575, 0.0084219, '1', 200),
(137, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"1";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:15:"TASBIH & PARFUM";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"1bfd61b0-ebca-26fd-9b05-1e8d58a83a44";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=n2rbvgtv598gupckth7ovcgdu3l7f6k3";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481948618, 0.00727701, '1', 200),
(138, 'api_server', 'get', 'a:16:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"2";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:7:"TASBIH ";s:6:"PARFUM";s:0:"";s:4:"cond";s:3:"100";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"68bfdf03-f67d-0f7c-98de-567a3e5608fa";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=n2rbvgtv598gupckth7ovcgdu3l7f6k3";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481949635, 0.00718808, '1', 200),
(139, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"2";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:15:"TASBIH & PARFUM";s:4:"cond";s:3:"100";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"206ea798-7757-9938-bf13-b5ea8ff19054";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=a88v666mlnv0nbnhhb5ldsumshsb9rkq";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481949697, 0.0077529, '1', 200),
(140, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"2";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:13:"KITAB KURASAN";s:4:"cond";s:3:"100";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"797d129e-c635-4d02-1919-a4d8f6d83c6f";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=a88v666mlnv0nbnhhb5ldsumshsb9rkq";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481949789, 0.00613117, '1', 200),
(141, 'api_server', 'get', 'a:16:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"2";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:7:"TASBIH ";s:6:"PARFUM";s:0:"";s:4:"cond";s:3:"101";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"34a86fb0-ae15-34b5-97a8-e1388ed20a18";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=a88v666mlnv0nbnhhb5ldsumshsb9rkq";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481950024, 0.00709295, '1', 200),
(142, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"2";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:15:"TASBIH & PARFUM";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"8e783d32-9741-f1e4-5548-af590acba44a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=j3ke5jbhqv5aba8o726v5a02v2mhe2mc";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481950451, 0.00863719, '1', 200),
(143, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"2";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:15:"TASBIH & PARFUM";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"e1ae10fa-b8ab-738a-7c33-ca6e45070325";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=bdcr9753n0atqccp5gqh87j420h3m7b0";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481950541, 0.016248, '1', 200),
(144, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"2";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:15:"TASBIH & PARFUM";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:6:"Accept";s:74:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:263:"Phpstorm-467153cb=2d672423-a8c6-484f-9354-3baa40cf0af2; SESS7e8fd1139a861c06487839f5cbccbc04=dpmiQMHCazSSLP1E5s5eWL5eSswXi7oACqwEpKl7Hv8; SESS52023c72b9c92b9e31fac38ce59bf8ec=0OmDPye695d-6CcoB7bdU_kQm9MydCipdzvfdqP_rAE; ci_session=89ibugpmjevlkhdn91rpadg8qi1ic4d2";}', '', '::1', 1481950594, 0.00493193, '0', 403),
(145, 'api_server', 'get', 'a:13:{s:3:"tab";s:6:"barang";s:7:"id_user";s:1:"2";s:4:"kat1";s:16:"KODE_KLASIFIKASI";s:4:"kat2";s:15:"TASBIH & PARFUM";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36";s:9:"X-API-KEY";s:40:"0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k";s:13:"Postman-Token";s:36:"2c28364d-81d0-0db9-5922-c2f215210f01";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '::1', 1481998360, 0.024267, '1', 200);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE IF NOT EXISTS `packages` (
  `id` int(11) NOT NULL,
  `ID_User` int(11) NOT NULL,
  `Nama_User` varchar(30) NOT NULL,
  `Package` varchar(30) NOT NULL,
  `jml_brng` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `url` varchar(350) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `ID_User`, `Nama_User`, `Package`, `jml_brng`, `type`, `url`) VALUES
(1, 1, 'lukman', 'AL-QUR''AN', '20', '1', 'http://localhost/shop/ware/api_server/?tab=barang&id_user=1&kat1=KODE_KLASIFIKASI&kat2=AL-QUR%27AN');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID_User` int(11) NOT NULL,
  `Nama_User` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Tokenize` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID_User`, `Nama_User`, `Email`, `Password`, `Status`, `Tokenize`, `created_at`, `updated_at`) VALUES
(1, 'lukman', 'lukman@gmail.com', '$2y$10$2VQqn7LvzowB5', 'Member', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'novandha', 'novan@gmail.com', '$2y$10$83ogp3Pj4z0JF', 'Member', 'ssss4gg04oo84gkwskg4k0o8sgoc4sssgocs0kg8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'vic', 'vic@gmail.com', '12345678', 'Admin', '', '2016-12-07 02:09:13', '2016-12-07 02:09:13'),
(5, 'Gusti Alfian', 'gusti@gmail.com', '$2y$10$rSc/69p6OUEXM', 'Member', '8o8gcwso0s4o880og4o0c0gkwcwwkg4g0sggs0kw', '2016-12-07 07:12:37', '0000-00-00 00:00:00'),
(6, 'frendy ardiansyah', 'frendy@gmail.com', '$2y$10$P3xufyRQMaXJv', 'Member', 's8o8kwswgos8wokgs00kk8ooc4oscc4ksg804ccc', '2016-12-20 10:17:56', '2016-12-20 10:17:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`KODE_BARANG`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Log`
--
ALTER TABLE `Log`
  ADD PRIMARY KEY (`ID_Log`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_User`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Log`
--
ALTER TABLE `Log`
  MODIFY `ID_Log` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID_User` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
