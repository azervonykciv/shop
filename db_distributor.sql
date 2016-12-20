-- phpMyAdmin SQL Dump
-- version 4.4.15.8
-- https://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2016 at 05:20 PM
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
(656688, 5, 'gcw0ko4c00coc4coscsg0scok4wc8ogwc840c0cs', 0, 0, 0, NULL, '2016-12-19 20:40:50'),
(722482, 5, 'sog08k440wgw484og0g48gkowwksos44wsg0scow', 0, 0, 0, NULL, '2016-12-19 22:50:27'),
(751085, 4, 'ko4s8s8sg088kk00880ck4kksc0kgwsg0o0808gc', 0, 0, 0, NULL, '2016-12-19 20:17:14'),
(1602888, 4, 'gccco0swkc80co0cswgsgw44848ccs48g4skscoo', 0, 0, 0, NULL, '2016-12-13 10:25:35'),
(7711287, 4, '4ggs0c0ow0oogg88ww4kwk0sksc0wk08ko4s4kc0', 0, 0, 0, NULL, '2016-12-19 20:09:35'),
(10456309, 5, 'k0cck4c8w808owcowwc0o0c488cgssg8w40wkok0', 0, 0, 0, NULL, '2016-12-19 20:40:37'),
(11227032, 4, 'owk84wckcow804g0cgwkg080kso8kwsk08ckw0gw', 0, 0, 0, NULL, '2016-12-19 20:14:59'),
(12423019, 4, 'cc4804k8004o4ckog0ckww0k0k80osc0w40k8cww', 0, 0, 0, NULL, '2016-12-13 10:27:49'),
(15819457, 4, '8kos44kwgk0sc44wsog4kwgsg480ggss8884w0cw', 0, 0, 0, NULL, '2016-12-14 09:59:38'),
(18285116, 4, 'o44k0gc8cwossc80ccskgcw4k8c4ockwg80oo8k4', 0, 0, 0, NULL, '2016-12-13 23:22:22'),
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api_logs`
--

INSERT INTO `api_logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'ApiItems', 'get', 'a:8:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:6:"Accept";s:74:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:168:"_ga=GA1.1.1900075269.1481579122; SOFTCookies9132_sid=WCpyW0riydHaqtqOYuojo7fsllVK3ieB; PHPSESSID=6vnjeek9dp15mjk6e5e8p2u7j5; ci_session=1gs7pfkujo9u78ptekf79b6s4bc3173h";}', '', '127.0.0.1', 1481625091, 0.19671, '0', 403),
(2, 'ApiItems', 'get', 'a:9:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"39e8d079-0b18-3ef8-9524-a1ece9300eb8";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '1234567890', '127.0.0.1', 1481625117, 0.325206, '1', 0),
(3, 'ApiItems', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"5be64504-dd7d-60a7-0d61-4a0ec9b18f6f";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=6f31pd51lidtiblauac116nso2eurofu";}', '1234567890', '127.0.0.1', 1481625152, 0.122666, '1', 0),
(4, 'ApiItems', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"5db2f551-5613-5afe-7f98-a0080d88964a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=6f31pd51lidtiblauac116nso2eurofu";}', '1234567890', '127.0.0.1', 1481625274, 0.200928, '1', 200),
(5, 'ApiItems', 'get', 'a:9:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"9333c3cc-c2ac-4512-8b68-2dc8a734d6f7";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '1234567890', '127.0.0.1', 1482082067, 0.148348, '1', 200),
(6, 'ApiItems', 'get', 'a:2:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";}', '', '127.0.0.1', 1482083102, 0.169971, '0', 403),
(7, 'ApiItems', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"397c357e-15ad-3da2-3a99-c9fa634c9706";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=qerp8dg5aj4h6bsi2mq4jpfkm3o228m2";}', '1234567890', '127.0.0.1', 1482083160, 0.161457, '1', 200),
(8, 'ApiItems', 'get', 'a:2:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";}', '', '127.0.0.1', 1482083170, 0.159706, '0', 403),
(9, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482083198, 0.086998, '1', 200),
(10, 'ApiItems', 'get', 'a:9:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"59da8921-0846-b690-c54e-1915192c2dd4";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '1234567890', '127.0.0.1', 1482173190, 0.358559, '1', 200),
(11, 'ApiHerbal', 'get', 'a:9:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"02383543-34aa-f78f-042e-1f7989dbe5c8";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '1234567890', '127.0.0.1', 1482180425, 0.130968, '1', 200),
(12, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"ec5db1c5-cb59-ccdb-24ae-9b8e286f6d6d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=mmr0f12tt1hj0i10l6vdca3rp2o4348p";}', '1234567890', '127.0.0.1', 1482180455, 0.256215, '1', 200),
(13, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"f98430b8-6046-0b29-b990-b205c58c6665";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=mmr0f12tt1hj0i10l6vdca3rp2o4348p";}', '1234567890', '127.0.0.1', 1482180575, 0.113858, '1', 0),
(14, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"77bb754d-042c-039c-07e7-dfe85919b3a3";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=mmr0f12tt1hj0i10l6vdca3rp2o4348p";}', '1234567890', '127.0.0.1', 1482180662, 0.0939541, '1', 0),
(15, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"ac5a9afe-90d0-5177-ce79-f041b6c083f8";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=mmr0f12tt1hj0i10l6vdca3rp2o4348p";}', '1234567890', '127.0.0.1', 1482181295, 0.131239, '1', 0),
(16, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"f663f2cb-50ff-3de1-4159-366b5cd55923";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=8af3fc78uhf0h2blnrno7e3vd53tpl7u";}', '1234567890', '127.0.0.1', 1482181311, 0.0850439, '1', 0),
(17, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"616c45bf-a1e5-29d8-ae7d-d088121a570b";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=8af3fc78uhf0h2blnrno7e3vd53tpl7u";}', '1234567890', '127.0.0.1', 1482181330, 0.122175, '1', 0),
(18, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"c50a6900-e31f-a39f-0b7d-bb61c32381cb";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=8af3fc78uhf0h2blnrno7e3vd53tpl7u";}', '1234567890', '127.0.0.1', 1482181353, 0.0894248, '1', 0),
(19, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"402487a9-5851-d867-9dfd-b1b7ab88902e";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=8af3fc78uhf0h2blnrno7e3vd53tpl7u";}', '1234567890', '127.0.0.1', 1482181409, 0.096164, '1', 0),
(20, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"cddd71f3-60e2-8461-8924-5118287c7cb9";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=8af3fc78uhf0h2blnrno7e3vd53tpl7u";}', '1234567890', '127.0.0.1', 1482181507, 0.125661, '1', 0),
(21, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"e0e61e9b-f0eb-eed9-94df-895fc5316c35";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=8af3fc78uhf0h2blnrno7e3vd53tpl7u";}', '1234567890', '127.0.0.1', 1482181582, 0.0947142, '1', 0),
(22, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"278fe23a-c708-cd27-270a-7918d0651ac6";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=8af3fc78uhf0h2blnrno7e3vd53tpl7u";}', '1234567890', '127.0.0.1', 1482181594, 0.072459, '1', 0),
(23, 'ApiItems', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"4a0623e8-37e8-5a78-a21a-657c5c5bef8c";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=8af3fc78uhf0h2blnrno7e3vd53tpl7u";}', '1234567890', '127.0.0.1', 1482181785, 0.178697, '1', 200),
(24, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"0093222a-2f42-144a-6022-a0f77733a188";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=f531o7n1o5qsc1ug5f0v8f0pcoesmfie";}', '1234567890', '127.0.0.1', 1482181809, 0.406554, '1', 0),
(25, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482181809, 0.152118, '1', 200),
(26, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"bf9661c3-3b62-f945-922e-295d951bf036";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=f531o7n1o5qsc1ug5f0v8f0pcoesmfie";}', '1234567890', '127.0.0.1', 1482181945, 0.349708, '1', 0),
(27, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482181945, 0.20212, '1', 200),
(28, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"2f658d4d-ab74-6e0d-78b4-eed854b830b4";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=f531o7n1o5qsc1ug5f0v8f0pcoesmfie";}', '1234567890', '127.0.0.1', 1482181966, 0.247318, '1', 0),
(29, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482181967, 0.108617, '1', 200),
(30, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"d05660f9-9100-c559-fee4-ade7ba909b2d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=f531o7n1o5qsc1ug5f0v8f0pcoesmfie";}', '1234567890', '127.0.0.1', 1482182006, 0.454816, '1', 200),
(31, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182006, 0.134897, '1', 200),
(32, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"3a40616e-b124-55a5-ef59-b4a673fce3da";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=f531o7n1o5qsc1ug5f0v8f0pcoesmfie";}', '1234567890', '127.0.0.1', 1482182020, 0.287277, '1', 200),
(33, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182020, 0.0966892, '1', 200),
(34, 'ApiItems', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"4aef801b-9547-0147-9fbe-884250a0bfae";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=f531o7n1o5qsc1ug5f0v8f0pcoesmfie";}', '1234567890', '127.0.0.1', 1482182031, 0.15988, '1', 200),
(35, 'ApiItems', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"04045540-ab5e-25fb-81d6-22200060183f";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=f531o7n1o5qsc1ug5f0v8f0pcoesmfie";}', '1234567890', '127.0.0.1', 1482182038, 0.162732, '1', 200),
(36, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"3915716c-93cb-1e67-8100-08c3a5b9d16b";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=f531o7n1o5qsc1ug5f0v8f0pcoesmfie";}', '1234567890', '127.0.0.1', 1482182041, 0.399909, '1', 200),
(37, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182041, 0.181328, '1', 200),
(38, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"b8d926f5-7ced-92e3-84ab-393ce93f8c8f";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=f531o7n1o5qsc1ug5f0v8f0pcoesmfie";}', '1234567890', '127.0.0.1', 1482182076, 0.293454, '1', 200),
(39, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182076, 0.082634, '1', 200),
(40, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"a9cff022-c335-8f18-d463-35db47d3dd34";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=f531o7n1o5qsc1ug5f0v8f0pcoesmfie";}', '1234567890', '127.0.0.1', 1482182119, 0.218135, '1', 200),
(41, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182119, 0.080934, '1', 200),
(42, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"537c486e-5182-8a82-db10-161570a22627";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=22t58nlinsour1qvgthj1vaj7rcvdt6m";}', '1234567890', '127.0.0.1', 1482182128, 0.357856, '1', 200),
(43, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182128, 0.213562, '1', 200),
(44, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"0e11f32e-550d-b274-c7c6-2d17b916d3f4";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=22t58nlinsour1qvgthj1vaj7rcvdt6m";}', '1234567890', '127.0.0.1', 1482182306, 0.305017, '1', 200),
(45, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182306, 0.106573, '1', 200),
(46, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"feb891d3-fd8c-9e64-26e5-fa2f20b68616";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=22t58nlinsour1qvgthj1vaj7rcvdt6m";}', '1234567890', '127.0.0.1', 1482182327, 0.283741, '1', 200),
(47, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182327, 0.0745621, '1', 200),
(48, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"467443f7-7222-4d74-dab0-33303806a05b";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=22t58nlinsour1qvgthj1vaj7rcvdt6m";}', '1234567890', '127.0.0.1', 1482182368, 0.33881, '1', 0),
(49, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182369, 0.182227, '1', 200),
(50, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"12f94ec4-be22-bc53-9391-e81506d1a841";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=22t58nlinsour1qvgthj1vaj7rcvdt6m";}', '1234567890', '127.0.0.1', 1482182406, 0.229033, '1', 0),
(51, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182406, 0.0765002, '1', 200),
(52, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"b8a13535-0063-65a3-0096-f8272b280404";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=22t58nlinsour1qvgthj1vaj7rcvdt6m";}', '1234567890', '127.0.0.1', 1482182436, 0.317233, '1', 200),
(53, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182436, 0.128994, '1', 200),
(54, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"40e9c3e1-9398-1f5b-540b-b2515455a3bf";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=ag668meb8mu1krjuimu7et2p1ho84s60";}', '1234567890', '127.0.0.1', 1482182551, 0.452127, '1', 200),
(55, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182552, 0.136263, '1', 200),
(56, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"442cdadc-087d-52b2-d84a-34cdc92636d0";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=ag668meb8mu1krjuimu7et2p1ho84s60";}', '1234567890', '127.0.0.1', 1482182560, 0.272107, '1', 200),
(57, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182561, 0.106925, '1', 200),
(58, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"7f6ddac4-f86b-7a0f-de2a-e60578a3f768";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=ag668meb8mu1krjuimu7et2p1ho84s60";}', '1234567890', '127.0.0.1', 1482182608, 0.336844, '1', 200),
(59, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182608, 0.152607, '1', 200),
(60, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"956a1d75-c373-90fe-c520-4e2655687c79";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=ag668meb8mu1krjuimu7et2p1ho84s60";}', '1234567890', '127.0.0.1', 1482182649, 0.334561, '1', 0),
(61, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182649, 0.190167, '1', 200),
(62, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"bbc3b98a-c301-e990-b58b-dc71b747b111";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=ag668meb8mu1krjuimu7et2p1ho84s60";}', '1234567890', '127.0.0.1', 1482182674, 0.313705, '1', 0),
(63, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182674, 0.10806, '1', 200),
(64, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"f3a6a29b-00f0-d80e-77d8-c4ae859d9931";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=ag668meb8mu1krjuimu7et2p1ho84s60";}', '1234567890', '127.0.0.1', 1482182743, 0.229203, '1', 0),
(65, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182743, 0.1008, '1', 200),
(66, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"a3e69413-631a-de32-018f-c3af2c901d60";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=jc23tcqr6b2rhc3qlbhfc04l3v3mfo8f";}', '1234567890', '127.0.0.1', 1482182758, 0.222313, '1', 0),
(67, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182758, 0.074863, '1', 200),
(68, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"8e5b9aec-3bd1-d237-370f-8978870321ca";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=jc23tcqr6b2rhc3qlbhfc04l3v3mfo8f";}', '1234567890', '127.0.0.1', 1482182802, 0.0926569, '1', 0),
(69, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"e0a5ec05-6264-3b8a-d0b0-f0193ead7ea7";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=jc23tcqr6b2rhc3qlbhfc04l3v3mfo8f";}', '1234567890', '127.0.0.1', 1482182806, 0.236589, '1', 0),
(70, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182806, 0.0920379, '1', 200),
(71, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"14e1c978-c475-b36b-e684-7b967c014bf0";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=jc23tcqr6b2rhc3qlbhfc04l3v3mfo8f";}', '1234567890', '127.0.0.1', 1482182910, 0.374717, '1', 0),
(72, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182910, 0.125305, '1', 200),
(73, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"8719ec97-ddd3-2158-91a1-a188f52bbb08";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=jc23tcqr6b2rhc3qlbhfc04l3v3mfo8f";}', '1234567890', '127.0.0.1', 1482182949, 0.294665, '1', 0),
(74, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482182949, 0.133494, '1', 200),
(75, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"65911d1b-ffc0-1195-af87-cf74f09a513d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=jc23tcqr6b2rhc3qlbhfc04l3v3mfo8f";}', '1234567890', '127.0.0.1', 1482183006, NULL, '1', 0),
(76, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"c5da2f55-7e1c-ff75-b485-cf1a765b73f0";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=jc23tcqr6b2rhc3qlbhfc04l3v3mfo8f";}', '1234567890', '127.0.0.1', 1482183016, 0.213355, '1', 0),
(77, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482183017, 0.0668612, '1', 200),
(78, 'ApiItems', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"ddf34151-b55f-db8f-43ea-039a99dd5642";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=jc23tcqr6b2rhc3qlbhfc04l3v3mfo8f";}', '1234567890', '127.0.0.1', 1482183171, 0.154312, '1', 200),
(79, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482183226, 0.158253, '1', 200),
(80, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482183398, 0.094677, '1', 200),
(81, 'ApiItems', 'get', 'a:2:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";}', '', '127.0.0.1', 1482184146, 0.0999019, '0', 403),
(82, 'ApiItems', 'get', 'a:2:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";}', '', '127.0.0.1', 1482184198, 0.181307, '0', 403),
(83, 'ApiItems', 'get', 'a:2:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";}', '', '127.0.0.1', 1482184236, 0.151864, '0', 403),
(84, 'ApiItems', 'get', 'a:2:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";}', '', '127.0.0.1', 1482184296, 0.108117, '0', 403),
(85, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";i:0;s:21:"X-API-KEY: 1234567890";}', '', '127.0.0.1', 1482184352, 0.100439, '0', 403),
(86, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482184407, 0.108696, '1', 200),
(87, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482184518, 0.113551, '1', 200),
(88, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482184532, 0.128109, '1', 200),
(89, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482184543, 0.0934219, '1', 200),
(90, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482184614, 0.088876, '1', 200),
(91, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482184627, 0.107702, '1', 200),
(92, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482184680, 0.10588, '1', 200),
(93, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482184699, 0.182856, '1', 200),
(94, 'ApiHerbal', 'get', 'a:9:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:6:"Accept";s:74:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:135:"SOFTCookies9132_sid=5IDM9axCPKcLLtI23dYhy3Ki9XzIZqR7; PHPSESSID=nc8d6ngvu38ckp654b3ovc0ar6; ci_session=j5c33nduvi5bk26rql0kj4sj1f5sc0ba";}', '', '127.0.0.1', 1482184777, 0.111583, '0', 403),
(95, 'ApiHerbal', 'get', 'a:9:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:6:"Accept";s:74:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:135:"SOFTCookies9132_sid=5IDM9axCPKcLLtI23dYhy3Ki9XzIZqR7; PHPSESSID=nc8d6ngvu38ckp654b3ovc0ar6; ci_session=j5c33nduvi5bk26rql0kj4sj1f5sc0ba";}', '', '127.0.0.1', 1482184785, 0.086062, '0', 403),
(96, 'ApiHerbal', 'get', 'a:9:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:6:"Accept";s:74:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:135:"SOFTCookies9132_sid=5IDM9axCPKcLLtI23dYhy3Ki9XzIZqR7; PHPSESSID=nc8d6ngvu38ckp654b3ovc0ar6; ci_session=j5c33nduvi5bk26rql0kj4sj1f5sc0ba";}', '', '127.0.0.1', 1482184797, 0.0852861, '0', 403),
(97, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482184811, 0.151426, '1', 200),
(98, 'ApiHerbal', 'get', 'a:9:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:6:"Accept";s:74:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:135:"SOFTCookies9132_sid=5IDM9axCPKcLLtI23dYhy3Ki9XzIZqR7; PHPSESSID=nc8d6ngvu38ckp654b3ovc0ar6; ci_session=j5c33nduvi5bk26rql0kj4sj1f5sc0ba";}', '', '127.0.0.1', 1482184835, 0.102136, '0', 403),
(99, 'ApiHerbal', 'get', 'a:9:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:6:"Accept";s:74:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:135:"SOFTCookies9132_sid=5IDM9axCPKcLLtI23dYhy3Ki9XzIZqR7; PHPSESSID=nc8d6ngvu38ckp654b3ovc0ar6; ci_session=j5c33nduvi5bk26rql0kj4sj1f5sc0ba";}', '', '127.0.0.1', 1482184882, 0.066576, '0', 403),
(100, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"4d04e5ea-bb0b-1b84-fc34-449d6e9dbec3";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=btdfgve0ufqmcpmsvlos7mq4o474qs6s";}', '1234567890', '127.0.0.1', 1482184891, 0.277707, '1', 0),
(101, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482184891, 0.088383, '1', 200),
(102, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"77fd4603-fbf2-8d71-570c-d53f2d6d469f";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=btdfgve0ufqmcpmsvlos7mq4o474qs6s";}', '1234567890', '127.0.0.1', 1482184895, 0.229153, '1', 0),
(103, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482184895, 0.0722861, '1', 200),
(104, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"8d6afb7c-dead-b739-0240-3f06ce1f93bf";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=btdfgve0ufqmcpmsvlos7mq4o474qs6s";}', '1234567890', '127.0.0.1', 1482184926, 0.338918, '1', 0),
(105, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482184926, 0.135518, '1', 200),
(106, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"d2ab5753-7601-e6d5-1321-ee3097be10c9";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=btdfgve0ufqmcpmsvlos7mq4o474qs6s";}', '1234567890', '127.0.0.1', 1482184948, 0.499681, '1', 0),
(107, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482184948, 0.185889, '1', 200),
(108, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"525a6c68-7e1e-41ea-3591-f67a7c87cf94";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=btdfgve0ufqmcpmsvlos7mq4o474qs6s";}', '1234567890', '127.0.0.1', 1482184996, 0.311143, '1', 200),
(109, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482184996, 0.090678, '1', 200),
(110, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"916a0651-64b2-9f20-c245-5e690a8fee99";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=btdfgve0ufqmcpmsvlos7mq4o474qs6s";}', '1234567890', '127.0.0.1', 1482185153, 0.324073, '1', 200),
(111, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482185153, 0.111815, '1', 200),
(112, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"3270b1c2-ca15-fda4-6a01-ebd0da127ac3";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=ersrkifc2b9b6ckmd0ut4r4bu4poffnf";}', '1234567890', '127.0.0.1', 1482185207, NULL, '1', 0),
(113, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482185207, 0.108521, '1', 200),
(114, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"8968d541-d014-ba23-4a0b-71d701b647d8";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=ersrkifc2b9b6ckmd0ut4r4bu4poffnf";}', '1234567890', '127.0.0.1', 1482185230, 0.23192, '1', 0),
(115, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482185230, 0.084115, '1', 200),
(116, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"a801d719-8f9c-8d7e-8f68-2a6b47ba4081";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=ersrkifc2b9b6ckmd0ut4r4bu4poffnf";}', '1234567890', '127.0.0.1', 1482185248, 0.340389, '1', 200),
(117, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482185248, 0.0968509, '1', 200),
(118, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"9ba891fa-87c3-3286-8b93-edc0b7c67e64";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=ersrkifc2b9b6ckmd0ut4r4bu4poffnf";}', '1234567890', '127.0.0.1', 1482185339, 0.436588, '1', 200);
INSERT INTO `api_logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(119, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482185339, 0.185086, '1', 200),
(120, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"ab8b29d7-8c8d-7cc6-5670-61cb1024dd3f";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=ersrkifc2b9b6ckmd0ut4r4bu4poffnf";}', '1234567890', '127.0.0.1', 1482185357, 0.374579, '1', 200),
(121, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482185357, 0.0957189, '1', 200),
(122, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"0e517e35-4412-a23d-1199-264c2f01b4f6";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=ersrkifc2b9b6ckmd0ut4r4bu4poffnf";}', '1234567890', '127.0.0.1', 1482185434, 0.250113, '1', 200),
(123, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482185435, 0.0722318, '1', 200),
(124, 'ApiHerbal', 'get', 'a:9:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:6:"Accept";s:74:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:135:"SOFTCookies9132_sid=5IDM9axCPKcLLtI23dYhy3Ki9XzIZqR7; PHPSESSID=nc8d6ngvu38ckp654b3ovc0ar6; ci_session=j5c33nduvi5bk26rql0kj4sj1f5sc0ba";}', '', '127.0.0.1', 1482185481, 0.110537, '0', 403),
(125, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"8d9a7c42-abe0-7403-de94-104a6fc48475";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=ersrkifc2b9b6ckmd0ut4r4bu4poffnf";}', '1234567890', '127.0.0.1', 1482186842, 0.324063, '1', 200),
(126, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482186842, 0.0938351, '1', 200),
(127, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"cb9332f3-4010-0a0c-0774-39291f1e400d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=e4kvafp2fesbai8ki728us0gpsb2jaht";}', '1234567890', '127.0.0.1', 1482186854, 0.24497, '1', 500),
(128, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:3:"asd";}', '', '127.0.0.1', 1482186854, 0.0854232, '0', 403),
(129, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"f305eaf4-9cca-da54-2b79-492bb4310f98";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=e4kvafp2fesbai8ki728us0gpsb2jaht";}', '1234567890', '127.0.0.1', 1482187190, 0.39723, '1', 200),
(130, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482187190, 0.0859208, '1', 200),
(131, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"6244b440-a0c9-30bb-42e4-641dba13d780";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=tb5gt8k5a3ilk0jm1qj20uhjciktdv0i";}', '1234567890', '127.0.0.1', 1482187213, 0.282559, '1', 200),
(132, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482187213, 0.0681419, '1', 200),
(133, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"e549a1c7-0906-3ea6-b79c-a150e401b0fb";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=tb5gt8k5a3ilk0jm1qj20uhjciktdv0i";}', '1234567890', '127.0.0.1', 1482187234, 0.470798, '1', 200),
(134, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482187234, 0.186201, '1', 200),
(135, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"8f4da9fb-6c09-d6ed-824f-bf3de96b06c8";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=tb5gt8k5a3ilk0jm1qj20uhjciktdv0i";}', '1234567890', '127.0.0.1', 1482187265, 0.299707, '1', 200),
(136, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482187265, 0.097014, '1', 200),
(137, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"7054afea-c15f-ad9a-dca4-5de1284e504b";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=tb5gt8k5a3ilk0jm1qj20uhjciktdv0i";}', '1234567890', '127.0.0.1', 1482187278, 0.254049, '1', 200),
(138, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482187278, 0.0693851, '1', 200),
(139, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"b0a61360-1e00-9956-a343-801e6405c746";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=tb5gt8k5a3ilk0jm1qj20uhjciktdv0i";}', '1234567890', '127.0.0.1', 1482187342, 0.286682, '1', 200),
(140, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482187342, 0.0712421, '1', 200),
(141, 'ApiHerbal', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36";s:9:"X-API-KEY";s:10:"1234567890";s:13:"Postman-Token";s:36:"a3eb27b1-e693-a3b4-1ebc-7734eca49223";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=tb5gt8k5a3ilk0jm1qj20uhjciktdv0i";}', '1234567890', '127.0.0.1', 1482187351, 0.296061, '1', 200),
(142, 'ApiItems', 'get', 'a:3:{s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:39:"GuzzleHttp/6.2.1 curl/7.43.0 PHP/5.6.25";s:9:"X-API-KEY";s:10:"1234567890";}', '1234567890', '127.0.0.1', 1482187351, 0.088192, '1', 200);

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
  `KODE_DEPT` varchar(12) DEFAULT NULL,
  `KODE_KLASIFIKASI` varchar(60) DEFAULT NULL,
  `KODE_GUDANG` varchar(12) DEFAULT NULL,
  `METODE` varchar(7) DEFAULT NULL,
  `DISIMPAN` varchar(1) DEFAULT NULL,
  `DIBELI` varchar(1) DEFAULT NULL,
  `DIJUAL` varchar(1) DEFAULT NULL,
  `KODE_GROUP1` varchar(21) NOT NULL,
  `KODE_GROUP2` varchar(8) DEFAULT NULL,
  `KODE_GROUP3` varchar(8) DEFAULT NULL,
  `KODE_GROUP4` varchar(8) DEFAULT NULL,
  `QTY` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL,
  `ISSERIAL` varchar(30) DEFAULT NULL,
  `NOMORSERIAL` varchar(30) DEFAULT NULL,
  `ISLOT` varchar(30) DEFAULT NULL,
  `QTYLOT` varchar(30) DEFAULT NULL,
  `NOMORLOT` varchar(30) DEFAULT NULL,
  `NOTE1` varchar(30) DEFAULT NULL,
  `NOTE2` varchar(30) DEFAULT NULL,
  `NOTE3` varchar(30) DEFAULT NULL,
  `NOTE4` varchar(30) DEFAULT NULL,
  `TGLPRODUKSI` varchar(30) DEFAULT NULL,
  `TGLKADALUARSA` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`KODE_BARANG`, `NAMA_BARANG`, `KODE_UNIT`, `HARGA_JUAL`, `KODE_KURS`, `KODE_DEPT`, `KODE_KLASIFIKASI`, `KODE_GUDANG`, `METODE`, `DISIMPAN`, `DIBELI`, `DIJUAL`, `KODE_GROUP1`, `KODE_GROUP2`, `KODE_GROUP3`, `KODE_GROUP4`, `QTY`, `PRICE`, `ISSERIAL`, `NOMORSERIAL`, `ISLOT`, `QTYLOT`, `NOMORLOT`, `NOTE1`, `NOTE2`, `NOTE3`, `NOTE4`, `TGLPRODUKSI`, `TGLKADALUARSA`) VALUES
('HJ1', 'JADIED PROPOLIS', 'PCS', 30000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 104, 15000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HJ2', 'JADIED LAMBUNG', 'PCS', 25000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 197, 12500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HJ3', 'JADIED KIDS', 'PCS', 25000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 171, 12500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HJ4', 'JADIED STAMINA', 'PCS', 45000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 22500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM1', 'MADU BOTOL RANDU', 'PCS', 60000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM10', 'MADU BOTOL MULTIFLORA', 'PCS', 0, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 9, 50000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM11', 'MADU BOTOL KECIL RANDU', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 10, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM12', 'MADU BOTOL KECIL RAMBUTAN', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 11, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM13', 'MADU BOTOL KECIL KALIMANTAN', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 12, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM14', 'MADU BOTOL KECIL KARET', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 13, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM15', 'MADU BOTOL KECIL SONO', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 14, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM16', 'MADU BOTOL KECIL MANGGA', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 15, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM17', 'MADU BOTOL KECIL SUMBAWA', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 16, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM18', 'MADU BOTOL KECIL KALIANDRA', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 17, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM19', 'MADU BOTOL KECIL  KELENGKENG', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 18, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM2', 'MADU BOTOL RAMBUTAN', 'PCS', 80000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM20', 'MADU BOTOL KECIL MULTIFLORA', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 19, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM21', 'MADU YAMAN 2 (1KG)', 'PCS', 600000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 12, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM22', 'MADU YAMAN 1 (? KG)', 'PCS', 1000000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 7, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM23', 'MADU KHASMIR 2KG', 'PCS', 240000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 8, 170000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM24', 'MADU KHASMIR 1 ? KG', 'PCS', 225000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 3, 140000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM25', 'MADU KHASMIR 1KG', 'PCS', 150000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 140, 100000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM26', 'MADU KHASMIR (1) 1KG', 'PCS', 175000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM27', 'MADU AUSTRALIA 1KG', 'PCS', 175000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM28', 'MADU KHASMIR MUMTAZ ? KG', 'PCS', 160000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM29', 'MADU KHASMIR (ACASIA HONEY) ?', 'PCS', 75000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM3', 'MADU BOTOL KALIMANTAN', 'PCS', 70000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM30', 'MADU KHASMIR HERBAL HONEY ? KG', 'PCS', 75000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 24, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM31', 'MADU ASYFA ? KG', 'PCS', 75000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 27, 60000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM32', 'MADU KHASMIRI 400 GR', 'PCS', 70000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 45000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM33', 'MADU KHASMIRI 250 GR', 'PCS', 45000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 17, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM34', 'MADU PAHIT', 'PCS', 50000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 4, 27500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM35', 'MADU DIABET', 'PCS', 60000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 20, 35000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM36', 'MADU KEJANTANAN', 'PCS', 90000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 3, 70000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM4', 'MADU BOTOL KARET', 'PCS', 60000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 3, 30000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM5', 'MADU BOTOL SONO', 'PCS', 60000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 4, 35000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM6', 'MADU BOTOL MANGGA', 'PCS', 80000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 5, 53000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM7', 'MADU BOTOL SUMBAWA', 'PCS', 60000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 6, 40000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM8', 'MADU BOTOL KALIANDRA', 'PCS', 60000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 7, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM9', 'MADU BOTOL KELENGKENG', 'PCS', 80000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 8, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HZ1', 'ZAITUN BORGES 500 ML', 'PCS', 85000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 40, 65000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HZ2', 'ZAITUN BORGES 250 ML', 'PCS', 45000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 49, 33000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HZ3', 'ZAITUN FIRDAUS 250 ML', 'PCS', 40000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 156, 27500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HZ4', 'ZAITUN BURCINO 250 ML', 'PCS', 40000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 51, 21000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HZ5', 'ZAITUN LE RICHE 300ML', 'PCS', 35000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 91, 21500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ1', 'AL-WAFU WAL IBTIDA 1', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ10', 'AL-WAFU WAL IBTIDA 9', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ11', 'AL-WAFU WAL IBTIDA 10', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ12', 'AL-WAFU WAL IBTIDA 11', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ13', 'AL-WAFU WAL IBTIDA 12', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ14', 'AL-WAFU WAL IBTIDA 13', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ15', 'AL-WAFU WAL IBTIDA 14', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ16', 'AL-WAFU WAL IBTIDA 15', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ17', 'AL-WAFU WAL IBTIDA 16', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ18', 'AL-WAFU WAL IBTIDA 17', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ19', 'AL-WAFU WAL IBTIDA 18', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ2', 'AL-WAFU WAL IBTIDA 2', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ20', 'AL-WAFU WAL IBTIDA  19', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ21', 'AL-WAFU WAL IBTIDA 20', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ22', 'AL-WAFU WAL IBTIDA 21', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ23', 'AL-WAFU WAL IBTIDA 22', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ24', 'AL-WAFU WAL IBTIDA 23', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ25', 'AL-WAFU WAL IBTIDA 24', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ26', 'AL-WAFU WAL IBTIDA 25', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ27', 'BUKU FASIH 1', 'PCS', 1500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ28', 'BUKU FASIH 2', 'PCS', 1500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ29', 'BUKU FASIH 3', 'PCS', 1500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ3', 'AL-WAFU WAL IBTIDA 3', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ30', 'BUKU FASIH 4', 'PCS', 1500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ31', 'BUKU FASIH 5', 'PCS', 1500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ32', 'BUKU FASIH 6', 'PCS', 1500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ33', 'KHOT PRAKTIS 1 KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ34', 'KHOT PRAKTIS 2 KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ35', 'KHOT PRAKTIS 3   KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ36', 'KHOT PRAKTIS 1 BESAR', 'PCS', 2600, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ37', 'KHOT PRAKTIS 2  BESAR', 'PCS', 2600, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ38', 'KHOT PRAKTIS 3  BESAR', 'PCS', 2600, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ39', 'IQRO 1  KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ4', 'AL-WAFU WAL IBTIDA 3', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ40', 'IQRO 2  KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ41', 'IQRO 3  KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ42', 'IQRO 4  KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ43', 'IQRO 5  KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ44', 'IQRO 6  KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ45', 'IQRO 1  BESAR', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ46', 'IQRO 2  BESAR', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ47', 'IQRO 3  BESAR', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ48', 'IQRO 4  BESAR', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ49', 'IQRO 5  BESAR', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ5', 'AL-WAFU WAL IBTIDA 4', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ50', 'IQRO 6  BESAR', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ51', 'IQRO BENDEL KECIL', 'PCS', 6250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 2820, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ6', 'AL-WAFU WAL IBTIDA 5', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ7', 'AL-WAFU WAL IBTIDA 6', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ8', 'AL-WAFU WAL IBTIDA 7', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ9', 'AL-WAFU WAL IBTIDA 8', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB1', 'QURAN BESAR CD GARIS AIN SYAM', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AIN SYAM', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB10', 'QURAN BESAR HVS  GARIS MADKURSURABAYA', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'MADKUR', 'No Group', 'No Group', 'No Group', 0, 18500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB11', 'QURAN BESAR HVS POLOS NURCAHAYA', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'NUR CAHAYA', 'No Group', 'No Group', 'No Group', 0, 18500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB12', 'QURAN BESAR  HVS POLOS DUTA ILMUAL-BARI', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'DUTA ILMU', 'No Group', 'No Group', 'No Group', 0, 18500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB13', 'QURAN BESAR HVS POLOS DUTA ILMUAR-RAHMAN', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'DUTA ILMU', 'No Group', 'No Group', 'No Group', 0, 18500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB14', 'QURAN BESAR HVS GARIS RAJAPUBLISHING', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'RADJA PUBLISHING', 'No Group', 'No Group', 'No Group', 0, 19000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB15', 'QURAN BESAR HVS GARIS(RAHMAN)RAJA PUBLISHING', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'RADJA PUBLISHING', 'No Group', 'No Group', 'No Group', 0, 18500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB16', 'QURAN  BESAR HVS  GARIS HIKMAHPRESS', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'HIKMAH PRESS', 'No Group', 'No Group', 'No Group', 0, 19500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB17', 'QURAN BESAR HVS POLOS MAHALHIDAYAH', 'PCS', 40000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AL-HIDAYAH', 'No Group', 'No Group', 'No Group', 0, 22500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB18', 'QURAN BESAR HVS GARIS MAHALHIDAYAH', 'PCS', 40000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AL-HIDAYAH', 'No Group', 'No Group', 'No Group', 0, 22000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB19', 'QURAN BESAR HVS POLOS AL-MAJIDTOHA PUTRA', 'PCS', 56000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'TOHA PUTRA', 'No Group', 'No Group', 'No Group', 0, 36400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB2', 'QURAN BESAR CD GARIS MADKURSURABAYA', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'MADKUR', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB20', 'QURAN  BESAR HVS POLOS AL-MUAKHIRTOHA PUTRA', 'PCS', 57500, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'TOHA PUTRA', 'No Group', 'No Group', 'No Group', 0, 37400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB21', 'QURAN BESARHVS  GARIS AR-RASYIDTOHA PUTRA', 'PCS', 62500, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'TOHA PUTRA', 'No Group', 'No Group', 'No Group', 0, 40650, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB22', 'QURAN BESAR HVS EMAS KALAM ALI', 'PCS', 45000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 24700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB23', 'QURAN BESAR HVS EMAS  GARIS ISTANAKARYA MULIA', 'PCS', 45000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 25000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB24', 'QURAN BESAR HVS GARIS PERAK KALAMALI', 'PCS', 40000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 25000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB25', 'QURAN BESAR HVS  BATIK KALAM ALI', 'PCS', 45000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 24700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB26', 'QURAN BESAR HIKMAH LUX TAJWID', 'PCS', 95000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'HIKMAH PRESS', 'No Group', 'No Group', 'No Group', 0, 66700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB27', 'QURAN BESAR FOKUS MEDIA', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'FOKUS MEDIA', 'No Group', 'No Group', 'No Group', 0, 19000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB28', 'QURAN BESAR MAGFIROH TAJWID', 'PCS', 155000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'MAGHFIROH', 'No Group', 'No Group', 'No Group', 0, 100750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB29', 'QURAN BESAR HVS GARIS BINA ILMU', 'PCS', 45000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'BINA ILMU', 'No Group', 'No Group', 'No Group', 0, 21500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB3', 'QURAN  BESAR CD GARIS ASSSALAM', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AS-SALAM', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB30', 'QURAN BESAR REST KALAM ALI', 'PCS', 62000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'BINA ILMU', 'No Group', 'No Group', 'No Group', 1, 40300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB31', 'QURAN BESAR VELCRO KALAM ALI', 'PCS', 62000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'BINA ILMU', 'No Group', 'No Group', 'No Group', 2, 40300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB4', 'QURAN BESAR CD POLOS  KARYA PUTRAUTAMA', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'KARYA PUTRA UTAMA', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB5', 'QURAN BESAR CD POLOS MENARAKUDUS', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'MENARA KUDUS', 'No Group', 'No Group', 'No Group', 0, 12750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB6', 'QURAN BESAR HVS GARIS QOMARI', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'QOMARI', 'No Group', 'No Group', 'No Group', 0, 19500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB7', 'QURAN BESAR HVS GARIS KALAM ALIBATIK', 'PCS', 40000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 21800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB8', 'QURAN BESAR HVS  KARYA PUTRAUTAMA', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'KARYA PUTRA UTAMA', 'No Group', 'No Group', 'No Group', 0, 19500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB9', 'QURAN BESAR  HVS  GARIS AIN SYAMS', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AIN SYAM', 'No Group', 'No Group', 'No Group', 0, 18500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT1', 'QURAN TANGGUNG CD POLOS PUSTAKAAS', 'PCS', 20000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'PUSTAKA AS', 'No Group', 'No Group', 'No Group', 0, 8500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT10', 'QURAN TANGGUNG HVS POLOS ISTANA KARYA MULIA', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'ISTANA KARYA MULIA', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT11', 'QURAN TANGGUNG HVS POLOS AL-HIDAYAH', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AL-HIDAYAH', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT12', 'QURAN TANGGUNG HVS POLOS DUTAILMU', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'DUTA ILMU', 'No Group', 'No Group', 'No Group', 0, 16000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT13', 'QURAN TANGGUNG HVS GARIS  AINSYAMS', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AIN SYAM', 'No Group', 'No Group', 'No Group', 0, 12700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT14', 'QURAN TANGGUNG HVS GARIS KALAMALI  BATIK', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT15', 'QURAN TANGGUNG HVS AWWAL TOHAPUTRA', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'TOHA PUTRA', 'No Group', 'No Group', 'No Group', 0, 22750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT16', 'QURAN TANGGUNG HVS  KALAM ALI KAIN', 'PCS', 30000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 15600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT17', 'QURAN TANGGUNG HVS KALAM ALI VELCROWWARNA', 'PCS', 36000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 23400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT18', 'QURAN TANGGUNG KALM ALI  RESTWARNA', 'PCS', 36000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 23400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT19', 'QURAN TANGGUNG MAP CD POLOSAL-HIDAYAH', 'PCS', 30000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AL-HIDAYAH', 'No Group', 'No Group', 'No Group', 0, 14000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT2', 'QURAN TANGGUNG CD POLOS DUTAILMU', 'PCS', 20000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'DUTA ILMU', 'No Group', 'No Group', 'No Group', 0, 9500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT20', 'QURAN TANGGUNG MAP HVS AL-HIDAYAH', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AL-HIDAYAH', 'No Group', 'No Group', 'No Group', 0, 17000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT21', 'QURAN TANGGUNG MAP HVS GARISKARINDO', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'KARINDO', 'No Group', 'No Group', 'No Group', 0, 17500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT22', 'QURAN TANGGUNG MAP HVS GARISDUTA ILMU', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'DUTA ILMU', 'No Group', 'No Group', 'No Group', 0, 18000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT23', 'QURAN TANGGUNG HVS EMAS GARIS BINSYUAIB', 'PCS', 30000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'BIN SYUAIB', 'No Group', 'No Group', 'No Group', 0, 16500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT24', 'QURAN TANGGUNG HVS EMAS  GARISKALAM ALI', 'PCS', 30000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 16500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT25', 'QURAN TANGGUNG HVS EMAS GARIS DUTA ILMU', 'PCS', 30000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'DUTA ILMU', 'No Group', 'No Group', 'No Group', 0, 18000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT3', 'QURAN TANGGUNG CD POLOS AL-FATAHDUTA ILMU', 'PCS', 20000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'DUTA ILMU', 'No Group', 'No Group', 'No Group', 0, 9500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT4', 'QURAN TANGGUNG CD POLOSAL-HIDAYAH', 'PCS', 20000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AL-HIDAYAH', 'No Group', 'No Group', 'No Group', 0, 9500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT5', 'QURAN TANGGUNG CD POLOS AISYAH', 'PCS', 20000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AISYAH', 'No Group', 'No Group', 'No Group', 0, 9000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT6', 'QURAN TANGGUNG CD POLOS BINTANGTERANG', 'PCS', 20000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'BINTANG TERANG', 'No Group', 'No Group', 'No Group', 0, 8500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT7', 'QURAN TANGGUNG CD POLOS ISTANAKARYA MULIA', 'PCS', 20000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'ISTANA KARYA MULIA', 'No Group', 'No Group', 'No Group', 0, 8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT8', 'QURAN TANGGUNG HVS POLOS KARYAPUTRA UTAMA SEMARANG', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'KARYA PUTRA UTAMA', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT9', 'QURAN TANGGUNG HVS GARIS QOMARI', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'QOMARI', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

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
(9, 4, 2, 19628474, '2016-12-13 10:28:13'),
(10, 4, 1, 18285116, '2016-12-13 23:22:22'),
(11, 4, 1, 15819457, '2016-12-14 09:59:38'),
(12, 4, 2, 7711287, '2016-12-19 20:09:35'),
(13, 4, 2, 11227032, '2016-12-19 20:14:59'),
(14, 4, 2, 751085, '2016-12-19 20:17:14'),
(15, 5, 1, 10456309, '2016-12-19 20:40:37'),
(16, 5, 2, 656688, '2016-12-19 20:40:50'),
(17, 5, 1, 722482, '2016-12-19 22:50:27');

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
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `token`, `url`) VALUES
(0, '1234567890', 'http://localhost/shop/distributor/index.php/ApiItems');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `packages_id` int(11) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `selection` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `level`, `packages_id`, `token`, `selection`) VALUES
(1, 'mimin', '$2y$10$JWm4MRGeViIZtDHemxpojexgnAN3/se8SfyWMW05UxctMRZTJpXGC', 'super_admin', 1, '1234567890', 'MADU'),
(4, 'gusti', '$2y$10$nMNhKivHwrd2gO3tQkpGdO7ZlJe46IGB5wndtdigR3Toc3nGe93GG', 'customer', 2, 'ko4s8s8sg088kk00880ck4kksc0kgwsg0o0808gc', 'MADU'),
(5, 'tama', '$2y$10$T1REwE6qE4AQKYFEndWgm.sj0kR1FC7Iq3CjdiFYYzVcNCtL6Acwq', 'customer', 1, 'sog08k440wgw484og0g48gkowwksos44wsg0scow', 'MADU'),
(6, 'alfin', '$2y$10$Y0rYTRS3tiSOwBp4WvxWfOkZvE5UtxKGP3VJtz2yhAqnKuzKjn82y', 'customer', NULL, '', '');

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
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`KODE_BARANG`);

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
-- Indexes for table `setting`
--
ALTER TABLE `setting`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
