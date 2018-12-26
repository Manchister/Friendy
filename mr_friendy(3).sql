-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2018 at 10:47 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mr_friendy`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_body` text NOT NULL,
  `posted_by` varchar(255) NOT NULL,
  `posted_to` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, '&#1589;&#1583;&#1602; &#1575;&#1604;&#1604;&#1607; &#1575;&#1604;&#1593;&#1592;&#1610;&#1605;', 'hossam_nageh', 'hossam_nageh', '2017-11-20 04:53:23', 'no', 0),
(2, 'ØµØ¯Ù‚ Ø§Ù„Ù„Ù‡ Ø§Ù„Ø¹Ø¸ÙŠÙ…', 'hossam_nageh', 'hossam_nageh', '2017-11-20 04:55:30', 'no', 0),
(3, 'ØµØ¯Ù‚ Ø§Ù„Ù„Ù‡ Ø§Ù„Ø¹Ø¸ÙŠÙ…', 'hossam_nageh', 'hossam_nageh', '2017-11-20 04:55:50', 'no', 47),
(4, '&#1589;&#1583;&#1602; &#1575;&#1604;&#1604;&#1607; &#1575;&#1604;&#1593;&#1592;&#1610;&#1605;', 'hossam_nageh', 'hossam_nageh', '2017-11-20 04:56:13', 'no', 0),
(5, '', 'hossam_nageh', 'hossam_nageh', '2017-11-20 05:20:08', 'no', 0),
(6, 'sggdfgdf', 'hossam_nageh', 'hossam_nageh', '2017-11-20 22:30:03', 'no', 49),
(7, '', 'hossam_nageh', 'hossam_nageh', '2017-11-20 23:40:20', 'no', 49),
(8, '', 'hossam_nageh', 'hossam_nageh', '2017-11-20 23:41:26', 'no', 49),
(9, 'btvvbvt', 'hossam_nageh', 'hossam_nageh', '2017-11-20 23:43:03', 'no', 49),
(10, 'sdklhh dhgshkhkshkhkku  ghwkwhk fk g sga wk gusk khkjshk u wkuf kwhkwfhkwkj k wg rkgrus grakag jka g gg u kw kuwhr wkwk ', 'hossam_nageh', 'hossam_nageh', '2017-11-20 23:47:06', 'no', 49),
(11, '&#1575;&#1604;&#1581;&#1605;&#1583; &#1604;&#1604;&#1607;', 'hossam_nageh', 'hossam_nageh', '2017-11-21 00:01:59', 'no', 49),
(12, '&#1589;&#1583;&#1602; &#1575;&#1604;&#1604;&#1607; &#1575;&#1604;&#1593;&#1592;&#1610;&#1605;', 'hossam_nageh', 'hossam_nageh', '2017-11-21 00:09:12', 'no', 45),
(13, 'gsrhrtghrgh', 'hossam_nageh', 'hossam_nageh', '2017-11-21 03:08:12', 'no', 49),
(14, '&#1578;&#1575;&#1610;&#1604;&#1604;&#1610;&#1579; &#1575;&#1602;&#1601;&#1575;&#1602;&#1601;&#1575; ', 'hossam_nageh', 'hossam_nageh', '2017-11-21 03:19:45', 'no', 47),
(15, '', 'hossam_nageh', 'hossam_nageh', '2017-11-21 05:39:51', 'no', 47),
(16, '', 'hossam_nageh', 'hossam_nageh', '2017-11-21 05:39:53', 'no', 47),
(17, '', 'hossam_nageh', 'hossam_nageh', '2017-11-21 05:39:54', 'no', 47),
(18, '&#1608;&#1606;&#1593;&#1605; &#1576;&#1575;&#1604;&#1604;&#1607;', 'esraa_nageh', 'mohamed_nageh', '2017-11-22 05:53:11', 'no', 52),
(19, '&#1575;&#1604;&#1581;&#1605;&#1583; &#1604;&#1604;&#1607; &#1593;&#1604;&#1609; &#1606;&#1593;&#1605;&#1577; &#1575;&#1604;&#1573;&#1587;&#1604;&#1575;&#1605;', 'esraa_nageh', 'doaa_nageh', '2017-11-22 05:53:48', 'no', 51),
(20, '&#1576;&#1606;&#1610;&#1576;&#1606;&#1610;&#1606;&#1569;', 'hossam_nageh', 'hossam_nageh', '2017-11-26 05:52:43', 'no', 37),
(21, '&#1588;&#1594;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1604;&#1567;', 'hossam_nageh', 'hossam_nageh', '2017-11-26 05:56:00', 'no', 60),
(22, '&#1605;&#1575; &#1588;&#1575;&#1569; &#1575;&#1604;&#1604;&#1607;', 'hossam_nageh', 'ahmed_gamil', '2017-11-27 22:44:23', 'no', 61),
(23, '', 'hossam_nageh', 'hossam_nageh', '2017-11-29 04:25:43', 'no', 62),
(24, 'bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 'hossam_nageh', 'hossam_nageh', '2017-12-04 05:03:04', 'no', 84),
(25, '', 'hossam_nageh', 'hossam_nageh', '2018-01-13 16:26:28', 'no', 97),
(26, 'yesss', 'hossam_nageh', 'hossam_nageh', '2018-01-13 16:26:37', 'no', 97),
(27, '&#1575;&#1604;&#1581;&#1605;&#1583;&#1604;&#1604;&#1607;', 'hossam_nageh', 'doaa_nageh', '2018-01-13 16:27:28', 'no', 54),
(28, '&#1607;&#1575;&#1575;&#1575;&#1575;&#1575;&#1610;', 'ahmed_kamal', 'ahmed_kamal', '2018-01-17 20:46:25', 'no', 99);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE IF NOT EXISTS `friend_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_to` varchar(60) NOT NULL,
  `user_from` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(2, 'mohamed_ahmed', 'hossam_nageh'),
(5, 'mohamed_nageh', 'hoss_nageh'),
(7, 'hoss_nageh', 'esraa_nageh');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(1, 'hossam_nageh', 41),
(2, 'hossam_nageh', 45),
(4, 'hossam_nageh', 48),
(7, 'hossam_nageh', 46),
(8, 'hossam_nageh', 52),
(9, 'hossam_nageh', 51),
(10, 'hossam_nageh', 50),
(12, 'doaa_nageh', 50),
(13, 'doaa_nageh', 48),
(14, 'doaa_nageh', 45),
(16, 'doaa_nageh', 51),
(19, 'doaa_nageh', 52),
(20, 'hossam_nageh', 54),
(21, 'doaa_nageh', 53),
(22, 'doaa_nageh', 46),
(23, 'hossam_nageh', 57),
(24, 'hossam_nageh', 59),
(25, 'hossam_nageh', 61),
(26, 'doaa_nageh', 63),
(27, 'esraa_nageh', 63),
(28, 'mohamed_nageh', 63),
(29, 'ahmed_gamil', 63),
(30, 'hossam_nageh', 63),
(31, 'hossam_nageh', 53),
(32, 'hossam_nageh', 70),
(33, 'hossam_nageh', 71),
(34, 'hossam_nageh', 79),
(35, 'hossam_nageh', 84),
(36, 'hossam_nageh', 91),
(38, 'hossam_nageh', 97),
(39, 'hossam_nageh', 55),
(40, 'hossam_nageh', 20),
(41, 'ahmed_kamal', 99),
(42, 'hossam_nageh', 100),
(43, 'hossam_nageh', 99);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_to` varchar(60) NOT NULL,
  `user_from` varchar(60) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'ahmed_gamil', 'hossam_nageh', 'hi Ahmed', '2017-11-30 02:54:21', 'yes', 'yes', 'no'),
(2, 'hossam_nageh', 'ahmed_gamil', 'hiiii Hoss', '2017-11-30 03:40:04', 'yes', 'yes', 'no'),
(3, 'hossam_nageh', 'hossam_nageh', 'hii ii ii', '2017-11-30 07:58:02', 'yes', 'yes', 'no'),
(4, 'doaa_nageh', 'hossam_nageh', 'hi dodda', '2017-11-30 07:59:10', 'yes', 'yes', 'no'),
(5, 'hossam_nageh', 'doaa_nageh', 'hi hosso', '2017-11-30 07:59:44', 'yes', 'yes', 'no'),
(6, 'esraa_nageh', 'hossam_nageh', 'hi saraa', '2017-12-04 04:57:09', 'yes', 'yes', 'no'),
(7, 'hossam_nageh', 'esraa_nageh', 'hi hoss', '2017-12-04 04:57:42', 'yes', 'yes', 'no'),
(8, 'mohamed_nageh', 'hossam_nageh', 'hiihiat', '2017-12-04 04:58:43', 'yes', 'yes', 'no'),
(9, 'mohamed_nageh', 'hossam_nageh', 'byebyat', '2017-12-04 04:58:56', 'yes', 'yes', 'no'),
(10, 'hossam_nageh', 'mohamed_nageh', 'byebyat', '2017-12-04 04:59:21', 'yes', 'yes', 'no'),
(11, 'hossam_nageh', 'mohamed_nageh', 'byebyat', '2017-12-04 04:59:25', 'yes', 'yes', 'no'),
(12, 'hossam_nageh', 'hoss_nageh', 'hiiiii', '2017-12-04 05:40:17', 'yes', 'yes', 'no'),
(13, 'ahmed_gamil', 'hoss_nageh', 'hiiiiiiii', '2017-12-04 05:40:59', 'yes', 'yes', 'no'),
(14, 'mohamed_nageh', 'hoss_nageh', 'hiiiiiiiiiiiiiii', '2017-12-04 05:41:16', 'no', 'no', 'no'),
(15, 'doaa_nageh', 'hoss_nageh', 'hiiiiiiiiiiiiii', '2017-12-04 05:41:29', 'yes', 'yes', 'no'),
(16, 'hoss_nageh', 'doaa_nageh', 'hiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', '2017-12-04 05:42:36', 'no', 'no', 'no'),
(17, 'hoss_nageh', 'ahmed_gamil', 'hiiiiiiii', '2017-12-04 05:43:54', 'no', 'no', 'no'),
(18, 'hossam_nageh', 'hossam_nageh', 'Hoss', '2017-12-04 05:45:13', 'yes', 'yes', 'no'),
(19, 'hoss_nageh', 'hossam_nageh', 'Hoss', '2017-12-04 05:45:36', 'no', 'yes', 'no'),
(20, 'hossam_nageh', 'mohamed_hassan', 'hiii hosssss', '2017-12-12 19:48:57', 'yes', 'yes', 'no'),
(21, 'mohamed_hassan', 'hossam_nageh', 'hihihihihihihi', '2017-12-12 19:49:34', 'no', 'yes', 'no'),
(22, 'doaa_nageh', 'hossam_nageh', 'hhhhhhhhhhhhhhh', '2018-01-13 16:23:03', 'no', 'yes', 'no'),
(23, 'hossam_nageh', 'ahmed_kamal', 'hosssssssss', '2018-01-17 20:49:23', 'yes', 'yes', 'no'),
(24, 'ahmed_kamal', 'hossam_nageh', 'Ahmed Ezaiak', '2018-01-17 20:50:12', 'no', 'yes', 'no'),
(25, 'ahmed_kamal', 'hossam_nageh', 'ook', '2018-01-21 15:11:32', 'no', 'yes', 'no'),
(26, 'ahmed_gamil', 'hossam_nageh', 'ooooooooook', '2018-01-21 15:12:08', 'no', 'yes', 'no'),
(27, 'ahmed_gamil', 'hossam_nageh', 'ooooooooook', '2018-01-21 15:12:32', 'no', 'yes', 'no'),
(28, 'ahmed_gamil', 'hossam_nageh', 'ooooooooook', '2018-01-21 15:12:44', 'no', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(500) NOT NULL,
  `privacy` int(1) NOT NULL DEFAULT '1',
  `date_added` datetime NOT NULL,
  `likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL DEFAULT 'no',
  `deleted` varchar(3) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `added_by`, `user_to`, `body`, `image`, `privacy`, `date_added`, `likes`, `user_closed`, `deleted`) VALUES
(8, 'hossam_nageh', 'none', 'بسم الله الرحمن الرحيم', '', 0, '2017-11-01 06:48:00', 0, 'no', 'no'),
(9, 'hossam_nageh', 'none', 'انانتلاا لاا ', '', 0, '2017-11-01 06:50:24', 0, 'no', 'no'),
(10, 'hossam_nageh', 'none', 'hiiiiiiiiii', '', 0, '2017-11-03 22:48:22', 0, 'no', 'no'),
(11, 'hossam_nageh', 'none', 'dh dfgh sfshs ', '', 0, '2017-11-03 22:48:33', 0, 'no', 'no'),
(12, 'hossam_nageh', 'none', 'f ddhdsrs rsr', '', 0, '2017-11-03 22:48:37', 0, 'no', 'no'),
(13, 'hossam_nageh', 'none', ' dsfys rt sr sr', '', 0, '2017-11-03 22:48:41', 0, 'no', 'no'),
(14, 'hossam_nageh', 'none', ' dsfys rt sr sr', '', 0, '2017-11-03 22:48:41', 0, 'no', 'no'),
(15, 'hossam_nageh', 'none', ' rtrth rbzb gf r ssrs', '', 0, '2017-11-03 22:48:45', 0, 'no', 'no'),
(16, 'hossam_nageh', 'none', 'sr hahdadb zdyhr', '', 0, '2017-11-03 22:48:48', 0, 'no', 'no'),
(17, 'hossam_nageh', 'none', 'bshsbdrtbsrbstdy', '', 0, '2017-11-03 22:48:56', 0, 'no', 'no'),
(18, 'hossam_nageh', 'none', 'sebsdbtsrtysbrty', '', 0, '2017-11-03 22:48:59', 0, 'no', 'no'),
(19, 'hossam_nageh', 'none', 'ebsebdbedvads a sreaervas', '', 0, '2017-11-03 22:49:04', 0, 'no', 'no'),
(20, 'hossam_nageh', 'none', 'sdsd xdsy se hsdyeyser  a', '', 0, '2017-11-03 22:49:08', 1, 'no', 'no'),
(21, 'hossam_nageh', 'none', ' dc y d sdhd  ds sd hssd ', '', 0, '2017-11-03 22:49:12', 0, 'no', 'no'),
(22, 'hossam_nageh', 'none', 'dsdggd yxdfffd dd d  hdh vd d', '', 0, '2017-11-03 22:49:20', 0, 'no', 'no'),
(23, 'hossam_nageh', 'none', 'الله أكبر', '', 0, '2017-11-10 02:27:59', 0, 'no', 'no'),
(24, 'hossam_nageh', 'none', 'يلسيسيلس لس', '', 0, '2017-11-10 02:45:36', 0, 'no', 'no'),
(25, 'hossam_nageh', 'none', 'سيلسلسرسبس ', '', 0, '2017-11-10 02:45:40', 0, 'no', 'no'),
(26, 'hossam_nageh', 'none', 'hdfhfdhd dd', '', 0, '2017-11-10 02:45:44', 0, 'no', 'no'),
(27, 'hossam_nageh', 'none', 'dhded zfdh h h', '', 0, '2017-11-10 02:45:52', 0, 'no', 'no'),
(28, 'hossam_nageh', 'none', 'h zhhfzhfxf hh fhh x', '', 0, '2017-11-10 02:45:57', 0, 'no', 'no'),
(29, 'hossam_nageh', 'none', 'hgjgf', '', 0, '2017-11-10 03:29:43', 0, 'no', 'no'),
(30, 'hossam_nageh', 'none', 'yufucftut', '', 0, '2017-11-10 03:59:23', 0, 'no', 'no'),
(31, 'hossam_nageh', 'none', 'ftuxftrturx', '', 0, '2017-11-10 03:59:26', 0, 'no', 'no'),
(32, 'hossam_nageh', 'none', 'ftuxftrturx', '', 0, '2017-11-10 04:01:52', 0, 'no', 'no'),
(33, 'hossam_nageh', 'none', '4r', '', 0, '2017-11-10 04:07:42', 0, 'no', 'no'),
(34, 'hossam_nageh', 'none', ' jdfjdybx6dv6', '', 0, '2017-11-10 04:08:09', 0, 'no', 'no'),
(35, 'hossam_nageh', 'none', 'ÙŠØ³Ø§ÙŠØ§Ø³Ø§', '', 0, '2017-11-19 01:00:14', 0, 'no', 'no'),
(36, 'hossam_nageh', 'none', 'تتلاىلالاى ', '', 0, '2017-11-19 01:10:21', 0, 'no', 'no'),
(37, 'hossam_nageh', 'none', '&#1604;&#1576;&#1610;&#1604;&#1576;&#1610;&#1604;', '', 0, '2017-11-19 01:11:51', 0, 'no', 'no'),
(38, 'hossam_nageh', 'none', '&#1576;&#1587;&#1605; &#1575;&#1604;&#1604;&#1607;', '', 0, '2017-11-19 01:43:17', 0, 'no', 'no'),
(39, 'hossam_nageh', 'none', '&#1572;&#1604;&#1575;&#1574;&#1604;&#1575;&#1572;&#1574;&#1604;&#1575; &#1569;&#1604;&#1576;&#1575;&#1574;&#1576;&#1604;&#1575;&#1604;&#1575;', '', 0, '2017-11-19 01:46:17', 0, 'no', 'no'),
(40, 'hossam_nageh', 'none', 'jyufy', '', 0, '2017-11-19 02:50:15', 0, 'no', 'yes'),
(41, 'hossam_nageh', 'none', '&#1575;&#1604;&#1604;&#1607;&#1605; &#1604;&#1603; &#1575;&#1604;&#1581;&#1605;&#1583; &#1608;&#1575;&#1604;&#1588;&#1603;&#1585;\r\n&#1604;&#1575; &#1573;&#1604;&#1607; &#1573;&#1604;&#1575; &#1571;&#1606;&#1578; &#1587;&#1576;&#1581;&#1575;&#1606;&#1603;', '', 0, '2017-11-19 04:00:48', 1, 'no', 'no'),
(42, 'hossam_nageh', 'none', '&#1610;&#1579;&#1589;', '', 0, '2017-11-19 04:02:50', 0, 'no', 'yes'),
(43, 'hossam_nageh', 'none', '&#1587;&#1610;&#1576;', '', 0, '2017-11-19 04:02:58', 0, 'no', 'yes'),
(44, 'hossam_nageh', 'none', 'hhmbmnbm', '', 0, '2017-11-20 00:07:26', 0, 'no', 'yes'),
(45, 'hossam_nageh', 'none', '&#1576;&#1587;&#1605; &#1575;&#1604;&#1604;&#1607; &#1575;&#1604;&#1585;&#1581;&#1605;&#1606; &#1575;&#1604;&#1585;&#1581;&#1610;&#1605;\r\n&#1575;&#1604;&#1581;&#1605;&#1583; &#1604;&#1604;&#1607; &#1585;&#1576; &#1575;&#1604;&#1593;&#1575;&#1604;&#1605;&#1610;&#1606; * &#1575;&#1604;&#1585;&#1581;&#1605;&#1606; &#1575;&#1604;&#1585;&#1581;&#1610;&#1605; * &#1605;&#1575;&#1604;&#1603; &#1610;&#1608;&#1605; &#1575;&#1604;&#1583;&#1610;&#1606; * &#1573;&#1610;&#1575;&#1604;&#1603; &#1606;&#1593;&#1576;&#1583; &#1608;&#1573;&#1610;&#1575;&#1603; &#1606;&#1587;&#1578;&#1593;&#1610;&#1606; * &#1575;&#1607;&#1583;&#1606;&#1575; &#1575;&#1604;&#1589;&#1585;&#1575;&#1591; &#1575;&#1604;&#1605;&#1587;&#1578;&#1602;&#1610;&#1605; * &#1589;&#1585;&#1575;&#1591; &#1575;&#1604;&#1584;&#1610;&#1606; &#1571;&#1606;&#1593;&#1605;&#1593;&#1578; &#1593;&#1604;&#1610;&#1607;&#1605; * &#1594;&#1610;&#1585; &#1575;&#1604;&#1605;&#1594;&#1590;&#1608;&#1576; &#1593;&#1604;&#1610;&#1607;&#1605; * &#1608;&#1604;&#1575; &#1575;&#1604;&#1590;&#1575;&#1604;&#1610;&#1606;\r\n&#1589;&#1583;&#1602; &#1575;&#1604;&#1604;&#1607; &#1575;&#1604;&#1593;&#1592;&#1610;&#1605;', '', 0, '2017-11-20 03:14:24', 2, 'no', 'no'),
(46, 'mohamed_nageh', 'none', 'ahd h ddfg adfjad adlgad', '', 0, '2017-11-20 03:33:40', 2, 'no', 'no'),
(47, 'hossam_nageh', 'none', 'rjrjd rgh rhjtr 5u ', '', 0, '2017-11-20 01:37:20', 0, 'no', 'yes'),
(48, 'hossam_nageh', 'none', '&#1575;&#1604;&#1604;&#1607; &#1571;&#1603;&#1576;&#1585;', '', 0, '2017-11-20 04:57:02', 2, 'no', 'no'),
(49, 'hossam_nageh', 'none', 'bkhblk kl jl ;j;\r\n', '', 0, '2017-11-20 20:58:34', 0, 'no', 'no'),
(50, 'esraa_nageh', 'none', '&#1576;&#1587;&#1605; &#1575;&#1604;&#1604;&#1607; &#1575;&#1604;&#1585;&#1581;&#1605;&#1606; &#1575;&#1604;&#1585;&#1581;&#1610;&#1605;', '', 0, '2017-11-22 05:31:19', 2, 'no', 'no'),
(51, 'doaa_nageh', 'none', '&#1604;&#1575; &#1573;&#1604;&#1607; &#1573;&#1604;&#1575; &#1575;&#1604;&#1604;&#1607; &#1605;&#1581;&#1605;&#1583; &#1585;&#1587;&#1608;&#1604; &#1575;&#1604;&#1604;&#1607;', '', 0, '2017-11-22 05:32:19', 2, 'no', 'no'),
(52, 'mohamed_nageh', 'none', '&#1604;&#1575; &#1581;&#1608;&#1604; &#1608;&#1604;&#1575; &#1602;&#1608;&#1577; &#1573;&#1604;&#1575; &#1576;&#1575;&#1604;&#1604;&#1607;', '', 0, '2017-11-22 05:34:37', 2, 'no', 'no'),
(53, 'hossam_nageh', 'mohamed_nageh', 'Hey Brother !!!!!', '', 0, '2017-11-23 02:09:29', 2, 'no', 'no'),
(54, 'doaa_nageh', 'hossam_nageh', 'Ø§Ø°ÙŠÙƒ ÙŠØ§ Ø­Ø³Ø§Ù… Ø¨ÙŠÙ‡', '', 0, '2017-11-23 02:19:40', 1, 'no', 'no'),
(55, 'hossam_nageh', 'esraa_nageh', 'Ø£Ø¨Ù„Ø§ Ø¥Ø³Ø±Ø§Ø¡ Ù‡Ø§Ù†Ù… .. Ø§Ø°ÙŠ Ø­Ø¶Ø±ØªÙƒ ÙƒØ¯Ù‡', '', 0, '2017-11-23 02:21:37', 1, 'no', 'no'),
(56, 'hossam_nageh', 'none', 'Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø¨Ù„ÙŠÙŠÙŠÙŠÙŠÙŠÙŠÙ‚Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨', '', 0, '2017-11-23 02:22:31', 0, 'no', 'yes'),
(57, 'hossam_nageh', 'none', 'Ø§Ù„Ø­Ù…Ø¯ Ù„Ù„Ù‡', '', 0, '2017-11-23 02:26:52', 1, 'no', 'no'),
(58, 'hossam_nageh', 'none', 'bdgbdb', '', 0, '2017-11-23 03:05:14', 0, 'no', 'yes'),
(59, 'hossam_nageh', 'none', 'Ø§Ù„ÙŠÙˆÙ… ØªÙ… Ø¨Ø­Ù…Ø¯ Ø§Ù„Ù„Ù‡ Ø¥ÙƒÙ…Ø§Ù„ ØµÙØ­Ø© Ø§Ù„Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø¨ÙƒÙ„ ØªÙØ§ØµÙŠÙ„Ù‡Ø§', '', 0, '2017-11-24 13:26:31', 1, 'no', 'no'),
(60, 'hossam_nageh', 'none', '&#1575;&#1610;&#1607; &#1575;&#1604;&#1606;&#1592;&#1575;&#1605;', '', 0, '2017-11-26 05:55:48', 0, 'no', 'no'),
(61, 'ahmed_gamil', 'none', 'Ø¨Ø³Ù… Ø§Ù„Ù„Ù‡ Ø§Ù„Ø±Ø­Ù…Ù† Ø§Ù„Ø±Ø­ÙŠÙ…', '', 0, '2017-11-27 22:43:09', 1, 'no', 'no'),
(62, 'hossam_nageh', 'ahmed_gamil', 'Welcome Pirllo', '', 0, '2017-11-27 22:43:55', 0, 'no', 'no'),
(63, 'hossam_nageh', 'none', '&#1575;&#1604;&#1610;&#1608;&#1605; &#1578;&#1605; &#1576;&#1581;&#1605;&#1583; &#1575;&#1604;&#1604;&#1607; &#1573;&#1603;&#1605;&#1575;&#1604; &#1603;&#1604; &#1605;&#1575; &#1610;&#1582;&#1589; &#1575;&#1604;&#1585;&#1587;&#1575;&#1574;&#1604; &#1576;&#1610;&#1606; &#1575;&#1604;&#1571;&#1593;&#1590;&#1575;&#1569;', '', 0, '2017-11-28 07:01:39', 5, 'no', 'no'),
(64, 'hossam_nageh', 'none', 'House', '', 0, '2017-11-30 04:45:28', 0, 'no', 'yes'),
(65, 'hossam_nageh', 'none', 'hhhhhhhhhhhhhh', '', 0, '2017-11-30 04:53:37', 0, 'no', 'yes'),
(66, 'hossam_nageh', 'none', 'hhhhhhhhhhhhhh', '', 0, '2017-11-30 04:54:25', 0, 'no', 'yes'),
(67, 'hossam_nageh', 'none', 'house', '', 0, '2017-11-30 04:54:49', 0, 'no', 'yes'),
(68, 'hossam_nageh', 'none', 'desert', 'assets/img/posts_pics/5a1f73fc337f9Desert.jpg', 0, '2017-11-30 04:59:08', 0, 'no', 'yes'),
(69, 'hossam_nageh', 'none', 'An House', 'assets/img/posts_pics/5a1f81b3ab2f3Lighthouse.jpg', 0, '2017-11-30 05:57:39', 0, 'no', 'yes'),
(70, 'hossam_nageh', 'none', 'Hydrangeas', 'assets/img/posts_pics/5a1f81cdf0537Hydrangeas.jpg', 0, '2017-11-30 05:58:05', 1, 'no', 'no'),
(71, 'hossam_nageh', 'none', 'Koala', 'assets/img/posts_pics/5a1f81d9bcd3dKoala.jpg', 0, '2017-11-30 05:58:17', 1, 'no', 'no'),
(72, 'hossam_nageh', 'none', 'hhhhhh', '', 0, '2017-11-30 06:09:47', 0, 'no', 'yes'),
(73, 'hossam_nageh', 'none', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '', 0, '2017-11-30 06:15:21', 0, 'no', 'yes'),
(74, 'hossam_nageh', 'none', 'jjjjjj', '', 0, '2017-11-30 06:16:49', 0, 'no', 'yes'),
(75, 'hossam_nageh', 'none', 'ÙŠØ§Ø±Ø¨', '', 0, '2017-11-30 06:20:42', 0, 'no', 'yes'),
(76, 'hossam_nageh', 'none', 'dsasggfv', '', 0, '2017-11-30 06:21:30', 0, 'no', 'yes'),
(77, 'hossam_nageh', 'none', 'hfhh', '', 0, '2017-11-30 06:31:59', 0, 'no', 'yes'),
(78, 'hossam_nageh', 'none', 'ffffffff', '', 0, '2017-11-30 06:33:12', 0, 'no', 'yes'),
(79, 'hossam_nageh', 'none', 'Me', 'assets/img/posts_pics/5a1f9fb64c88414713761_10206925698051140_1470258393199301830_n(1).jpg', 0, '2017-11-30 08:05:42', 1, 'no', 'no'),
(80, 'hossam_nageh', 'none', 'Me again', 'assets/img/posts_pics/5a1f9fcd8546a14713761_10206925698051140_1470258393199301830_n(1).jpg', 0, '2017-11-30 08:06:05', 0, 'no', 'yes'),
(81, 'hossam_nageh', 'none', 'Me again', 'assets/img/posts_pics/5a1f9fe110b0714713761_10206925698051140_1470258393199301830_n(1).jpg', 0, '2017-11-30 08:06:25', 0, 'no', 'yes'),
(82, 'hossam_nageh', 'none', 'Me again', 'assets/img/posts_pics/5a1f9ff7608f314713761_10206925698051140_1470258393199301830_n(1).jpg', 0, '2017-11-30 08:06:47', 0, 'no', 'yes'),
(83, 'hossam_nageh', 'none', 'Me too', 'assets/img/posts_pics/5a1fa01125e8910349976_10202760384080894_589597029069870293_n(1).jpg', 0, '2017-11-30 08:07:13', 0, 'no', 'yes'),
(84, 'hossam_nageh', 'none', 'Me too', 'assets/img/posts_pics/5a1fa02d5b13610349976_10202760384080894_589597029069870293_n(1).jpg', 0, '2017-11-30 08:07:41', 1, 'no', 'no'),
(85, 'hossam_nageh', 'none', 'Me too', 'assets/img/posts_pics/5a1fa039b47b910349976_10202760384080894_589597029069870293_n(1).jpg', 0, '2017-11-30 08:07:53', 0, 'no', 'yes'),
(86, 'hossam_nageh', 'none', 'Me too', 'assets/img/posts_pics/5a1fa049e097110349976_10202760384080894_589597029069870293_n(1).jpg', 0, '2017-11-30 08:08:09', 0, 'no', 'yes'),
(87, 'hossam_nageh', 'none', 'Me too', 'assets/img/posts_pics/5a1fa05f7ac9110349976_10202760384080894_589597029069870293_n(1).jpg', 0, '2017-11-30 08:08:31', 0, 'no', 'yes'),
(88, 'hossam_nageh', 'none', 'Me too', 'assets/img/posts_pics/5a1fa07933f9a10349976_10202760384080894_589597029069870293_n(1).jpg', 0, '2017-11-30 08:08:57', 0, 'no', 'yes'),
(89, 'hossam_nageh', 'none', 'okokokoooo', '', 0, '2017-12-04 05:02:06', 0, 'no', 'yes'),
(90, 'hossam_nageh', 'none', 'bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k bhtvvvvv vvvvv vvvvvv vvvvvvvv vvvv vvtc ynvn u uyjuum 8k8k 8k ', '', 0, '2017-12-04 05:04:34', 0, 'no', 'yes'),
(91, 'mohamed_hassan', 'none', 'ÙŠØ§ÙˆÙ„ÙƒÙ… ÙŠØ§Ø±Ø¯Ø§Ù„Ù‡', '', 0, '2017-12-12 19:47:56', 1, 'no', 'no'),
(92, 'hossam_nageh', 'none', 'llllllllllll', '', 0, '2018-01-13 16:15:57', 0, 'no', 'no'),
(93, 'hossam_nageh', 'none', 'llllllllllll', '', 0, '2018-01-13 16:16:27', 0, 'no', 'no'),
(94, 'hossam_nageh', 'none', 'llllllllllll', '', 0, '2018-01-13 16:20:52', 0, 'no', 'no'),
(95, 'hossam_nageh', 'none', 'llllllllllll', '', 0, '2018-01-13 16:21:16', 0, 'no', 'no'),
(96, 'hossam_nageh', 'none', 'yea', 'assets/img/posts_pics/5a5a16e0a168c84.jpg', 0, '2018-01-13 16:25:36', 0, 'no', 'no'),
(97, 'hossam_nageh', 'none', 'see', 'assets/img/posts_pics/5a5a17002756cimg2060.jpg', 0, '2018-01-13 16:26:08', 1, 'no', 'no'),
(98, 'hossam_nageh', 'none', 'and', 'assets/img/posts_pics/5a5a172fbc96c52.jpg', 0, '2018-01-13 16:26:55', 0, 'no', 'no'),
(99, 'ahmed_kamal', 'none', '&#1575;&#1604;&#1587;&#1604;&#1575;&#1605; &#1593;&#1604;&#1610;&#1603;&#1605;', 'assets/img/posts_pics/5a5f99f279d4f84.jpg', 0, '2018-01-17 20:46:10', 2, 'no', 'no'),
(100, 'ahmed_kamal', 'hossam_nageh', 'Ø§ÙŠÙˆØ§Ø§Ø§ ÙŠØ§Ø­Ø³', '', 0, '2018-01-17 20:47:57', 1, 'no', 'no'),
(101, 'hossam_nageh', 'none', 'test', 'assets/img/posts_pics/5a5ff67978e0d52.jpg', 0, '2018-01-18 03:20:57', 0, 'no', 'yes'),
(102, 'hossam_nageh', '', 'test15', '', 0, '0000-00-00 00:00:00', 0, 'no', 'no'),
(103, 'hossam_nageh', '', 'test17', '', 2, '0000-00-00 00:00:00', 0, 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(2, 'Hossam', 'Nageh', 'hossam_nageh', 'manchister@ymail.com', 'defac44447b57f152d14f30cea7a73cb', '2017-11-01', 'assets/img/profile_pics/defaults/p10.png', 85, 21, 'no', ',mohamed_nageh,doaa_nageh,esraa_nageh,ahmed_gamil,hoss_nageh,mohamed_hassan,ahmed_kamal,'),
(3, 'Mohamed', 'Nageh', 'mohamed_nageh', 'Nego@ymail.com', 'defac44447b57f152d14f30cea7a73cb', '2017-11-20', 'assets/img/profile_pics/mohamed_nageh0c2ecb312af88b13b30f97a00dabcda7n.jpeg', 2, 4, 'no', ',hossam_nageh,doaa_nageh,esraa_nageh,'),
(4, 'Doaa', 'Nageh', 'doaa_nageh', 'Doaa@ymail.com', 'defac44447b57f152d14f30cea7a73cb', '2017-11-22', 'assets/img/profile_pics/doaa_nageh9c89a881480344fef4898e87a8308c22n.jpeg', 2, 3, 'no', ',mohamed_nageh,esraa_nageh,hossam_nageh,hoss_nageh,'),
(5, 'Esraa', 'Nageh', 'esraa_nageh', 'Esraa@ymail.com', 'defac44447b57f152d14f30cea7a73cb', '2017-11-22', 'assets/img/profile_pics/esraa_nagehd26827d9d785eeb0e9da0cfd930a2ef8n.jpeg', 1, 2, 'no', ',mohamed_nageh,doaa_nageh,hossam_nageh,'),
(6, 'Mohamed', 'Ahmed', 'mohamed_ahmed', 'Mohamed@ymail.com', 'defac44447b57f152d14f30cea7a73cb', '2017-11-22', 'assets/img/profile_pics/defaults/p15.png', 0, 0, 'no', ','),
(7, 'Ahmed', 'Gamil', 'ahmed_gamil', 'Pirlo@ymail.com', 'defac44447b57f152d14f30cea7a73cb', '2017-11-27', 'assets/img/profile_pics/ahmed_gamila7b9f6ece9495516d508210b4b31060dn.jpeg', 1, 1, 'no', ',hossam_nageh,hoss_nageh,'),
(8, 'Hoss', 'Nageh', 'hoss_nageh', 'Hoss@ymail.com', 'defac44447b57f152d14f30cea7a73cb', '2017-12-04', 'assets/img/profile_pics/hoss_nagehfedc635a37b4efd0139d1e8a28454e1dn.jpeg', 0, 0, 'no', ',hossam_nageh,doaa_nageh,ahmed_gamil,'),
(9, 'Mohamed', 'Hassan', 'mohamed_hassan', 'Elsisi@yahoo.com', 'defac44447b57f152d14f30cea7a73cb', '2017-12-12', 'assets/img/profile_pics/mohamed_hassana0655143ad45f18989edc497f2c0744dn.jpeg', 1, 1, 'no', ',hossam_nageh,'),
(10, 'Ahmed', 'Kamal', 'ahmed_kamal', 'Kimo@ymail.com', 'defac44447b57f152d14f30cea7a73cb', '2018-01-17', 'assets/img/profile_pics/ahmed_kamal3c39f6b5c8e3c4b36bee07f919428b6bn.jpeg', 2, 3, 'no', ',hossam_nageh,'),
(12, 'New', 'Account', 'new_account', 'New@email.com', 'defac44447b57f152d14f30cea7a73cb', '2018-01-23', 'assets/img/profile_pics/defaults/p17.png', 0, 0, 'no', ',');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
