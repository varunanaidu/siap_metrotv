-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2021 at 02:58 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siap_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `loglogin`
--

CREATE TABLE `loglogin` (
  `id` int(11) NOT NULL,
  `cempnip` varchar(20) CHARACTER SET latin1 NOT NULL,
  `ip_address` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `browser` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `log_login` datetime DEFAULT NULL,
  `latitude` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `longitude` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `loglogin`
--

INSERT INTO `loglogin` (`id`, `cempnip`, `ip_address`, `browser`, `log_login`, `latitude`, `longitude`) VALUES
(1, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36', '2021-02-04 11:02:58', NULL, NULL),
(2, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', '2021-02-04 11:07:01', NULL, NULL),
(3, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36', '2021-02-04 11:12:16', NULL, NULL),
(4, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36', '2021-02-04 11:27:32', NULL, NULL),
(5, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', '2021-02-04 15:04:44', NULL, NULL),
(6, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', '2021-02-04 17:32:53', NULL, NULL),
(7, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', '2021-02-08 09:49:52', NULL, NULL),
(8, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', '2021-02-08 09:52:07', NULL, NULL),
(9, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', '2021-02-08 14:26:03', NULL, NULL),
(10, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-10 09:14:11', NULL, NULL),
(11, 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-10 10:47:31', NULL, NULL),
(12, 'def', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-11 13:58:38', NULL, NULL),
(13, 'dev', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-11 21:21:29', NULL, NULL),
(14, 'adasd', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-12 11:04:48', NULL, NULL),
(15, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-15 09:23:58', NULL, NULL),
(16, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-15 09:40:09', NULL, NULL),
(17, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-15 14:57:18', NULL, NULL),
(18, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-15 15:05:22', NULL, NULL),
(19, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-17 09:12:02', NULL, NULL),
(20, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-17 09:25:48', NULL, NULL),
(21, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-17 15:52:49', NULL, NULL),
(22, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-18 12:49:50', NULL, NULL),
(23, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-18 15:41:48', NULL, NULL),
(24, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-18 15:42:48', NULL, NULL),
(25, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-18 15:46:32', NULL, NULL),
(26, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-19 09:35:48', NULL, NULL),
(27, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-19 09:49:23', NULL, NULL),
(28, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-19 13:44:29', NULL, NULL),
(29, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-19 17:27:07', NULL, NULL),
(30, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-23 09:15:17', NULL, NULL),
(31, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2021-02-23 11:00:51', NULL, NULL),
(32, 'sdfsdf', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-24 10:32:54', NULL, NULL),
(33, 'sdfsdf', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-24 14:33:39', NULL, NULL),
(34, 'jn', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-24 19:46:56', NULL, NULL),
(35, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2021-02-25 09:26:59', NULL, NULL),
(36, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2021-02-25 14:28:58', NULL, NULL),
(37, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '2021-02-25 14:29:57', NULL, NULL),
(38, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '2021-02-26 09:45:54', NULL, NULL),
(39, 'asdasd', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-26 11:09:44', NULL, NULL),
(40, '1193748', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '2021-02-28 19:48:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_graphic_design`
--

CREATE TABLE `tab_graphic_design` (
  `graphic_design_id` int(11) NOT NULL,
  `graphic_design_type` int(11) NOT NULL COMMENT '1 = Content Enrichment; 2 = Promotion; 3 = Program Package; 4 = Calvent; 5 = Klien; 6 = Identity Planner',
  `graphic_design_name` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_graphic_design`
--

INSERT INTO `tab_graphic_design` (`graphic_design_id`, `graphic_design_type`, `graphic_design_name`, `create_by`, `create_date`, `edited_by`, `edited_date`) VALUES
(2, 1, 'Wall Tematik', 999999, '2021-02-10 12:42:20', 999999, '2021-02-10 12:42:20'),
(3, 1, 'Infografis Data', 999999, '2021-02-10 12:42:35', 999999, '2021-02-10 12:42:35'),
(4, 1, 'Infografis Peta', 999999, '2021-02-10 12:42:44', 999999, '2021-02-10 12:42:44'),
(5, 1, 'Infografis Quotes', 999999, '2021-02-10 12:42:56', 999999, '2021-02-10 12:42:56'),
(6, 1, 'Ilustrasi Cetak', 999999, '2021-02-10 12:43:04', 999999, '2021-02-10 12:50:16'),
(7, 2, 'Print Ad Koran', 999999, '2021-02-10 12:43:16', 999999, '2021-02-10 12:43:16'),
(8, 2, 'Highlight Minggu', 999999, '2021-02-10 12:43:25', 999999, '2021-02-10 12:43:25'),
(9, 2, 'Promo Template', 999999, '2021-02-10 12:43:36', 999999, '2021-02-10 12:43:36'),
(10, 2, 'Infografis Promo', 999999, '2021-02-10 12:43:44', 999999, '2021-02-10 12:43:44'),
(11, 2, 'Ilustrasi Publishing', 999999, '2021-02-10 12:43:57', 999999, '2021-02-10 12:43:57'),
(12, 3, 'Logo Program', 999999, '2021-02-10 12:44:10', 999999, '2021-02-10 12:44:10'),
(13, 3, 'Que Card', 999999, '2021-02-10 12:44:21', 999999, '2021-02-10 12:44:21'),
(14, 4, 'Spanduk', 999999, '2021-02-10 12:44:34', 999999, '2021-02-10 12:44:34'),
(15, 4, 'Umbul Umbul', 999999, '2021-02-10 12:44:46', 999999, '2021-02-10 12:44:46'),
(16, 4, 'Backdrop', 999999, '2021-02-10 12:44:57', 999999, '2021-02-10 12:44:57'),
(17, 4, 'Digital Print Set', 999999, '2021-02-10 12:45:06', 999999, '2021-02-10 12:45:06'),
(18, 5, 'Strategic C Placement', 999999, '2021-02-10 12:45:19', 999999, '2021-02-10 12:45:19'),
(19, 6, 'Logo Corporate', 999999, '2021-02-10 12:45:29', 999999, '2021-02-10 12:45:29'),
(20, 6, 'Coporate Rebranding', 999999, '2021-02-10 12:45:40', 999999, '2021-02-10 12:45:40'),
(21, 6, 'Brand Guidelines (GSM)', 999999, '2021-02-10 12:45:53', 999999, '2021-02-10 12:45:53'),
(22, 6, 'Thumbnail Sosmed', 999999, '2021-02-10 12:46:04', 999999, '2021-02-10 12:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `tab_immersive`
--

CREATE TABLE `tab_immersive` (
  `immersive_id` int(11) NOT NULL,
  `immersive_type` int(11) NOT NULL COMMENT '1 = Content Enrichment; 2 = Calvent',
  `immersive_name` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_immersive`
--

INSERT INTO `tab_immersive` (`immersive_id`, `immersive_type`, `immersive_name`, `create_by`, `create_date`, `edited_by`, `edited_date`) VALUES
(2, 1, 'Fix Set AR', 999999, '2021-02-10 12:58:29', 999999, '2021-02-10 12:58:29'),
(3, 1, 'Virtual Environment', 999999, '2021-02-10 12:58:41', 999999, '2021-02-10 12:58:41'),
(4, 1, 'Decorative AR', 999999, '2021-02-10 12:58:50', 999999, '2021-02-10 12:58:50'),
(5, 1, 'Clipper AR', 999999, '2021-02-10 12:58:59', 999999, '2021-02-10 12:58:59'),
(6, 1, 'Fliying Camera', 999999, '2021-02-10 12:59:09', 999999, '2021-02-10 12:59:09'),
(7, 1, 'Aerial AR', 999999, '2021-02-10 12:59:16', 999999, '2021-02-10 12:59:16'),
(8, 1, 'Touchscreen AR', 999999, '2021-02-10 12:59:24', 999999, '2021-02-10 12:59:24'),
(9, 1, 'Virtual Set', 999999, '2021-02-10 12:59:31', 999999, '2021-02-10 12:59:31'),
(10, 1, 'Infografis Template', 999999, '2021-02-10 12:59:43', 999999, '2021-02-10 12:59:43'),
(11, 1, 'Mgn Box Maintenance', 999999, '2021-02-10 12:59:54', 999999, '2021-02-10 12:59:54'),
(12, 1, 'Wall Berbasis Virtual', 999999, '2021-02-10 13:00:04', 999999, '2021-02-10 13:00:04'),
(13, 2, 'Ambient AR', 999999, '2021-02-10 13:00:13', 999999, '2021-02-10 13:00:13'),
(14, 2, 'Gadget Base AR', 999999, '2021-02-10 13:00:22', 999999, '2021-02-10 13:00:22'),
(15, 2, 'Virtual Reality', 999999, '2021-02-10 13:00:35', 999999, '2021-02-10 13:00:35'),
(16, 1, 'Bugs Event', 999999, '2021-02-10 13:00:44', 999999, '2021-02-10 13:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `tab_infographic`
--

CREATE TABLE `tab_infographic` (
  `infographic_id` int(11) NOT NULL,
  `infographic_type` int(11) NOT NULL COMMENT '1 = Content Enrichment; 2 = Klien',
  `infographic_name` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_infographic`
--

INSERT INTO `tab_infographic` (`infographic_id`, `infographic_type`, `infographic_name`, `create_by`, `create_date`, `edited_by`, `edited_date`) VALUES
(1, 1, 'Infografis Data', 1193748, '2021-02-08 13:13:57', 1193748, 2021),
(3, 1, 'Infografis Peta', 999999, '2021-02-10 11:30:28', 999999, 2021),
(4, 1, 'Infografis Quotes/Biodata', 999999, '2021-02-10 11:30:45', 999999, 2021),
(5, 1, 'Infografis Digital', 999999, '2021-02-10 11:30:59', 999999, 2021),
(6, 1, 'Infografis Chart', 999999, '2021-02-10 11:31:10', 999999, 2021),
(7, 1, 'Kronologi 2D/3D', 999999, '2021-02-10 11:31:28', 999999, 2021),
(8, 1, 'Supers', 999999, '2021-02-10 11:31:39', 999999, 2021),
(9, 1, 'Kickers', 999999, '2021-02-10 11:31:46', 999999, 2021),
(10, 1, 'Explainer', 999999, '2021-02-10 11:31:55', 999999, 2021),
(11, 1, 'At Large', 999999, '2021-02-10 11:32:06', 999999, 2021),
(12, 1, 'Filler News', 999999, '2021-02-10 11:32:14', 999999, 2021),
(13, 1, 'Flashbump Hari Ini', 999999, '2021-02-10 11:32:50', 999999, 2021),
(14, 1, 'Slide Medsos', 999999, '2021-02-10 11:33:02', 999999, 2021),
(15, 1, 'Slide Foto', 999999, '2021-02-10 11:33:08', 999999, 2021),
(16, 2, 'Infografis Data', 999999, '2021-02-10 11:33:26', 999999, 2021);

-- --------------------------------------------------------

--
-- Table structure for table `tab_motion_graphic`
--

CREATE TABLE `tab_motion_graphic` (
  `motion_graphic_id` int(11) NOT NULL,
  `motion_graphic_type` int(11) NOT NULL COMMENT '1 = Program Package; 2 = Promotion; 3 = Calvent; 4 = Klien',
  `motion_graphic_name` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_motion_graphic`
--

INSERT INTO `tab_motion_graphic` (`motion_graphic_id`, `motion_graphic_type`, `motion_graphic_name`, `create_by`, `create_date`, `edited_by`, `edited_date`) VALUES
(2, 2, 'OBB & BIBO', 1193748, '2021-02-15 09:29:43', 1193748, '2021-02-15 09:29:43'),
(3, 2, 'Flash Bumper', 1193748, '2021-02-15 09:29:53', 1193748, '2021-02-15 09:29:53'),
(4, 2, 'Up Next', 1193748, '2021-02-15 09:30:04', 1193748, '2021-02-15 09:30:04'),
(5, 2, 'Sting', 1193748, '2021-02-15 09:30:16', 1193748, '2021-02-15 09:30:16'),
(6, 2, 'Split Screen', 1193748, '2021-02-15 09:30:26', 1193748, '2021-02-15 09:30:26'),
(7, 1, 'Promo Program Generic', 1193748, '2021-02-15 09:30:43', 1193748, '2021-02-15 09:30:43'),
(8, 1, 'Promo Program Episodik', 1193748, '2021-02-15 09:30:55', 1193748, '2021-02-15 09:30:55'),
(9, 1, 'TV Day - VT - Compro', 1193748, '2021-02-15 09:31:10', 1193748, '2021-02-15 09:31:10'),
(10, 3, 'Video Mapping', 1193748, '2021-02-15 09:31:19', 1193748, '2021-02-15 09:31:19'),
(11, 3, 'Digital Mapping', 1193748, '2021-02-15 09:31:32', 1193748, '2021-02-15 09:31:32'),
(12, 4, 'Benefit C Placement', 1193748, '2021-02-15 09:31:46', 1193748, '2021-02-15 09:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `tab_nav`
--

CREATE TABLE `tab_nav` (
  `nav_id` int(11) NOT NULL,
  `nav_name` varchar(100) NOT NULL,
  `nav_ctr` varchar(100) NOT NULL,
  `nav_order` int(11) NOT NULL,
  `dev_only` int(11) NOT NULL DEFAULT 0 COMMENT '0 = NO ; 1 = YES',
  `create_date` datetime NOT NULL,
  `create_by` int(11) NOT NULL,
  `edited_date` datetime DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_nav`
--

INSERT INTO `tab_nav` (`nav_id`, `nav_name`, `nav_ctr`, `nav_order`, `dev_only`, `create_date`, `create_by`, `edited_date`, `edited_by`) VALUES
(1, 'Navigation', 'navigation', 6, 0, '2021-02-08 10:03:04', 1193748, '2021-02-08 10:03:04', 1193748);

-- --------------------------------------------------------

--
-- Table structure for table `tab_operational`
--

CREATE TABLE `tab_operational` (
  `operational_id` int(11) NOT NULL,
  `operational_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Non Other',
  `operational_name` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_operational`
--

INSERT INTO `tab_operational` (`operational_id`, `operational_type`, `operational_name`, `create_by`, `create_date`, `edited_by`, `edited_date`) VALUES
(2, 1, 'Take in-out CG', 999999, '2021-02-10 13:01:46', 999999, '2021-02-10 13:01:46'),
(3, 1, 'Set Up Wall-Resolume', 999999, '2021-02-10 13:02:01', 999999, '2021-02-10 13:02:01'),
(4, 1, 'Operational Studio 1', 999999, '2021-02-10 13:02:10', 999999, '2021-02-10 13:02:20'),
(5, 1, 'Operational Studio 2', 999999, '2021-02-10 13:02:26', 999999, '2021-02-10 13:02:26'),
(6, 1, 'Operational Event', 999999, '2021-02-10 13:02:36', 999999, '2021-02-10 13:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `tab_set_landscape`
--

CREATE TABLE `tab_set_landscape` (
  `set_landscape_id` int(11) NOT NULL,
  `set_landscape_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Non Other',
  `set_landscape_name` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_set_landscape`
--

INSERT INTO `tab_set_landscape` (`set_landscape_id`, `set_landscape_type`, `set_landscape_name`, `create_by`, `create_date`, `edited_by`, `edited_date`) VALUES
(2, 1, 'Design Set On Air/Off Air', 1193748, '2021-02-15 09:32:15', 1193748, '2021-02-15 09:32:15'),
(3, 1, 'Gambar Teknik', 1193748, '2021-02-15 09:32:24', 1193748, '2021-02-15 09:32:24'),
(4, 1, 'Interior Corporate', 1193748, '2021-02-15 09:32:35', 1193748, '2021-02-15 09:32:35'),
(5, 1, 'Exterior Corporate', 1193748, '2021-02-15 09:32:46', 1193748, '2021-02-15 09:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `tab_uac`
--

CREATE TABLE `tab_uac` (
  `user_id` int(11) NOT NULL,
  `nav_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_uac`
--

INSERT INTO `tab_uac` (`user_id`, `nav_id`, `create_date`, `create_by`) VALUES
(1193748, 1, '2021-02-08 10:09:02', 1193748),
(1193755, 1, '2021-02-08 10:09:13', 1193748);

-- --------------------------------------------------------

--
-- Table structure for table `tab_web_designer`
--

CREATE TABLE `tab_web_designer` (
  `web_designer_id` int(11) NOT NULL,
  `web_designer_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Non Other',
  `web_designer_name` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_web_designer`
--

INSERT INTO `tab_web_designer` (`web_designer_id`, `web_designer_type`, `web_designer_name`, `create_by`, `create_date`, `edited_by`, `edited_date`) VALUES
(2, 1, 'Wireframing', 999999, '2021-02-12 11:48:49', 999999, '2021-02-12 11:48:49'),
(3, 1, 'Visual Layout', 999999, '2021-02-12 11:49:06', 999999, '2021-02-12 11:49:06'),
(4, 1, 'Konversi Layout ke HTML dan CSS', 999999, '2021-02-12 11:49:26', 999999, '2021-02-12 11:49:26'),
(5, 1, 'Susunan Markup dan HTML', 999999, '2021-02-12 11:49:42', 999999, '2021-02-12 11:49:42'),
(6, 1, 'Maintenance Portal', 999999, '2021-02-12 11:49:55', 999999, '2021-02-12 11:49:55'),
(7, 1, 'SEO Specialiast', 999999, '2021-02-12 11:50:05', 999999, '2021-02-12 11:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `tr_attachment`
--

CREATE TABLE `tr_attachment` (
  `attachment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `attachment_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_attachment`
--

INSERT INTO `tr_attachment` (`attachment_id`, `order_id`, `attachment_name`) VALUES
(22, 1, 'a553b6d86cdb26059b9a455526bb8c1e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tr_chat_item_graphic`
--

CREATE TABLE `tr_chat_item_graphic` (
  `chat_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `chat_desc` text NOT NULL,
  `chat_sender` int(11) NOT NULL,
  `chat_sender_name` varchar(255) NOT NULL,
  `chat_sender_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tr_item_graphics`
--

CREATE TABLE `tr_item_graphics` (
  `item_graphics_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_graphics_type` int(11) NOT NULL COMMENT '1 = Infographic; 2 = Graphic Design; 3 = Immersive/Multimedia; 4 = Operational; 5 = Motion Graphic; 6 = Set Landscape; 7 = Web Designer',
  `item_graphics_sub_type` int(11) NOT NULL COMMENT '0 = other',
  `item_graphics_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_item_graphics`
--

INSERT INTO `tr_item_graphics` (`item_graphics_id`, `order_id`, `item_graphics_type`, `item_graphics_sub_type`, `item_graphics_name`) VALUES
(1, 1, 1, 1, 'Infografis Data'),
(2, 1, 2, 3, 'Logo Program'),
(3, 1, 2, 6, 'Thumbnail Sosmed'),
(4, 1, 3, 1, 'Clipper AR'),
(5, 1, 4, 1, 'Take in-out CG');

-- --------------------------------------------------------

--
-- Table structure for table `tr_order`
--

CREATE TABLE `tr_order` (
  `order_id` int(11) NOT NULL,
  `order_type` int(11) NOT NULL COMMENT '1 = Daily; 2 = Development',
  `order_name` varchar(255) NOT NULL,
  `order_deadline` date NOT NULL,
  `order_brief` text NOT NULL,
  `order_source` varchar(255) NOT NULL,
  `order_output` text NOT NULL,
  `is_active` int(11) NOT NULL COMMENT '0 = No; 1 = Yes',
  `create_by` int(11) NOT NULL,
  `create_name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_name` varchar(255) NOT NULL,
  `edited_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_order`
--

INSERT INTO `tr_order` (`order_id`, `order_type`, `order_name`, `order_deadline`, `order_brief`, `order_source`, `order_output`, `is_active`, `create_by`, `create_name`, `create_date`, `edited_by`, `edited_name`, `edited_date`) VALUES
(1, 1, 'Kick Andy', '2021-03-26', 'BALABLABALBALBLABALBALBALB', 'BLAJBSDABKABHEFKHBDJFHBDJF', 'USGDIYWGDIYWDGIWGIWUDHWIDUH', 1, 1193755, 'Varuna Dewi', '2021-02-26 13:23:01', 1193755, 'Varuna Dewi', '2021-02-26 13:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `tr_task_item_graphic`
--

CREATE TABLE `tr_task_item_graphic` (
  `task_id` int(11) NOT NULL,
  `item_graphics_id` int(11) NOT NULL,
  `progress` int(11) NOT NULL,
  `is_active` int(11) NOT NULL COMMENT '0 = NO; 1 = YES',
  `previous` int(11) DEFAULT NULL,
  `taken_by` int(11) NOT NULL,
  `taken_name` varchar(255) NOT NULL,
  `taken_date` datetime NOT NULL,
  `finish_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_task_item_graphic`
--

INSERT INTO `tr_task_item_graphic` (`task_id`, `item_graphics_id`, `progress`, `is_active`, `previous`, `taken_by`, `taken_name`, `taken_date`, `finish_date`) VALUES
(1, 1, 100, 1, NULL, 999999, 'Developer Metro TV', '2021-02-26 14:41:06', '2021-02-28 20:27:45'),
(2, 3, 50, 1, NULL, 999999, 'Developer Metro TV', '2021-02-26 14:41:10', NULL),
(6, 2, 0, 1, NULL, 999999, 'Developer Metro TV', '2021-02-28 20:22:00', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_active_head_order`
-- (See below for the actual view)
--
CREATE TABLE `vw_active_head_order` (
`order_id` int(11)
,`order_type` int(11)
,`order_name` varchar(255)
,`order_deadline` date
,`order_brief` text
,`order_source` varchar(255)
,`order_output` text
,`is_active` int(11)
,`create_by` int(11)
,`create_name` varchar(255)
,`create_date` datetime
,`edited_by` int(11)
,`edited_name` varchar(255)
,`edited_date` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_chat`
-- (See below for the actual view)
--
CREATE TABLE `vw_chat` (
`order_id` int(11)
,`order_type` int(11)
,`order_name` varchar(255)
,`order_deadline` date
,`order_brief` text
,`order_source` varchar(255)
,`order_output` text
,`is_active` int(11)
,`create_by` int(11)
,`create_name` varchar(255)
,`create_date` datetime
,`item_graphics_id` int(11)
,`item_graphics_type` int(11)
,`item_graphics_sub_type` int(11)
,`item_graphics_name` varchar(255)
,`task_id` int(11)
,`progress` int(11)
,`is_active_task` int(11)
,`previous` int(11)
,`taken_by` int(11)
,`taken_name` varchar(255)
,`taken_date` datetime
,`finish_date` datetime
,`chat_id` int(11)
,`chat_desc` text
,`chat_sender` int(11)
,`chat_sender_name` varchar(255)
,`chat_sender_time` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_nav`
-- (See below for the actual view)
--
CREATE TABLE `vw_nav` (
`nav_id` int(11)
,`nav_name` varchar(100)
,`nav_ctr` varchar(100)
,`nav_order` int(11)
,`dev_only` int(11)
,`create_date` datetime
,`create_by` int(11)
,`edited_date` datetime
,`edited_by` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_not_active_head_order`
-- (See below for the actual view)
--
CREATE TABLE `vw_not_active_head_order` (
`order_id` int(11)
,`order_type` int(11)
,`order_name` varchar(255)
,`order_deadline` date
,`order_brief` text
,`order_source` varchar(255)
,`order_output` text
,`is_active` int(11)
,`create_by` int(11)
,`create_name` varchar(255)
,`create_date` datetime
,`edited_by` int(11)
,`edited_name` varchar(255)
,`edited_date` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_order_attachment`
-- (See below for the actual view)
--
CREATE TABLE `vw_order_attachment` (
`attachment_id` int(11)
,`order_id` int(11)
,`order_name` varchar(255)
,`attachment_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_order_item_graphic`
-- (See below for the actual view)
--
CREATE TABLE `vw_order_item_graphic` (
`item_graphics_id` int(11)
,`order_id` int(11)
,`order_name` varchar(255)
,`item_graphics_type` int(11)
,`item_graphics_sub_type` int(11)
,`item_graphics_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_task`
-- (See below for the actual view)
--
CREATE TABLE `vw_task` (
`order_id` int(11)
,`order_type` int(11)
,`order_name` varchar(255)
,`order_deadline` date
,`order_brief` text
,`order_source` varchar(255)
,`order_output` text
,`is_active` int(11)
,`create_by` int(11)
,`create_name` varchar(255)
,`create_date` datetime
,`item_graphics_id` int(11)
,`item_graphics_type` int(11)
,`item_graphics_sub_type` int(11)
,`item_graphics_name` varchar(255)
,`task_id` int(11)
,`progress` int(11)
,`is_active_task` int(11)
,`previous` int(11)
,`taken_by` int(11)
,`taken_name` varchar(255)
,`taken_date` datetime
,`finish_date` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_uac`
-- (See below for the actual view)
--
CREATE TABLE `vw_uac` (
`user_id` int(11)
,`nav_id` int(11)
,`create_date` datetime
,`create_by` int(11)
,`nav_name` varchar(100)
,`nav_ctr` varchar(100)
,`nav_order` int(11)
,`dev_only` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_active_head_order`
--
DROP TABLE IF EXISTS `vw_active_head_order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_active_head_order`  AS  select `tr_order`.`order_id` AS `order_id`,`tr_order`.`order_type` AS `order_type`,`tr_order`.`order_name` AS `order_name`,`tr_order`.`order_deadline` AS `order_deadline`,`tr_order`.`order_brief` AS `order_brief`,`tr_order`.`order_source` AS `order_source`,`tr_order`.`order_output` AS `order_output`,`tr_order`.`is_active` AS `is_active`,`tr_order`.`create_by` AS `create_by`,`tr_order`.`create_name` AS `create_name`,`tr_order`.`create_date` AS `create_date`,`tr_order`.`edited_by` AS `edited_by`,`tr_order`.`edited_name` AS `edited_name`,`tr_order`.`edited_date` AS `edited_date` from `tr_order` where `tr_order`.`is_active` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `vw_chat`
--
DROP TABLE IF EXISTS `vw_chat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_chat`  AS  select `tbl1`.`order_id` AS `order_id`,`tbl1`.`order_type` AS `order_type`,`tbl1`.`order_name` AS `order_name`,`tbl1`.`order_deadline` AS `order_deadline`,`tbl1`.`order_brief` AS `order_brief`,`tbl1`.`order_source` AS `order_source`,`tbl1`.`order_output` AS `order_output`,`tbl1`.`is_active` AS `is_active`,`tbl1`.`create_by` AS `create_by`,`tbl1`.`create_name` AS `create_name`,`tbl1`.`create_date` AS `create_date`,`tbl2`.`item_graphics_id` AS `item_graphics_id`,`tbl2`.`item_graphics_type` AS `item_graphics_type`,`tbl2`.`item_graphics_sub_type` AS `item_graphics_sub_type`,`tbl2`.`item_graphics_name` AS `item_graphics_name`,`tbl3`.`task_id` AS `task_id`,`tbl3`.`progress` AS `progress`,`tbl3`.`is_active` AS `is_active_task`,`tbl3`.`previous` AS `previous`,`tbl3`.`taken_by` AS `taken_by`,`tbl3`.`taken_name` AS `taken_name`,`tbl3`.`taken_date` AS `taken_date`,`tbl3`.`finish_date` AS `finish_date`,`tbl4`.`chat_id` AS `chat_id`,`tbl4`.`chat_desc` AS `chat_desc`,`tbl4`.`chat_sender` AS `chat_sender`,`tbl4`.`chat_sender_name` AS `chat_sender_name`,`tbl4`.`chat_sender_time` AS `chat_sender_time` from (((`tr_order` `tbl1` join `tr_item_graphics` `tbl2` on(`tbl1`.`order_id` = `tbl2`.`order_id`)) left join `tr_task_item_graphic` `tbl3` on(`tbl2`.`item_graphics_id` = `tbl3`.`item_graphics_id`)) left join `tr_chat_item_graphic` `tbl4` on(`tbl3`.`task_id` = `tbl4`.`task_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_nav`
--
DROP TABLE IF EXISTS `vw_nav`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_nav`  AS  select `tab_nav`.`nav_id` AS `nav_id`,`tab_nav`.`nav_name` AS `nav_name`,`tab_nav`.`nav_ctr` AS `nav_ctr`,`tab_nav`.`nav_order` AS `nav_order`,`tab_nav`.`dev_only` AS `dev_only`,`tab_nav`.`create_date` AS `create_date`,`tab_nav`.`create_by` AS `create_by`,`tab_nav`.`edited_date` AS `edited_date`,`tab_nav`.`edited_by` AS `edited_by` from `tab_nav` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_not_active_head_order`
--
DROP TABLE IF EXISTS `vw_not_active_head_order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_not_active_head_order`  AS  select `tr_order`.`order_id` AS `order_id`,`tr_order`.`order_type` AS `order_type`,`tr_order`.`order_name` AS `order_name`,`tr_order`.`order_deadline` AS `order_deadline`,`tr_order`.`order_brief` AS `order_brief`,`tr_order`.`order_source` AS `order_source`,`tr_order`.`order_output` AS `order_output`,`tr_order`.`is_active` AS `is_active`,`tr_order`.`create_by` AS `create_by`,`tr_order`.`create_name` AS `create_name`,`tr_order`.`create_date` AS `create_date`,`tr_order`.`edited_by` AS `edited_by`,`tr_order`.`edited_name` AS `edited_name`,`tr_order`.`edited_date` AS `edited_date` from `tr_order` where `tr_order`.`is_active` = 0 ;

-- --------------------------------------------------------

--
-- Structure for view `vw_order_attachment`
--
DROP TABLE IF EXISTS `vw_order_attachment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_order_attachment`  AS  select `tbl1`.`attachment_id` AS `attachment_id`,`tbl1`.`order_id` AS `order_id`,`tbl2`.`order_name` AS `order_name`,`tbl1`.`attachment_name` AS `attachment_name` from (`tr_attachment` `tbl1` join `tr_order` `tbl2` on(`tbl1`.`order_id` = `tbl2`.`order_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_order_item_graphic`
--
DROP TABLE IF EXISTS `vw_order_item_graphic`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_order_item_graphic`  AS  select `tbl1`.`item_graphics_id` AS `item_graphics_id`,`tbl1`.`order_id` AS `order_id`,`tbl2`.`order_name` AS `order_name`,`tbl1`.`item_graphics_type` AS `item_graphics_type`,`tbl1`.`item_graphics_sub_type` AS `item_graphics_sub_type`,`tbl1`.`item_graphics_name` AS `item_graphics_name` from (`tr_item_graphics` `tbl1` join `tr_order` `tbl2` on(`tbl1`.`order_id` = `tbl2`.`order_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_task`
--
DROP TABLE IF EXISTS `vw_task`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_task`  AS  select `tbl1`.`order_id` AS `order_id`,`tbl1`.`order_type` AS `order_type`,`tbl1`.`order_name` AS `order_name`,`tbl1`.`order_deadline` AS `order_deadline`,`tbl1`.`order_brief` AS `order_brief`,`tbl1`.`order_source` AS `order_source`,`tbl1`.`order_output` AS `order_output`,`tbl1`.`is_active` AS `is_active`,`tbl1`.`create_by` AS `create_by`,`tbl1`.`create_name` AS `create_name`,`tbl1`.`create_date` AS `create_date`,`tbl2`.`item_graphics_id` AS `item_graphics_id`,`tbl2`.`item_graphics_type` AS `item_graphics_type`,`tbl2`.`item_graphics_sub_type` AS `item_graphics_sub_type`,`tbl2`.`item_graphics_name` AS `item_graphics_name`,`tbl3`.`task_id` AS `task_id`,`tbl3`.`progress` AS `progress`,`tbl3`.`is_active` AS `is_active_task`,`tbl3`.`previous` AS `previous`,`tbl3`.`taken_by` AS `taken_by`,`tbl3`.`taken_name` AS `taken_name`,`tbl3`.`taken_date` AS `taken_date`,`tbl3`.`finish_date` AS `finish_date` from ((`tr_order` `tbl1` join `tr_item_graphics` `tbl2` on(`tbl1`.`order_id` = `tbl2`.`order_id`)) left join `tr_task_item_graphic` `tbl3` on(`tbl2`.`item_graphics_id` = `tbl3`.`item_graphics_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_uac`
--
DROP TABLE IF EXISTS `vw_uac`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_uac`  AS  select `tbl1`.`user_id` AS `user_id`,`tbl1`.`nav_id` AS `nav_id`,`tbl1`.`create_date` AS `create_date`,`tbl1`.`create_by` AS `create_by`,`tbl2`.`nav_name` AS `nav_name`,`tbl2`.`nav_ctr` AS `nav_ctr`,`tbl2`.`nav_order` AS `nav_order`,`tbl2`.`dev_only` AS `dev_only` from (`tab_uac` `tbl1` left join `tab_nav` `tbl2` on(`tbl1`.`nav_id` = `tbl2`.`nav_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loglogin`
--
ALTER TABLE `loglogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_graphic_design`
--
ALTER TABLE `tab_graphic_design`
  ADD PRIMARY KEY (`graphic_design_id`);

--
-- Indexes for table `tab_immersive`
--
ALTER TABLE `tab_immersive`
  ADD PRIMARY KEY (`immersive_id`);

--
-- Indexes for table `tab_infographic`
--
ALTER TABLE `tab_infographic`
  ADD PRIMARY KEY (`infographic_id`);

--
-- Indexes for table `tab_motion_graphic`
--
ALTER TABLE `tab_motion_graphic`
  ADD PRIMARY KEY (`motion_graphic_id`);

--
-- Indexes for table `tab_nav`
--
ALTER TABLE `tab_nav`
  ADD PRIMARY KEY (`nav_id`),
  ADD KEY `nav_idx` (`nav_id`,`nav_name`,`nav_ctr`,`nav_order`);

--
-- Indexes for table `tab_operational`
--
ALTER TABLE `tab_operational`
  ADD PRIMARY KEY (`operational_id`);

--
-- Indexes for table `tab_set_landscape`
--
ALTER TABLE `tab_set_landscape`
  ADD PRIMARY KEY (`set_landscape_id`);

--
-- Indexes for table `tab_uac`
--
ALTER TABLE `tab_uac`
  ADD PRIMARY KEY (`nav_id`,`user_id`),
  ADD KEY `uac_idx` (`user_id`,`nav_id`);

--
-- Indexes for table `tab_web_designer`
--
ALTER TABLE `tab_web_designer`
  ADD PRIMARY KEY (`web_designer_id`);

--
-- Indexes for table `tr_attachment`
--
ALTER TABLE `tr_attachment`
  ADD PRIMARY KEY (`attachment_id`);

--
-- Indexes for table `tr_chat_item_graphic`
--
ALTER TABLE `tr_chat_item_graphic`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `tr_item_graphics`
--
ALTER TABLE `tr_item_graphics`
  ADD PRIMARY KEY (`item_graphics_id`);

--
-- Indexes for table `tr_order`
--
ALTER TABLE `tr_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tr_task_item_graphic`
--
ALTER TABLE `tr_task_item_graphic`
  ADD PRIMARY KEY (`task_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loglogin`
--
ALTER TABLE `loglogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tab_graphic_design`
--
ALTER TABLE `tab_graphic_design`
  MODIFY `graphic_design_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tab_immersive`
--
ALTER TABLE `tab_immersive`
  MODIFY `immersive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tab_infographic`
--
ALTER TABLE `tab_infographic`
  MODIFY `infographic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tab_motion_graphic`
--
ALTER TABLE `tab_motion_graphic`
  MODIFY `motion_graphic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tab_nav`
--
ALTER TABLE `tab_nav`
  MODIFY `nav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tab_operational`
--
ALTER TABLE `tab_operational`
  MODIFY `operational_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tab_set_landscape`
--
ALTER TABLE `tab_set_landscape`
  MODIFY `set_landscape_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tab_web_designer`
--
ALTER TABLE `tab_web_designer`
  MODIFY `web_designer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tr_attachment`
--
ALTER TABLE `tr_attachment`
  MODIFY `attachment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tr_chat_item_graphic`
--
ALTER TABLE `tr_chat_item_graphic`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tr_item_graphics`
--
ALTER TABLE `tr_item_graphics`
  MODIFY `item_graphics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tr_order`
--
ALTER TABLE `tr_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tr_task_item_graphic`
--
ALTER TABLE `tr_task_item_graphic`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
