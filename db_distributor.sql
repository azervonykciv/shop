-- phpMyAdmin SQL Dump
-- version 4.4.15.8
-- https://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2016 at 10:35 AM
-- Server version: 5.6.31
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_distributor`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_access`
--

CREATE TABLE IF NOT EXISTS `api_access` (
  `id` int(11) unsigned NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `all_access` tinyint(1) NOT NULL DEFAULT '0',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api_access`
--

INSERT INTO `api_access` (`id`, `key`, `all_access`, `controller`, `date_created`, `date_modified`) VALUES
(1, '1234567890', 1, '/ApiItems', '2016-12-13 00:18:42', '2016-12-13 10:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE IF NOT EXISTS `api_keys` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` timestamp NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2147483647 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `users_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, '1234567890', 1, 0, 0, NULL, '2016-12-13 00:16:25'),
(584, 4, 'so4wss4kscw408kgg0wcc4wc8skco088gk80c0gw', 0, 0, 0, NULL, '2016-12-13 10:14:11'),
(366939, 4, '8goc0ssgkw4888o8wscw0cwskc44g48sogcwgc0k', 0, 0, 0, NULL, '2016-12-13 10:24:49'),
(1602888, 4, 'gccco0swkc80co0cswgsgw44848ccs48g4skscoo', 0, 0, 0, NULL, '2016-12-13 10:25:35'),
(12423019, 4, 'cc4804k8004o4ckog0ckww0k0k80osc0w40k8cww', 0, 0, 0, NULL, '2016-12-13 10:27:49'),
(18531864, 4, '4gg4sgsckkkoswcggskc0k4ok80488ckg0cwwkk4', 0, 0, 0, NULL, '2016-12-13 10:27:37'),
(19628474, 4, 'osw80go40gooocww4ok8gsoccgso00g4sgo00gwg', 0, 0, 0, NULL, '2016-12-13 10:28:13'),
(2147483647, 4, '4kcgk4ko80gos8g80s80sscgswkcsc88g44sg0wg', 0, 0, 0, NULL, '2016-12-13 10:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `api_logs`
--

CREATE TABLE IF NOT EXISTS `api_logs` (
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api_logs`
--

INSERT INTO `api_logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'ApiItems', 'get', 'a:8:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:6:"Accept";s:74:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:168:"_ga=GA1.1.1900075269.1481579122; SOFTCookies9132_sid=WCpyW0riydHaqtqOYuojo7fsllVK3ieB; PHPSESSID=6vnjeek9dp15mjk6e5e8p2u7j5; ci_session=1gs7pfkujo9u78ptekf79b6s4bc3173h";}', '', '127.0.0.1', 1481625091, 0.19671, '0', 403),
(2, 'ApiItems', 'get', 'a:9:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"39e8d079-0b18-3ef8-9524-a1ece9300eb8";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '1234567890', '127.0.0.1', 1481625117, 0.325206, '1', 0),
(3, 'ApiItems', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"5be64504-dd7d-60a7-0d61-4a0ec9b18f6f";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=6f31pd51lidtiblauac116nso2eurofu";}', '1234567890', '127.0.0.1', 1481625152, 0.122666, '1', 0),
(4, 'ApiItems', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"5db2f551-5613-5afe-7f98-a0080d88964a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=6f31pd51lidtiblauac116nso2eurofu";}', '1234567890', '127.0.0.1', 1481625274, 0.200928, '1', 200);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`) VALUES
(1, 'polymer'),
(2, 'express');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `packages_id` int(11) NOT NULL,
  `api_keys_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `users_id`, `packages_id`, `api_keys_id`, `created_at`) VALUES
(1, 1, 2, 1, '2016-12-13 00:23:11'),
(3, 4, 2, 584, '2016-12-13 10:14:11'),
(4, 4, 2, 2147483647, '2016-12-13 10:23:21'),
(5, 4, 2, 366939, '2016-12-13 10:24:49'),
(6, 4, 2, 1602888, '2016-12-13 10:25:35'),
(7, 4, 2, 18531864, '2016-12-13 10:27:37'),
(8, 4, 2, 12423019, '2016-12-13 10:27:49'),
(9, 4, 2, 19628474, '2016-12-13 10:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE IF NOT EXISTS `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`) VALUES
(1, 'Free'),
(2, 'Premium');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `packages_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `level`, `packages_id`) VALUES
(1, 'mimin', '$2y$10$JWm4MRGeViIZtDHemxpojexgnAN3/se8SfyWMW05UxctMRZTJpXGC', 'super_admin', 2),
(4, 'gusti', '$2y$10$3USUd6HG7zwIjX.8lMJ27OM81OZjCwoaqu7mn./Ajmry.3m6aI79W', 'customer', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_access`
--
ALTER TABLE `api_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`users_id`);

--
-- Indexes for table `api_logs`
--
ALTER TABLE `api_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `packages_id` (`packages_id`),
  ADD KEY `api_keys_id` (`api_keys_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packages_id` (`packages_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_access`
--
ALTER TABLE `api_access`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2147483647;
--
-- AUTO_INCREMENT for table `api_logs`
--
ALTER TABLE `api_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD CONSTRAINT `api_keys_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`packages_id`) REFERENCES `packages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`api_keys_id`) REFERENCES `api_keys` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`packages_id`) REFERENCES `packages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
