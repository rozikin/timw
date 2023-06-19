-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2023 at 07:04 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_timw`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `id_category` int(100) NOT NULL,
  `code_category` varchar(200) NOT NULL,
  `name_category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`id_category`, `code_category`, `name_category`) VALUES
(1, 'SEW', 'SEWING'),
(2, 'ATK', 'ALAT TULIS'),
(3, 'ACS', 'ACCESORIS');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cbd`
--

CREATE TABLE `tb_cbd` (
  `id` int(11) NOT NULL,
  `order_no` varchar(244) NOT NULL,
  `supplier_raw_material_code` varchar(244) NOT NULL,
  `item` varchar(244) NOT NULL,
  `sample_code` varchar(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_cbd`
--

INSERT INTO `tb_cbd` (`id`, `order_no`, `supplier_raw_material_code`, `item`, `sample_code`) VALUES
(36, 'T2723-454315-003', 'TJ13080A', 'AIRism cotton crew neck S/S T-shirt', '27373N008E'),
(37, 'T1323-456675-002', 'TJ12804A', 'AIRism boxer briefs heather', '13373N012D'),
(38, 'T1323-456706-002', 'TJ13048G', 'AIRism low rise printed boxer briefs A', '13373N025D'),
(39, 'T0722-452335-015', 'TN02149A', 'W\'s HEATTECH cotton scoop neck L/S T-shirt (EXTRA WARM)(HD)', '07272F336N'),
(40, 'T1323-457484-002', 'TJ13082A', 'AIRism cotton tank top', '13373N010E'),
(41, 'T1323-454312-004', 'TJ13048A', 'AIRism crew neck S/S T-shirt', '13373N002D'),
(43, 'T1323-456707-002', 'TJ13048G', 'AIRism low rise printed boxer briefs B', '13373N026D'),
(44, 'T1323-454311-003', 'TJ13048A', 'AIRism V neck S/S T-shirt', '13373N001D'),
(45, 'T0123-462623-001', 'TJ12458A', 'W\'s HEATTECH crew neck L/S  T-shirt(22FW)', '01273F271B');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cbd_detail`
--

CREATE TABLE `tb_cbd_detail` (
  `id` int(11) NOT NULL,
  `order_no` varchar(200) NOT NULL,
  `color_code` varchar(200) NOT NULL,
  `color` varchar(200) NOT NULL,
  `size_code` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `qty` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_cbd_detail`
--

INSERT INTO `tb_cbd_detail` (`id`, `order_no`, `color_code`, `color`, `size_code`, `size`, `qty`) VALUES
(188, 'T2723-454315-003', '00', 'WHITE', '002', 'XS', 90),
(189, 'T2723-454315-003', '00', 'WHITE', '003', 'S', 288),
(190, 'T2723-454315-003', '00', 'WHITE', '005', 'L', 288),
(191, 'T2723-454315-003', '00', 'WHITE', '006', 'XL', 72),
(192, 'T2723-454315-003', '00', 'WHITE', '007', 'XXL', 60),
(193, 'T2723-454315-003', '00', 'WHITE', '008', '3XL', 60),
(194, 'T2723-454315-003', '09', 'BLACK', '002', 'XS', 60),
(195, 'T2723-454315-003', '09', 'BLACK', '003', 'S', 72),
(196, 'T2723-454315-003', '09', 'BLACK', '004', 'M', 432),
(197, 'T2723-454315-003', '09', 'BLACK', '005', 'L', 324),
(198, 'T2723-454315-003', '09', 'BLACK', '006', 'XL', 72),
(199, 'T2723-454315-003', '09', 'BLACK', '007', 'XXL', 60),
(200, 'T2723-454315-003', '09', 'BLACK', '008', '3XL', 60),
(201, 'T2723-454315-003', '54', 'GREEN', '002', 'XS', 30),
(202, 'T2723-454315-003', '54', 'GREEN', '004', 'M', 288),
(203, 'T2723-454315-003', '54', 'GREEN', '005', 'L', 648),
(204, 'T2723-454315-003', '54', 'GREEN', '006', 'XL', 540),
(205, 'T2723-454315-003', '54', 'GREEN', '007', 'XXL', 30),
(206, 'T2723-454315-003', '54', 'GREEN', '008', '3XL', 60),
(207, 'T2723-454315-003', '69', 'NAVY', '003', 'S', 36),
(208, 'T2723-454315-003', '69', 'NAVY', '004', 'M', 36),
(209, 'T2723-454315-003', '69', 'NAVY', '005', 'L', 216),
(210, 'T2723-454315-003', '69', 'NAVY', '006', 'XL', 180),
(211, 'T2723-454315-003', '69', 'NAVY', '007', 'XXL', 30),
(212, 'T2723-454315-003', '69', 'NAVY', '008', '3XL', 30),
(213, 'T1323-456675-002', '07', 'GRAY\nABU-ABU', '004', 'M', 936),
(214, 'T1323-456675-002', '07', 'GRAY\nABU-ABU', '005', 'L', 1260),
(215, 'T1323-456675-002', '07', 'GRAY\nABU-ABU', '006', 'XL', 288),
(216, 'T1323-456706-002', '08', 'DARK GRAY\nABU-ABU TUA', '003', 'S', 6),
(217, 'T1323-456706-002', '08', 'DARK GRAY\nABU-ABU TUA', '004', 'M', 291),
(218, 'T1323-456706-002', '08', 'DARK GRAY\nABU-ABU TUA', '005', 'L', 342),
(219, 'T1323-456706-002', '08', 'DARK GRAY\nABU-ABU TUA', '006', 'XL', 240),
(220, 'T1323-456706-002', '08', 'DARK GRAY\nABU-ABU TUA', '007', 'XXL', 12),
(221, 'T1323-456706-002', '67', 'BLUE\nBIRU', '003', 'S', 6),
(222, 'T1323-456706-002', '67', 'BLUE\nBIRU', '004', 'M', 183),
(223, 'T1323-456706-002', '67', 'BLUE\nBIRU', '005', 'L', 234),
(224, 'T1323-456706-002', '67', 'BLUE\nBIRU', '006', 'XL', 168),
(225, 'T1323-456706-002', '67', 'BLUE\nBIRU', '007', 'XXL', 12),
(226, 'T0722-452335-015', '33', 'KHAKI', '002', 'XS', 240),
(227, 'T0722-452335-015', '33', 'KHAKI', '003', 'S', 450),
(228, 'T0722-452335-015', '33', 'KHAKI', '004', 'M', 670),
(229, 'T0722-452335-015', '33', 'KHAKI', '005', 'L', 200),
(230, 'T0722-452335-015', '33', 'KHAKI', '006', 'XL', 80),
(231, 'T0722-452335-015', '33', 'KHAKI', '007', 'XXL', 40),
(232, 'T1323-457484-002', '00', 'WHITE\nPUTIH', '002', 'XS', 7),
(233, 'T1323-457484-002', '00', 'WHITE\nPUTIH', '003', 'S', 216),
(234, 'T1323-457484-002', '00', 'WHITE\nPUTIH', '004', 'M', 540),
(235, 'T1323-457484-002', '00', 'WHITE\nPUTIH', '005', 'L', 648),
(236, 'T1323-457484-002', '00', 'WHITE\nPUTIH', '006', 'XL', 504),
(237, 'T1323-457484-002', '00', 'WHITE\nPUTIH', '007', 'XXL', 9),
(238, 'T1323-457484-002', '09', 'BLACK\nHITAM', '002', 'XS', 6),
(239, 'T1323-457484-002', '09', 'BLACK\nHITAM', '003', 'S', 108),
(240, 'T1323-457484-002', '09', 'BLACK\nHITAM', '004', 'M', 216),
(241, 'T1323-457484-002', '09', 'BLACK\nHITAM', '005', 'L', 288),
(242, 'T1323-457484-002', '09', 'BLACK\nHITAM', '006', 'XL', 252),
(243, 'T1323-457484-002', '09', 'BLACK\nHITAM', '007', 'XXL', 8),
(244, 'T1323-454312-004', '00', 'WHITE\nPUTIH', '003', 'S', 396),
(245, 'T1323-454312-004', '00', 'WHITE\nPUTIH', '004', 'M', 612),
(246, 'T1323-454312-004', '00', 'WHITE\nPUTIH', '005', 'L', 144),
(247, 'T1323-454312-004', '00', 'WHITE\nPUTIH', '006', 'XL', 864),
(265, 'T1323-456707-002', '09', 'BLACK\nHITAM', '003', 'S', 6),
(266, 'T1323-456707-002', '09', 'BLACK\nHITAM', '004', 'M', 288),
(267, 'T1323-456707-002', '09', 'BLACK\nHITAM', '005', 'L', 288),
(268, 'T1323-456707-002', '09', 'BLACK\nHITAM', '006', 'XL', 216),
(269, 'T1323-456707-002', '09', 'BLACK\nHITAM', '007', 'XXL', 12),
(270, 'T1323-456707-002', '69', 'NAVY\nBIRU TUA', '003', 'S', 6),
(271, 'T1323-456707-002', '69', 'NAVY\nBIRU TUA', '004', 'M', 252),
(272, 'T1323-456707-002', '69', 'NAVY\nBIRU TUA', '005', 'L', 252),
(273, 'T1323-456707-002', '69', 'NAVY\nBIRU TUA', '006', 'XL', 180),
(274, 'T1323-456707-002', '69', 'NAVY\nBIRU TUA', '007', 'XXL', 12),
(275, 'T1323-454311-003', '00', 'WHITE\nPUTIH', '003', 'S', 612),
(276, 'T1323-454311-003', '00', 'WHITE\nPUTIH', '004', 'M', 108),
(277, 'T1323-454311-003', '00', 'WHITE\nPUTIH', '005', 'L', 108),
(278, 'T1323-454311-003', '00', 'WHITE\nPUTIH', '006', 'XL', 216),
(279, 'T0123-462623-001', '00', 'WHITE', '002', 'XS', 500),
(280, 'T0123-462623-001', '00', 'WHITE', '003', 'S', 15000),
(281, 'T0123-462623-001', '00', 'WHITE', '004', 'M', 70200),
(282, 'T0123-462623-001', '00', 'WHITE', '005', 'L', 31020),
(283, 'T0123-462623-001', '00', 'WHITE', '006', 'XL', 10020),
(284, 'T0123-462623-001', '00', 'WHITE', '007', 'XXL', 1500),
(285, 'T0123-462623-001', '00', 'WHITE', '008', '3XL', 2000),
(286, 'T0123-462623-001', '09', 'BLACK', '002', 'XS', 1500),
(287, 'T0123-462623-001', '09', 'BLACK', '003', 'S', 30000),
(288, 'T0123-462623-001', '09', 'BLACK', '004', 'M', 180540),
(289, 'T0123-462623-001', '09', 'BLACK', '005', 'L', 100020),
(290, 'T0123-462623-001', '09', 'BLACK', '006', 'XL', 20040),
(291, 'T0123-462623-001', '09', 'BLACK', '007', 'XXL', 3000),
(292, 'T0123-462623-001', '09', 'BLACK', '008', '3XL', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_colors`
--

CREATE TABLE `tb_colors` (
  `id_color` int(11) NOT NULL,
  `color_code` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_colors`
--

INSERT INTO `tb_colors` (`id_color`, `color_code`, `color`, `remark`) VALUES
(0, '-', '-', '-'),
(1, '00 WHITE', 'WHITE', 'okeys'),
(2, '09 BLACK', 'BLACK', ''),
(3, '02', 'RED', 'RED');

-- --------------------------------------------------------

--
-- Table structure for table `tb_items`
--

CREATE TABLE `tb_items` (
  `id_item` int(11) NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `item_description` varchar(255) NOT NULL,
  `id_category` varchar(200) NOT NULL,
  `id_supplier` int(255) NOT NULL,
  `id_unit` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_items`
--

INSERT INTO `tb_items` (`id_item`, `item_code`, `item_description`, `id_category`, `id_supplier`, `id_unit`, `remark`) VALUES
(0, '-', '', '1', 0, '1', '0'),
(42, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '1', 5, '1', 'PK10676KBBJP.png'),
(58, 'BS00189AD-JP', 'BARCODE STICKER ', '1', 4, '1', 'BS00189AD-JP.png'),
(62, 'HK00002NX-AL', 'PLASTIC HOOK FOR PACKAGING', '1', 6, '1', 'HK00002NX-AL.png'),
(63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '1', 10, '1', 'INSERT001.png'),
(68, 'N7133-35', 'ELASTIC BAND', '1', 13, '1', 'N7133-35.png'),
(69, 'HD8012D', 'Mobilon Tape 8MM ', '1', 14, '1', 'HD8012D.png'),
(70, 'VJ12702A', '32% ACR, 21% VIS, 39% PE, 8% SPX Single Jersey', '1', 15, '1', 'VJ12702A.png'),
(71, 'HD10903AD-ID', 'Paper header', '1', 16, '1', 'HD10903AD-ID.png'),
(72, 'OT01336AD-AL', 'Plastic seal', '1', 16, '1', 'OT01336AD-AL.png'),
(73, 'HT00191ADIID', 'HANG TAG', '1', 16, '1', 'HT00191ADIID.png'),
(74, 'TP00010AD-AL', 'TAG PIN', '1', 16, '1', 'TP00010AD-AL.png'),
(79, 'WC00333AD-JP', 'CARE LABEL', '1', 4, '1', 'WC00333AD-JP.png'),
(80, 'KR001', 'KERTAS A4', '1', 6, '1', 'KR001.png'),
(81, 'KR002', 'KERTAS A3', '2', 6, '1', 'KR002.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_items_log`
--

CREATE TABLE `tb_items_log` (
  `action` varchar(200) NOT NULL,
  `id_item` int(11) NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `item_description` varchar(255) NOT NULL,
  `supplier_code` varchar(200) NOT NULL,
  `unit` varchar(200) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_items_log`
--

INSERT INTO `tb_items_log` (`action`, `id_item`, `item_code`, `item_description`, `supplier_code`, `unit`, `remark`, `date`, `user`) VALUES
('add item', 10, 'sadf', 'adsf', '', '', '', '2022-08-11 09:51:51', 'root@localhost'),
('update item', 1, 'a001', 'sendok', '', '', '', '2022-08-11 09:54:33', 'root@localhost'),
('add item', 11, 'dsafsaf', 'sadfafds', 'adfafds', 'asfaf', 'adfasf', '2022-08-11 09:59:41', 'root@localhost'),
('update item', 11, 'dsafsaf', 'jagung', 'adfafds', 'asfaf', 'adfasf', '2022-08-11 10:02:22', 'root@localhost'),
('add item', 12, 'sadfdsaf', 'asdfadsf', '2', 'asdf', 'adsfadsf', '2022-08-15 10:05:35', 'root@localhost'),
('add item', 13, '123abc', 'adkjlfa', '2', 'pcs', 'aaaaaaa', '2022-08-15 10:09:22', 'root@localhost'),
('add item', 14, '123bbb', 'bbbbbd', '1', 'bbbbu', 'bbbbbr', '2022-08-15 10:09:52', 'root@localhost'),
('add item', 15, '3333', '3333333', '2', '33333', '333333', '2022-08-15 10:11:52', 'root@localhost'),
('add item', 16, '4444', '44444', '2', '44444', '444444', '2022-08-15 10:13:01', 'root@localhost'),
('add item', 17, 'saf', 'sadf', '2', 'wer', 'werewr', '2022-08-15 12:32:23', 'root@localhost'),
('add item', 18, 'sdafsdaf', 'asdadsf', '2', 'adsfdas', 'adsfsadf', '2022-08-15 12:36:45', 'root@localhost'),
('add item', 19, 'er', 'dsfgdsfg', '2', 'sdfg', 'sdfgdsfg', '2022-08-15 12:41:18', 'root@localhost'),
('add item', 20, 'dsaf', 'asdf', '2', 'asdf', 'asdf', '2022-08-15 12:42:17', 'root@localhost'),
('add item', 21, 'asdfa', 'asdfaf', '1', 'sdfd', 'sdfdsf', '2022-08-15 12:59:54', 'root@localhost'),
('add item', 22, 'asdfasf', 'asdfsadf', '1', 'asdf', 'asdfsadf', '2022-08-15 13:07:52', 'root@localhost'),
('add item', 23, 'adsf', 'adsf', '2', 'asdf', 'asdf', '2022-08-15 13:16:39', 'root@localhost'),
('add item', 24, 'asdf', 'asdf', '2', 'asf', 'asdfa', '2022-08-15 13:21:03', 'root@localhost'),
('add item', 25, 'asdf', 'asdf', '2', 'adsf', 'adsf', '2022-08-15 13:24:01', 'root@localhost'),
('add item', 26, 'asdf', 'adsf', '2', 'asdf', 'asdf', '2022-08-15 13:25:26', 'root@localhost'),
('add item', 27, 'asdfasa', 'sdfadf', '2', 'asdf', 'asdfsadf', '2022-08-15 13:34:16', 'root@localhost'),
('add item', 28, 'asdfasdf', 'sadfadsf', '1', 'asdf', 'asdf', '2022-08-15 13:36:29', 'root@localhost'),
('add item', 29, 'terew', 'twt', '2', 'wertw', 'ertewt', '2022-08-15 13:37:39', 'root@localhost'),
('add item', 30, 'asdfsaa', 'sdfasf', '2', 'asdf', 'asdfas', '2022-08-15 13:38:06', 'root@localhost'),
('update item', 1, 'a001', 'sendok ssss', 's05', 'pcs', 'alat masak', '2022-08-15 14:48:12', 'root@localhost'),
('update item', 11, '2323ssssss', 'jagung', 'adfafds', 'asfaf', 'adfasf', '2022-08-15 15:05:03', 'root@localhost'),
('update item', 12, '454545', 'asdfadsf', '2', 'asdf', 'adsfadsf', '2022-08-15 15:06:21', 'root@localhost'),
('update item', 1, 'a001', 'sendok ssss', 's05', 'pcs', 'alat masak', '2022-08-15 16:40:47', 'root@localhost'),
('update item', 11, '2323ssssss', 'jagung', 'adfafds', 'asfaf', 'adfasf', '2022-08-15 16:40:56', 'root@localhost'),
('update item', 14, '123bbb', 'bbbbbd', '1', 'bbbbu', 'bbbbbr', '2022-08-15 16:41:06', 'root@localhost'),
('update item', 12, '454545', 'asdfadsf', '2', 'asdf', 'adsfadsf', '2022-08-16 10:16:29', 'root@localhost'),
('update item', 13, '123abc', 'adkjlfa', '2', 'pcs', 'aaaaaaa', '2022-08-16 10:16:39', 'root@localhost'),
('update item', 26, '4566', 'susu2', '2', '10', 'ok', '2022-08-16 11:47:23', 'root@localhost'),
('add item', 27, 'tttttttttt', 'asdfsaf', '2', 'sdfsdf', 'dsfsdf', '2022-08-18 11:44:54', 'root@localhost'),
('add item', 28, 'rrrrrrrr', 'rrrrrrrrrrr', '2', 'rrrrrrrrrrr', 'rrrrrrrrrrrr', '2022-08-18 11:48:52', 'root@localhost'),
('add item', 29, '55555', '5555555', '2', '55555', '555555', '2022-08-18 11:54:39', 'root@localhost'),
('update item', 29, '55555', '5555555', '2', '55555', '555555', '2022-08-18 11:57:22', 'root@localhost'),
('update item', 29, '55555', '5555555', '2', '55555', '555555', '2022-08-18 11:58:04', 'root@localhost'),
('update item', 23, 'adsf', 'adsf', '2', 'rrrrrrr', 'asdf', '2022-08-18 12:51:17', 'root@localhost'),
('add item', 30, 'asdfadf', 'asdfasdf', '0', '', '', '2022-08-18 15:09:41', 'root@localhost'),
('add item', 31, 'asdfadsfas', 'dfsadf', '0', '', '', '2022-08-18 15:11:18', 'root@localhost'),
('add item', 32, 'sadfdsaf', 'asdfadsf', '2', '', '', '2022-08-18 15:11:31', 'root@localhost'),
('add item', 33, 'tomy', 'lim', '0', '', '', '2022-08-18 15:12:05', 'root@localhost'),
('add item', 34, 'tomy', 'squad', '0', '', '', '2022-08-18 15:12:51', 'root@localhost'),
('add item', 35, 'asdfafda', 'asdfasdfasdf', '2', '', '', '2022-08-18 15:13:31', 'root@localhost'),
('add item', 36, 'asdfa', 'asdfadsf', '2', 'asdfsaf', 'asdfsadf', '2022-08-18 15:58:32', 'root@localhost'),
('update item', 36, '', '', '2', '', '', '2022-08-18 16:00:33', 'root@localhost'),
('update item', 36, '', '', '2', '', '', '2022-08-18 16:00:56', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'qqqqqqq', '2022-08-18 16:03:18', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'qqqqqqq', '2022-08-18 16:04:11', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'cccccc', '2022-08-18 16:06:14', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'ddd', '2022-08-18 16:06:47', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'ddddfdfdf', '2022-08-18 16:31:06', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'ccccccc', '2022-08-18 16:33:48', 'root@localhost'),
('update item', 25, 'asdf', 'asdf', '2', 'adsf', 'ccccccc', '2022-08-18 16:34:51', 'root@localhost'),
('update item', 24, 'asdf', 'asdf', '2', 'asf', 'asdfa9999', '2022-08-18 16:35:16', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'cccccccdfdf', '2022-08-18 16:37:11', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'gfgfgfgfg', '2022-08-18 16:37:26', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'sdfsdfdsf', 'gfgfgfgfg', '2022-08-18 16:50:03', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'sdfsdfdsf', 'sdf', '2022-08-18 16:50:33', 'root@localhost'),
('add item', 37, '', '', '0', '', '', '2022-08-18 16:51:04', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'sdfsdfdsf', 'sdfretret', '2022-08-18 16:51:18', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'sdfsdfdsf', 'sdfretretd', '2022-08-18 16:52:24', 'root@localhost'),
('update item', 29, '55555', '5555555', '2', '55555', '555555', '2022-08-18 16:52:55', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'sdfsdfdsf', 'sdfretretda', '2022-08-18 16:57:00', 'root@localhost'),
('add item', 38, '111', '11111', '2', '111', '111111', '2022-08-18 16:57:17', 'root@localhost'),
('update item', 38, '111', '11111', '2', '111', '111111', '2022-08-19 08:08:44', 'root@localhost'),
('add item', 39, '', '', '0', '', '', '2022-08-19 09:18:37', 'root@localhost'),
('add item', 40, '', '', '0', '', '', '2022-08-19 09:25:38', 'root@localhost'),
('add item', 41, 'safsafas', 'asdf', '0', '', '', '2022-08-19 09:26:12', 'root@localhost'),
('add item', 42, '', '', '0', '', '', '2022-08-19 09:26:19', 'root@localhost'),
('add item', 43, '', 'wererw', '0', '', '', '2022-08-19 09:28:47', 'root@localhost'),
('add item', 44, 'qwer', 'qwer', '0', '', '', '2022-08-19 10:42:47', 'root@localhost'),
('add item', 45, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:01:30', 'root@localhost'),
('add item', 46, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:01:32', 'root@localhost'),
('add item', 47, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:01:32', 'root@localhost'),
('add item', 48, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:01:33', 'root@localhost'),
('add item', 49, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:01:33', 'root@localhost'),
('add item', 50, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:01:33', 'root@localhost'),
('add item', 51, '1111', '111111', '0', '', '', '2022-08-19 13:02:30', 'root@localhost'),
('add item', 52, '111', '111', '0', '', '', '2022-08-19 13:03:10', 'root@localhost'),
('add item', 53, '111', '111', '0', '', '', '2022-08-19 13:03:12', 'root@localhost'),
('add item', 54, '111', '111', '0', '', '', '2022-08-19 13:03:12', 'root@localhost'),
('add item', 55, '111', '111', '0', '', '', '2022-08-19 13:03:13', 'root@localhost'),
('add item', 56, '111', '111', '0', '', '', '2022-08-19 13:03:13', 'root@localhost'),
('add item', 57, 'asfddasfads', '', '0', '', '', '2022-08-19 13:08:23', 'root@localhost'),
('add item', 58, 'werewrwe', '', '2', '', '', '2022-08-19 13:17:41', 'root@localhost'),
('add item', 59, 'xxxxxxxx', '', '2', '', '', '2022-08-19 13:18:19', 'root@localhost'),
('add item', 60, 'aasfsdaf', 'qwerqrasdfas', '2', 'wewew', 'ewew', '2022-08-19 13:25:10', 'root@localhost'),
('add item', 61, 'ewrt', '', '2', '', '', '2022-08-19 13:27:07', 'root@localhost'),
('update item', 60, 'aasfsdaf', 'qwerqrasdfas55555', '2', 'wewew', 'ewew', '2022-08-19 13:27:18', 'root@localhost'),
('update item', 60, 'aasfsdaf', 'qwerqrasdfas55555', '2', 'wewew', 'ewew', '2022-08-19 15:16:34', 'root@localhost'),
('add item', 62, 'adsf', 'fads', '2', 'sfg', 'sdgfsg', '2022-08-19 15:16:56', 'root@localhost'),
('update item', 62, 'adsf', 'fads', '2', 'sfg', 'cccccccc', '2022-08-19 15:34:13', 'root@localhost'),
('add item', 63, 'asf', '', '2', '', '', '2022-08-19 15:43:23', 'root@localhost'),
('update item', 45, '1111', '11111111', '2', '11111', 'aaaaaaaaaaa', '2022-08-19 16:08:49', 'root@localhost'),
('update item', 45, 'sadfasadf', '11111111', '2', '11111', 'aaaaaaaaaaa', '2022-08-19 16:32:44', 'root@localhost'),
('update item', 45, 'sadfasadf', '11111111', '2', '11111', 'aaaaaaaaaaa454', '2022-08-19 16:49:05', 'root@localhost'),
('add item', 46, 'sadf', 'dsaf', '3', '', '', '2022-08-19 22:38:39', 'root@localhost'),
('update item', 46, 'sadf', 'dsaf', '3', '', '', '2022-08-19 22:39:19', 'root@localhost'),
('add item', 47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', '0', '2022-08-20 00:30:35', 'root@localhost'),
('add item', 48, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', '', '2022-08-20 00:31:08', 'root@localhost'),
('add item', 49, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', '', '2022-08-20 00:31:41', 'root@localhost'),
('update item', 49, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', '', '2022-08-20 00:32:43', 'root@localhost'),
('update item', 48, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', '', '2022-08-20 00:32:50', 'root@localhost'),
('update item', 47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', '0', '2022-08-20 00:32:57', 'root@localhost'),
('update item', 47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-08-20 01:02:01', 'root@localhost'),
('update item', 48, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-08-20 01:02:07', 'root@localhost'),
('update item', 49, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', 'Import', '2022-08-20 01:02:14', 'root@localhost'),
('add item', 50, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', 'Import', '2022-08-20 01:02:54', 'root@localhost'),
('update item', 47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-08-20 01:03:11', 'root@localhost'),
('update item', 47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-08-29 11:44:01', 'root@localhost'),
('update item', 48, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-08-29 11:44:10', 'root@localhost'),
('update item', 49, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', 'Import', '2022-08-29 11:44:12', 'root@localhost'),
('update item', 50, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', 'Import', '2022-08-29 11:44:17', 'root@localhost'),
('update item', 47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-08-29 11:44:20', 'root@localhost'),
('update item', 48, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-08-29 11:44:24', 'root@localhost'),
('update item', 49, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', 'Import', '2022-08-29 11:44:27', 'root@localhost'),
('update item', 50, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', 'Import', '2022-08-29 11:44:31', 'root@localhost'),
('add item', 51, 'sfdgs', 'dsfg', '5', 'sdfg', 'Local', '2022-09-02 11:16:00', 'root@localhost'),
('add item', 52, 'adsf', 'sdaf', '6', 'sdafasdf', 'Local', '2022-09-02 11:16:26', 'root@localhost'),
('add item', 53, '333', '333', '5', '3333', 'Local', '2022-09-02 11:17:37', 'root@localhost'),
('add item', 54, '3333', '3333', '5', '333', 'Local', '2022-09-02 11:21:35', 'root@localhost'),
('update item', 54, '3333', '3333', '4', '333', 'Local', '2022-09-02 12:54:18', 'root@localhost'),
('update item', 54, '3333', '3333', '4', '333', 'Local', '2022-09-02 12:59:23', 'root@localhost'),
('update item', 54, '3333', '3333', '4', '333', 'Local', '2022-09-02 12:59:33', 'root@localhost'),
('update item', 54, '3333', '3333', '4', '333', 'Local', '2022-09-02 13:00:18', 'root@localhost'),
('update item', 54, '3333', '3333', '4', '333', 'Local', '2022-09-02 13:01:14', 'root@localhost'),
('update item', 54, '3333', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', '4', '333', 'Local', '2022-09-02 15:21:58', 'root@localhost'),
('update item', 54, '3333', 'aku dan kamu itu beda', '4', '333', 'Local', '2022-09-02 15:22:30', 'root@localhost'),
('add item', 55, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'Local', '2022-09-14 13:45:56', 'root@localhost'),
('update item', 60, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-09-14 13:47:12', 'root@localhost'),
('update item', 61, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', 'Import', '2022-09-14 13:47:16', 'root@localhost'),
('update item', 62, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', 'Import', '2022-09-14 13:47:20', 'root@localhost'),
('update item', 48, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'Local', '2022-09-14 13:47:25', 'root@localhost'),
('add item', 56, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'Local', '2022-09-14 13:48:00', 'root@localhost'),
('add item', 57, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-09-14 13:48:16', 'root@localhost'),
('update item', 70, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', 'Import', '2022-09-14 13:49:02', 'root@localhost'),
('update item', 71, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', 'Import', '2022-09-14 13:49:06', 'root@localhost'),
('add item', 58, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-09-14 13:49:23', 'root@localhost'),
('add item', 59, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-09-14 13:49:34', 'root@localhost'),
('add item', 61, '-', '', '0', '', '', '2022-09-14 13:50:21', 'root@localhost'),
('update item', 0, '-', '', '0', '', '', '2022-09-14 13:50:40', 'root@localhost'),
('add item', 62, 'HK00002NX-AL', 'PLASTIC HOOK FOR PACKAGING', '6', 'pcs', 'Local', '2022-09-14 13:53:07', 'root@localhost'),
('update item', 41, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', 'Import', '2022-09-14 13:54:34', 'root@localhost'),
('update item', 42, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', 'Import', '2022-09-14 13:54:38', 'root@localhost'),
('add item', 63, 'INSERTBOARD FO PACKAGING SET', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 13:56:08', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 13:56:24', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 13:59:33', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:01:16', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:01:25', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:02:17', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:02:30', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:02:37', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:03:21', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:03:29', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:03:59', 'root@localhost'),
('update item', 62, 'HK00002NX-AL', 'PLASTIC HOOK FOR PACKAGING', '6', 'pcs', 'Local', '2022-09-14 14:04:04', 'root@localhost'),
('update item', 42, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', 'Import', '2022-09-14 14:04:11', 'root@localhost'),
('update item', 47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-09-14 14:04:16', 'root@localhost'),
('update item', 48, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'Local', '2022-09-14 14:04:20', 'root@localhost'),
('update item', 56, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'Local', '2022-09-14 14:04:24', 'root@localhost'),
('update item', 57, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-09-14 14:04:29', 'root@localhost'),
('update item', 58, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-09-14 14:04:38', 'root@localhost'),
('update item', 59, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-09-14 14:04:55', 'root@localhost'),
('update item', 60, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-09-14 14:05:00', 'root@localhost'),
('add item', 64, '555', '555', '4', '555', '555', '2022-10-05 15:35:25', 'root@localhost'),
('update item', 64, '555', '555', '4', '555', '555aaaaa', '2022-10-05 15:35:35', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Locals', '2022-10-06 10:14:04', 'root@localhost'),
('add item', 65, '1', '1', '4', '1', '1', '2022-10-06 10:14:28', 'root@localhost'),
('add item', 66, '123', 'Barcode Label', '12', 'pcs', 'Barcode Label Size M', '2022-10-11 14:27:48', 'root@localhost'),
('add item', 67, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'CARE LABEL SIZE M BLACK', '2022-10-12 15:32:58', 'root@localhost'),
('add item', 68, '1', '2', '6', '3', '4', '2022-10-20 11:05:07', 'root@localhost'),
('update item', 68, '1', '2', '6', '3', '44', '2022-10-20 11:10:33', 'root@localhost'),
('add item', 69, '1', '1', '5', '1', '1', '2022-10-20 11:20:40', 'root@localhost'),
('add item', 70, '1', '1', '5', '1', '1', '2022-10-20 11:21:43', 'root@localhost'),
('add item', 71, '1', '1', '6', '1', '1', '2022-10-20 11:22:12', 'root@localhost'),
('add item', 72, '1', '1', '9', '1', '1', '2022-10-20 11:22:43', 'root@localhost'),
('update item', 66, '343434343434', 'Barcode Label', '12', 'pcs', 'Barcode Label Size M', '2022-10-20 11:23:14', 'root@localhost'),
('update item', 42, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', '', '2022-11-10 15:34:55', 'root@localhost'),
('update item', 57, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', '', '2022-11-10 15:34:58', 'root@localhost'),
('update item', 58, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', '', '2022-11-10 15:35:00', 'root@localhost'),
('update item', 60, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', '', '2022-11-10 15:35:01', 'root@localhost'),
('update item', 62, 'HK00002NX-AL', 'PLASTIC HOOK FOR PACKAGING', '6', 'pcs', '', '2022-11-10 15:35:03', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', '', '2022-11-10 15:35:05', 'root@localhost'),
('add item', 68, 'N7133-35', 'ELASTIC BAND', '9', 'Mtr', '', '2022-11-17 14:38:03', 'root@localhost'),
('update item', 68, 'N7133-35', 'ELASTIC BAND', '13', 'Mtr', '', '2022-11-17 14:39:58', 'root@localhost'),
('add item', 69, 'HD8012D', 'Mobilon Tape 8MM ', '14', 'Kg', 'Locals', '2022-11-17 15:29:30', 'root@localhost'),
('add item', 70, 'VJ12702A', '32% ACR, 21% VIS, 39% PE, 8% SPX Single Jersey', '15', 'mtr', '', '2022-11-17 15:39:53', 'root@localhost'),
('add item', 71, 'HD10903AD-ID', 'Paper header (pcs)', '16', 'PCS', '', '2022-11-17 15:45:04', 'root@localhost'),
('add item', 72, 'OT01336AD-AL', 'Plastic seal (pcs)', '16', 'PCS', '', '2022-11-17 15:45:25', 'root@localhost'),
('add item', 73, 'HT00191ADIID', 'HANG TAG (pcs)', '16', 'PCS', '', '2022-11-17 15:45:45', 'root@localhost'),
('add item', 74, 'TP00010AD-AL', 'TAG PIN (pcs)', '16', 'PCS', '', '2022-11-17 15:46:01', 'root@localhost'),
('add item', 75, '222', '222', '9', '222', '0', '2022-11-18 10:57:56', 'root@localhost'),
('update item', 69, 'HD8012D', 'Mobilon Tape 8MM ', '14', 'Kg', '', '2022-11-18 10:58:14', 'root@localhost'),
('update item', 75, '222', '222', '9', 'pcs', '0', '2022-11-18 10:59:10', 'root@localhost'),
('update item', 75, 'INT0001', 'INTERLINING', '9', 'pcs', '0', '2022-11-18 11:00:38', 'root@localhost'),
('update item', 74, 'TP00010AD-AL', 'TAG PIN', '16', 'PCS', '0', '2022-11-18 11:26:39', 'root@localhost'),
('update item', 73, 'HT00191ADIID', 'HANG TAG', '16', 'PCS', '0', '2022-11-18 11:26:47', 'root@localhost'),
('update item', 72, 'OT01336AD-AL', 'Plastic seal', '16', 'PCS', '0', '2022-11-18 11:26:57', 'root@localhost'),
('update item', 71, 'HD10903AD-ID', 'Paper header', '16', 'PCS', '0', '2022-11-18 11:27:03', 'root@localhost'),
('add item', 10, 'sadf', 'adsf', '', '', '', '2022-08-11 09:51:51', 'root@localhost'),
('update item', 1, 'a001', 'sendok', '', '', '', '2022-08-11 09:54:33', 'root@localhost'),
('add item', 11, 'dsafsaf', 'sadfafds', 'adfafds', 'asfaf', 'adfasf', '2022-08-11 09:59:41', 'root@localhost'),
('update item', 11, 'dsafsaf', 'jagung', 'adfafds', 'asfaf', 'adfasf', '2022-08-11 10:02:22', 'root@localhost'),
('add item', 12, 'sadfdsaf', 'asdfadsf', '2', 'asdf', 'adsfadsf', '2022-08-15 10:05:35', 'root@localhost'),
('add item', 13, '123abc', 'adkjlfa', '2', 'pcs', 'aaaaaaa', '2022-08-15 10:09:22', 'root@localhost'),
('add item', 14, '123bbb', 'bbbbbd', '1', 'bbbbu', 'bbbbbr', '2022-08-15 10:09:52', 'root@localhost'),
('add item', 15, '3333', '3333333', '2', '33333', '333333', '2022-08-15 10:11:52', 'root@localhost'),
('add item', 16, '4444', '44444', '2', '44444', '444444', '2022-08-15 10:13:01', 'root@localhost'),
('add item', 17, 'saf', 'sadf', '2', 'wer', 'werewr', '2022-08-15 12:32:23', 'root@localhost'),
('add item', 18, 'sdafsdaf', 'asdadsf', '2', 'adsfdas', 'adsfsadf', '2022-08-15 12:36:45', 'root@localhost'),
('add item', 19, 'er', 'dsfgdsfg', '2', 'sdfg', 'sdfgdsfg', '2022-08-15 12:41:18', 'root@localhost'),
('add item', 20, 'dsaf', 'asdf', '2', 'asdf', 'asdf', '2022-08-15 12:42:17', 'root@localhost'),
('add item', 21, 'asdfa', 'asdfaf', '1', 'sdfd', 'sdfdsf', '2022-08-15 12:59:54', 'root@localhost'),
('add item', 22, 'asdfasf', 'asdfsadf', '1', 'asdf', 'asdfsadf', '2022-08-15 13:07:52', 'root@localhost'),
('add item', 23, 'adsf', 'adsf', '2', 'asdf', 'asdf', '2022-08-15 13:16:39', 'root@localhost'),
('add item', 24, 'asdf', 'asdf', '2', 'asf', 'asdfa', '2022-08-15 13:21:03', 'root@localhost'),
('add item', 25, 'asdf', 'asdf', '2', 'adsf', 'adsf', '2022-08-15 13:24:01', 'root@localhost'),
('add item', 26, 'asdf', 'adsf', '2', 'asdf', 'asdf', '2022-08-15 13:25:26', 'root@localhost'),
('add item', 27, 'asdfasa', 'sdfadf', '2', 'asdf', 'asdfsadf', '2022-08-15 13:34:16', 'root@localhost'),
('add item', 28, 'asdfasdf', 'sadfadsf', '1', 'asdf', 'asdf', '2022-08-15 13:36:29', 'root@localhost'),
('add item', 29, 'terew', 'twt', '2', 'wertw', 'ertewt', '2022-08-15 13:37:39', 'root@localhost'),
('add item', 30, 'asdfsaa', 'sdfasf', '2', 'asdf', 'asdfas', '2022-08-15 13:38:06', 'root@localhost'),
('update item', 1, 'a001', 'sendok ssss', 's05', 'pcs', 'alat masak', '2022-08-15 14:48:12', 'root@localhost'),
('update item', 11, '2323ssssss', 'jagung', 'adfafds', 'asfaf', 'adfasf', '2022-08-15 15:05:03', 'root@localhost'),
('update item', 12, '454545', 'asdfadsf', '2', 'asdf', 'adsfadsf', '2022-08-15 15:06:21', 'root@localhost'),
('update item', 1, 'a001', 'sendok ssss', 's05', 'pcs', 'alat masak', '2022-08-15 16:40:47', 'root@localhost'),
('update item', 11, '2323ssssss', 'jagung', 'adfafds', 'asfaf', 'adfasf', '2022-08-15 16:40:56', 'root@localhost'),
('update item', 14, '123bbb', 'bbbbbd', '1', 'bbbbu', 'bbbbbr', '2022-08-15 16:41:06', 'root@localhost'),
('update item', 12, '454545', 'asdfadsf', '2', 'asdf', 'adsfadsf', '2022-08-16 10:16:29', 'root@localhost'),
('update item', 13, '123abc', 'adkjlfa', '2', 'pcs', 'aaaaaaa', '2022-08-16 10:16:39', 'root@localhost'),
('update item', 26, '4566', 'susu2', '2', '10', 'ok', '2022-08-16 11:47:23', 'root@localhost'),
('add item', 27, 'tttttttttt', 'asdfsaf', '2', 'sdfsdf', 'dsfsdf', '2022-08-18 11:44:54', 'root@localhost'),
('add item', 28, 'rrrrrrrr', 'rrrrrrrrrrr', '2', 'rrrrrrrrrrr', 'rrrrrrrrrrrr', '2022-08-18 11:48:52', 'root@localhost'),
('add item', 29, '55555', '5555555', '2', '55555', '555555', '2022-08-18 11:54:39', 'root@localhost'),
('update item', 29, '55555', '5555555', '2', '55555', '555555', '2022-08-18 11:57:22', 'root@localhost'),
('update item', 29, '55555', '5555555', '2', '55555', '555555', '2022-08-18 11:58:04', 'root@localhost'),
('update item', 23, 'adsf', 'adsf', '2', 'rrrrrrr', 'asdf', '2022-08-18 12:51:17', 'root@localhost'),
('add item', 30, 'asdfadf', 'asdfasdf', '0', '', '', '2022-08-18 15:09:41', 'root@localhost'),
('add item', 31, 'asdfadsfas', 'dfsadf', '0', '', '', '2022-08-18 15:11:18', 'root@localhost'),
('add item', 32, 'sadfdsaf', 'asdfadsf', '2', '', '', '2022-08-18 15:11:31', 'root@localhost'),
('add item', 33, 'tomy', 'lim', '0', '', '', '2022-08-18 15:12:05', 'root@localhost'),
('add item', 34, 'tomy', 'squad', '0', '', '', '2022-08-18 15:12:51', 'root@localhost'),
('add item', 35, 'asdfafda', 'asdfasdfasdf', '2', '', '', '2022-08-18 15:13:31', 'root@localhost'),
('add item', 36, 'asdfa', 'asdfadsf', '2', 'asdfsaf', 'asdfsadf', '2022-08-18 15:58:32', 'root@localhost'),
('update item', 36, '', '', '2', '', '', '2022-08-18 16:00:33', 'root@localhost'),
('update item', 36, '', '', '2', '', '', '2022-08-18 16:00:56', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'qqqqqqq', '2022-08-18 16:03:18', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'qqqqqqq', '2022-08-18 16:04:11', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'cccccc', '2022-08-18 16:06:14', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'ddd', '2022-08-18 16:06:47', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'ddddfdfdf', '2022-08-18 16:31:06', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'ccccccc', '2022-08-18 16:33:48', 'root@localhost'),
('update item', 25, 'asdf', 'asdf', '2', 'adsf', 'ccccccc', '2022-08-18 16:34:51', 'root@localhost'),
('update item', 24, 'asdf', 'asdf', '2', 'asf', 'asdfa9999', '2022-08-18 16:35:16', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'cccccccdfdf', '2022-08-18 16:37:11', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'qqqqq', 'gfgfgfgfg', '2022-08-18 16:37:26', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'sdfsdfdsf', 'gfgfgfgfg', '2022-08-18 16:50:03', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'sdfsdfdsf', 'sdf', '2022-08-18 16:50:33', 'root@localhost'),
('add item', 37, '', '', '0', '', '', '2022-08-18 16:51:04', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'sdfsdfdsf', 'sdfretret', '2022-08-18 16:51:18', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'sdfsdfdsf', 'sdfretretd', '2022-08-18 16:52:24', 'root@localhost'),
('update item', 29, '55555', '5555555', '2', '55555', '555555', '2022-08-18 16:52:55', 'root@localhost'),
('update item', 36, 'qqqqqqqqq', 'qqqqqqq', '2', 'sdfsdfdsf', 'sdfretretda', '2022-08-18 16:57:00', 'root@localhost'),
('add item', 38, '111', '11111', '2', '111', '111111', '2022-08-18 16:57:17', 'root@localhost'),
('update item', 38, '111', '11111', '2', '111', '111111', '2022-08-19 08:08:44', 'root@localhost'),
('add item', 39, '', '', '0', '', '', '2022-08-19 09:18:37', 'root@localhost'),
('add item', 40, '', '', '0', '', '', '2022-08-19 09:25:38', 'root@localhost'),
('add item', 41, 'safsafas', 'asdf', '0', '', '', '2022-08-19 09:26:12', 'root@localhost'),
('add item', 42, '', '', '0', '', '', '2022-08-19 09:26:19', 'root@localhost'),
('add item', 43, '', 'wererw', '0', '', '', '2022-08-19 09:28:47', 'root@localhost'),
('add item', 44, 'qwer', 'qwer', '0', '', '', '2022-08-19 10:42:47', 'root@localhost'),
('add item', 45, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:01:30', 'root@localhost'),
('add item', 46, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:01:32', 'root@localhost'),
('add item', 47, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:01:32', 'root@localhost'),
('add item', 48, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:01:33', 'root@localhost'),
('add item', 49, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:01:33', 'root@localhost'),
('add item', 50, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:01:33', 'root@localhost'),
('add item', 51, '1111', '111111', '0', '', '', '2022-08-19 13:02:30', 'root@localhost'),
('add item', 52, '111', '111', '0', '', '', '2022-08-19 13:03:10', 'root@localhost'),
('add item', 53, '111', '111', '0', '', '', '2022-08-19 13:03:12', 'root@localhost'),
('add item', 54, '111', '111', '0', '', '', '2022-08-19 13:03:12', 'root@localhost'),
('add item', 55, '111', '111', '0', '', '', '2022-08-19 13:03:13', 'root@localhost'),
('add item', 56, '111', '111', '0', '', '', '2022-08-19 13:03:13', 'root@localhost'),
('add item', 57, 'asfddasfads', '', '0', '', '', '2022-08-19 13:08:23', 'root@localhost'),
('add item', 58, 'werewrwe', '', '2', '', '', '2022-08-19 13:17:41', 'root@localhost'),
('add item', 59, 'xxxxxxxx', '', '2', '', '', '2022-08-19 13:18:19', 'root@localhost'),
('add item', 60, 'aasfsdaf', 'qwerqrasdfas', '2', 'wewew', 'ewew', '2022-08-19 13:25:10', 'root@localhost'),
('add item', 61, 'ewrt', '', '2', '', '', '2022-08-19 13:27:07', 'root@localhost'),
('update item', 60, 'aasfsdaf', 'qwerqrasdfas55555', '2', 'wewew', 'ewew', '2022-08-19 13:27:18', 'root@localhost'),
('update item', 60, 'aasfsdaf', 'qwerqrasdfas55555', '2', 'wewew', 'ewew', '2022-08-19 15:16:34', 'root@localhost'),
('add item', 62, 'adsf', 'fads', '2', 'sfg', 'sdgfsg', '2022-08-19 15:16:56', 'root@localhost'),
('update item', 62, 'adsf', 'fads', '2', 'sfg', 'cccccccc', '2022-08-19 15:34:13', 'root@localhost'),
('add item', 63, 'asf', '', '2', '', '', '2022-08-19 15:43:23', 'root@localhost'),
('update item', 45, '1111', '11111111', '2', '11111', 'aaaaaaaaaaa', '2022-08-19 16:08:49', 'root@localhost'),
('update item', 45, 'sadfasadf', '11111111', '2', '11111', 'aaaaaaaaaaa', '2022-08-19 16:32:44', 'root@localhost'),
('update item', 45, 'sadfasadf', '11111111', '2', '11111', 'aaaaaaaaaaa454', '2022-08-19 16:49:05', 'root@localhost'),
('add item', 46, 'sadf', 'dsaf', '3', '', '', '2022-08-19 22:38:39', 'root@localhost'),
('update item', 46, 'sadf', 'dsaf', '3', '', '', '2022-08-19 22:39:19', 'root@localhost'),
('add item', 47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', '0', '2022-08-20 00:30:35', 'root@localhost'),
('add item', 48, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', '', '2022-08-20 00:31:08', 'root@localhost'),
('add item', 49, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', '', '2022-08-20 00:31:41', 'root@localhost'),
('update item', 49, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', '', '2022-08-20 00:32:43', 'root@localhost'),
('update item', 48, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', '', '2022-08-20 00:32:50', 'root@localhost'),
('update item', 47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', '0', '2022-08-20 00:32:57', 'root@localhost'),
('update item', 47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-08-20 01:02:01', 'root@localhost'),
('update item', 48, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-08-20 01:02:07', 'root@localhost'),
('update item', 49, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', 'Import', '2022-08-20 01:02:14', 'root@localhost'),
('add item', 50, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', 'Import', '2022-08-20 01:02:54', 'root@localhost'),
('update item', 47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-08-20 01:03:11', 'root@localhost'),
('update item', 47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-08-29 11:44:01', 'root@localhost'),
('update item', 48, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-08-29 11:44:10', 'root@localhost'),
('update item', 49, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', 'Import', '2022-08-29 11:44:12', 'root@localhost'),
('update item', 50, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', 'Import', '2022-08-29 11:44:17', 'root@localhost'),
('update item', 47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-08-29 11:44:20', 'root@localhost'),
('update item', 48, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-08-29 11:44:24', 'root@localhost'),
('update item', 49, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', 'Import', '2022-08-29 11:44:27', 'root@localhost'),
('update item', 50, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', 'Import', '2022-08-29 11:44:31', 'root@localhost'),
('add item', 51, 'sfdgs', 'dsfg', '5', 'sdfg', 'Local', '2022-09-02 11:16:00', 'root@localhost'),
('add item', 52, 'adsf', 'sdaf', '6', 'sdafasdf', 'Local', '2022-09-02 11:16:26', 'root@localhost'),
('add item', 53, '333', '333', '5', '3333', 'Local', '2022-09-02 11:17:37', 'root@localhost'),
('add item', 54, '3333', '3333', '5', '333', 'Local', '2022-09-02 11:21:35', 'root@localhost'),
('update item', 54, '3333', '3333', '4', '333', 'Local', '2022-09-02 12:54:18', 'root@localhost'),
('update item', 54, '3333', '3333', '4', '333', 'Local', '2022-09-02 12:59:23', 'root@localhost'),
('update item', 54, '3333', '3333', '4', '333', 'Local', '2022-09-02 12:59:33', 'root@localhost'),
('update item', 54, '3333', '3333', '4', '333', 'Local', '2022-09-02 13:00:18', 'root@localhost'),
('update item', 54, '3333', '3333', '4', '333', 'Local', '2022-09-02 13:01:14', 'root@localhost'),
('update item', 54, '3333', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', '4', '333', 'Local', '2022-09-02 15:21:58', 'root@localhost'),
('update item', 54, '3333', 'aku dan kamu itu beda', '4', '333', 'Local', '2022-09-02 15:22:30', 'root@localhost'),
('add item', 55, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'Local', '2022-09-14 13:45:56', 'root@localhost'),
('update item', 60, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-09-14 13:47:12', 'root@localhost'),
('update item', 61, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', 'Import', '2022-09-14 13:47:16', 'root@localhost'),
('update item', 62, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', 'Import', '2022-09-14 13:47:20', 'root@localhost'),
('update item', 48, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'Local', '2022-09-14 13:47:25', 'root@localhost'),
('add item', 56, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'Local', '2022-09-14 13:48:00', 'root@localhost'),
('add item', 57, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-09-14 13:48:16', 'root@localhost'),
('update item', 70, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', 'Import', '2022-09-14 13:49:02', 'root@localhost'),
('update item', 71, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', 'Import', '2022-09-14 13:49:06', 'root@localhost'),
('add item', 58, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-09-14 13:49:23', 'root@localhost'),
('add item', 59, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-09-14 13:49:34', 'root@localhost'),
('add item', 61, '-', '', '0', '', '', '2022-09-14 13:50:21', 'root@localhost'),
('update item', 0, '-', '', '0', '', '', '2022-09-14 13:50:40', 'root@localhost'),
('add item', 62, 'HK00002NX-AL', 'PLASTIC HOOK FOR PACKAGING', '6', 'pcs', 'Local', '2022-09-14 13:53:07', 'root@localhost'),
('update item', 41, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', 'Import', '2022-09-14 13:54:34', 'root@localhost'),
('update item', 42, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', 'Import', '2022-09-14 13:54:38', 'root@localhost'),
('add item', 63, 'INSERTBOARD FO PACKAGING SET', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 13:56:08', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 13:56:24', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 13:59:33', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:01:16', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:01:25', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:02:17', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:02:30', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:02:37', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:03:21', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:03:29', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Local', '2022-09-14 14:03:59', 'root@localhost'),
('update item', 62, 'HK00002NX-AL', 'PLASTIC HOOK FOR PACKAGING', '6', 'pcs', 'Local', '2022-09-14 14:04:04', 'root@localhost'),
('update item', 42, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', 'Import', '2022-09-14 14:04:11', 'root@localhost'),
('update item', 47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-09-14 14:04:16', 'root@localhost'),
('update item', 48, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'Local', '2022-09-14 14:04:20', 'root@localhost'),
('update item', 56, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'Local', '2022-09-14 14:04:24', 'root@localhost'),
('update item', 57, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-09-14 14:04:29', 'root@localhost'),
('update item', 58, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-09-14 14:04:38', 'root@localhost'),
('update item', 59, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-09-14 14:04:55', 'root@localhost'),
('update item', 60, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-09-14 14:05:00', 'root@localhost'),
('add item', 64, '555', '555', '4', '555', '555', '2022-10-05 15:35:25', 'root@localhost'),
('update item', 64, '555', '555', '4', '555', '555aaaaa', '2022-10-05 15:35:35', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', 'Locals', '2022-10-06 10:14:04', 'root@localhost'),
('add item', 65, '1', '1', '4', '1', '1', '2022-10-06 10:14:28', 'root@localhost'),
('add item', 66, '123', 'Barcode Label', '12', 'pcs', 'Barcode Label Size M', '2022-10-11 14:27:48', 'root@localhost'),
('add item', 67, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'CARE LABEL SIZE M BLACK', '2022-10-12 15:32:58', 'root@localhost'),
('add item', 68, '1', '2', '6', '3', '4', '2022-10-20 11:05:07', 'root@localhost'),
('update item', 68, '1', '2', '6', '3', '44', '2022-10-20 11:10:33', 'root@localhost'),
('add item', 69, '1', '1', '5', '1', '1', '2022-10-20 11:20:40', 'root@localhost'),
('add item', 70, '1', '1', '5', '1', '1', '2022-10-20 11:21:43', 'root@localhost'),
('add item', 71, '1', '1', '6', '1', '1', '2022-10-20 11:22:12', 'root@localhost'),
('add item', 72, '1', '1', '9', '1', '1', '2022-10-20 11:22:43', 'root@localhost'),
('update item', 66, '343434343434', 'Barcode Label', '12', 'pcs', 'Barcode Label Size M', '2022-10-20 11:23:14', 'root@localhost'),
('update item', 42, 'PK10676KBBJP', 'Plastic bag  FOR COLOR BLACK', '5', 'pcs', '', '2022-11-10 15:34:55', 'root@localhost'),
('update item', 57, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', '', '2022-11-10 15:34:58', 'root@localhost'),
('update item', 58, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', '', '2022-11-10 15:35:00', 'root@localhost'),
('update item', 60, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', '', '2022-11-10 15:35:01', 'root@localhost'),
('update item', 62, 'HK00002NX-AL', 'PLASTIC HOOK FOR PACKAGING', '6', 'pcs', '', '2022-11-10 15:35:03', 'root@localhost'),
('update item', 63, 'INSERT001', 'INSERTBOARD FO PACKAGING SET GRAY', '10', 'pcs', '', '2022-11-10 15:35:05', 'root@localhost'),
('add item', 68, 'N7133-35', 'ELASTIC BAND', '9', 'Mtr', '', '2022-11-17 14:38:03', 'root@localhost'),
('update item', 68, 'N7133-35', 'ELASTIC BAND', '13', 'Mtr', '', '2022-11-17 14:39:58', 'root@localhost'),
('add item', 69, 'HD8012D', 'Mobilon Tape 8MM ', '14', 'Kg', 'Locals', '2022-11-17 15:29:30', 'root@localhost'),
('add item', 70, 'VJ12702A', '32% ACR, 21% VIS, 39% PE, 8% SPX Single Jersey', '15', 'mtr', '', '2022-11-17 15:39:53', 'root@localhost'),
('add item', 71, 'HD10903AD-ID', 'Paper header (pcs)', '16', 'PCS', '', '2022-11-17 15:45:04', 'root@localhost'),
('add item', 72, 'OT01336AD-AL', 'Plastic seal (pcs)', '16', 'PCS', '', '2022-11-17 15:45:25', 'root@localhost'),
('add item', 73, 'HT00191ADIID', 'HANG TAG (pcs)', '16', 'PCS', '', '2022-11-17 15:45:45', 'root@localhost'),
('add item', 74, 'TP00010AD-AL', 'TAG PIN (pcs)', '16', 'PCS', '', '2022-11-17 15:46:01', 'root@localhost'),
('add item', 75, '222', '222', '9', '222', '0', '2022-11-18 10:57:56', 'root@localhost'),
('update item', 69, 'HD8012D', 'Mobilon Tape 8MM ', '14', 'Kg', '', '2022-11-18 10:58:14', 'root@localhost'),
('update item', 75, '222', '222', '9', 'pcs', '0', '2022-11-18 10:59:10', 'root@localhost'),
('update item', 75, 'INT0001', 'INTERLINING', '9', 'pcs', '0', '2022-11-18 11:00:38', 'root@localhost'),
('update item', 74, 'TP00010AD-AL', 'TAG PIN', '16', 'PCS', '0', '2022-11-18 11:26:39', 'root@localhost'),
('update item', 73, 'HT00191ADIID', 'HANG TAG', '16', 'PCS', '0', '2022-11-18 11:26:47', 'root@localhost'),
('update item', 72, 'OT01336AD-AL', 'Plastic seal', '16', 'PCS', '0', '2022-11-18 11:26:57', 'root@localhost'),
('update item', 71, 'HD10903AD-ID', 'Paper header', '16', 'PCS', '0', '2022-11-18 11:27:03', 'root@localhost');

-- --------------------------------------------------------

--
-- Table structure for table `tb_items_old`
--

CREATE TABLE `tb_items_old` (
  `id_item` int(11) NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `item_destription` varchar(255) NOT NULL,
  `supplier_code` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `delete_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_items_old`
--

INSERT INTO `tb_items_old` (`id_item`, `item_code`, `item_destription`, `supplier_code`, `unit`, `remark`, `delete_at`) VALUES
(10, 'sadf', 'adsf', 'dsaf', 'asdf', 'asdfsa', '2022-08-11 09:52:59'),
(30, 'asdfsaa', 'sdfasf', '2', 'asdf', 'asdfas', '2022-08-15 13:59:51'),
(29, 'terew', 'twt', '2', 'wertw', 'ertewt', '2022-08-15 14:00:38'),
(28, 'asdfasdf', 'sadfadsf', '1', 'asdf', 'asdf', '2022-08-15 14:00:41'),
(27, 'asdfasa', 'sdfadf', '2', 'asdf', 'asdfsadf', '2022-08-15 14:01:30'),
(26, 'asdf', 'adsf', '2', 'asdf', 'asdf', '2022-08-15 14:49:37'),
(19, 'er', 'dsfgdsfg', '2', 'sdfg', 'sdfgdsfg', '2022-08-16 11:47:58'),
(1, 'a001', 'sendok ssss', '0', 'pcs', 'alat masak', '2022-08-16 11:48:04'),
(11, '2323ssssss', 'jagung', '0', 'asfaf', 'adfasf', '2022-08-16 11:49:49'),
(12, '454545', 'asdfadsf', '2', 'asdf', 'adsfadsf', '2022-08-16 13:45:05'),
(17, 'saf', 'sadf', '2', 'wer', 'werewr', '2022-08-18 11:43:46'),
(13, '123abc', 'adkjlfa', '2', 'pcs', 'aaaaaaa', '2022-08-18 11:43:56'),
(34, 'tomy', 'squad', '0', '', '', '2022-08-18 15:13:02'),
(33, 'tomy', 'lim', '0', '', '', '2022-08-18 15:13:12'),
(32, 'sadfdsaf', 'asdfadsf', '2', '', '', '2022-08-18 15:13:16'),
(31, 'asdfadsfas', 'dfsadf', '0', '', '', '2022-08-18 15:13:20'),
(35, 'asdfafda', 'asdfasdfasdf', '2', '', '', '2022-08-18 16:31:28'),
(30, 'asdfadf', 'asdfasdf', '0', '', '', '2022-08-18 16:31:53'),
(14, '123bbb', 'bbbbbd', '1', 'bbbbu', 'bbbbbr', '2022-08-18 16:32:24'),
(37, '', '', '0', '', '', '2022-08-18 16:51:10'),
(39, '', '', '0', '', '', '2022-08-19 09:18:44'),
(40, '', '', '0', '', '', '2022-08-19 09:25:43'),
(42, '', '', '0', '', '', '2022-08-19 09:26:28'),
(43, '', 'wererw', '0', '', '', '2022-08-19 09:28:53'),
(56, '111', '111', '0', '', '', '2022-08-19 13:03:48'),
(55, '111', '111', '0', '', '', '2022-08-19 13:03:51'),
(54, '111', '111', '0', '', '', '2022-08-19 13:03:56'),
(53, '111', '111', '0', '', '', '2022-08-19 13:03:59'),
(52, '111', '111', '0', '', '', '2022-08-19 13:04:02'),
(51, '1111', '111111', '0', '', '', '2022-08-19 13:04:05'),
(57, 'asfddasfads', '', '0', '', '', '2022-08-19 13:17:50'),
(58, 'werewrwe', '', '2', '', '', '2022-08-19 13:17:53'),
(61, 'ewrt', '', '2', '', '', '2022-08-19 13:27:26'),
(59, 'xxxxxxxx', '', '2', '', '', '2022-08-19 13:36:05'),
(44, 'qwer', 'qwer', '0', '', '', '2022-08-19 13:36:11'),
(50, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:36:18'),
(49, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:36:21'),
(48, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:36:26'),
(47, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:36:28'),
(41, 'safsafas', 'asdf', '0', '', '', '2022-08-19 13:36:32'),
(46, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:36:36'),
(63, 'asf', '', '2', '', '', '2022-08-19 15:56:08'),
(62, 'adsf', 'fads', '2', 'sfg', 'cccccccc', '2022-08-19 15:56:19'),
(60, 'aasfsdaf', 'qwerqrasdfas55555', '2', 'wewew', 'ewew', '2022-08-19 15:56:55'),
(45, 'sadfasadf', '11111111', '2', '11111', 'aaaaaaaaaaa454', '2022-08-19 22:38:27'),
(15, '3333', '3333333', '2', '33333', '333333', '2022-08-20 00:25:04'),
(16, '4444', '44444', '2', '44444', '444444', '2022-08-20 00:25:08'),
(18, 'sdafsdaf', 'asdadsf', '2', 'adsfdas', 'adsfsadf', '2022-08-20 00:25:11'),
(20, 'dsaf', 'asdf', '2', 'asdf', 'asdf', '2022-08-20 00:25:12'),
(21, 'asdfa', 'asdfaf', '1', 'sdfd', 'sdfdsf', '2022-08-20 00:25:14'),
(22, 'asdfasf', 'asdfsadf', '1', 'asdf', 'asdfsadf', '2022-08-20 00:25:16'),
(23, 'adsf', 'adsf', '2', 'rrrrrrr', 'asdf', '2022-08-20 00:25:21'),
(24, 'asdf', 'asdf', '2', 'asf', 'asdfa9999', '2022-08-20 00:25:23'),
(25, 'asdf', 'asdf', '2', 'adsf', 'ccccccc', '2022-08-20 00:25:24'),
(26, '4566', 'susu2', '2', '10', 'ok', '2022-08-20 00:25:25'),
(27, 'tttttttttt', 'asdfsaf', '2', 'sdfsdf', 'dsfsdf', '2022-08-20 00:25:26'),
(28, 'rrrrrrrr', 'rrrrrrrrrrr', '2', 'rrrrrrrrrrr', 'rrrrrrrrrrrr', '2022-08-20 00:25:27'),
(29, '55555', '5555555', '2', '55555', '555555', '2022-08-20 00:25:28'),
(36, 'qqqqqqqqq', 'qqqqqqq', '2', 'sdfsdfdsf', 'sdfretretda', '2022-08-20 00:25:29'),
(38, '111', '11111', '2', '111', '111111', '2022-08-20 00:25:31'),
(46, 'sadf', 'dsaf', '3', '', '', '2022-08-20 00:25:31'),
(51, 'sfdgs', 'dsfg', '5', 'sdfg', 'Local', '2022-09-02 11:16:10'),
(54, '3333', 'aku dan kamu itu beda', '4', '333', 'Local', '2022-09-14 13:44:59'),
(53, '333', '333', '5', '3333', 'Local', '2022-09-14 13:45:03'),
(52, 'adsf', 'sdaf', '6', 'sdafasdf', 'Local', '2022-09-14 13:45:07'),
(64, '555', '555', '4', '555', '555aaaaa', '2022-10-05 15:35:40'),
(65, '1', '1', '4', '1', '1', '2022-10-06 10:15:53'),
(48, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'Local', '2022-10-20 10:56:20'),
(47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-10-20 10:56:56'),
(56, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'Local', '2022-10-20 10:58:09'),
(59, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-10-20 10:58:16'),
(41, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', 'Import', '2022-10-20 10:58:53'),
(68, '1', '2', '6', '3', '44', '2022-10-20 11:11:04'),
(69, '1', '1', '5', '1', '1', '2022-10-20 11:20:47'),
(70, '1', '1', '5', '1', '1', '2022-10-20 11:21:49'),
(71, '1', '1', '6', '1', '1', '2022-10-20 11:22:17'),
(72, '1', '1', '9', '1', '1', '2022-10-20 11:22:49'),
(60, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', '', '2022-11-16 13:41:56'),
(67, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'CARE LABEL SIZE M BLACK', '2022-11-16 13:42:02'),
(66, '343434343434', 'Barcode Label', '12', 'pcs', 'Barcode Label Size M', '2022-11-16 13:42:18'),
(10, 'sadf', 'adsf', 'dsaf', 'asdf', 'asdfsa', '2022-08-11 09:52:59'),
(30, 'asdfsaa', 'sdfasf', '2', 'asdf', 'asdfas', '2022-08-15 13:59:51'),
(29, 'terew', 'twt', '2', 'wertw', 'ertewt', '2022-08-15 14:00:38'),
(28, 'asdfasdf', 'sadfadsf', '1', 'asdf', 'asdf', '2022-08-15 14:00:41'),
(27, 'asdfasa', 'sdfadf', '2', 'asdf', 'asdfsadf', '2022-08-15 14:01:30'),
(26, 'asdf', 'adsf', '2', 'asdf', 'asdf', '2022-08-15 14:49:37'),
(19, 'er', 'dsfgdsfg', '2', 'sdfg', 'sdfgdsfg', '2022-08-16 11:47:58'),
(1, 'a001', 'sendok ssss', '0', 'pcs', 'alat masak', '2022-08-16 11:48:04'),
(11, '2323ssssss', 'jagung', '0', 'asfaf', 'adfasf', '2022-08-16 11:49:49'),
(12, '454545', 'asdfadsf', '2', 'asdf', 'adsfadsf', '2022-08-16 13:45:05'),
(17, 'saf', 'sadf', '2', 'wer', 'werewr', '2022-08-18 11:43:46'),
(13, '123abc', 'adkjlfa', '2', 'pcs', 'aaaaaaa', '2022-08-18 11:43:56'),
(34, 'tomy', 'squad', '0', '', '', '2022-08-18 15:13:02'),
(33, 'tomy', 'lim', '0', '', '', '2022-08-18 15:13:12'),
(32, 'sadfdsaf', 'asdfadsf', '2', '', '', '2022-08-18 15:13:16'),
(31, 'asdfadsfas', 'dfsadf', '0', '', '', '2022-08-18 15:13:20'),
(35, 'asdfafda', 'asdfasdfasdf', '2', '', '', '2022-08-18 16:31:28'),
(30, 'asdfadf', 'asdfasdf', '0', '', '', '2022-08-18 16:31:53'),
(14, '123bbb', 'bbbbbd', '1', 'bbbbu', 'bbbbbr', '2022-08-18 16:32:24'),
(37, '', '', '0', '', '', '2022-08-18 16:51:10'),
(39, '', '', '0', '', '', '2022-08-19 09:18:44'),
(40, '', '', '0', '', '', '2022-08-19 09:25:43'),
(42, '', '', '0', '', '', '2022-08-19 09:26:28'),
(43, '', 'wererw', '0', '', '', '2022-08-19 09:28:53'),
(56, '111', '111', '0', '', '', '2022-08-19 13:03:48'),
(55, '111', '111', '0', '', '', '2022-08-19 13:03:51'),
(54, '111', '111', '0', '', '', '2022-08-19 13:03:56'),
(53, '111', '111', '0', '', '', '2022-08-19 13:03:59'),
(52, '111', '111', '0', '', '', '2022-08-19 13:04:02'),
(51, '1111', '111111', '0', '', '', '2022-08-19 13:04:05'),
(57, 'asfddasfads', '', '0', '', '', '2022-08-19 13:17:50'),
(58, 'werewrwe', '', '2', '', '', '2022-08-19 13:17:53'),
(61, 'ewrt', '', '2', '', '', '2022-08-19 13:27:26'),
(59, 'xxxxxxxx', '', '2', '', '', '2022-08-19 13:36:05'),
(44, 'qwer', 'qwer', '0', '', '', '2022-08-19 13:36:11'),
(50, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:36:18'),
(49, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:36:21'),
(48, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:36:26'),
(47, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:36:28'),
(41, 'safsafas', 'asdf', '0', '', '', '2022-08-19 13:36:32'),
(46, '1111', '11111111', '2', '11111', '11111111', '2022-08-19 13:36:36'),
(63, 'asf', '', '2', '', '', '2022-08-19 15:56:08'),
(62, 'adsf', 'fads', '2', 'sfg', 'cccccccc', '2022-08-19 15:56:19'),
(60, 'aasfsdaf', 'qwerqrasdfas55555', '2', 'wewew', 'ewew', '2022-08-19 15:56:55'),
(45, 'sadfasadf', '11111111', '2', '11111', 'aaaaaaaaaaa454', '2022-08-19 22:38:27'),
(15, '3333', '3333333', '2', '33333', '333333', '2022-08-20 00:25:04'),
(16, '4444', '44444', '2', '44444', '444444', '2022-08-20 00:25:08'),
(18, 'sdafsdaf', 'asdadsf', '2', 'adsfdas', 'adsfsadf', '2022-08-20 00:25:11'),
(20, 'dsaf', 'asdf', '2', 'asdf', 'asdf', '2022-08-20 00:25:12'),
(21, 'asdfa', 'asdfaf', '1', 'sdfd', 'sdfdsf', '2022-08-20 00:25:14'),
(22, 'asdfasf', 'asdfsadf', '1', 'asdf', 'asdfsadf', '2022-08-20 00:25:16'),
(23, 'adsf', 'adsf', '2', 'rrrrrrr', 'asdf', '2022-08-20 00:25:21'),
(24, 'asdf', 'asdf', '2', 'asf', 'asdfa9999', '2022-08-20 00:25:23'),
(25, 'asdf', 'asdf', '2', 'adsf', 'ccccccc', '2022-08-20 00:25:24'),
(26, '4566', 'susu2', '2', '10', 'ok', '2022-08-20 00:25:25'),
(27, 'tttttttttt', 'asdfsaf', '2', 'sdfsdf', 'dsfsdf', '2022-08-20 00:25:26'),
(28, 'rrrrrrrr', 'rrrrrrrrrrr', '2', 'rrrrrrrrrrr', 'rrrrrrrrrrrr', '2022-08-20 00:25:27'),
(29, '55555', '5555555', '2', '55555', '555555', '2022-08-20 00:25:28'),
(36, 'qqqqqqqqq', 'qqqqqqq', '2', 'sdfsdfdsf', 'sdfretretda', '2022-08-20 00:25:29'),
(38, '111', '11111', '2', '111', '111111', '2022-08-20 00:25:31'),
(46, 'sadf', 'dsaf', '3', '', '', '2022-08-20 00:25:31'),
(51, 'sfdgs', 'dsfg', '5', 'sdfg', 'Local', '2022-09-02 11:16:10'),
(54, '3333', 'aku dan kamu itu beda', '4', '333', 'Local', '2022-09-14 13:44:59'),
(53, '333', '333', '5', '3333', 'Local', '2022-09-14 13:45:03'),
(52, 'adsf', 'sdaf', '6', 'sdafasdf', 'Local', '2022-09-14 13:45:07'),
(64, '555', '555', '4', '555', '555aaaaa', '2022-10-05 15:35:40'),
(65, '1', '1', '4', '1', '1', '2022-10-06 10:15:53'),
(48, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'Local', '2022-10-20 10:56:20'),
(47, 'WC00333AD-JP', 'CARE LABEL', '4', 'PCS', 'Local', '2022-10-20 10:56:56'),
(56, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'Local', '2022-10-20 10:58:09'),
(59, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', 'Import', '2022-10-20 10:58:16'),
(41, 'PK10676KB-JP', 'Plastic bag FOR COLOR WHITE', '5', 'pcs', 'Import', '2022-10-20 10:58:53'),
(68, '1', '2', '6', '3', '44', '2022-10-20 11:11:04'),
(69, '1', '1', '5', '1', '1', '2022-10-20 11:20:47'),
(70, '1', '1', '5', '1', '1', '2022-10-20 11:21:49'),
(71, '1', '1', '6', '1', '1', '2022-10-20 11:22:17'),
(72, '1', '1', '9', '1', '1', '2022-10-20 11:22:49'),
(60, 'BS00189AD-JP', 'BARCODE STICKER ', '4', 'pcs', '', '2022-11-16 13:41:56'),
(67, 'WC00333AD-JP', 'CARE LABEL', '4', 'pcs', 'CARE LABEL SIZE M BLACK', '2022-11-16 13:42:02'),
(66, '343434343434', 'Barcode Label', '12', 'pcs', 'Barcode Label Size M', '2022-11-16 13:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `tb_material_in`
--

CREATE TABLE `tb_material_in` (
  `id_in` int(10) NOT NULL,
  `no_sj` varchar(255) NOT NULL,
  `date` varchar(200) NOT NULL,
  `kurir` varchar(200) NOT NULL,
  `ekspedisi` varchar(200) NOT NULL,
  `id_po` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_material_in`
--

INSERT INTO `tb_material_in` (`id_in`, `no_sj`, `date`, `kurir`, `ekspedisi`, `id_po`, `remark`) VALUES
(1, 'DHL00001', '12/05/2022 12:00 AM', 'tomy', 'dhl', '1', 'okay'),
(2, 'DHL00002', '12/07/2022 12:00 AM', 'omay', 'jne', '2', 'dhl'),
(3, '199', '04/05/2023 9:40 AM', 'DHL', 'DHL', '2', 'TAMBAHAN KERTAS');

-- --------------------------------------------------------

--
-- Table structure for table `tb_material_in_detail`
--

CREATE TABLE `tb_material_in_detail` (
  `id` int(100) NOT NULL,
  `id_in` varchar(200) NOT NULL,
  `id_item` varchar(200) NOT NULL,
  `color` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `qty` int(200) NOT NULL,
  `remark` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_material_in_detail`
--

INSERT INTO `tb_material_in_detail` (`id`, `id_in`, `id_item`, `color`, `size`, `qty`, `remark`) VALUES
(38, '2', '80', '', '', 50, 'ok'),
(39, '1', '79', 'WHITEPUTIH', 'S', 614, ''),
(40, '1', '79', 'WHITEPUTIH', 'M', 110, ''),
(41, '1', '79', 'WHITEPUTIH', 'L', 110, ''),
(42, '1', '79', 'WHITEPUTIH', 'XL', 218, ''),
(43, '3', '80', '', '', 124, 'TAMBAHAN KERTAS');

-- --------------------------------------------------------

--
-- Table structure for table `tb_material_out`
--

CREATE TABLE `tb_material_out` (
  `id_out` int(10) NOT NULL,
  `no_out` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `allocation` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `mo` varchar(255) NOT NULL,
  `style` varchar(200) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_material_out`
--

INSERT INTO `tb_material_out` (`id_out`, `no_out`, `date`, `allocation`, `department`, `mo`, `style`, `remark`) VALUES
(1, 'OUT2022000001', '12/05/2022 12:00 AM', 'accessoris', 'cutting', '111', '1111', 'okay'),
(2, 'OUT2022000002', '12/12/2022 12:00 AM', 'office', 'office', '-', '-', 'untuk print'),
(3, 'OUT20232022000003', '04/04/2023 9:34 AM', 'IT', 'IT', '-', '-', '-'),
(4, 'OUT20232022000004', '04/04/2023 9:42 AM', 'HRD', 'HRD', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tb_material_out_detail`
--

CREATE TABLE `tb_material_out_detail` (
  `id` int(100) NOT NULL,
  `id_out` varchar(200) NOT NULL,
  `id_item` varchar(200) NOT NULL,
  `color` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `qty` int(200) NOT NULL,
  `remark` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_material_out_detail`
--

INSERT INTO `tb_material_out_detail` (`id`, `id_out`, `id_item`, `color`, `size`, `qty`, `remark`) VALUES
(15, '2', '80', '', '', 3, ''),
(16, '1', '79', 'WHITEPUTIH', 'L', 100, 'ok'),
(17, '3', '80', '', '', 5, ''),
(18, '4', '80', '', '', 10, 'UNTUK PRINT GAJI');

-- --------------------------------------------------------

--
-- Table structure for table `tb_purchase_order`
--

CREATE TABLE `tb_purchase_order` (
  `id_po` int(20) NOT NULL,
  `po_no` varchar(200) NOT NULL,
  `id_trim` int(200) NOT NULL,
  `id_supplier` varchar(200) NOT NULL,
  `request_date` varchar(50) NOT NULL,
  `request_in_house` varchar(200) NOT NULL,
  `delivery_at` varchar(200) NOT NULL,
  `allocation` varchar(200) NOT NULL,
  `applicant` varchar(200) NOT NULL,
  `approval` varchar(200) NOT NULL,
  `po_status` varchar(200) NOT NULL,
  `sub_total` varchar(200) NOT NULL,
  `rounding` varchar(200) NOT NULL,
  `vat` varchar(200) NOT NULL,
  `vat_amount` varchar(1100) NOT NULL,
  `grand_total` varchar(200) NOT NULL,
  `purchase_amount` varchar(200) NOT NULL,
  `note1` varchar(250) NOT NULL,
  `note2` varchar(3000) NOT NULL,
  `user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_purchase_order`
--

INSERT INTO `tb_purchase_order` (`id_po`, `po_no`, `id_trim`, `id_supplier`, `request_date`, `request_in_house`, `delivery_at`, `allocation`, `applicant`, `approval`, `po_status`, `sub_total`, `rounding`, `vat`, `vat_amount`, `grand_total`, `purchase_amount`, `note1`, `note2`, `user`) VALUES
(0, '-', 0, '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(1, 'TIMW/0001/PO/2022', 1, '4', '12/05/2022 12:00 AM', '12/12/2022 12:00 AM', 'warehouse', 'accessoris', 'rita', 'Miyamoto', 'Recived', '5260000', '0', '11', '578600', '5838600', '5838600', 'ok', 'ko', 'rozi@gmail.com'),
(2, 'TIMW/0002/PO/2022', 2, '6', '12/07/2022 12:00 AM', '12/14/2022 12:00 AM', 'warehouse', 'accessoris', 'rita', 'Miyamoto', 'Recived', '250000', '0', '11', '27500', '277500', '277500', 'sdf', 'sadf', 'rozi@gmail.com'),
(3, 'TIMW/0003/PO/2023', 5, '13', '03/31/2023 5:52 AM', '03/31/2023 5:52 AM', 'warehouse', 'accessoris', 'rita', 'Miyamoto', 'Process', '28000', '0', '10', '2800', '30800', '30800', 'fgfg', 'pembayran tempo 30 hari', 'rozi@gmail.com'),
(4, 'TIMW/0004/PO/2023', 7, '6', '04/04/2023 10:06 AM', '04/11/2023 10:06 AM', 'warehouse', 'office', 'rita', 'Miyamoto', 'Process', '50000', '0', '10', '5000', '55000', '55000', '-', 'bayare tempo jhon 30 h', 'purchasing@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_purchase_order_detail`
--

CREATE TABLE `tb_purchase_order_detail` (
  `id` int(200) NOT NULL,
  `id_po` int(20) NOT NULL,
  `id_item` int(100) NOT NULL,
  `color` varchar(200) NOT NULL,
  `size` varchar(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` varchar(200) NOT NULL,
  `total_price` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_purchase_order_detail`
--

INSERT INTO `tb_purchase_order_detail` (`id`, `id_po`, `id_item`, `color`, `size`, `qty`, `price`, `total_price`) VALUES
(178, 2, 80, '', '', 50, '5000', '250000'),
(179, 1, 79, 'WHITEPUTIH', 'S', 614, '5000', '3070000'),
(180, 1, 79, 'WHITEPUTIH', 'M', 110, '5000', '550000'),
(181, 1, 79, 'WHITEPUTIH', 'L', 110, '5000', '550000'),
(182, 1, 79, 'WHITEPUTIH', 'XL', 218, '5000', '1090000'),
(183, 3, 68, 'ccc', 'L', 4, '7000', '28000'),
(184, 4, 81, '-', '-', 10, '5000', '50000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_size`
--

CREATE TABLE `tb_size` (
  `id_size` int(11) NOT NULL,
  `size_code` varchar(255) NOT NULL,
  `size_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_size`
--

INSERT INTO `tb_size` (`id_size`, `size_code`, `size_description`) VALUES
(0, '-', '-'),
(1, 'S', 'S'),
(2, 'M', 'M'),
(3, 'L', 'L'),
(4, 'XXS', 'XXS'),
(5, 'XL', 'XL'),
(6, 'XXL', 'XXL'),
(7, '3XL', '3XL'),
(8, '4XL', '4XL');

-- --------------------------------------------------------

--
-- Table structure for table `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `id_supplier` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_address` varchar(255) NOT NULL,
  `supplier_phone` varchar(255) NOT NULL,
  `supplier_fax` varchar(255) NOT NULL,
  `supplier_email` varchar(255) NOT NULL,
  `supplier_attention` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_supplier`
--

INSERT INTO `tb_supplier` (`id_supplier`, `supplier_name`, `supplier_address`, `supplier_phone`, `supplier_fax`, `supplier_email`, `supplier_attention`, `remark`) VALUES
(0, '-', '-', '-', '-', '-', '-', '-'),
(4, 'AVERY DENNISON', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0908987765', '12345423', 'avery@gmial.com', 'joko', 'Local'),
(5, 'PT. KOBAORI INDONESIA', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0878904543', '33323423', 'haha@gmial.com', 'MESSRS', 'Import'),
(6, 'NAXIS', 'HONGKONG', '098776567', '0009998877', 'naxis@gmail.com', 'ANLE', 'Import'),
(9, 'CCM', 'INDONESIA', '9876789433', '443322344', 'ccm@gmail.com', 'hehaa', 'Local'),
(10, 'RICKY KOBAYASI', 'INDONESIA', '0', '11111', 'www@gmail.com', 'riko', 'Local'),
(12, 'PT. IT ', 'Samban Bergas', '082343542123', '082343542123', 'pt.it@gmail.com', 'Tomy Afriyanto', 'Local'),
(13, 'BYRON HOLDINGS LIMITED', 'Unit 1501 & 02, Austin Plaza, 83 Austin Road Tsim Sha Tsui, Kowloon, Hong Kong', '0', '', '', '', 'Import'),
(14, 'TAKUBO CO.,LTD', '8-4 Tokiwachou 6chome Imabari-shi Ehime Japan\r\nYao-City, Osaka, Japan 581-0817\r\n', '(81) 729 25 2111', '', '', '', 'Local'),
(15, 'TORAY INDUSTRIES, Ltd (THK)', '19th Floor,\r\nWorld finance centre, Harbour City\r\nKowloon, Hong Kong\r\n', '+852-21967000', '', '', 'Ms. Jojo Cheung', 'Local'),
(16, 'AVERY DENNISON BMD (Paxar Packaging Guangzhou Ltd)', 'Retail Branding and Information Solution\r\nTan Shan Village, Hua Long Town, Panyu, Guangzhou, P.R.C \r\n', '+86 203992 3668 ', '+86 203992 3668 ', '', 'Ms. Eva Liu', 'Import');

--
-- Triggers `tb_supplier`
--
DELIMITER $$
CREATE TRIGGER `delete_supplier` BEFORE DELETE ON `tb_supplier` FOR EACH ROW BEGIN 
INSERT INTO tb_supplier_old VALUES(old.id_supplier,old.supplier_name,old.supplier_address,old.supplier_phone,old.supplier_fax,old.supplier_email,old.supplier_attention,old.remark, now());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_supplier` AFTER INSERT ON `tb_supplier` FOR EACH ROW BEGIN
insert INTO tb_supplier_log values('add item',new.id_supplier, new.supplier_name, new.supplier_address,new.supplier_phone, new.supplier_fax, new.supplier_email,new.supplier_attention,new.remark, now(),user());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_supplier` AFTER UPDATE ON `tb_supplier` FOR EACH ROW BEGIN
insert INTO tb_supplier_log values('update item',new.id_supplier, new.supplier_name, new.supplier_address,new.supplier_phone, new.supplier_fax, new.supplier_email,new.supplier_attention,new.remark, now(),user());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_supplier_log`
--

CREATE TABLE `tb_supplier_log` (
  `action` varchar(200) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_address` varchar(255) NOT NULL,
  `supplier_phone` varchar(255) NOT NULL,
  `supplier_fax` varchar(255) NOT NULL,
  `supplier_email` varchar(255) NOT NULL,
  `supplier_attention` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `date` varchar(200) NOT NULL,
  `user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_supplier_log`
--

INSERT INTO `tb_supplier_log` (`action`, `id_supplier`, `supplier_name`, `supplier_address`, `supplier_phone`, `supplier_fax`, `supplier_email`, `supplier_attention`, `remark`, `date`, `user`) VALUES
('add item', 1, 'SP01', 'jakarta', '08123', '081234', 'SP01gmail', 'tomy', 'Supplier Keyboard', '2022-08-11 11:16:46', 'root@localhost'),
('update item', 1, 'SP01', 'bandung', '08123', '081234', 'SP01gmail', 'tomy', 'Supplier Keyboard', '2022-08-11 11:34:37', 'root@localhost'),
('add item', 2, 'SP02', 'semarang', '08123', '081234', 'SP01gmail', 'boy', 'Supplier Keyboard', '2022-08-15 08:59:08', 'root@localhost'),
('update item', 1, 'MAJU JAYA', 'bandung', '08123', '081234', 'SP01gmail', 'tomy', 'Supplier Keyboard', '2022-08-15 09:41:27', 'root@localhost'),
('update item', 2, 'STEMBA', 'semarang', '08123', '081234', 'SP01gmail', 'boy', 'Supplier Keyboard', '2022-08-15 09:41:33', 'root@localhost'),
('add item', 3, 'jafsdkl', 'aklsf', 'aksjlf', 'klasjf', 'laf', 'lasfj', 'kldjaf', '2022-08-16 10:45:55', 'root@localhost'),
('update item', 1, 'MAJU JAYA 2', 'bandung', '08123', '081234', 'SP01gmail', 'tomy', 'Supplier Keyboard', '2022-08-16 11:12:23', 'root@localhost'),
('update item', 1, 'MAJU JAYA 2', 'Semarang', '08123', '081234', 'SP01gmail', 'tomy', 'Supplier Keyboard', '2022-08-16 11:12:38', 'root@localhost'),
('update item', 2, 'STEMBA dfdrf', 'semarang', '08123', '081234', 'SP01gmail', 'boy', 'Supplier Keyboard', '2022-08-16 11:40:22', 'root@localhost'),
('add item', 3, 'ttttttt', 'ttttttttt', 'ttttttttt', 'tttttttt', 'ttttttt', 'tttttttt', 'ttttttttt', '2022-08-19 15:19:31', 'root@localhost'),
('add item', 4, 'cccccc', 'ccccc', 'cccc', 'cccc', 'cccc', 'ccccc', 'cccccc', '2022-08-19 15:20:50', 'root@localhost'),
('update item', 4, 'cccccc', 'ddddddd', 'cccc', 'cccc', 'cccc', 'ccccc', 'cccccc', '2022-08-19 15:21:07', 'root@localhost'),
('update item', 3, 'ttttttt', 'ttttttttt', 'ttttttttt', 'tttttttt', 'ttttttt', 'tttttttt', 'aaaaaaaaaaaa', '2022-08-19 15:33:57', 'root@localhost'),
('add item', 5, 'asdfasf', 'asfasf', 'asdfasf', 'asdfasf', 'asfasf', 'adsfasf', 'asdfasfadsf', '2022-08-19 15:57:58', 'root@localhost'),
('add item', 6, 'vvvvvvv', 'vvvvv', 'vvvvvv', 'vvvvvvvv', 'vvvvv', 'vvvvvvvvv', 'vvvvvvv', '2022-08-19 15:59:04', 'root@localhost'),
('add item', 7, '', '', '', '', '', '', '', '2022-08-19 16:08:20', 'root@localhost'),
('update item', 5, 'asdfasf', 'asfasfsssss', 'asdfasf', 'asdfasf', 'asfasf', 'adsfasf', 'asdfasfadsf', '2022-08-19 16:12:07', 'root@localhost'),
('add item', 4, 'AVERY DENNISON', 'JAPAN', '0', '0', '0', '0', '0', '2022-08-20 00:29:05', 'root@localhost'),
('add item', 5, 'KOBAORI', 'JAPAN', '0', '0', '0', '0', '0', '2022-08-20 00:29:22', 'root@localhost'),
('add item', 6, 'NAXIS', 'HONGKONG', '0', '0', '0', '0', '0', '2022-08-20 00:29:45', 'root@localhost'),
('add item', 7, 'ccc', 'cccccc', 'cccc', 'ccccccc', 'ccc', 'cccc', 'ccccccc', '2022-08-29 11:28:33', 'root@localhost'),
('update item', 7, 'ccc', 'cccccc', 'cccc', 'ccccccc', 'ccc', 'cccc', '100', '2022-08-29 11:28:41', 'root@localhost'),
('add item', 8, '-', '-', '-', '-', '-', '-', '-', '2022-08-29 11:46:24', 'root@localhost'),
('update item', 0, '-', '-', '-', '-', '-', '-', '-', '2022-08-29 11:46:31', 'root@localhost'),
('add item', 8, 'sdfg', 'sdfg', 'dsfg', 'sdfg', 'sdfg', 'sdfg', '11%', '2022-09-02 13:02:33', 'root@localhost'),
('update item', 4, 'AVERY DENNISON', 'JAPAN', '0', '0', '0', 'joko', '0', '2022-09-12 13:29:00', 'root@localhost'),
('update item', 5, 'KOBAORI', 'JAPAN', '0', '0', '0', 'ksksk', '0', '2022-09-12 13:29:04', 'root@localhost'),
('update item', 6, 'NAXIS', 'HONGKONG', '0', '0', '0', 'jgjg', '0', '2022-09-12 13:29:08', 'root@localhost'),
('add item', 9, 'CCM', 'INDONESIA', '0', '0', '', '', '', '2022-09-14 13:51:45', 'root@localhost'),
('add item', 10, 'RICKY KOBAYASI', 'INDONESIA', '0', '', '', '', '', '2022-09-14 13:52:10', 'root@localhost'),
('update item', 4, 'AVERY DENNISON', 'JAPAN', '0908987765', '0', '0', 'joko', '0', '2022-09-17 05:59:10', 'root@localhost'),
('update item', 4, 'AVERY DENNISON', 'JAPAN', '0908987765', '12345423', '0', 'joko', '0', '2022-09-17 05:59:19', 'root@localhost'),
('update item', 5, 'KOBAORI', 'JAPAN', '0878904543', '0', '0', 'ksksk', '0', '2022-09-17 05:59:26', 'root@localhost'),
('update item', 5, 'KOBAORI', 'JAPAN', '0878904543', '33323423', '0', 'ksksk', '0', '2022-09-17 05:59:32', 'root@localhost'),
('update item', 4, 'AVERY DENNISON', 'JAPAN', '0908987765', '12345423', 'avery@gmial.com', 'joko', '0', '2022-09-17 05:59:41', 'root@localhost'),
('update item', 5, 'KOBAORI', 'JAPAN', '0878904543', '33323423', 'haha@gmial.com', 'ksksk', '0', '2022-09-17 05:59:53', 'root@localhost'),
('update item', 6, 'NAXIS', 'HONGKONG', '098776567', '0', '0', 'jgjg', '0', '2022-09-17 05:59:59', 'root@localhost'),
('update item', 6, 'NAXIS', 'HONGKONG', '098776567', '0009998877', '0', 'jgjg', '0', '2022-09-17 06:00:04', 'root@localhost'),
('update item', 9, 'CCM', 'INDONESIA', '9876789433', '0', '', '', '', '2022-09-17 06:00:10', 'root@localhost'),
('update item', 9, 'CCM', 'INDONESIA', '9876789433', '443322344', '', '', '', '2022-09-17 06:00:14', 'root@localhost'),
('update item', 6, 'NAXIS', 'HONGKONG', '098776567', '0009998877', 'naxis@gmail.com', 'jgjg', '0', '2022-09-17 06:00:25', 'root@localhost'),
('update item', 9, 'CCM', 'INDONESIA', '9876789433', '443322344', 'ccm@gmail.com', '', '', '2022-09-17 06:00:31', 'root@localhost'),
('update item', 9, 'CCM', 'INDONESIA', '9876789433', '443322344', 'ccm@gmail.com', 'hehaa', '', '2022-09-17 06:00:36', 'root@localhost'),
('update item', 4, 'AVERY DENNISON', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0908987765', '12345423', 'avery@gmial.com', 'joko', '0', '2022-09-17 06:04:30', 'root@localhost'),
('update item', 5, 'KOBAORI', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0878904543', '33323423', 'haha@gmial.com', 'ksksk', '0', '2022-09-17 06:04:42', 'root@localhost'),
('update item', 5, 'KOBAORI', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0878904543', '33323423', 'haha@gmial.com', 'MESSRS', '0', '2022-09-17 06:15:20', 'root@localhost'),
('update item', 6, 'NAXIS', 'HONGKONG', '098776567', '0009998877', 'naxis@gmail.com', 'ANLE', '0', '2022-09-17 06:15:24', 'root@localhost'),
('update item', 5, 'PT. KOBAORI INDONESIA', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0878904543', '33323423', 'haha@gmial.com', 'MESSRS', '0', '2022-09-17 06:16:18', 'root@localhost'),
('update item', 9, 'CCM', 'INDONESIA', '9876789433', '443322344', 'ccm@gmail.com', 'hehaa', 'Local', '2022-09-23 13:49:57', 'root@localhost'),
('update item', 6, 'NAXIS', 'HONGKONG', '098776567', '0009998877', 'naxis@gmail.com', 'ANLE', 'Import', '2022-09-23 13:50:02', 'root@localhost'),
('update item', 5, 'PT. KOBAORI INDONESIA', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0878904543', '33323423', 'haha@gmial.com', 'MESSRS', 'Import', '2022-09-23 13:50:09', 'root@localhost'),
('update item', 4, 'AVERY DENNISON', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0908987765', '12345423', 'avery@gmial.com', 'joko', 'Import', '2022-09-23 13:50:15', 'root@localhost'),
('add item', 11, 'wwww', 'www', 'www', 'www', 'www', 'www', 'Local', '2022-09-23 13:58:24', 'root@localhost'),
('update item', 11, 'wwww', 'www', 'www', 'www', 'www', 'www', 'Import', '2022-09-23 13:58:33', 'root@localhost'),
('update item', 4, 'AVERY DENNISON', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0908987765', '12345423', 'avery@gmial.com', 'joko', 'Local', '2022-09-23 14:10:57', 'root@localhost'),
('update item', 10, 'RICKY KOBAYASI', 'INDONESIA', '0', '11111', 'www@gmail.com', 'riko', 'Local', '2022-10-06 10:34:49', 'root@localhost'),
('add item', 11, 'ccc', 'ccc', 'ccc', 'ccc', 'ccc', 'ccc', 'Local', '2022-10-06 10:35:30', 'root@localhost'),
('update item', 11, 'cccdddd', 'ccc', 'ccc', 'ccc', 'ccc', 'ccc', 'Local', '2022-10-06 10:35:37', 'root@localhost'),
('add item', 12, 'PT. IT ', 'Samban Bergas', '082343542123', '082343542123', 'pt.it@gmail.com', 'Tomy Afriyanto', 'Local', '2022-10-11 14:26:24', 'root@localhost'),
('add item', 13, '1', '2', '4', '5', '3', '4', 'Local', '2022-10-20 11:12:55', 'root@localhost'),
('add item', 14, '5', '5', '5', '5', '5', '5', 'Local', '2022-10-20 11:16:23', 'root@localhost'),
('add item', 15, '1', '1', '1', '1', '1', '1', 'Local', '2022-10-20 11:18:49', 'root@localhost'),
('add item', 13, 'BYRON HOLDINGS LIMITED', 'Unit 1501 & 02, Austin Plaza, 83 Austin Road Tsim Sha Tsui, Kowloon, Hong Kong', '0', '0', '0', '0', 'Import', '2022-11-17 14:39:34', 'root@localhost'),
('add item', 14, 'TAKUBO CO.,LTD', '8-4 Tokiwachou 6chome Imabari-shi Ehime Japan\r\nYao-City, Osaka, Japan 581-0817\r\n', '(81) 729 25 2111', '', '', '', 'Local', '2022-11-17 14:41:41', 'root@localhost'),
('add item', 15, 'TORAY INDUSTRIES, Ltd (THK)', '19th Floor,\r\nWorld finance centre, Harbour City\r\nKowloon, Hong Kong\r\n', '+852-21967000', '', '', 'Ms. Jojo Cheung', 'Local', '2022-11-17 15:38:51', 'root@localhost'),
('add item', 16, 'AVERY DENNISON BMD (Paxar Packaging Guangzhou Ltd)', 'Retail Branding and Information Solution\r\nTan Shan Village, Hua Long Town, Panyu, Guangzhou, P.R.C \r\n', '+86 203992 3668 ', '+86 203992 3668 ', '', 'Ms. Eva Liu', 'Import', '2022-11-17 15:43:36', 'root@localhost'),
('update item', 13, 'BYRON HOLDINGS LIMITED', 'Unit 1501 & 02, Austin Plaza, 83 Austin Road Tsim Sha Tsui, Kowloon, Hong Kong', '0', '', '', '', 'Import', '2022-11-23 09:12:53', 'root@localhost'),
('add item', 1, 'SP01', 'jakarta', '08123', '081234', 'SP01gmail', 'tomy', 'Supplier Keyboard', '2022-08-11 11:16:46', 'root@localhost'),
('update item', 1, 'SP01', 'bandung', '08123', '081234', 'SP01gmail', 'tomy', 'Supplier Keyboard', '2022-08-11 11:34:37', 'root@localhost'),
('add item', 2, 'SP02', 'semarang', '08123', '081234', 'SP01gmail', 'boy', 'Supplier Keyboard', '2022-08-15 08:59:08', 'root@localhost'),
('update item', 1, 'MAJU JAYA', 'bandung', '08123', '081234', 'SP01gmail', 'tomy', 'Supplier Keyboard', '2022-08-15 09:41:27', 'root@localhost'),
('update item', 2, 'STEMBA', 'semarang', '08123', '081234', 'SP01gmail', 'boy', 'Supplier Keyboard', '2022-08-15 09:41:33', 'root@localhost'),
('add item', 3, 'jafsdkl', 'aklsf', 'aksjlf', 'klasjf', 'laf', 'lasfj', 'kldjaf', '2022-08-16 10:45:55', 'root@localhost'),
('update item', 1, 'MAJU JAYA 2', 'bandung', '08123', '081234', 'SP01gmail', 'tomy', 'Supplier Keyboard', '2022-08-16 11:12:23', 'root@localhost'),
('update item', 1, 'MAJU JAYA 2', 'Semarang', '08123', '081234', 'SP01gmail', 'tomy', 'Supplier Keyboard', '2022-08-16 11:12:38', 'root@localhost'),
('update item', 2, 'STEMBA dfdrf', 'semarang', '08123', '081234', 'SP01gmail', 'boy', 'Supplier Keyboard', '2022-08-16 11:40:22', 'root@localhost'),
('add item', 3, 'ttttttt', 'ttttttttt', 'ttttttttt', 'tttttttt', 'ttttttt', 'tttttttt', 'ttttttttt', '2022-08-19 15:19:31', 'root@localhost'),
('add item', 4, 'cccccc', 'ccccc', 'cccc', 'cccc', 'cccc', 'ccccc', 'cccccc', '2022-08-19 15:20:50', 'root@localhost'),
('update item', 4, 'cccccc', 'ddddddd', 'cccc', 'cccc', 'cccc', 'ccccc', 'cccccc', '2022-08-19 15:21:07', 'root@localhost'),
('update item', 3, 'ttttttt', 'ttttttttt', 'ttttttttt', 'tttttttt', 'ttttttt', 'tttttttt', 'aaaaaaaaaaaa', '2022-08-19 15:33:57', 'root@localhost'),
('add item', 5, 'asdfasf', 'asfasf', 'asdfasf', 'asdfasf', 'asfasf', 'adsfasf', 'asdfasfadsf', '2022-08-19 15:57:58', 'root@localhost'),
('add item', 6, 'vvvvvvv', 'vvvvv', 'vvvvvv', 'vvvvvvvv', 'vvvvv', 'vvvvvvvvv', 'vvvvvvv', '2022-08-19 15:59:04', 'root@localhost'),
('add item', 7, '', '', '', '', '', '', '', '2022-08-19 16:08:20', 'root@localhost'),
('update item', 5, 'asdfasf', 'asfasfsssss', 'asdfasf', 'asdfasf', 'asfasf', 'adsfasf', 'asdfasfadsf', '2022-08-19 16:12:07', 'root@localhost'),
('add item', 4, 'AVERY DENNISON', 'JAPAN', '0', '0', '0', '0', '0', '2022-08-20 00:29:05', 'root@localhost'),
('add item', 5, 'KOBAORI', 'JAPAN', '0', '0', '0', '0', '0', '2022-08-20 00:29:22', 'root@localhost'),
('add item', 6, 'NAXIS', 'HONGKONG', '0', '0', '0', '0', '0', '2022-08-20 00:29:45', 'root@localhost'),
('add item', 7, 'ccc', 'cccccc', 'cccc', 'ccccccc', 'ccc', 'cccc', 'ccccccc', '2022-08-29 11:28:33', 'root@localhost'),
('update item', 7, 'ccc', 'cccccc', 'cccc', 'ccccccc', 'ccc', 'cccc', '100', '2022-08-29 11:28:41', 'root@localhost'),
('add item', 8, '-', '-', '-', '-', '-', '-', '-', '2022-08-29 11:46:24', 'root@localhost'),
('update item', 0, '-', '-', '-', '-', '-', '-', '-', '2022-08-29 11:46:31', 'root@localhost'),
('add item', 8, 'sdfg', 'sdfg', 'dsfg', 'sdfg', 'sdfg', 'sdfg', '11%', '2022-09-02 13:02:33', 'root@localhost'),
('update item', 4, 'AVERY DENNISON', 'JAPAN', '0', '0', '0', 'joko', '0', '2022-09-12 13:29:00', 'root@localhost'),
('update item', 5, 'KOBAORI', 'JAPAN', '0', '0', '0', 'ksksk', '0', '2022-09-12 13:29:04', 'root@localhost'),
('update item', 6, 'NAXIS', 'HONGKONG', '0', '0', '0', 'jgjg', '0', '2022-09-12 13:29:08', 'root@localhost'),
('add item', 9, 'CCM', 'INDONESIA', '0', '0', '', '', '', '2022-09-14 13:51:45', 'root@localhost'),
('add item', 10, 'RICKY KOBAYASI', 'INDONESIA', '0', '', '', '', '', '2022-09-14 13:52:10', 'root@localhost'),
('update item', 4, 'AVERY DENNISON', 'JAPAN', '0908987765', '0', '0', 'joko', '0', '2022-09-17 05:59:10', 'root@localhost'),
('update item', 4, 'AVERY DENNISON', 'JAPAN', '0908987765', '12345423', '0', 'joko', '0', '2022-09-17 05:59:19', 'root@localhost'),
('update item', 5, 'KOBAORI', 'JAPAN', '0878904543', '0', '0', 'ksksk', '0', '2022-09-17 05:59:26', 'root@localhost'),
('update item', 5, 'KOBAORI', 'JAPAN', '0878904543', '33323423', '0', 'ksksk', '0', '2022-09-17 05:59:32', 'root@localhost'),
('update item', 4, 'AVERY DENNISON', 'JAPAN', '0908987765', '12345423', 'avery@gmial.com', 'joko', '0', '2022-09-17 05:59:41', 'root@localhost'),
('update item', 5, 'KOBAORI', 'JAPAN', '0878904543', '33323423', 'haha@gmial.com', 'ksksk', '0', '2022-09-17 05:59:53', 'root@localhost'),
('update item', 6, 'NAXIS', 'HONGKONG', '098776567', '0', '0', 'jgjg', '0', '2022-09-17 05:59:59', 'root@localhost'),
('update item', 6, 'NAXIS', 'HONGKONG', '098776567', '0009998877', '0', 'jgjg', '0', '2022-09-17 06:00:04', 'root@localhost'),
('update item', 9, 'CCM', 'INDONESIA', '9876789433', '0', '', '', '', '2022-09-17 06:00:10', 'root@localhost'),
('update item', 9, 'CCM', 'INDONESIA', '9876789433', '443322344', '', '', '', '2022-09-17 06:00:14', 'root@localhost'),
('update item', 6, 'NAXIS', 'HONGKONG', '098776567', '0009998877', 'naxis@gmail.com', 'jgjg', '0', '2022-09-17 06:00:25', 'root@localhost'),
('update item', 9, 'CCM', 'INDONESIA', '9876789433', '443322344', 'ccm@gmail.com', '', '', '2022-09-17 06:00:31', 'root@localhost'),
('update item', 9, 'CCM', 'INDONESIA', '9876789433', '443322344', 'ccm@gmail.com', 'hehaa', '', '2022-09-17 06:00:36', 'root@localhost'),
('update item', 4, 'AVERY DENNISON', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0908987765', '12345423', 'avery@gmial.com', 'joko', '0', '2022-09-17 06:04:30', 'root@localhost'),
('update item', 5, 'KOBAORI', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0878904543', '33323423', 'haha@gmial.com', 'ksksk', '0', '2022-09-17 06:04:42', 'root@localhost'),
('update item', 5, 'KOBAORI', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0878904543', '33323423', 'haha@gmial.com', 'MESSRS', '0', '2022-09-17 06:15:20', 'root@localhost'),
('update item', 6, 'NAXIS', 'HONGKONG', '098776567', '0009998877', 'naxis@gmail.com', 'ANLE', '0', '2022-09-17 06:15:24', 'root@localhost'),
('update item', 5, 'PT. KOBAORI INDONESIA', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0878904543', '33323423', 'haha@gmial.com', 'MESSRS', '0', '2022-09-17 06:16:18', 'root@localhost'),
('update item', 9, 'CCM', 'INDONESIA', '9876789433', '443322344', 'ccm@gmail.com', 'hehaa', 'Local', '2022-09-23 13:49:57', 'root@localhost'),
('update item', 6, 'NAXIS', 'HONGKONG', '098776567', '0009998877', 'naxis@gmail.com', 'ANLE', 'Import', '2022-09-23 13:50:02', 'root@localhost'),
('update item', 5, 'PT. KOBAORI INDONESIA', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0878904543', '33323423', 'haha@gmial.com', 'MESSRS', 'Import', '2022-09-23 13:50:09', 'root@localhost'),
('update item', 4, 'AVERY DENNISON', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0908987765', '12345423', 'avery@gmial.com', 'joko', 'Import', '2022-09-23 13:50:15', 'root@localhost'),
('add item', 11, 'wwww', 'www', 'www', 'www', 'www', 'www', 'Local', '2022-09-23 13:58:24', 'root@localhost'),
('update item', 11, 'wwww', 'www', 'www', 'www', 'www', 'www', 'Import', '2022-09-23 13:58:33', 'root@localhost'),
('update item', 4, 'AVERY DENNISON', 'Jl. Inti 1 Blok C.1 No.14 BIIE Lippo Cikarang\r\nDesa Cibatu, Kec. Cikarang Selatan, Kab. Bekasi', '0908987765', '12345423', 'avery@gmial.com', 'joko', 'Local', '2022-09-23 14:10:57', 'root@localhost'),
('update item', 10, 'RICKY KOBAYASI', 'INDONESIA', '0', '11111', 'www@gmail.com', 'riko', 'Local', '2022-10-06 10:34:49', 'root@localhost'),
('add item', 11, 'ccc', 'ccc', 'ccc', 'ccc', 'ccc', 'ccc', 'Local', '2022-10-06 10:35:30', 'root@localhost'),
('update item', 11, 'cccdddd', 'ccc', 'ccc', 'ccc', 'ccc', 'ccc', 'Local', '2022-10-06 10:35:37', 'root@localhost'),
('add item', 12, 'PT. IT ', 'Samban Bergas', '082343542123', '082343542123', 'pt.it@gmail.com', 'Tomy Afriyanto', 'Local', '2022-10-11 14:26:24', 'root@localhost'),
('add item', 13, '1', '2', '4', '5', '3', '4', 'Local', '2022-10-20 11:12:55', 'root@localhost'),
('add item', 14, '5', '5', '5', '5', '5', '5', 'Local', '2022-10-20 11:16:23', 'root@localhost'),
('add item', 15, '1', '1', '1', '1', '1', '1', 'Local', '2022-10-20 11:18:49', 'root@localhost'),
('add item', 13, 'BYRON HOLDINGS LIMITED', 'Unit 1501 & 02, Austin Plaza, 83 Austin Road Tsim Sha Tsui, Kowloon, Hong Kong', '0', '0', '0', '0', 'Import', '2022-11-17 14:39:34', 'root@localhost'),
('add item', 14, 'TAKUBO CO.,LTD', '8-4 Tokiwachou 6chome Imabari-shi Ehime Japan\r\nYao-City, Osaka, Japan 581-0817\r\n', '(81) 729 25 2111', '', '', '', 'Local', '2022-11-17 14:41:41', 'root@localhost'),
('add item', 15, 'TORAY INDUSTRIES, Ltd (THK)', '19th Floor,\r\nWorld finance centre, Harbour City\r\nKowloon, Hong Kong\r\n', '+852-21967000', '', '', 'Ms. Jojo Cheung', 'Local', '2022-11-17 15:38:51', 'root@localhost'),
('add item', 16, 'AVERY DENNISON BMD (Paxar Packaging Guangzhou Ltd)', 'Retail Branding and Information Solution\r\nTan Shan Village, Hua Long Town, Panyu, Guangzhou, P.R.C \r\n', '+86 203992 3668 ', '+86 203992 3668 ', '', 'Ms. Eva Liu', 'Import', '2022-11-17 15:43:36', 'root@localhost'),
('update item', 13, 'BYRON HOLDINGS LIMITED', 'Unit 1501 & 02, Austin Plaza, 83 Austin Road Tsim Sha Tsui, Kowloon, Hong Kong', '0', '', '', '', 'Import', '2022-11-23 09:12:53', 'root@localhost');

-- --------------------------------------------------------

--
-- Table structure for table `tb_supplier_old`
--

CREATE TABLE `tb_supplier_old` (
  `id_supplier` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_address` varchar(255) NOT NULL,
  `supplier_phone` varchar(255) NOT NULL,
  `supplier_fax` varchar(255) NOT NULL,
  `supplier_email` varchar(255) NOT NULL,
  `supplier_attention` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_supplier_old`
--

INSERT INTO `tb_supplier_old` (`id_supplier`, `supplier_name`, `supplier_address`, `supplier_phone`, `supplier_fax`, `supplier_email`, `supplier_attention`, `remark`, `date`) VALUES
(3, 'jafsdkl', 'aklsf', 'aksjlf', 'klasjf', 'laf', 'lasfj', 'kldjaf', '2022-08-16 10:58:01'),
(1, 'MAJU JAYA 2', 'Semarang', '08123', '081234', 'SP01gmail', 'tomy', 'Supplier Keyboard', '2022-08-16 13:48:06'),
(4, 'cccccc', 'ddddddd', 'cccc', 'cccc', 'cccc', 'ccccc', 'cccccc', '2022-08-19 15:21:16'),
(6, 'vvvvvvv', 'vvvvv', 'vvvvvv', 'vvvvvvvv', 'vvvvv', 'vvvvvvvvv', 'vvvvvvv', '2022-08-19 16:02:30'),
(7, '', '', '', '', '', '', '', '2022-08-19 16:08:29'),
(5, 'asdfasf', 'asfasfsssss', 'asdfasf', 'asdfasf', 'asfasf', 'adsfasf', 'asdfasfadsf', '2022-08-19 16:13:24'),
(2, 'STEMBA dfdrf', 'semarang', '08123', '081234', 'SP01gmail', 'boy', 'Supplier Keyboard', '2022-08-20 00:25:53'),
(3, 'ttttttt', 'ttttttttt', 'ttttttttt', 'tttttttt', 'ttttttt', 'tttttttt', 'aaaaaaaaaaaa', '2022-08-20 00:25:56'),
(8, 'sdfg', 'sdfg', 'dsfg', 'sdfg', 'sdfg', 'sdfg', '11%', '2022-09-14 13:46:11'),
(7, 'ccc', 'cccccc', 'cccc', 'ccccccc', 'ccc', 'cccc', '100', '2022-09-14 13:46:15'),
(11, 'wwww', 'www', 'www', 'www', 'www', 'www', 'Import', '2022-09-23 13:58:36'),
(11, 'cccdddd', 'ccc', 'ccc', 'ccc', 'ccc', 'ccc', 'Local', '2022-10-06 10:35:45'),
(13, '1', '2', '4', '5', '3', '4', 'Local', '2022-10-20 11:13:02'),
(14, '5', '5', '5', '5', '5', '5', 'Local', '2022-10-20 11:16:28'),
(15, '1', '1', '1', '1', '1', '1', 'Local', '2022-10-20 11:18:55'),
(3, 'jafsdkl', 'aklsf', 'aksjlf', 'klasjf', 'laf', 'lasfj', 'kldjaf', '2022-08-16 10:58:01'),
(1, 'MAJU JAYA 2', 'Semarang', '08123', '081234', 'SP01gmail', 'tomy', 'Supplier Keyboard', '2022-08-16 13:48:06'),
(4, 'cccccc', 'ddddddd', 'cccc', 'cccc', 'cccc', 'ccccc', 'cccccc', '2022-08-19 15:21:16'),
(6, 'vvvvvvv', 'vvvvv', 'vvvvvv', 'vvvvvvvv', 'vvvvv', 'vvvvvvvvv', 'vvvvvvv', '2022-08-19 16:02:30'),
(7, '', '', '', '', '', '', '', '2022-08-19 16:08:29'),
(5, 'asdfasf', 'asfasfsssss', 'asdfasf', 'asdfasf', 'asfasf', 'adsfasf', 'asdfasfadsf', '2022-08-19 16:13:24'),
(2, 'STEMBA dfdrf', 'semarang', '08123', '081234', 'SP01gmail', 'boy', 'Supplier Keyboard', '2022-08-20 00:25:53'),
(3, 'ttttttt', 'ttttttttt', 'ttttttttt', 'tttttttt', 'ttttttt', 'tttttttt', 'aaaaaaaaaaaa', '2022-08-20 00:25:56'),
(8, 'sdfg', 'sdfg', 'dsfg', 'sdfg', 'sdfg', 'sdfg', '11%', '2022-09-14 13:46:11'),
(7, 'ccc', 'cccccc', 'cccc', 'ccccccc', 'ccc', 'cccc', '100', '2022-09-14 13:46:15'),
(11, 'wwww', 'www', 'www', 'www', 'www', 'www', 'Import', '2022-09-23 13:58:36'),
(11, 'cccdddd', 'ccc', 'ccc', 'ccc', 'ccc', 'ccc', 'Local', '2022-10-06 10:35:45'),
(13, '1', '2', '4', '5', '3', '4', 'Local', '2022-10-20 11:13:02'),
(14, '5', '5', '5', '5', '5', '5', 'Local', '2022-10-20 11:16:28'),
(15, '1', '1', '1', '1', '1', '1', 'Local', '2022-10-20 11:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tracking`
--

CREATE TABLE `tb_tracking` (
  `id` int(200) NOT NULL,
  `id_trim` int(255) NOT NULL,
  `id_po` int(255) NOT NULL,
  `id_sj` int(255) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tracking`
--

INSERT INTO `tb_tracking` (`id`, `id_trim`, `id_po`, `id_sj`, `remark`) VALUES
(14, 0, 0, NULL, NULL),
(17, 2, 1, NULL, NULL),
(18, 2, 2, NULL, NULL),
(20, 1, 3, NULL, NULL),
(21, 2, 4, NULL, NULL),
(22, 2, 5, NULL, NULL),
(23, 2, 1, NULL, NULL),
(24, 2, 1, NULL, NULL),
(25, 2, 5, NULL, NULL),
(26, 2, 5, NULL, NULL),
(27, 2, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_trim_detail`
--

CREATE TABLE `tb_trim_detail` (
  `id` int(11) NOT NULL,
  `id_trim` varchar(200) NOT NULL,
  `id_item` int(200) NOT NULL,
  `color` varchar(1000) NOT NULL,
  `size` varchar(1000) NOT NULL,
  `qty` int(200) NOT NULL,
  `consumtion` int(100) NOT NULL,
  `allowance` int(100) NOT NULL,
  `total` int(100) NOT NULL,
  `remark` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_trim_detail`
--

INSERT INTO `tb_trim_detail` (`id`, `id_trim`, `id_item`, `color`, `size`, `qty`, `consumtion`, `allowance`, `total`, `remark`) VALUES
(231, '4', 58, 'WHITE', 'XS', 500, 1, 3, 503, ''),
(232, '4', 58, 'WHITE', 'S', 15000, 1, 3, 15003, ''),
(233, '2', 80, '', '', 50, 0, 0, 50, 'untk fc'),
(236, '5', 68, 'ccc', 'L', 1, 2, 2, 4, ''),
(237, '5', 62, 'blak', 'M', 1, 1, 1, 2, ''),
(238, '1', 79, 'WHITEPUTIH', 'S', 612, 1, 2, 614, ''),
(239, '1', 79, 'WHITEPUTIH', 'M', 108, 1, 2, 110, ''),
(240, '1', 79, 'WHITEPUTIH', 'L', 108, 1, 2, 110, ''),
(241, '1', 79, 'WHITEPUTIH', 'XL', 216, 1, 2, 218, ''),
(242, '6', 42, 'DARK GRAYABU-ABU TUA', 'S', 6, 1, 2, 8, ''),
(243, '7', 81, '-', '-', 10, 1, 0, 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_trim_order`
--

CREATE TABLE `tb_trim_order` (
  `id_trim` int(25) NOT NULL,
  `order_no` varchar(100) NOT NULL,
  `sample_code` varchar(100) NOT NULL,
  `trim_code` varchar(200) NOT NULL,
  `trim_mo` varchar(200) NOT NULL,
  `trim_style` varchar(200) NOT NULL,
  `trim_destination` varchar(200) NOT NULL,
  `trim_date` varchar(200) NOT NULL,
  `trim_status` varchar(200) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_trim_order`
--

INSERT INTO `tb_trim_order` (`id_trim`, `order_no`, `sample_code`, `trim_code`, `trim_mo`, `trim_style`, `trim_destination`, `trim_date`, `trim_status`, `remark`, `user`) VALUES
(0, '-', '', '', '', '', '', '', '', '', ''),
(1, 'T1323-454311-003', '13373N001D', 'P0122-450525-009 (348M)', '350M', '123', 'JAPAN', '12/05/2022 12:00 AM', 'Approve', 'ok', 'rozi@gmail.com'),
(2, '', '', 'PR/0002/2022', '', '', 'offices', '12/07/2022 12:00 AM', 'Approve', 'buat office', 'rozi@gmail.com'),
(4, 'T0123-462623-001', '01273F271B', 'PR/0004/2023', '350M', '0123M', 'JAPAN', '03/27/2023 10:47 AM', 'Request', 'COBA', 'rozi@gmail.com'),
(5, '', '', 'PR/0005/2023', '350M', '1', 'JAPAN', '03/27/2023 3:37 PM', 'Approve', 'fgfg', 'rozi@gmail.com'),
(6, 'T1323-456706-002', '13373N025D', 'PR/0006/2023', '144', 'F018E', 'JAPAN', '04/03/2023 8:00 AM', 'Request', '', 'rozi@gmail.com'),
(7, '', '', 'PR/0007/2023', '-', '-', '-', '04/04/2023 9:54 AM', 'Approve', '-', 'rozi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_unit`
--

CREATE TABLE `tb_unit` (
  `id_unit` int(100) NOT NULL,
  `code_unit` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_unit`
--

INSERT INTO `tb_unit` (`id_unit`, `code_unit`, `description`) VALUES
(1, 'PCS', 'PICES'),
(2, 'LBR', 'LEMBAR'),
(3, 'ROLL', 'ROLL');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Admin', 'rozi@gmail.com', 'default1.jpg', '$2y$10$LR2nO4mqm1Qcpc04u4O5OOMETk9dHxZGYQhreElvxhH2AJwMcpAde', 1, 1, 1554436022),
(69, 'ppic', 'ppic@gmail.com', 'default1.jpg', '$2y$10$LR2nO4mqm1Qcpc04u4O5OOMETk9dHxZGYQhreElvxhH2AJwMcpAde', 2, 1, 1554436022),
(70, 'purchasing', 'purchasing@gmail.com', 'default1.jpg', '$2y$10$LR2nO4mqm1Qcpc04u4O5OOMETk9dHxZGYQhreElvxhH2AJwMcpAde', 3, 1, 1554436022);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`, `permission`) VALUES
(1, 1, 1, ''),
(4, 1, 3, ''),
(5, 1, 4, ''),
(11, 3, 3, ''),
(12, 3, 4, ''),
(13, 1, 5, ''),
(14, 1, 6, ''),
(15, 1, 7, ''),
(25, 4, 35, ''),
(27, 1, 8, ''),
(28, 1, 35, ''),
(32, 4, 8, ''),
(34, 1, 36, ''),
(35, 5, 4, ''),
(36, 5, 8, ''),
(39, 4, 4, ''),
(40, 4, 36, ''),
(41, 6, 4, ''),
(42, 6, 8, ''),
(43, 6, 35, ''),
(52, 1, 39, ''),
(53, 1, 40, ''),
(54, 1, 41, ''),
(55, 1, 42, ''),
(56, 1, 44, ''),
(58, 2, 46, ''),
(59, 2, 44, ''),
(60, 1, 49, ''),
(61, 1, 50, ''),
(62, 1, 51, ''),
(63, 2, 49, ''),
(64, 2, 51, ''),
(66, 3, 50, ''),
(67, 3, 51, ''),
(68, 1, 52, ''),
(69, 1, 53, ''),
(70, 2, 53, ''),
(71, 3, 53, ''),
(72, 3, 44, ''),
(73, 1, 54, ''),
(74, 1, 55, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_bakup`
--

CREATE TABLE `user_bakup` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_bakup`
--

INSERT INTO `user_bakup` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'khoirur Rozikin', 'rozi@gmail.com', 'default1.jpg', '$2y$10$LR2nO4mqm1Qcpc04u4O5OOMETk9dHxZGYQhreElvxhH2AJwMcpAde', 1, 1, 1554436022),
(67, 'roziee', 'rozi@kurios-utama.com', 'default.jpg', '$2y$10$ZI11ROlxlaFIw3TxUh1TrOu3pK0phpYTGuFQiwngUAUqOEP/HxPky', 2, 1, 1643274029),
(68, 'riska', 'minion.indonesia33@gmail.com', 'default.jpg', '$2y$10$KQakb8lwMF3ijlcZSSg0TeaRDOsvwOU.ZLKYcBBVrSBR0oDfaC/RS', 2, 1, 1643335828),
(69, 'lsno', 'lano@gmail.com', 'default.jpg', '$2y$10$mUHG9a7uWZqtfUQCr2suc.OfZwDEMA/mL6LLu4qP1UdYr1VwwdA3O', 2, 0, 1643986286),
(70, 'stylus', 'stylus.smg@gmail.com', 'default.jpg', '$2y$10$sQL5qYiOL10lvTeJw.hbj.pFTw2ZNSjDBGTzBWHj4RATttg/n4S6K', 2, 1, 1643986388);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL,
  `icon` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`, `icon`) VALUES
(1, 'Admin', 'fas fa-fw fa-user-tie'),
(2, 'User', ''),
(44, 'Master', 'fas fa-book'),
(49, 'Request', 'fas fa-edit'),
(50, 'Purchasing', 'fas fa-cart-plus'),
(52, 'Warehouse', 'fas fa-box'),
(53, 'Tracking', 'fas fa-search-location'),
(54, 'Bill', 'fas fa-dollar-sign'),
(55, 'Report', 'fas fa-file');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'PPIC'),
(3, 'Purchasing');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(2, 2, 'My Profile', 'user', 'far fa-circle', 1),
(3, 2, 'Edit Profile', 'user/edit', 'far fa-circle', 1),
(4, 1, 'Menu', 'menu', 'far fa-circle', 1),
(5, 1, 'Submenu', 'menu/submenu', 'far fa-circle', 1),
(9, 44, 'Dashboard', 'admin', 'far fa-circle', 1),
(10, 49, 'CBD', 'Controller_Trimsorder/cbd', 'far fa-circle', 1),
(24, 2, 'Change Password', 'user/changepwd', 'far fa-circle', 1),
(25, 1, 'Role', 'admin/role', 'far fa-circle', 1),
(79, 44, 'Item', 'Controller_Item', 'far fa-circle', 1),
(80, 49, 'Request Manual', 'Controller_Trimsorder/add_trim_order', 'far fa-circle', 1),
(81, 44, 'Supplier', 'Controller_Supplier', 'far fa-circle', 1),
(83, 49, 'Add Trims Order', 'Controller_Trimsorder/add_trim_order', 'far fa-circle', 0),
(84, 50, 'Request', 'Controller_Purchase/request_purchase', 'far fa-circle', 1),
(85, 49, 'List Request', 'Controller_Trimsorder', 'far fa-circle', 1),
(86, 50, 'Purchase Manual', 'Controller_Purchase/add_purchase_un', 'far fa-circle', 0),
(87, 50, 'List Purchase Order', 'Controller_Purchase', 'far fa-circle', 1),
(88, 53, 'List Order', 'Controller_Tracking', 'far fa-circle', 1),
(89, 52, 'Material In', 'Controller_Warehouse', 'far fa-circle', 1),
(90, 52, 'Material Out', 'Controller_Warehouse/material_out', 'far fa-circle', 1),
(91, 55, 'Stock', 'Controller_Warehouse/stok', 'far fa-circle', 1),
(92, 54, 'Bill', 'Controller_Bill', 'far fa-circle', 1),
(93, 44, 'Unit', 'Controller_Unit', 'far fa-circle', 1),
(94, 44, 'Category', 'Controller_Category', 'far fa-circle', 1),
(98, 55, 'Mutasi', 'Controller_Warehouse/mutasi', 'far fa-circle', 1),
(99, 55, 'Material_in', 'Controller_Warehouse/material_in_report', 'far fa-circle', 1),
(100, 55, 'Material out', 'Controller_Warehouse/material_out_report', 'far fa-circle', 1),
(101, 55, 'Material return', 'Controller_Warehouse/material_return_report', 'far fa-circle', 1),
(102, 55, 'Balance', 'Controller_Warehouse/balance', 'far fa-circle', 1),
(103, 55, 'Request', 'Controller_Trimorder/request_report', 'far fa-circle', 1),
(104, 55, 'Purchase', 'Controller_Purchase/purchase_report', 'far fa-circle', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(36, 'lano@gmail.com', 'HTxcuFKEGSkggApgWkEYGIwXBsrX8lu2XTtDdqYuMSY=', 1643986286),
(38, 'pink@gmail.com', 'z/xjXxo6+VIkHFIH6bRevxMQJg2FA/iTA16kcXn/7pU=', 1644376241);

-- --------------------------------------------------------

--
-- Stand-in structure for view `u_stok_ok`
-- (See below for the actual view)
--
CREATE TABLE `u_stok_ok` (
`id_item` varchar(200)
,`size` varchar(200)
,`color` varchar(200)
,`qty` bigint(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `ip` varchar(20) DEFAULT NULL,
  `date` date NOT NULL,
  `hits` int(11) NOT NULL,
  `online` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`ip`, `date`, `hits`, `online`, `time`) VALUES
('192.168.0.254', '2022-02-18', 20, '1645193962', '2022-02-18 16:03:40'),
('192.168.0.254', '2022-02-24', 2, '1645656334', '2022-02-24 05:45:33'),
('192.168.0.254', '2022-02-27', 1, '1645968268', '2022-02-27 20:24:28'),
('192.168.0.254', '2022-03-02', 1, '1646197055', '2022-03-02 11:57:35');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_balance1`
-- (See below for the actual view)
--
CREATE TABLE `v_balance1` (
`id` varchar(200)
,`dates` varchar(255)
,`request` bigint(200)
,`purchase` bigint(20)
,`materil_in` bigint(20)
,`material_out` bigint(20)
,`ket` varchar(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_balance_des`
-- (See below for the actual view)
--
CREATE TABLE `v_balance_des` (
`id` varchar(200)
,`item_code` varchar(255)
,`item_description` varchar(255)
,`dates` varchar(255)
,`request` bigint(200)
,`purchase` bigint(20)
,`materil_in` bigint(20)
,`material_out` bigint(20)
,`ket` varchar(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_balance_det`
-- (See below for the actual view)
--
CREATE TABLE `v_balance_det` (
`id` varchar(200)
,`color` text
,`size` text
,`dates` varchar(255)
,`request` bigint(200)
,`purchase` bigint(20)
,`materil_in` bigint(20)
,`material_out` bigint(20)
,`ket` varchar(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_balance_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_balance_detail` (
`id` varchar(200)
,`item_code` varchar(255)
,`item_description` varchar(255)
,`color` text
,`size` text
,`request` bigint(200)
,`purchase` bigint(20)
,`materil_in` bigint(20)
,`material_out` bigint(20)
,`ket` varchar(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_balance_detail_sum`
-- (See below for the actual view)
--
CREATE TABLE `v_balance_detail_sum` (
`id` varchar(200)
,`item_code` varchar(255)
,`item_description` varchar(255)
,`color` text
,`size` text
,`req` decimal(65,0)
,`purc` decimal(41,0)
,`mat_in` decimal(41,0)
,`mat_out` decimal(41,0)
,`stok` decimal(42,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_cbd`
-- (See below for the actual view)
--
CREATE TABLE `v_cbd` (
`order_no` varchar(244)
,`supplier_raw_material_code` varchar(244)
,`item` varchar(244)
,`sample_code` varchar(244)
,`color_code` varchar(200)
,`color` varchar(200)
,`size_code` varchar(200)
,`size` varchar(200)
,`qty` int(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_items`
-- (See below for the actual view)
--
CREATE TABLE `v_items` (
`id_item` int(11)
,`item_code` varchar(255)
,`item_description` varchar(255)
,`id_supplier` int(255)
,`supplier_name` varchar(255)
,`supplier_address` varchar(255)
,`supplier_phone` varchar(255)
,`supplier_email` varchar(255)
,`supplier_attention` varchar(255)
,`id_unit` int(100)
,`unit` varchar(200)
,`id_category` int(100)
,`code_category` varchar(200)
,`name_category` varchar(200)
,`remark` varchar(255)
,`remark_supplier` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_material_in`
-- (See below for the actual view)
--
CREATE TABLE `v_material_in` (
`id_in` int(10)
,`no_sj` varchar(255)
,`date_in` varchar(200)
,`kurir` varchar(200)
,`ekspedisi` varchar(200)
,`remark` varchar(255)
,`id_po` varchar(255)
,`id_item` varchar(200)
,`item_description` varchar(255)
,`remark_supplier` varchar(255)
,`color` varchar(200)
,`size` varchar(200)
,`qty` int(200)
,`po_no` varchar(200)
,`id_trim` int(200)
,`request_date` varchar(50)
,`id_supplier` varchar(200)
,`supplier_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_material_in_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_material_in_detail` (
`id` int(100)
,`id_in` varchar(200)
,`color` varchar(200)
,`size` varchar(200)
,`qty` int(200)
,`remark` varchar(200)
,`id_item` varchar(200)
,`item_code` varchar(255)
,`item_description` varchar(255)
,`id_supplier` int(255)
,`supplier_name` varchar(255)
,`supplier_address` varchar(255)
,`remark_supplier` varchar(255)
,`unit` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_material_in_list`
-- (See below for the actual view)
--
CREATE TABLE `v_material_in_list` (
`id_in` int(10)
,`no_sj` varchar(255)
,`date_in` varchar(200)
,`id_po` varchar(255)
,`remark` varchar(255)
,`po_no` varchar(200)
,`id_trim` int(200)
,`request_date` varchar(50)
,`id_supplier` varchar(200)
,`supplier_name` varchar(255)
,`kurir` varchar(200)
,`ekspedisi` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_material_out`
-- (See below for the actual view)
--
CREATE TABLE `v_material_out` (
`id_out` int(10)
,`no_out` varchar(255)
,`date_out` varchar(255)
,`allocation` varchar(200)
,`department` varchar(200)
,`mo` varchar(255)
,`style` varchar(200)
,`remark` varchar(255)
,`id_item` varchar(200)
,`item_description` varchar(255)
,`color` varchar(200)
,`size` varchar(200)
,`item_code` varchar(255)
,`unit` varchar(200)
,`out_remark` varchar(200)
,`qty` int(200)
,`supplier_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_material_out_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_material_out_detail` (
`id` int(100)
,`id_out` varchar(200)
,`id_item` varchar(200)
,`color` varchar(200)
,`size` varchar(200)
,`qty` int(200)
,`item_code` varchar(255)
,`item_description` varchar(255)
,`supplier_name` varchar(255)
,`supplier_address` varchar(255)
,`unit` varchar(200)
,`remark` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_menu`
-- (See below for the actual view)
--
CREATE TABLE `v_menu` (
`ID` int(11)
,`menu_id` int(11)
,`menu` varchar(128)
,`title` varchar(128)
,`url` varchar(128)
,`icon` varchar(128)
,`is_active` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pivot_cbd`
-- (See below for the actual view)
--
CREATE TABLE `v_pivot_cbd` (
`id_trim` int(25)
,`order_no` varchar(100)
,`color` varchar(200)
,`size` varchar(200)
,`qty` int(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_purchase_manage`
-- (See below for the actual view)
--
CREATE TABLE `v_purchase_manage` (
`id_po` int(20)
,`po_no` varchar(200)
,`approval` varchar(200)
,`id_trim` int(200)
,`trim_code` varchar(200)
,`trim_mo` varchar(200)
,`trim_date` varchar(200)
,`trim_status` varchar(200)
,`user_order` varchar(200)
,`id_supplier` varchar(200)
,`supplier_name` varchar(255)
,`supplier_address` varchar(255)
,`supplier_email` varchar(255)
,`supplier_phone` varchar(255)
,`supplier_fax` varchar(255)
,`supplier_attention` varchar(255)
,`remark` varchar(255)
,`request_date` varchar(50)
,`request_in_house` varchar(200)
,`delivery_at` varchar(200)
,`allocation` varchar(200)
,`applicant` varchar(200)
,`po_status` varchar(200)
,`sub_total` varchar(200)
,`rounding` varchar(200)
,`vat` varchar(200)
,`vat_amount` varchar(1100)
,`grand_total` varchar(200)
,`purchase_amount` varchar(200)
,`note1` varchar(250)
,`note2` varchar(3000)
,`user` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_purchase_order`
-- (See below for the actual view)
--
CREATE TABLE `v_purchase_order` (
`id_po` int(20)
,`po_no` varchar(200)
,`id_trim` int(200)
,`trim_code` varchar(200)
,`trim_mo` varchar(200)
,`trim_date` varchar(200)
,`trim_status` varchar(200)
,`id_supplier` varchar(200)
,`request_date` varchar(50)
,`request_in_house` varchar(200)
,`delivery_at` varchar(200)
,`allocation` varchar(200)
,`applicant` varchar(200)
,`po_status` varchar(200)
,`sub_total` varchar(200)
,`approval` varchar(200)
,`rounding` varchar(200)
,`vat` varchar(200)
,`vat_amount` varchar(1100)
,`grand_total` varchar(200)
,`purchase_amount` varchar(200)
,`note1` varchar(250)
,`note2` varchar(3000)
,`User` varchar(200)
,`supplier_name` varchar(255)
,`supplier_address` varchar(255)
,`supplier_phone` varchar(255)
,`supplier_email` varchar(255)
,`supplier_attention` varchar(255)
,`id_item` int(100)
,`color` varchar(200)
,`size` varchar(100)
,`qty` int(100)
,`price` varchar(200)
,`total_price` varchar(2000)
,`item_description` varchar(255)
,`unit` varchar(200)
,`remark` varchar(255)
,`remark_supplier` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_purchase_order_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_purchase_order_detail` (
`ID` int(200)
,`id_po` int(20)
,`id_item` int(100)
,`item_code` varchar(255)
,`item_description` varchar(255)
,`color` varchar(200)
,`size` varchar(100)
,`qty` int(100)
,`price` varchar(200)
,`total_price` varchar(2000)
,`id_supplier` int(255)
,`supplier_name` varchar(255)
,`unit` varchar(200)
,`remark` varchar(255)
,`remark_supplier` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_status`
-- (See below for the actual view)
--
CREATE TABLE `v_status` (
`id_trim` int(200)
,`trim_mo` varchar(200)
,`trim_date` varchar(200)
,`id_po` int(20)
,`po_no` varchar(200)
,`request_date` varchar(50)
,`trim_code` varchar(200)
,`trim_style` varchar(200)
,`trim_destination` varchar(200)
,`trim_status` varchar(200)
,`remark` varchar(200)
,`id_supplier` varchar(200)
,`request_in_house` varchar(200)
,`delivery_at` varchar(200)
,`allocation` varchar(200)
,`applicant` varchar(200)
,`po_status` varchar(200)
,`sub_total` varchar(200)
,`rounding` varchar(200)
,`vat` varchar(200)
,`vat_amount` varchar(1100)
,`grand_total` varchar(200)
,`purchase_amount` varchar(200)
,`note1` varchar(250)
,`note2` varchar(3000)
,`User` varchar(200)
,`supplier_name` varchar(255)
,`supplier_address` varchar(255)
,`supplier_attention` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_stok_inout`
-- (See below for the actual view)
--
CREATE TABLE `v_stok_inout` (
`id_item` varchar(200)
,`item_code` varchar(255)
,`item_description` varchar(255)
,`unit` varchar(200)
,`supplier_name` varchar(255)
,`size` varchar(200)
,`color` varchar(200)
,`stok` decimal(65,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_stok_sum`
-- (See below for the actual view)
--
CREATE TABLE `v_stok_sum` (
`id_item` varchar(200)
,`stok` decimal(65,0)
,`size` varchar(200)
,`color` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_sum`
-- (See below for the actual view)
--
CREATE TABLE `v_sum` (
`id` varchar(200)
,`item_code` varchar(255)
,`item_description` varchar(255)
,`req` decimal(65,0)
,`purc` decimal(41,0)
,`mat_in` decimal(41,0)
,`mat_out` decimal(41,0)
,`stok` decimal(42,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_trimorder_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_trimorder_detail` (
`id` int(11)
,`id_trim` varchar(200)
,`id_item` int(200)
,`item_code` varchar(255)
,`item_description` varchar(255)
,`unit` varchar(200)
,`item_remark` varchar(255)
,`id_supplier` int(255)
,`supplier_name` varchar(255)
,`supplier_address` varchar(255)
,`color` varchar(1000)
,`size` varchar(1000)
,`qty` int(200)
,`consumtion` int(100)
,`allowance` int(100)
,`total` int(100)
,`detail_remark` varchar(200)
,`remark_supplier` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_trimorder_fix`
-- (See below for the actual view)
--
CREATE TABLE `v_trimorder_fix` (
`id_trim` int(25)
,`order_no` varchar(100)
,`sample_code` varchar(100)
,`trim_code` varchar(200)
,`trim_mo` varchar(200)
,`trim_style` varchar(200)
,`trim_destination` varchar(200)
,`trim_date` varchar(200)
,`trim_status` varchar(200)
,`remark` varchar(200)
,`User` varchar(200)
,`id_item` int(200)
,`item_code` varchar(255)
,`item_description` varchar(255)
,`color` varchar(1000)
,`size` varchar(1000)
,`item_remark` varchar(255)
,`id_supplier` int(255)
,`supplier_name` varchar(255)
,`supplier_address` varchar(255)
,`qty` int(200)
,`detail_remark` varchar(200)
,`remark_supplier` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `u_stok_ok`
--
DROP TABLE IF EXISTS `u_stok_ok`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `u_stok_ok`  AS  select `tb_material_in_detail`.`id_item` AS `id_item`,`tb_material_in_detail`.`size` AS `size`,`tb_material_in_detail`.`color` AS `color`,`tb_material_in_detail`.`qty` AS `qty` from `tb_material_in_detail` union select `tb_material_out_detail`.`id_item` AS `id_item`,`tb_material_out_detail`.`size` AS `size`,`tb_material_out_detail`.`color` AS `color`,-(`tb_material_out_detail`.`qty`) AS `-qty` from `tb_material_out_detail` ;

-- --------------------------------------------------------

--
-- Structure for view `v_balance1`
--
DROP TABLE IF EXISTS `v_balance1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_balance1`  AS  select `tr`.`id_item` AS `id`,`tr`.`trim_date` AS `dates`,`tr`.`qty` AS `request`,0 AS `purchase`,0 AS `materil_in`,0 AS `material_out`,'request' AS `ket` from `v_trimorder_fix` `tr` union all select `p`.`id_item` AS `id`,`p`.`request_date` AS `dates`,0 AS `request`,`p`.`qty` AS `purchase`,0 AS `materil_in`,0 AS `material_out`,'purchase' AS `ket` from `v_purchase_order` `p` union all select `i`.`id_item` AS `id`,`i`.`date_in` AS `dates`,0 AS `request`,0 AS `purchase`,`i`.`qty` AS `materil_in`,0 AS `material_out`,'in' AS `ket` from `v_material_in` `i` union all select `o`.`id_item` AS `id`,`o`.`date_out` AS `dates`,0 AS `request`,0 AS `purchase`,0 AS `materil_in`,`o`.`qty` AS `material_out`,'out' AS `ket` from `v_material_out` `o` ;

-- --------------------------------------------------------

--
-- Structure for view `v_balance_des`
--
DROP TABLE IF EXISTS `v_balance_des`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_balance_des`  AS  select `v_balance1`.`id` AS `id`,`v_items`.`item_code` AS `item_code`,`v_items`.`item_description` AS `item_description`,`v_balance1`.`dates` AS `dates`,`v_balance1`.`request` AS `request`,`v_balance1`.`purchase` AS `purchase`,`v_balance1`.`materil_in` AS `materil_in`,`v_balance1`.`material_out` AS `material_out`,`v_balance1`.`ket` AS `ket` from (`v_balance1` join `v_items` on((`v_balance1`.`id` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_balance_det`
--
DROP TABLE IF EXISTS `v_balance_det`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_balance_det`  AS  select `tr`.`id_item` AS `id`,`tr`.`color` AS `color`,`tr`.`size` AS `size`,`tr`.`trim_date` AS `dates`,`tr`.`qty` AS `request`,0 AS `purchase`,0 AS `materil_in`,0 AS `material_out`,'req' AS `ket` from `v_trimorder_fix` `tr` union all select `p`.`id_item` AS `id`,`p`.`color` AS `color`,`p`.`size` AS `size`,`p`.`request_date` AS `dates`,0 AS `request`,`p`.`qty` AS `purchase`,0 AS `materil_in`,0 AS `material_out`,'purc' AS `ket` from `v_purchase_order` `p` union all select `i`.`id_item` AS `id`,`i`.`color` AS `color`,`i`.`size` AS `size`,`i`.`date_in` AS `dates`,0 AS `request`,0 AS `purchase`,`i`.`qty` AS `materil_in`,0 AS `material_out`,'in' AS `ket` from `v_material_in` `i` union all select `o`.`id_item` AS `id`,`o`.`color` AS `color`,`o`.`size` AS `size`,`o`.`date_out` AS `dates`,0 AS `request`,0 AS `purchase`,0 AS `materil_in`,`o`.`qty` AS `material_out`,'out' AS `ket` from `v_material_out` `o` ;

-- --------------------------------------------------------

--
-- Structure for view `v_balance_detail`
--
DROP TABLE IF EXISTS `v_balance_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_balance_detail`  AS  select `v_balance_det`.`id` AS `id`,`v_items`.`item_code` AS `item_code`,`v_items`.`item_description` AS `item_description`,`v_balance_det`.`color` AS `color`,`v_balance_det`.`size` AS `size`,`v_balance_det`.`request` AS `request`,`v_balance_det`.`purchase` AS `purchase`,`v_balance_det`.`materil_in` AS `materil_in`,`v_balance_det`.`material_out` AS `material_out`,`v_balance_det`.`ket` AS `ket` from (`v_balance_det` join `v_items` on((`v_balance_det`.`id` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_balance_detail_sum`
--
DROP TABLE IF EXISTS `v_balance_detail_sum`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_balance_detail_sum`  AS  select `v_balance_detail`.`id` AS `id`,`v_balance_detail`.`item_code` AS `item_code`,`v_balance_detail`.`item_description` AS `item_description`,`v_balance_detail`.`color` AS `color`,`v_balance_detail`.`size` AS `size`,sum(`v_balance_detail`.`request`) AS `req`,sum(`v_balance_detail`.`purchase`) AS `purc`,sum(`v_balance_detail`.`materil_in`) AS `mat_in`,sum(`v_balance_detail`.`material_out`) AS `mat_out`,sum((`v_balance_detail`.`materil_in` - `v_balance_detail`.`material_out`)) AS `stok` from `v_balance_detail` group by `v_balance_detail`.`id`,`v_balance_detail`.`color`,`v_balance_detail`.`size` ;

-- --------------------------------------------------------

--
-- Structure for view `v_cbd`
--
DROP TABLE IF EXISTS `v_cbd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cbd`  AS  select `tb_cbd`.`order_no` AS `order_no`,`tb_cbd`.`supplier_raw_material_code` AS `supplier_raw_material_code`,`tb_cbd`.`item` AS `item`,`tb_cbd`.`sample_code` AS `sample_code`,`tb_cbd_detail`.`color_code` AS `color_code`,`tb_cbd_detail`.`color` AS `color`,`tb_cbd_detail`.`size_code` AS `size_code`,`tb_cbd_detail`.`size` AS `size`,`tb_cbd_detail`.`qty` AS `qty` from (`tb_cbd` join `tb_cbd_detail` on((`tb_cbd`.`order_no` = `tb_cbd_detail`.`order_no`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_items`
--
DROP TABLE IF EXISTS `v_items`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_items`  AS  select `tb_items`.`id_item` AS `id_item`,`tb_items`.`item_code` AS `item_code`,`tb_items`.`item_description` AS `item_description`,`tb_items`.`id_supplier` AS `id_supplier`,`tb_supplier`.`supplier_name` AS `supplier_name`,`tb_supplier`.`supplier_address` AS `supplier_address`,`tb_supplier`.`supplier_phone` AS `supplier_phone`,`tb_supplier`.`supplier_email` AS `supplier_email`,`tb_supplier`.`supplier_attention` AS `supplier_attention`,`tb_unit`.`id_unit` AS `id_unit`,`tb_unit`.`code_unit` AS `unit`,`tb_category`.`id_category` AS `id_category`,`tb_category`.`code_category` AS `code_category`,`tb_category`.`name_category` AS `name_category`,`tb_items`.`remark` AS `remark`,`tb_supplier`.`remark` AS `remark_supplier` from (((`tb_items` join `tb_supplier` on((`tb_items`.`id_supplier` = `tb_supplier`.`id_supplier`))) join `tb_category` on((`tb_items`.`id_category` = `tb_category`.`id_category`))) join `tb_unit` on((`tb_items`.`id_unit` = `tb_unit`.`id_unit`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_material_in`
--
DROP TABLE IF EXISTS `v_material_in`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_material_in`  AS  select `tb_material_in`.`id_in` AS `id_in`,`tb_material_in`.`no_sj` AS `no_sj`,`tb_material_in`.`date` AS `date_in`,`tb_material_in`.`kurir` AS `kurir`,`tb_material_in`.`ekspedisi` AS `ekspedisi`,`tb_material_in`.`remark` AS `remark`,`tb_material_in`.`id_po` AS `id_po`,`v_material_in_detail`.`id_item` AS `id_item`,`v_material_in_detail`.`item_description` AS `item_description`,`v_material_in_detail`.`remark_supplier` AS `remark_supplier`,`v_material_in_detail`.`color` AS `color`,`v_material_in_detail`.`size` AS `size`,`v_material_in_detail`.`qty` AS `qty`,`v_purchase_manage`.`po_no` AS `po_no`,`v_purchase_manage`.`id_trim` AS `id_trim`,`v_purchase_manage`.`request_date` AS `request_date`,`v_purchase_manage`.`id_supplier` AS `id_supplier`,`v_purchase_manage`.`supplier_name` AS `supplier_name` from ((`tb_material_in` join `v_material_in_detail` on((`tb_material_in`.`id_in` = `v_material_in_detail`.`id_in`))) join `v_purchase_manage` on((`tb_material_in`.`id_po` = `v_purchase_manage`.`id_po`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_material_in_detail`
--
DROP TABLE IF EXISTS `v_material_in_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_material_in_detail`  AS  select `tb_material_in_detail`.`id` AS `id`,`tb_material_in_detail`.`id_in` AS `id_in`,`tb_material_in_detail`.`color` AS `color`,`tb_material_in_detail`.`size` AS `size`,`tb_material_in_detail`.`qty` AS `qty`,`tb_material_in_detail`.`remark` AS `remark`,`tb_material_in_detail`.`id_item` AS `id_item`,`v_items`.`item_code` AS `item_code`,`v_items`.`item_description` AS `item_description`,`v_items`.`id_supplier` AS `id_supplier`,`v_items`.`supplier_name` AS `supplier_name`,`v_items`.`supplier_address` AS `supplier_address`,`v_items`.`remark_supplier` AS `remark_supplier`,`v_items`.`unit` AS `unit` from (`tb_material_in_detail` join `v_items` on((`tb_material_in_detail`.`id_item` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_material_in_list`
--
DROP TABLE IF EXISTS `v_material_in_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_material_in_list`  AS  select `tb_material_in`.`id_in` AS `id_in`,`tb_material_in`.`no_sj` AS `no_sj`,`tb_material_in`.`date` AS `date_in`,`tb_material_in`.`id_po` AS `id_po`,`tb_material_in`.`remark` AS `remark`,`v_purchase_manage`.`po_no` AS `po_no`,`v_purchase_manage`.`id_trim` AS `id_trim`,`v_purchase_manage`.`request_date` AS `request_date`,`v_purchase_manage`.`id_supplier` AS `id_supplier`,`v_purchase_manage`.`supplier_name` AS `supplier_name`,`tb_material_in`.`kurir` AS `kurir`,`tb_material_in`.`ekspedisi` AS `ekspedisi` from (`tb_material_in` join `v_purchase_manage` on((`tb_material_in`.`id_po` = `v_purchase_manage`.`id_po`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_material_out`
--
DROP TABLE IF EXISTS `v_material_out`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_material_out`  AS  select `tb_material_out`.`id_out` AS `id_out`,`tb_material_out`.`no_out` AS `no_out`,`tb_material_out`.`date` AS `date_out`,`tb_material_out`.`allocation` AS `allocation`,`tb_material_out`.`department` AS `department`,`tb_material_out`.`mo` AS `mo`,`tb_material_out`.`style` AS `style`,`tb_material_out`.`remark` AS `remark`,`v_material_out_detail`.`id_item` AS `id_item`,`v_items`.`item_description` AS `item_description`,`v_material_out_detail`.`color` AS `color`,`v_material_out_detail`.`size` AS `size`,`v_material_out_detail`.`item_code` AS `item_code`,`v_material_out_detail`.`unit` AS `unit`,`v_material_out_detail`.`remark` AS `out_remark`,`v_material_out_detail`.`qty` AS `qty`,`v_items`.`supplier_name` AS `supplier_name` from ((`tb_material_out` join `v_material_out_detail` on((`tb_material_out`.`id_out` = `v_material_out_detail`.`id_out`))) join `v_items` on((`v_material_out_detail`.`id_item` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_material_out_detail`
--
DROP TABLE IF EXISTS `v_material_out_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_material_out_detail`  AS  select `tb_material_out_detail`.`id` AS `id`,`tb_material_out_detail`.`id_out` AS `id_out`,`tb_material_out_detail`.`id_item` AS `id_item`,`tb_material_out_detail`.`color` AS `color`,`tb_material_out_detail`.`size` AS `size`,`tb_material_out_detail`.`qty` AS `qty`,`v_items`.`item_code` AS `item_code`,`v_items`.`item_description` AS `item_description`,`v_items`.`supplier_name` AS `supplier_name`,`v_items`.`supplier_address` AS `supplier_address`,`v_items`.`unit` AS `unit`,`tb_material_out_detail`.`remark` AS `remark` from (`tb_material_out_detail` join `v_items` on((`tb_material_out_detail`.`id_item` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_menu`
--
DROP TABLE IF EXISTS `v_menu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_menu`  AS  select `user_sub_menu`.`id` AS `ID`,`user_sub_menu`.`menu_id` AS `menu_id`,`user_menu`.`menu` AS `menu`,`user_sub_menu`.`title` AS `title`,`user_sub_menu`.`url` AS `url`,`user_sub_menu`.`icon` AS `icon`,`user_sub_menu`.`is_active` AS `is_active` from (`user_menu` join `user_sub_menu` on((`user_menu`.`id` = `user_sub_menu`.`menu_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_pivot_cbd`
--
DROP TABLE IF EXISTS `v_pivot_cbd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pivot_cbd`  AS  select `tb_trim_order`.`id_trim` AS `id_trim`,`tb_trim_order`.`order_no` AS `order_no`,`tb_cbd_detail`.`color` AS `color`,`tb_cbd_detail`.`size` AS `size`,`tb_cbd_detail`.`qty` AS `qty` from (`tb_trim_order` join `tb_cbd_detail` on((`tb_trim_order`.`order_no` = `tb_cbd_detail`.`order_no`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_manage`
--
DROP TABLE IF EXISTS `v_purchase_manage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_manage`  AS  select `tb_purchase_order`.`id_po` AS `id_po`,`tb_purchase_order`.`po_no` AS `po_no`,`tb_purchase_order`.`approval` AS `approval`,`tb_purchase_order`.`id_trim` AS `id_trim`,`tb_trim_order`.`trim_code` AS `trim_code`,`tb_trim_order`.`trim_mo` AS `trim_mo`,`tb_trim_order`.`trim_date` AS `trim_date`,`tb_trim_order`.`trim_status` AS `trim_status`,`tb_trim_order`.`user` AS `user_order`,`tb_purchase_order`.`id_supplier` AS `id_supplier`,`tb_supplier`.`supplier_name` AS `supplier_name`,`tb_supplier`.`supplier_address` AS `supplier_address`,`tb_supplier`.`supplier_email` AS `supplier_email`,`tb_supplier`.`supplier_phone` AS `supplier_phone`,`tb_supplier`.`supplier_fax` AS `supplier_fax`,`tb_supplier`.`supplier_attention` AS `supplier_attention`,`tb_supplier`.`remark` AS `remark`,`tb_purchase_order`.`request_date` AS `request_date`,`tb_purchase_order`.`request_in_house` AS `request_in_house`,`tb_purchase_order`.`delivery_at` AS `delivery_at`,`tb_purchase_order`.`allocation` AS `allocation`,`tb_purchase_order`.`applicant` AS `applicant`,`tb_purchase_order`.`po_status` AS `po_status`,`tb_purchase_order`.`sub_total` AS `sub_total`,`tb_purchase_order`.`rounding` AS `rounding`,`tb_purchase_order`.`vat` AS `vat`,`tb_purchase_order`.`vat_amount` AS `vat_amount`,`tb_purchase_order`.`grand_total` AS `grand_total`,`tb_purchase_order`.`purchase_amount` AS `purchase_amount`,`tb_purchase_order`.`note1` AS `note1`,`tb_purchase_order`.`note2` AS `note2`,`tb_purchase_order`.`user` AS `user` from ((`tb_purchase_order` join `tb_trim_order` on((`tb_purchase_order`.`id_trim` = `tb_trim_order`.`id_trim`))) join `tb_supplier` on((`tb_purchase_order`.`id_supplier` = `tb_supplier`.`id_supplier`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_order`
--
DROP TABLE IF EXISTS `v_purchase_order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_order`  AS  select `tb_purchase_order`.`id_po` AS `id_po`,`tb_purchase_order`.`po_no` AS `po_no`,`tb_purchase_order`.`id_trim` AS `id_trim`,`tb_trim_order`.`trim_code` AS `trim_code`,`tb_trim_order`.`trim_mo` AS `trim_mo`,`tb_trim_order`.`trim_date` AS `trim_date`,`tb_trim_order`.`trim_status` AS `trim_status`,`tb_purchase_order`.`id_supplier` AS `id_supplier`,`tb_purchase_order`.`request_date` AS `request_date`,`tb_purchase_order`.`request_in_house` AS `request_in_house`,`tb_purchase_order`.`delivery_at` AS `delivery_at`,`tb_purchase_order`.`allocation` AS `allocation`,`tb_purchase_order`.`applicant` AS `applicant`,`tb_purchase_order`.`po_status` AS `po_status`,`tb_purchase_order`.`sub_total` AS `sub_total`,`tb_purchase_order`.`approval` AS `approval`,`tb_purchase_order`.`rounding` AS `rounding`,`tb_purchase_order`.`vat` AS `vat`,`tb_purchase_order`.`vat_amount` AS `vat_amount`,`tb_purchase_order`.`grand_total` AS `grand_total`,`tb_purchase_order`.`purchase_amount` AS `purchase_amount`,`tb_purchase_order`.`note1` AS `note1`,`tb_purchase_order`.`note2` AS `note2`,`tb_purchase_order`.`user` AS `User`,`tb_supplier`.`supplier_name` AS `supplier_name`,`tb_supplier`.`supplier_address` AS `supplier_address`,`tb_supplier`.`supplier_phone` AS `supplier_phone`,`tb_supplier`.`supplier_email` AS `supplier_email`,`tb_supplier`.`supplier_attention` AS `supplier_attention`,`v_purchase_order_detail`.`id_item` AS `id_item`,`v_purchase_order_detail`.`color` AS `color`,`v_purchase_order_detail`.`size` AS `size`,`v_purchase_order_detail`.`qty` AS `qty`,`v_purchase_order_detail`.`price` AS `price`,`v_purchase_order_detail`.`total_price` AS `total_price`,`v_purchase_order_detail`.`item_description` AS `item_description`,`v_purchase_order_detail`.`unit` AS `unit`,`v_purchase_order_detail`.`remark` AS `remark`,`v_purchase_order_detail`.`remark_supplier` AS `remark_supplier` from (((`tb_purchase_order` join `v_purchase_order_detail` on((`tb_purchase_order`.`id_po` = `v_purchase_order_detail`.`id_po`))) join `tb_supplier` on((`tb_purchase_order`.`id_supplier` = `tb_supplier`.`id_supplier`))) join `tb_trim_order` on((`tb_purchase_order`.`id_trim` = `tb_trim_order`.`id_trim`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_order_detail`
--
DROP TABLE IF EXISTS `v_purchase_order_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_order_detail`  AS  select `tb_purchase_order_detail`.`id` AS `ID`,`tb_purchase_order_detail`.`id_po` AS `id_po`,`tb_purchase_order_detail`.`id_item` AS `id_item`,`v_items`.`item_code` AS `item_code`,`v_items`.`item_description` AS `item_description`,`tb_purchase_order_detail`.`color` AS `color`,`tb_purchase_order_detail`.`size` AS `size`,`tb_purchase_order_detail`.`qty` AS `qty`,`tb_purchase_order_detail`.`price` AS `price`,`tb_purchase_order_detail`.`total_price` AS `total_price`,`v_items`.`id_supplier` AS `id_supplier`,`v_items`.`supplier_name` AS `supplier_name`,`v_items`.`unit` AS `unit`,`v_items`.`remark` AS `remark`,`v_items`.`remark_supplier` AS `remark_supplier` from (`tb_purchase_order_detail` join `v_items` on((`tb_purchase_order_detail`.`id_item` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_status`
--
DROP TABLE IF EXISTS `v_status`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_status`  AS  select `tb_purchase_order`.`id_trim` AS `id_trim`,`tb_trim_order`.`trim_mo` AS `trim_mo`,`tb_trim_order`.`trim_date` AS `trim_date`,`tb_purchase_order`.`id_po` AS `id_po`,`tb_purchase_order`.`po_no` AS `po_no`,`tb_purchase_order`.`request_date` AS `request_date`,`tb_trim_order`.`trim_code` AS `trim_code`,`tb_trim_order`.`trim_style` AS `trim_style`,`tb_trim_order`.`trim_destination` AS `trim_destination`,`tb_trim_order`.`trim_status` AS `trim_status`,`tb_trim_order`.`remark` AS `remark`,`tb_purchase_order`.`id_supplier` AS `id_supplier`,`tb_purchase_order`.`request_in_house` AS `request_in_house`,`tb_purchase_order`.`delivery_at` AS `delivery_at`,`tb_purchase_order`.`allocation` AS `allocation`,`tb_purchase_order`.`applicant` AS `applicant`,`tb_purchase_order`.`po_status` AS `po_status`,`tb_purchase_order`.`sub_total` AS `sub_total`,`tb_purchase_order`.`rounding` AS `rounding`,`tb_purchase_order`.`vat` AS `vat`,`tb_purchase_order`.`vat_amount` AS `vat_amount`,`tb_purchase_order`.`grand_total` AS `grand_total`,`tb_purchase_order`.`purchase_amount` AS `purchase_amount`,`tb_purchase_order`.`note1` AS `note1`,`tb_purchase_order`.`note2` AS `note2`,`tb_purchase_order`.`user` AS `User`,`tb_supplier`.`supplier_name` AS `supplier_name`,`tb_supplier`.`supplier_address` AS `supplier_address`,`tb_supplier`.`supplier_attention` AS `supplier_attention` from ((`tb_purchase_order` join `tb_trim_order` on((`tb_purchase_order`.`id_trim` = `tb_trim_order`.`id_trim`))) join `tb_supplier` on((`tb_purchase_order`.`id_supplier` = `tb_supplier`.`id_supplier`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_stok_inout`
--
DROP TABLE IF EXISTS `v_stok_inout`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stok_inout`  AS  select `v_stok_sum`.`id_item` AS `id_item`,`v_items`.`item_code` AS `item_code`,`v_items`.`item_description` AS `item_description`,`v_items`.`unit` AS `unit`,`v_items`.`supplier_name` AS `supplier_name`,`v_stok_sum`.`size` AS `size`,`v_stok_sum`.`color` AS `color`,`v_stok_sum`.`stok` AS `stok` from (`v_stok_sum` join `v_items` on((`v_stok_sum`.`id_item` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_stok_sum`
--
DROP TABLE IF EXISTS `v_stok_sum`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stok_sum`  AS  select `u_stok_ok`.`id_item` AS `id_item`,sum(`u_stok_ok`.`qty`) AS `stok`,`u_stok_ok`.`size` AS `size`,`u_stok_ok`.`color` AS `color` from `u_stok_ok` group by `u_stok_ok`.`id_item`,`u_stok_ok`.`size`,`u_stok_ok`.`color` ;

-- --------------------------------------------------------

--
-- Structure for view `v_sum`
--
DROP TABLE IF EXISTS `v_sum`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_sum`  AS  select `v_balance_des`.`id` AS `id`,`v_balance_des`.`item_code` AS `item_code`,`v_balance_des`.`item_description` AS `item_description`,sum(`v_balance_des`.`request`) AS `req`,sum(`v_balance_des`.`purchase`) AS `purc`,sum(`v_balance_des`.`materil_in`) AS `mat_in`,sum(`v_balance_des`.`material_out`) AS `mat_out`,sum((`v_balance_des`.`materil_in` - `v_balance_des`.`material_out`)) AS `stok` from `v_balance_des` group by `v_balance_des`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `v_trimorder_detail`
--
DROP TABLE IF EXISTS `v_trimorder_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_trimorder_detail`  AS  select `tb_trim_detail`.`id` AS `id`,`tb_trim_detail`.`id_trim` AS `id_trim`,`tb_trim_detail`.`id_item` AS `id_item`,`v_items`.`item_code` AS `item_code`,`v_items`.`item_description` AS `item_description`,`v_items`.`unit` AS `unit`,`v_items`.`remark` AS `item_remark`,`v_items`.`id_supplier` AS `id_supplier`,`v_items`.`supplier_name` AS `supplier_name`,`v_items`.`supplier_address` AS `supplier_address`,`tb_trim_detail`.`color` AS `color`,`tb_trim_detail`.`size` AS `size`,`tb_trim_detail`.`qty` AS `qty`,`tb_trim_detail`.`consumtion` AS `consumtion`,`tb_trim_detail`.`allowance` AS `allowance`,`tb_trim_detail`.`total` AS `total`,`tb_trim_detail`.`remark` AS `detail_remark`,`v_items`.`remark_supplier` AS `remark_supplier` from (`tb_trim_detail` join `v_items` on((`tb_trim_detail`.`id_item` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_trimorder_fix`
--
DROP TABLE IF EXISTS `v_trimorder_fix`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_trimorder_fix`  AS  select `tb_trim_order`.`id_trim` AS `id_trim`,`tb_trim_order`.`order_no` AS `order_no`,`tb_trim_order`.`sample_code` AS `sample_code`,`tb_trim_order`.`trim_code` AS `trim_code`,`tb_trim_order`.`trim_mo` AS `trim_mo`,`tb_trim_order`.`trim_style` AS `trim_style`,`tb_trim_order`.`trim_destination` AS `trim_destination`,`tb_trim_order`.`trim_date` AS `trim_date`,`tb_trim_order`.`trim_status` AS `trim_status`,`tb_trim_order`.`remark` AS `remark`,`tb_trim_order`.`user` AS `User`,`v_trimorder_detail`.`id_item` AS `id_item`,`v_trimorder_detail`.`item_code` AS `item_code`,`v_trimorder_detail`.`item_description` AS `item_description`,`v_trimorder_detail`.`color` AS `color`,`v_trimorder_detail`.`size` AS `size`,`v_trimorder_detail`.`item_remark` AS `item_remark`,`v_trimorder_detail`.`id_supplier` AS `id_supplier`,`v_trimorder_detail`.`supplier_name` AS `supplier_name`,`v_trimorder_detail`.`supplier_address` AS `supplier_address`,`v_trimorder_detail`.`qty` AS `qty`,`v_trimorder_detail`.`detail_remark` AS `detail_remark`,`v_trimorder_detail`.`remark_supplier` AS `remark_supplier` from (`tb_trim_order` join `v_trimorder_detail` on((`tb_trim_order`.`id_trim` = `v_trimorder_detail`.`id_trim`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `tb_cbd`
--
ALTER TABLE `tb_cbd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_cbd_detail`
--
ALTER TABLE `tb_cbd_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_colors`
--
ALTER TABLE `tb_colors`
  ADD PRIMARY KEY (`id_color`);

--
-- Indexes for table `tb_items`
--
ALTER TABLE `tb_items`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `tb_material_in`
--
ALTER TABLE `tb_material_in`
  ADD PRIMARY KEY (`id_in`);

--
-- Indexes for table `tb_material_in_detail`
--
ALTER TABLE `tb_material_in_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_material_out`
--
ALTER TABLE `tb_material_out`
  ADD PRIMARY KEY (`id_out`);

--
-- Indexes for table `tb_material_out_detail`
--
ALTER TABLE `tb_material_out_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_purchase_order`
--
ALTER TABLE `tb_purchase_order`
  ADD PRIMARY KEY (`id_po`);

--
-- Indexes for table `tb_purchase_order_detail`
--
ALTER TABLE `tb_purchase_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_size`
--
ALTER TABLE `tb_size`
  ADD PRIMARY KEY (`id_size`);

--
-- Indexes for table `tb_supplier`
--
ALTER TABLE `tb_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tb_tracking`
--
ALTER TABLE `tb_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_trim_detail`
--
ALTER TABLE `tb_trim_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_trim_order`
--
ALTER TABLE `tb_trim_order`
  ADD PRIMARY KEY (`id_trim`);

--
-- Indexes for table `tb_unit`
--
ALTER TABLE `tb_unit`
  ADD PRIMARY KEY (`id_unit`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bakup`
--
ALTER TABLE `user_bakup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `id_category` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_cbd`
--
ALTER TABLE `tb_cbd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tb_cbd_detail`
--
ALTER TABLE `tb_cbd_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `tb_colors`
--
ALTER TABLE `tb_colors`
  MODIFY `id_color` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_items`
--
ALTER TABLE `tb_items`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tb_material_in`
--
ALTER TABLE `tb_material_in`
  MODIFY `id_in` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_material_in_detail`
--
ALTER TABLE `tb_material_in_detail`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tb_material_out`
--
ALTER TABLE `tb_material_out`
  MODIFY `id_out` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_material_out_detail`
--
ALTER TABLE `tb_material_out_detail`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_purchase_order`
--
ALTER TABLE `tb_purchase_order`
  MODIFY `id_po` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_purchase_order_detail`
--
ALTER TABLE `tb_purchase_order_detail`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `tb_size`
--
ALTER TABLE `tb_size`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_supplier`
--
ALTER TABLE `tb_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_tracking`
--
ALTER TABLE `tb_tracking`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb_trim_detail`
--
ALTER TABLE `tb_trim_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `tb_trim_order`
--
ALTER TABLE `tb_trim_order`
  MODIFY `id_trim` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_unit`
--
ALTER TABLE `tb_unit`
  MODIFY `id_unit` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `user_bakup`
--
ALTER TABLE `user_bakup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_items`
--
ALTER TABLE `tb_items`
  ADD CONSTRAINT `tb_items_ibfk_1` FOREIGN KEY (`id_supplier`) REFERENCES `tb_supplier` (`id_supplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
