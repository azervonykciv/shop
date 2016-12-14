-- phpMyAdmin SQL Dump
-- version 4.4.15.8
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 14, 2016 at 09:03 AM
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
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` int(9) NOT NULL,
  `stock` int(3) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `image`) VALUES
(1, 'Baju', 'Baju kemeja', 79000, 5, 'zalora-5817-9648621-1.jpg'),
(2, 'Sandal Casual', 'Sandal Jepit Casual', 35000, 10, 'zz540161m_1.jpg'),
(5, 'Topi', 'Topi Casual', 80000, 5, 'adidaswhite.jpg'),
(10, 'sepatu', 'Sepatu Casual', 240000, 12, 'sepatu.jpg'),
(11, 'Dasi', 'Dasi formal', 72000, 7, 'tie-01.jpg'),
(12, 'Gamis Putih', 'Gamis yang Maa syaa Allah', 150000, 15, '1.jpg');

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
('27fb45ff63745a9fc2dc4ef5191352ca', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 1481695931, 'a:1:{s:13:"cart_contents";a:4:{s:32:"c81e728d9d4c2f636f067f89cc14862c";a:6:{s:5:"rowid";s:32:"c81e728d9d4c2f636f067f89cc14862c";s:2:"id";s:1:"2";s:3:"qty";s:1:"1";s:5:"price";s:5:"35000";s:4:"name";s:13:"Sandal Casual";s:8:"subtotal";i:35000;}s:32:"e4da3b7fbbce2345d7772b0674a318d5";a:6:{s:5:"rowid";s:32:"e4da3b7fbbce2345d7772b0674a318d5";s:2:"id";s:1:"5";s:3:"qty";s:1:"1";s:5:"price";s:5:"80000";s:4:"name";s:4:"Topi";s:8:"subtotal";i:80000;}s:11:"total_items";i:2;s:10:"cart_total";i:115000;}}'),
('378a204f5ec8ca5ced62ff60436ebb0f', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 1481705780, ''),
('4c2c15b9fda66f09023735ddee44c9bc', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 1481687485, 'a:2:{s:9:"user_data";s:0:"";s:13:"cart_contents";a:3:{s:32:"c4ca4238a0b923820dcc509a6f75849b";a:6:{s:5:"rowid";s:32:"c4ca4238a0b923820dcc509a6f75849b";s:2:"id";s:1:"1";s:3:"qty";s:1:"1";s:5:"price";s:5:"79000";s:4:"name";s:4:"Baju";s:8:"subtotal";i:79000;}s:11:"total_items";i:1;s:10:"cart_total";i:79000;}}'),
('93499312e602a6a60e4eae01db090fa1', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 1481701294, ''),
('95ffb18a62409406c619359a36226807', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 1481738356, 'a:2:{s:9:"user_data";s:0:"";s:13:"cart_contents";a:4:{s:32:"e4da3b7fbbce2345d7772b0674a318d5";a:6:{s:5:"rowid";s:32:"e4da3b7fbbce2345d7772b0674a318d5";s:2:"id";s:1:"5";s:3:"qty";s:1:"1";s:5:"price";s:5:"80000";s:4:"name";s:4:"Topi";s:8:"subtotal";i:80000;}s:32:"c81e728d9d4c2f636f067f89cc14862c";a:6:{s:5:"rowid";s:32:"c81e728d9d4c2f636f067f89cc14862c";s:2:"id";s:1:"2";s:3:"qty";s:1:"1";s:5:"price";s:5:"35000";s:4:"name";s:13:"Sandal Casual";s:8:"subtotal";i:35000;}s:11:"total_items";i:2;s:10:"cart_total";i:115000;}}');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
