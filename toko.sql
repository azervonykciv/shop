-- phpMyAdmin SQL Dump
-- version 4.4.15.8
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2016 at 02:13 PM
-- Server version: 5.6.31
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE IF NOT EXISTS `billing` (
  `bilid` int(3) NOT NULL,
  `bilfirst_name` varchar(35) NOT NULL,
  `billast_name` varchar(35) NOT NULL,
  `bilemail` varchar(35) NOT NULL,
  `bilphone` int(15) NOT NULL,
  `biladd1` varchar(50) NOT NULL,
  `biladd2` varchar(50) NOT NULL,
  `bilcity` varchar(35) NOT NULL,
  `bilzip` int(9) NOT NULL,
  `shipfirst_name` varchar(35) NOT NULL,
  `shiplast_name` varchar(35) NOT NULL,
  `shipemail` varchar(35) NOT NULL,
  `shipphone` int(15) NOT NULL,
  `shipadd1` varchar(50) NOT NULL,
  `shipadd2` varchar(50) NOT NULL,
  `shipcity` varchar(50) NOT NULL,
  `shipzip` int(9) NOT NULL,
  `cardholder` varchar(35) NOT NULL,
  `card_number` int(50) NOT NULL,
  `expyear` int(2) NOT NULL,
  `expmount` int(2) NOT NULL,
  `csc` int(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`bilid`, `bilfirst_name`, `billast_name`, `bilemail`, `bilphone`, `biladd1`, `biladd2`, `bilcity`, `bilzip`, `shipfirst_name`, `shiplast_name`, `shipemail`, `shipphone`, `shipadd1`, `shipadd2`, `shipcity`, `shipzip`, `cardholder`, `card_number`, `expyear`, `expmount`, `csc`) VALUES
(1, 'ert', 'cvb', 'haha@yahoo.com', 567, 'vb', 'rty', 'cv', 4567, ' fgh', 'cvb', 'haha@yahoo.com', 0, 'cvf', ' nfvgbh', 'vgbhn', 67, 'cvb', 567, 47, 47, 56),
(2, 'ert', 'cvb', 'haha@yahoo.com', 567, 'vb', 'rty', 'cv', 4567, ' fgh', 'cvb', 'haha@yahoo.com', 0, 'cvf', ' nfvgbh', 'vgbhn', 67, 'cvb', 567, 47, 47, 56),
(3, 'erty', 'gyhj', 'eek@yahoo.com', 56, 'cvb', 'tgh', 'rfg', 34, 'cfvg', 'rvt', 'eek@yahoo.com', 567, 'cvb', 'rtgh', 'cvb', 456, 'cvb', 456, 87, 26, 12);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` int(9) NOT NULL,
  `stock` int(3) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `image`) VALUES
(1, 'Baju', 'Baju kemeja', 79000, 5, 'zalora-5817-9648621-1.jpg'),
(2, 'Sandal Casual', 'Sandal Jepit Casual', 35000, 10, 'zz540161m_1.jpg'),
(5, 'Topi', 'Topi Casual', 80000, 5, 'adidaswhite.jpg'),
(10, 'sepatu', 'Sepatu Casual', 240000, 12, 'sepatu.jpg'),
(11, 'Dasi', 'Dasi formal', 72000, 7, 'tie-01.jpg'),
(12, 'Gamis Putih', 'Gamis yang Maa syaa Allah', 150000, 15, '1.jpg'),
(13, 'sorban', 'Sorban Bagus dan nyaman', 65000, 5, 'sorban.jpg'),
(14, 'Igal', 'Igal kuat dan menawan', 40000, 9, 'igal.jpg'),
(15, 'Bisht', 'Bisht hitam mewah', 75000, 9, 'blackbisht.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `toko_sessions`
--

CREATE TABLE IF NOT EXISTS `toko_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko_sessions`
--

INSERT INTO `toko_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('6e1a63a71bfc553edd6965f6e7465c7c', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 1482243057, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`bilid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toko_sessions`
--
ALTER TABLE `toko_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `bilid` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
