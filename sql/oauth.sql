-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 08, 2016 at 03:23 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL COMMENT '获取资源的access_token',
  `client_id` varchar(80) NOT NULL COMMENT '开发者Appid',
  `user_id` varchar(255) DEFAULT NULL COMMENT '开发者用户id',
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '认证的时间date("Y-m-d H:i:s")',
  `scope` varchar(2000) DEFAULT NULL COMMENT '权限容器'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('0204f9b9c4df34c7b7992b9dadb27aebc7ca998e', 'testclient', NULL, '2016-06-07 08:22:49', 'userinfo'),
('032eab59dc9c20b83b6437bdeb7d27373f99ee1b', 'testclient', NULL, '2016-06-07 08:48:15', 'userinfo'),
('07249bd3ae23f941d90b51b59a635062584f6455', 'testclient', 'user', '2016-06-06 06:03:34', 'userinfo cloud file node'),
('0b84a512b6ea40d9aa71027fd3dd46d898e2ae5c', 'testclient', 'user', '2015-06-28 08:55:05', 'userinfo cloud file node'),
('11878ab5d0848dadb38cb59368b9c2582f4ba626', 'testclient', 'user', '2016-06-06 06:02:56', 'userinfo cloud file node'),
('18f90e1740f9d120cc078052760a756be7bd1ad5', 'testclient', 'user', '2016-06-06 07:04:04', 'userinfo cloud file node'),
('1bb50ed832d1e61aaf2d5252f4a9f38ed2838265', 'testclient', 'user', '2016-06-07 04:57:00', 'userinfo cloud file node'),
('1d83cfb85c8afe71dac8a9ab32875d4ce8025c11', 'testclient', 'user', '2015-06-28 08:53:34', 'userinfo cloud file node'),
('1f960e7bd2454a4a25f91232b71e2659fa8d6415', 'testclient', 'xiaocao', '2015-06-28 08:46:33', 'userinfo cloud file node'),
('208e7d472e515a065f93ebab7218cc1a4877b74a', 'testclient', NULL, '2016-06-07 08:29:24', 'userinfo'),
('23b3ce4747183460fd753238f0e79b34b3e7bc3c', 'testclient', 'user', '2015-06-28 08:55:06', 'userinfo node file'),
('2b5c78d4c186eff619d4afb819a54a106e6f6bc7', 'testclient', 'xiaocao', '2016-06-06 08:31:21', 'userinfo cloud file node'),
('35eb43c11bfc888c800bd51c41586a1cee7371a2', 'testclient', NULL, '2016-06-07 07:50:19', 'userinfo'),
('36419e95ed3653780f256d8122ef98cfd41b162a', 'testclient', NULL, '2016-06-07 09:05:44', 'userinfo'),
('3afe36138994030e130f0982a5c893c7334e7842', 'testclient', NULL, '2016-06-07 08:58:48', 'userinfo'),
('41c2939a3cec8aa21313f01569e844b390634693', 'testclient', NULL, '2016-06-07 08:57:37', 'userinfo'),
('43060da10aced6a36bbca6b20bef98e6a2bedc8d', 'testclient', 'user', '2016-06-07 04:57:30', 'userinfo node file'),
('46fdde9bd11bed76e796a93723c1e01881382a1a', 'testclient', NULL, '2016-06-07 08:54:31', 'userinfo'),
('472aa3b226419de7580be3ae764a5b823cc12a1d', 'testclient', NULL, '2016-06-07 08:32:12', 'userinfo'),
('4d38db9f8e04460874baf4afa8316d480d6d29b1', 'testclient', NULL, '2016-06-07 09:07:48', 'userinfo'),
('55563495647daa9b6f2c6e711dce020f7dbf84c1', 'testclient', NULL, '2016-06-07 08:01:00', 'userinfo'),
('561e55f6b7932607cd2160c1d973fd7734c88853', 'testclient', 'xiaocao', '2016-06-06 08:18:50', 'userinfo cloud file node'),
('5671ccd41aed1c09853e27331e0d7495b120c77c', 'testclient', 'user', '2016-06-06 08:18:20', 'userinfo cloud file node'),
('5c19932029b545ba220b3cba53cc996d8e321704', 'testclient', 'user', '2015-06-28 08:54:33', 'userinfo cloud file node'),
('5fc79d2b147935f6ac5b2f120a35865371e239d2', 'testclient', NULL, '2016-06-07 08:02:42', 'userinfo'),
('6261bc4c5b7db735bd4184a886b7e36a17cde60b', 'testclient', 'user', '2016-06-07 02:45:14', 'userinfo cloud file node'),
('63de3812ee344a9be609261f75021a5c7f6086c7', 'testclient', NULL, '2016-06-07 08:28:31', 'userinfo'),
('674285727316c39aaf22e53ed9792d3b5be9bcdd', 'testclient', 'user', '2016-06-07 03:07:43', 'userinfo cloud file node'),
('6776e7755275178b743146f666ac072c91ee7741', 'testclient', 'xiaocao', '2016-06-07 04:56:17', 'userinfo cloud file node'),
('689013dd6e35a6d48c053e13cbd1352ea4d88039', 'testclient', NULL, '2016-06-07 03:39:55', 'userinfo'),
('6a8206860f47d62de1599e099b878c1e1a816b47', 'testclient', 'user', '2016-06-07 04:57:19', 'userinfo cloud file node'),
('6b0abf82a8b4269759b47a2797794f657fe8868a', 'testclient', 'user', '2015-06-28 08:46:36', 'userinfo cloud file node'),
('6b1019b95c12be71d55c7e975af19a5e90350fe5', 'testclient', NULL, '2016-06-07 08:55:30', 'userinfo'),
('71f89af80c4c3614898a07baf5fd4b1ea7dec401', 'testclient', 'xiaocao', '2016-06-07 03:28:57', 'userinfo cloud file node'),
('75a820bd06376ace32f9a2765e8d9defcb7fe6a9', 'testclient', NULL, '2016-06-07 09:03:25', 'userinfo'),
('7722cbb0841955a493e1da5cb54e7b8695b7f8f0', 'testclient', NULL, '2016-06-07 08:03:28', 'userinfo'),
('788bb715d89fe4b372464b3c003cdeaefe448d26', 'testclient', NULL, '2016-06-07 07:56:25', 'userinfo'),
('7a61e93e64deba524bd74d0ad86875fdbe1818e1', 'testclient', 'user', '2016-06-06 05:59:45', 'userinfo cloud file node'),
('7b6c72176ede3e63f78d61849b6ad01b2bf81a6b', 'testclient', 'user', '2015-06-28 08:55:16', 'userinfo node file'),
('7e659e9f799314ee09f653728db0b7125b2a1f1a', 'testclient', 'user', '2016-06-07 03:01:28', 'userinfo cloud file node'),
('8995e510a6e5672c73e800d48acf8a3f79205621', 'testclient', 'user', '2015-06-28 08:46:49', 'userinfo cloud file node'),
('8cb848d89b7d12beb746b0421ece7209f5c8633a', 'testclient', 'xiaocao', '2015-06-28 08:55:13', 'userinfo cloud file node'),
('8d90501db58464b164553486a48ec339375e8b3e', 'testclient', NULL, '2016-06-07 09:10:57', 'userinfo'),
('90e0e1e7bfb0e8328b2c072641f756ae78642762', 'testclient', 'xiaocao', '2016-06-07 07:57:57', 'userinfo cloud file node'),
('91f716b091dff55384fa797d6f8dcf455bd81f43', 'testclient', NULL, '2016-06-07 09:10:31', 'userinfo'),
('95f3aee73c81a36b0c5d878ff8f988a6fee3ba6f', 'testclient', 'xiaocao', '2016-06-06 06:03:58', 'userinfo cloud file node'),
('9d0ced92ed43b6f8b81a3e7b1eeaeb4ace44ab91', 'testclient', 'xiaocao', '2016-06-06 06:03:41', 'userinfo cloud file node'),
('9d66d415444871cb048f31d9a4251b5f3b550d49', 'testclient', NULL, '2016-06-07 08:07:10', 'userinfo'),
('a819de210d7804315dbe1edf36df1a42b4bc2383', 'testclient', NULL, '2016-06-07 08:07:34', 'userinfo'),
('a86c1db71ebbbd8efbfb634936a4b691d9935a87', 'testclient', NULL, '2016-06-07 08:02:12', 'userinfo'),
('aa8e3bbe633b48784e9d42f44b9c8856215f8d74', 'testclient', NULL, '2016-06-07 09:08:37', 'userinfo'),
('ac1eaf1c71dbd2a6a10777e75d05c391a6f808d4', 'testclient', 'user', '2016-06-06 08:19:25', 'userinfo node file'),
('ae5f8c93dc51d856d6536aec528c31c6f6450458', 'testclient', 'user', '2015-06-28 08:55:16', 'userinfo cloud file node'),
('b600ef04d904f55b15b4f7f1b95e5907a5b28b41', 'testclient', NULL, '2016-06-07 08:13:18', 'userinfo'),
('b6ea0539e165ed9f82cc07263678fc8aca7dac88', 'testclient', NULL, '2016-06-07 09:10:52', 'userinfo'),
('bde03877c93d69593f0b891253a347ea694a5b11', 'testclient', NULL, '2016-06-07 04:55:06', 'userinfo'),
('c0c67a55eb6fae092e84a191512ec29c23989cb1', 'testclient', NULL, '2016-06-07 07:58:21', 'userinfo'),
('d68675e175cb6e54f043db78f8bb2611ee71e8c8', 'testclient', NULL, '2016-06-07 08:47:11', 'userinfo'),
('d829ca25d44366513f06352bf3ed2f1d8a42bd3c', 'testclient', NULL, '2016-06-07 08:16:21', 'userinfo'),
('daffe036e98d6d688407cf2ba1f12468a0f88bbe', 'testclient', NULL, '2016-06-07 09:03:29', 'userinfo'),
('dc8755689badbfca4fe3f62e37bc9ed9a06a3e3b', 'testclient', 'user', '2016-06-06 06:52:15', 'userinfo cloud file node'),
('dcd0c8147c82271f1151266e40a81ebdc22b68af', 'testclient', 'user', '2016-06-06 06:04:17', 'userinfo node file'),
('debd824fb470ce347b8226ec3b3ba2b57f431613', 'testclient', NULL, '2016-06-07 07:57:24', 'userinfo'),
('df43443857a63df74f426dfa679c887483827318', 'testclient', 'xiaocao', '2015-06-28 08:46:48', 'userinfo cloud file node'),
('e0429bf09d758805e6765266a78e73fbd6a98a6e', 'testclient', 'xiaocao', '2016-06-07 04:56:25', 'userinfo cloud file node'),
('e127d513552972ee3a0dde993132ac7882b7da01', 'testclient', NULL, '2016-06-07 09:03:45', 'userinfo'),
('e590b71ccc5b1b44835738787e9c6573d1a7d08d', 'testclient', NULL, '2016-06-07 04:59:19', 'userinfo'),
('ec109b8912d57fe7693e3f0654b0e79c53de878d', 'testclient', 'user', '2016-06-07 03:13:34', 'userinfo cloud file node'),
('f11c3e6ebf9a77f87859063f7e1a77e00106697d', 'testclient', NULL, '2016-06-07 08:29:44', 'userinfo'),
('fa4166c0328650cd8ef4f64147563072d8f8548e', 'testclient', NULL, '2016-06-07 09:11:55', 'userinfo');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_authorization_codes`
--

CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL COMMENT '通过Authorization 获取到的code，用于获取access_token',
  `client_id` varchar(80) NOT NULL COMMENT '开发者Appid',
  `user_id` varchar(255) DEFAULT NULL COMMENT '开发者用户id',
  `redirect_uri` varchar(2000) DEFAULT NULL COMMENT '认证后跳转的url',
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '认证的时间date("Y-m-d H:i:s")',
  `scope` varchar(2000) DEFAULT NULL COMMENT '权限容器'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth_authorization_codes`
--

INSERT INTO `oauth_authorization_codes` (`authorization_code`, `client_id`, `user_id`, `redirect_uri`, `expires`, `scope`) VALUES
('016e1a57392e4b672415340ba4d6df18c90eab9f', 'testclient', NULL, '', '2015-06-28 07:56:55', 'userinfo'),
('2f37568bc9a2d8eb3ecb4c360a3abc71235f68c0', 'testclient', NULL, '', '2015-06-28 07:52:14', 'userinfo'),
('33f4b804ea602517032f03f2966339bdfe11b45b', 'testclient', NULL, 'http://localhost/oauth/index.php/Oauth2/client', '2016-06-07 05:53:24', 'userinfo'),
('35401a084af1a89991e0d52747a06b420efa4037', 'testclient', NULL, 'http://localhost/oauth/index.php/Oauth2/client', '2016-06-07 03:49:34', 'userinfo'),
('5abf0265c5b62b1560defdf656efe0e958bc1e64', 'testclient', NULL, 'http://localhost/oauth/index.php/Oauth2/client', '2016-06-07 06:27:27', 'userinfo'),
('5e03e3be3747608145c893d92dd26304f4c0842a', 'testclient', NULL, 'http://localhost/oauth/index.php/Oauth2/client', '2016-06-07 06:40:50', 'userinfo'),
('63c3b32c565eea30197068658d32678baf1202d6', 'testclient', NULL, '', '2015-06-28 07:56:51', 'userinfo'),
('65df0a5dd158eee02128b9631796ad5f1857aede', 'testclient', NULL, 'http://localhost/oauth/index.php/Oauth2/client', '2016-06-07 07:01:13', 'userinfo'),
('65ec48f9bb076e54e214847ddbae3a89b63f4bc3', 'testclient', NULL, 'http://localhost/oauth/index.php/Oauth2/client', '2016-06-07 06:27:39', 'userinfo'),
('6c5b680022f5e8d388f600b7fa9976ae77672679', 'testclient', NULL, 'http://homeway.me/', '2016-06-07 02:30:37', 'userinfo'),
('71aae13518e452f167534963b4bf902a7539b6ae', 'testclient', NULL, 'http://localhost/oauth/index.php/Oauth2/client', '2016-06-07 03:52:53', 'userinfo'),
('73685edfee68a22149dab832234b440328ae7aeb', 'testclient', NULL, 'http://localhost/oauth/index.php/Oauth2/client', '2016-06-07 06:49:25', 'userinfo'),
('860105c3d150efaf3e17988a412dd48bc02a0b81', 'testclient', NULL, 'http://localhost/oauth/index.php/Oauth2/client', '2016-06-07 06:28:03', 'userinfo'),
('89fab65a94cbbf8b39ac21a3d797d45964deabd2', 'testclient', NULL, '', '2015-06-28 07:56:57', 'userinfo'),
('8e2a828558400754ad5b1d828b73baf70225260b', 'testclient', NULL, 'http://localhost/oauth/index.php/Oauth2/client', '2016-06-07 03:50:43', 'userinfo'),
('972f1546b96d95f09398b99192b0dc402c0a50cf', 'testclient', NULL, 'http://homeway.me/', '2016-06-07 03:15:15', 'userinfo'),
('a5c90af929efdf05029e096966279acaacf8d406', 'testclient', NULL, 'http://homeway.me/', '2016-06-07 03:00:22', 'userinfo'),
('ac4a4ccee10d609928e977d1d649ba8aa0c448c7', 'testclient', NULL, 'http://localhost/oauth/index.php/Oauth2/client', '2016-06-07 04:49:12', 'userinfo'),
('bbebf90a331c92bf96649beb81090e55e85c8e63', 'testclient', NULL, 'http://homeway.me/', '2016-06-07 03:44:10', 'userinfo'),
('d1f2bda236501896e7e80ad5e3e728d256b7b32f', 'testclient', NULL, 'http://localhost/oauth/index.php/Oauth2/client', '2016-06-07 06:50:15', 'userinfo'),
('dae73336f2a190ed02c4b3abcde1519b85109ad2', 'testclient', NULL, 'http://localhost/oauth/index.php/Oauth2/client', '2016-06-07 05:52:53', 'userinfo'),
('ed39ff0204350c0ccb7883dec3a0962ba64d7012', 'testclient', NULL, 'http://homeway.me/', '2016-06-07 03:41:50', 'userinfo'),
('f203779971399e4389277b142ffc660c69ed10ad', 'testclient', NULL, 'http://homeway.me/', '2016-06-07 03:15:15', 'userinfo');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL COMMENT '开发者AppId',
  `client_secret` varchar(80) NOT NULL COMMENT '开发者AppSecret',
  `redirect_uri` varchar(2000) NOT NULL COMMENT '认证后跳转的url',
  `grant_types` varchar(80) DEFAULT NULL COMMENT '认证的方式，client_credentials、password、refresh_token、authorization_code、authorization_access_token',
  `scope` varchar(100) DEFAULT NULL COMMENT '权限容器',
  `user_id` varchar(80) DEFAULT NULL COMMENT '开发者用户id'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES
('2', 'a23', 'http://localhost/oauth/index.php/Oauth2/client', 'client_credentials password authorization_code refresh_token', 'file node userinfo cloud', 'username-a'),
('client2', 'pass2', 'http://homeway.me/', 'authorization_code', 'file node userinfo cloud', 'xiaocao'),
('testclient', 'testpass', 'http://localhost/oauth/index.php/Oauth2/client', 'client_credentials password authorization_code refresh_token', 'file node userinfo cloud', 'xiaocao');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_jwt`
--

CREATE TABLE `oauth_jwt` (
  `client_id` varchar(80) NOT NULL COMMENT '开发者用户id',
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL COMMENT '跟新access_token的token',
  `client_id` varchar(80) NOT NULL COMMENT '开发者AppId',
  `user_id` varchar(255) DEFAULT NULL COMMENT '开发者用户id',
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '认证的时间date("Y-m-d H:i:s")',
  `scope` varchar(2000) DEFAULT NULL COMMENT '权限容器'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`refresh_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('0bd64d9f1e6fe89ecbf8b4d7cde1c73a1a9db13d', 'testclient', NULL, '2016-06-21 06:58:21', 'userinfo'),
('0dcd00a06f1598db7c7df2d2faf4c16a7be9c28d', 'testclient', 'user', '2015-07-12 07:55:06', 'userinfo node file'),
('12342bf5c2f23741ca9babb334f22518975543ea', 'testclient', NULL, '2016-06-21 07:07:10', 'userinfo'),
('137f0bd6f465c8cafa5083835af10918969fdd12', 'testclient', NULL, '2016-06-21 07:16:21', 'userinfo'),
('2d8b44ff066e8dfd6cbf86c83839d6dc2f36fa60', 'testclient', NULL, '2016-06-21 07:32:12', 'userinfo'),
('2e0cac8d875550630aecb1483ee994f033be0c18', 'testclient', 'user', '2016-06-21 03:57:30', 'userinfo node file'),
('32af3359ea97f43af3fa13af922a29918da35c90', 'testclient', NULL, '2016-06-21 08:11:55', 'userinfo'),
('4199afdea3a1f8f8500c2411d542d9e53940eaf4', 'testclient', NULL, '2016-06-21 07:47:11', 'userinfo'),
('41e10b5818ce22027e53c5d850d7dd3e700c0029', 'testclient', 'user', '2016-06-21 02:01:28', 'userinfo cloud file node'),
('488432d7d423d5df788e9407d74f96a957026fc4', 'testclient', 'user', '2016-06-21 02:07:43', 'userinfo cloud file node'),
('4dfa8df06e8d300340c1c5b41f508c905db503b5', 'testclient', NULL, '2016-06-21 06:56:25', 'userinfo'),
('50f6c7dc580f9c2fb9e539dd1f0d46bc0aca1569', 'testclient', NULL, '2016-06-21 07:03:28', 'userinfo'),
('52d949e8413cd6a8e7ef454d6caeb6a8ecfa056c', 'testclient', NULL, '2016-06-21 07:58:48', 'userinfo'),
('54746097d990141525e2d5d2e1d501f58d2e5c94', 'testclient', NULL, '2016-06-21 07:29:24', 'userinfo'),
('5d521705818d31ffb3374d98e09913719602bf4e', 'testclient', NULL, '2016-06-21 07:02:12', 'userinfo'),
('70966e4f58b050a7de83febd75548473395b334d', 'testclient', 'user', '2016-06-20 04:59:45', 'userinfo cloud file node'),
('714b91d05036189f218603fd8c164ed9396e4d5e', 'testclient', NULL, '2016-06-21 07:48:15', 'userinfo'),
('7432203dc184c6c2090fef8b02c5c5acf3f349a5', 'testclient', 'user', '2015-07-12 07:55:16', 'userinfo node file'),
('7cece0e4d077c1c31ffe37e8bd7b6954a8b5b5d7', 'testclient', NULL, '2016-06-21 03:59:19', 'userinfo'),
('8567e8c1e5d9ddc565820743f903388db327848e', 'testclient', 'user', '2016-06-20 07:19:25', 'userinfo node file'),
('8b88d05a5cb79781e2144445c142a800595b7dff', 'testclient', 'user', '2016-06-20 05:02:56', 'userinfo cloud file node'),
('8d4d9cac3320c5de9bd2dea1dfa62b9bf54d61eb', 'testclient', NULL, '2016-06-21 06:57:24', 'userinfo'),
('905d6b3afcb947a177536f248976c27b8ce624fc', 'testclient', NULL, '2016-06-21 07:28:31', 'userinfo'),
('a307ba8d4f696093d9cfeb468b7339bc6165608a', 'testclient', NULL, '2016-06-21 07:22:49', 'userinfo'),
('a3c494e99668219f5e573874eaf925c12c5a4319', 'testclient', NULL, '2016-06-21 08:10:52', 'userinfo'),
('a4e9c9d73b89f7d5cdca79ca50bcdf0c518cbf3f', 'testclient', NULL, '2016-06-21 08:08:37', 'userinfo'),
('aef23d373a276116b3afd946ba4a9c39780186c0', 'testclient', 'user', '2015-07-12 07:53:34', 'userinfo cloud file node'),
('af1e55594cae88cedf312f84a89109e3b80a5932', 'testclient', 'user', '2015-07-12 07:54:33', 'userinfo cloud file node'),
('b6468a3a64337b4b11b436ba76814232c4bbbfd1', 'testclient', NULL, '2016-06-21 07:54:31', 'userinfo'),
('baf0c7e814c14eb05f209ec38f3b7e9d1de76862', 'testclient', 'user', '2016-06-21 02:13:34', 'userinfo cloud file node'),
('bb1c492544a4890fed20cb4649c789aaa3b068fb', 'testclient', 'user', '2016-06-21 03:57:00', 'userinfo cloud file node'),
('bcf9cc669ac596e683f564f591e5ea40b12c1f5c', 'testclient', NULL, '2016-06-21 07:29:44', 'userinfo'),
('bd36d98d1655bd613e3229b508fe2356575e42bf', 'testclient', NULL, '2016-06-21 07:02:42', 'userinfo'),
('bff896e25c1f81d3d17f047e919970a8b99c5acd', 'testclient', NULL, '2016-06-21 02:39:55', 'userinfo'),
('c1548de4d3b22872283f33295023531419577187', 'testclient', 'user', '2016-06-21 01:45:14', 'userinfo cloud file node'),
('c4078b3a99346586f00e6ea3ca0c2b2ae5420606', 'testclient', 'user', '2016-06-20 05:04:17', 'userinfo node file'),
('c6bca325d6947fdb35e1744c0b2f1e12bbd4acd1', 'testclient', NULL, '2016-06-21 03:55:06', 'userinfo'),
('c872e3bf06a36e7e00e6e46ccdd0074ae8a2d112', 'testclient', NULL, '2016-06-21 07:55:30', 'userinfo'),
('d385ee805765db348669347c0193866a12898c36', 'testclient', 'user', '2016-06-20 05:52:15', 'userinfo cloud file node'),
('d4c7b08282ae6eead810bc4fbe3e6f3cd3d5c37d', 'testclient', 'user', '2016-06-20 06:04:04', 'userinfo cloud file node'),
('dc41804489993a15835eb03f004517231c3c699c', 'testclient', NULL, '2016-06-21 07:07:34', 'userinfo'),
('f09ed02ebf185fb08b4f0f316e59bac07028997b', 'testclient', 'user', '2015-07-12 07:46:36', 'userinfo cloud file node'),
('f24b268aaa4ab718cf332ead2a16b4ba7010a14b', 'testclient', NULL, '2016-06-21 07:01:00', 'userinfo'),
('f34a628803fb44912c40845a1417432d85fdd2e2', 'testclient', NULL, '2016-06-21 06:50:19', 'userinfo'),
('fb1aa4bd8d123abaa882c759d60326dae51543c3', 'testclient', 'user', '2015-07-12 07:46:49', 'userinfo cloud file node'),
('fc4823fbb75c81c907b3cb75cd6a73c00cef2e22', 'testclient', NULL, '2016-06-21 07:13:18', 'userinfo');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_scopes`
--

CREATE TABLE `oauth_scopes` (
  `scope` text COMMENT '容器名字',
  `is_default` tinyint(1) DEFAULT NULL COMMENT '是否默认拥有，1=>是，0=>否'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth_scopes`
--

INSERT INTO `oauth_scopes` (`scope`, `is_default`) VALUES
('userinfo', 1),
('file', 0),
('node', 0),
('cloud', 0),
('share', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_users`
--

CREATE TABLE `oauth_users` (
  `username` varchar(255) NOT NULL COMMENT '内部时候使用的认证用户名',
  `password` varchar(2000) DEFAULT NULL COMMENT '内部时候使用的认证用户密码',
  `first_name` varchar(255) DEFAULT NULL COMMENT '内部时候使用',
  `last_name` varchar(255) DEFAULT NULL COMMENT '内部时候使用'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth_users`
--

INSERT INTO `oauth_users` (`username`, `password`, `first_name`, `last_name`) VALUES
('user', 'pass', 'xiaocao', 'grasses'),
('username', 'password', 'xiaocao', 'grasses'),
('username-a', 'password-a', 'user', 'pass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`access_token`);

--
-- Indexes for table `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
  ADD PRIMARY KEY (`authorization_code`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_jwt`
--
ALTER TABLE `oauth_jwt`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`refresh_token`);

--
-- Indexes for table `oauth_users`
--
ALTER TABLE `oauth_users`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
