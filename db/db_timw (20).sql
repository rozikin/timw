-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 05, 2023 at 03:33 AM
-- Server version: 10.5.8-MariaDB-log
-- PHP Version: 7.4.30

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
(46, 'T1123-454315-004', 'TJ13080A', 'AIRism cotton crew neck S/S T-shirt', '11373N008E'),
(47, 'T1323-457484-002', 'TJ13082A', 'AIRism cotton tank top', '13373N010E'),
(49, 'T1323-456679-002', 'TJ13048G', 'AIRism printed boxer briefs C', '13373N019D'),
(50, 'T1323-456675-002', 'TJ12804A', 'AIRism boxer briefs heather', '13373N012D');

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
(293, 'T1123-454315-004', '54', 'GREEN', '002', 'XS', 30),
(294, 'T1123-454315-004', '54', 'GREEN', '003', 'S', 496),
(295, 'T1123-454315-004', '54', 'GREEN', '004', 'M', 920),
(296, 'T1123-454315-004', '54', 'GREEN', '005', 'L', 1276),
(297, 'T1123-454315-004', '54', 'GREEN', '006', 'XL', 1100),
(298, 'T1123-454315-004', '54', 'GREEN', '007', 'XXL', 60),
(299, 'T1123-454315-004', '65', 'BLUE', '002', 'XS', 30),
(300, 'T1123-454315-004', '65', 'BLUE', '003', 'S', 496),
(301, 'T1123-454315-004', '65', 'BLUE', '004', 'M', 1100),
(302, 'T1123-454315-004', '65', 'BLUE', '005', 'L', 1276),
(303, 'T1123-454315-004', '65', 'BLUE', '006', 'XL', 920),
(304, 'T1123-454315-004', '65', 'BLUE', '007', 'XXL', 60),
(305, 'T1323-457484-002', '00', 'WHITE\nPUTIH', '002', 'XS', 7),
(306, 'T1323-457484-002', '00', 'WHITE\nPUTIH', '003', 'S', 216),
(307, 'T1323-457484-002', '00', 'WHITE\nPUTIH', '004', 'M', 540),
(308, 'T1323-457484-002', '00', 'WHITE\nPUTIH', '005', 'L', 648),
(309, 'T1323-457484-002', '00', 'WHITE\nPUTIH', '006', 'XL', 504),
(310, 'T1323-457484-002', '00', 'WHITE\nPUTIH', '007', 'XXL', 9),
(311, 'T1323-457484-002', '09', 'BLACK\nHITAM', '002', 'XS', 6),
(312, 'T1323-457484-002', '09', 'BLACK\nHITAM', '003', 'S', 108),
(313, 'T1323-457484-002', '09', 'BLACK\nHITAM', '004', 'M', 216),
(314, 'T1323-457484-002', '09', 'BLACK\nHITAM', '005', 'L', 288),
(315, 'T1323-457484-002', '09', 'BLACK\nHITAM', '006', 'XL', 252),
(316, 'T1323-457484-002', '09', 'BLACK\nHITAM', '007', 'XXL', 8),
(320, 'T1323-456679-002', '09', 'BLACK\nHITAM', '003', 'S', 6),
(321, 'T1323-456679-002', '09', 'BLACK\nHITAM', '004', 'M', 288),
(322, 'T1323-456679-002', '09', 'BLACK\nHITAM', '005', 'L', 396),
(323, 'T1323-456679-002', '09', 'BLACK\nHITAM', '006', 'XL', 432),
(324, 'T1323-456679-002', '09', 'BLACK\nHITAM', '007', 'XXL', 12),
(325, 'T1323-456679-002', '69', 'NAVY\nBIRU TUA', '003', 'S', 6),
(326, 'T1323-456679-002', '69', 'NAVY\nBIRU TUA', '004', 'M', 252),
(327, 'T1323-456679-002', '69', 'NAVY\nBIRU TUA', '005', 'L', 324),
(328, 'T1323-456679-002', '69', 'NAVY\nBIRU TUA', '006', 'XL', 288),
(329, 'T1323-456679-002', '69', 'NAVY\nBIRU TUA', '007', 'XXL', 12),
(330, 'T1323-456675-002', '07', 'GRAY\nABU-ABU', '004', 'M', 936),
(331, 'T1323-456675-002', '07', 'GRAY\nABU-ABU', '005', 'L', 1260),
(332, 'T1323-456675-002', '07', 'GRAY\nABU-ABU', '006', 'XL', 288);

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
(81, 'KR002', 'KERTAS A3', '2', 6, '1', 'KR002.png'),
(82, '12cobasaja', 'komputersx', '3', 6, '3', '12cobasaja.png'),
(83, 'P001', 'PACKTAPE', '2', 12, '1', 'P001.png');

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
(1, 'DHL009', '05/26/2023 10:41 AM', 'TOMY', 'DHL', '1', 'OK'),
(2, '1234555', '05/26/2023 2:55 PM', 'DHL', 'DHL', '2', '333M23-JP'),
(3, '123456', '05/26/2023 2:58 PM', 'DHL', 'DHL', '3', 'DHL'),
(4, '123456', '05/26/2023 3:00 PM', 'DHL', 'DHL', '3', 'DHL'),
(5, 'dhl001', '06/06/2023 9:54 AM', 'uuk', 'dhl', '4', '-');

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
(45, '1', '58', 'WHITE', 'XS', 91, ''),
(46, '1', '58', 'WHITE', 'S', 289, ''),
(47, '2', '68', 'BLUE', 'XS', 32, ''),
(48, '3', '79', 'BLUE', 'XS', 10, 'PARTIAL'),
(49, '4', '79', 'BLUE', 'XS', 12, 'PARTIAL 2'),
(50, '5', '58', 'GRAYABU-ABU', 'M', 937, ''),
(51, '5', '58', 'GRAYABU-ABU', 'L', 1261, ''),
(52, '5', '58', 'GRAYABU-ABU', 'XL', 289, '');

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
(1, 'OUT2023000001', '05/26/2023 10:41 AM', 'SEW', 'SEWING', '56', '45', 'OK'),
(2, 'OUT20232023000002', '05/26/2023 3:02 PM', 'SEWING', 'SEWING', '333M23-JP', 'FOO5L', 'UNTUK SEWING'),
(3, 'OUT20232023000003', '05/30/2023 9:55 AM', 'sewing', 'sew', '23m23j', '100d', 'ok');

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
(22, '1', '58', 'WHITE', 'S', 10, ''),
(23, '2', '68', 'BLUE', 'XS', 20, ''),
(24, '3', '58', 'GRAYABU-ABU', 'L', 200, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_material_return`
--

CREATE TABLE `tb_material_return` (
  `id_return` int(200) NOT NULL,
  `no_return` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `person` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `mo` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_material_return`
--

INSERT INTO `tb_material_return` (`id_return`, `no_return`, `date`, `person`, `department`, `mo`, `style`, `remark`) VALUES
(1, 'RT2023000001', '05/26/2023 10:42 AM', 'ALIN', 'SEW', '55', '88', 'OK'),
(2, 'RT20232023000002', '05/26/2023 3:11 PM', 'SEWING', 'SEWING', '333M23-JP', 'F005L', 'KEMBALI'),
(3, 'RT20232023000003', '06/07/2023 9:58 AM', 'wati', 'sewing', '23m23j', '100d', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `tb_material_return_detail`
--

CREATE TABLE `tb_material_return_detail` (
  `id` int(200) NOT NULL,
  `id_return` varchar(200) NOT NULL,
  `id_item` varchar(200) NOT NULL,
  `color` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `remark` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_material_return_detail`
--

INSERT INTO `tb_material_return_detail` (`id`, `id_return`, `id_item`, `color`, `size`, `qty`, `remark`) VALUES
(9, '1', '58', 'WHITE', 'S', '2', ''),
(10, '2', '68', 'BLUE', 'XS', '5', 'KEMBALI'),
(11, '3', '68', 'BLUE', 'XS', '10', '');

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
(1, 'TIMW/0001/PO/2023', 1, '4', '05/26/2023 10:35 AM', '05/26/2023 10:35 AM', 'ACC', 'ACC', 'RITA', 'Miatomo', 'Recived', '380000', '0', '0', '0', '380000', '380000', 'CEPAT', 'ok', 'rozi@gmail.com'),
(2, 'TIMW/0002/PO/2023', 2, '13', '05/26/2023 2:46 PM', '06/02/2023 2:46 PM', 'WH ACC', '333M23-JP', 'LITTA', 'LITTA', 'Recived', '42000', '0', '10', '4200', '46200', '46200', '', 'REVISI QTY KARENA ADA PERUBAHAN DARI PPIC', 'rozi@gmail.com'),
(3, 'TIMW/0003/PO/2023', 2, '4', '05/26/2023 2:53 PM', '06/02/2023 2:53 PM', 'WH ACC', '333M23-JP', 'TTA', 'Tadashi Miyamoto', 'Recived', '64000', '0', '10', '6400', '70400', '70400', '', 'URGENT!!', 'rozi@gmail.com'),
(4, 'TIMW/0004/PO/2023', 3, '4', '05/30/2023 9:51 AM', '06/06/2023 9:51 AM', 'warehouse', 'warehouse', 'lita', 'miyamoto', 'Recived', '3424000', '0', '10', '342400', '3766400', '3766400', 'SLT', 'payment max 30 day', 'rozi@gmail.com');

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
(186, 1, 58, 'WHITE', 'XS', 91, '1000', '91000'),
(187, 1, 58, 'WHITE', 'S', 289, '1000', '289000'),
(189, 3, 79, 'BLUE', 'XS', 32, '2000', '64000'),
(190, 2, 68, 'BLUE', 'XS', 42, '1000', '42000'),
(191, 4, 58, 'GRAYABU-ABU', 'M', 937, '2000', '1874000'),
(192, 4, 58, 'GRAYABU-ABU', 'L', 1261, '1000', '1261000'),
(193, 4, 58, 'GRAYABU-ABU', 'XL', 289, '1000', '289000');

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
(245, '1', 58, 'WHITE', 'XS', 90, 1, 1, 91, 'OK'),
(246, '1', 58, 'WHITE', 'S', 288, 1, 1, 289, 'OK'),
(249, '2', 79, 'BLUE', 'XS', 40, 1, 2, 42, ''),
(250, '2', 68, 'BLUE', 'XS', 40, 1, 2, 42, ''),
(267, '3', 58, 'GRAYABU-ABU', 'M', 936, 1, 1, 937, ''),
(268, '3', 58, 'GRAYABU-ABU', 'L', 1260, 1, 1, 1261, ''),
(269, '3', 58, 'GRAYABU-ABU', 'XL', 288, 1, 1, 289, ''),
(270, '3', 68, '', '', 600, 1, 1, 601, '');

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
(1, 'T2723-454315-003', '27373N008E', 'PR/0001/2023', '45400h', '100DH', 'ARAB', '05/26/2023 10:34 AM', 'Approve', 'CEPAT', 'rozi@gmail.com'),
(2, 'T1123-454315-004', '11373N008E', 'PR/0002/2023', '333M23-JP', 'F005L', 'JEPANG', '05/26/2023 2:45 PM', 'Approve', '', 'rozi@gmail.com'),
(3, 'T1323-456675-002', '13373N012D', 'PR/0003/2023', '230M23-JP', '100D', 'JAPAN', '05/30/2023 9:47 AM', 'Approve', 'SLT', 'rozi@gmail.com');

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
(70, 'purchasing', 'purchasing@gmail.com', 'default1.jpg', '$2y$10$LR2nO4mqm1Qcpc04u4O5OOMETk9dHxZGYQhreElvxhH2AJwMcpAde', 3, 1, 1554436022),
(71, 'warehouse', 'warehouse@gmail.com', 'default1.jpg', '$2y$10$LR2nO4mqm1Qcpc04u4O5OOMETk9dHxZGYQhreElvxhH2AJwMcpAde', 4, 1, 1554436022);

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
(74, 1, 55, ''),
(75, 4, 52, ''),
(76, 4, 55, '');

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
(2, 'User', 'fas fa-fw fa-user-tie'),
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
(3, 'Purchasing'),
(4, 'Warehouse');

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
(103, 55, 'Request', 'Controller_Trimsorder/request_report', 'far fa-circle', 1),
(104, 55, 'Purchase', 'Controller_Purchase/purchase_report', 'far fa-circle', 1),
(105, 55, 'Material_in', 'Controller_Warehouse/material_in_report', 'far fa-circle', 1),
(106, 55, 'Material out', 'Controller_Warehouse/material_out_report', 'far fa-circle', 1),
(107, 55, 'Material return', 'Controller_Warehouse/material_return_report', 'far fa-circle', 1),
(108, 55, 'Balance', 'Controller_Warehouse/balance', 'far fa-circle', 0),
(109, 52, 'Material Return', 'Controller_Warehouse/material_return', 'far fa-circle', 1);

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
,`qty` varchar(201)
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
-- Stand-in structure for view `v_balance_det`
-- (See below for the actual view)
--
CREATE TABLE `v_balance_det` (
`id` varchar(200)
,`color` varchar(1000)
,`size` varchar(1000)
,`dates` varchar(255)
,`request` int(100)
,`purchase` int(100)
,`materil_in` int(200)
,`material_out` int(200)
,`material_return` varchar(200)
,`ket` varchar(6)
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
,`color` varchar(1000)
,`size` varchar(1000)
,`request` int(100)
,`purchase` int(100)
,`materil_in` int(200)
,`material_out` int(200)
,`material_return` varchar(200)
,`ket` varchar(6)
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
,`color` varchar(1000)
,`size` varchar(1000)
,`req` decimal(65,0)
,`purc` decimal(65,0)
,`mat_in` decimal(65,0)
,`mat_out` decimal(65,0)
,`mat_return` double
,`stok` double
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
,`item_code` varchar(255)
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
-- Stand-in structure for view `v_material_return_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_material_return_detail` (
`id_return` int(200)
,`no_return` varchar(255)
,`date` varchar(255)
,`person` varchar(255)
,`department` varchar(255)
,`mo` varchar(255)
,`style` varchar(255)
,`remark` varchar(255)
,`id_item` varchar(200)
,`color` varchar(200)
,`size` varchar(200)
,`qty` varchar(200)
,`item_code` varchar(255)
,`item_description` varchar(255)
,`unit` varchar(200)
,`supplier_name` varchar(255)
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
,`item_code` varchar(255)
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
,`stok` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_stok_sum`
-- (See below for the actual view)
--
CREATE TABLE `v_stok_sum` (
`id_item` varchar(200)
,`stok` double
,`size` varchar(200)
,`color` varchar(200)
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
,`qty` int(100)
,`detail_remark` varchar(200)
,`remark_supplier` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `u_stok_ok`
--
DROP TABLE IF EXISTS `u_stok_ok`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `u_stok_ok`  AS SELECT `tb_material_in_detail`.`id_item` AS `id_item`, `tb_material_in_detail`.`size` AS `size`, `tb_material_in_detail`.`color` AS `color`, `tb_material_in_detail`.`qty` AS `qty` FROM `tb_material_in_detail` union select `tb_material_out_detail`.`id_item` AS `id_item`,`tb_material_out_detail`.`size` AS `size`,`tb_material_out_detail`.`color` AS `color`,-`tb_material_out_detail`.`qty` AS `-qty` from `tb_material_out_detail` union select `tb_material_return_detail`.`id_item` AS `id_item`,`tb_material_return_detail`.`size` AS `size`,`tb_material_return_detail`.`color` AS `color`,`tb_material_return_detail`.`qty` AS `qty` from `tb_material_return_detail` ;

-- --------------------------------------------------------

--
-- Structure for view `v_balance_det`
--
DROP TABLE IF EXISTS `v_balance_det`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_balance_det`  AS SELECT `tr`.`id_item` AS `id`, `tr`.`color` AS `color`, `tr`.`size` AS `size`, `tr`.`trim_date` AS `dates`, `tr`.`qty` AS `request`, 0 AS `purchase`, 0 AS `materil_in`, 0 AS `material_out`, 0 AS `material_return`, 'req' AS `ket` FROM `v_trimorder_fix` AS `tr` union all select `p`.`id_item` AS `id`,`p`.`color` AS `color`,`p`.`size` AS `size`,`p`.`request_date` AS `dates`,0 AS `request`,`p`.`qty` AS `purchase`,0 AS `materil_in`,0 AS `material_out`,0 AS `material_return`,'purc' AS `ket` from `v_purchase_order` `p` union all select `i`.`id_item` AS `id`,`i`.`color` AS `color`,`i`.`size` AS `size`,`i`.`date_in` AS `dates`,0 AS `request`,0 AS `purchase`,`i`.`qty` AS `materil_in`,0 AS `material_out`,0 AS `material_return`,'in' AS `ket` from `v_material_in` `i` union all select `o`.`id_item` AS `id`,`o`.`color` AS `color`,`o`.`size` AS `size`,`o`.`date_out` AS `dates`,0 AS `request`,0 AS `purchase`,0 AS `materil_in`,`o`.`qty` AS `material_out`,0 AS `material_return`,'out' AS `ket` from `v_material_out` `o` union all select `r`.`id_item` AS `id`,`r`.`color` AS `color`,`r`.`size` AS `size`,`r`.`date` AS `dates`,0 AS `request`,0 AS `purchase`,0 AS `materil_in`,0 AS `material_out`,`r`.`qty` AS `material_return`,'return' AS `ket` from `v_material_return_detail` `r` ;

-- --------------------------------------------------------

--
-- Structure for view `v_balance_detail`
--
DROP TABLE IF EXISTS `v_balance_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_balance_detail`  AS SELECT `v_balance_det`.`id` AS `id`, `v_items`.`item_code` AS `item_code`, `v_items`.`item_description` AS `item_description`, `v_balance_det`.`color` AS `color`, `v_balance_det`.`size` AS `size`, `v_balance_det`.`request` AS `request`, `v_balance_det`.`purchase` AS `purchase`, `v_balance_det`.`materil_in` AS `materil_in`, `v_balance_det`.`material_out` AS `material_out`, `v_balance_det`.`material_return` AS `material_return`, `v_balance_det`.`ket` AS `ket` FROM (`v_balance_det` join `v_items` on(`v_balance_det`.`id` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_balance_detail_sum`
--
DROP TABLE IF EXISTS `v_balance_detail_sum`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_balance_detail_sum`  AS SELECT `v_balance_detail`.`id` AS `id`, `v_balance_detail`.`item_code` AS `item_code`, `v_balance_detail`.`item_description` AS `item_description`, `v_balance_detail`.`color` AS `color`, `v_balance_detail`.`size` AS `size`, sum(`v_balance_detail`.`request`) AS `req`, sum(`v_balance_detail`.`purchase`) AS `purc`, sum(`v_balance_detail`.`materil_in`) AS `mat_in`, sum(`v_balance_detail`.`material_out`) AS `mat_out`, sum(`v_balance_detail`.`material_return`) AS `mat_return`, sum(`v_balance_detail`.`materil_in` - `v_balance_detail`.`material_out` + `v_balance_detail`.`material_return`) AS `stok` FROM `v_balance_detail` GROUP BY `v_balance_detail`.`id`, `v_balance_detail`.`color`, `v_balance_detail`.`size``size` ;

-- --------------------------------------------------------

--
-- Structure for view `v_cbd`
--
DROP TABLE IF EXISTS `v_cbd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cbd`  AS SELECT `tb_cbd`.`order_no` AS `order_no`, `tb_cbd`.`supplier_raw_material_code` AS `supplier_raw_material_code`, `tb_cbd`.`item` AS `item`, `tb_cbd`.`sample_code` AS `sample_code`, `tb_cbd_detail`.`color_code` AS `color_code`, `tb_cbd_detail`.`color` AS `color`, `tb_cbd_detail`.`size_code` AS `size_code`, `tb_cbd_detail`.`size` AS `size`, `tb_cbd_detail`.`qty` AS `qty` FROM (`tb_cbd` join `tb_cbd_detail` on(`tb_cbd`.`order_no` = `tb_cbd_detail`.`order_no`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_items`
--
DROP TABLE IF EXISTS `v_items`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_items`  AS SELECT `tb_items`.`id_item` AS `id_item`, `tb_items`.`item_code` AS `item_code`, `tb_items`.`item_description` AS `item_description`, `tb_items`.`id_supplier` AS `id_supplier`, `tb_supplier`.`supplier_name` AS `supplier_name`, `tb_supplier`.`supplier_address` AS `supplier_address`, `tb_supplier`.`supplier_phone` AS `supplier_phone`, `tb_supplier`.`supplier_email` AS `supplier_email`, `tb_supplier`.`supplier_attention` AS `supplier_attention`, `tb_unit`.`id_unit` AS `id_unit`, `tb_unit`.`code_unit` AS `unit`, `tb_category`.`id_category` AS `id_category`, `tb_category`.`code_category` AS `code_category`, `tb_category`.`name_category` AS `name_category`, `tb_items`.`remark` AS `remark`, `tb_supplier`.`remark` AS `remark_supplier` FROM (((`tb_items` join `tb_supplier` on(`tb_items`.`id_supplier` = `tb_supplier`.`id_supplier`)) join `tb_category` on(`tb_items`.`id_category` = `tb_category`.`id_category`)) join `tb_unit` on(`tb_items`.`id_unit` = `tb_unit`.`id_unit`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_material_in`
--
DROP TABLE IF EXISTS `v_material_in`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_material_in`  AS SELECT `tb_material_in`.`id_in` AS `id_in`, `tb_material_in`.`no_sj` AS `no_sj`, `tb_material_in`.`date` AS `date_in`, `tb_material_in`.`kurir` AS `kurir`, `tb_material_in`.`ekspedisi` AS `ekspedisi`, `tb_material_in`.`remark` AS `remark`, `tb_material_in`.`id_po` AS `id_po`, `v_material_in_detail`.`item_code` AS `item_code`, `v_material_in_detail`.`id_item` AS `id_item`, `v_material_in_detail`.`item_description` AS `item_description`, `v_material_in_detail`.`remark_supplier` AS `remark_supplier`, `v_material_in_detail`.`color` AS `color`, `v_material_in_detail`.`size` AS `size`, `v_material_in_detail`.`qty` AS `qty`, `v_purchase_manage`.`po_no` AS `po_no`, `v_purchase_manage`.`id_trim` AS `id_trim`, `v_purchase_manage`.`request_date` AS `request_date`, `v_purchase_manage`.`id_supplier` AS `id_supplier`, `v_purchase_manage`.`supplier_name` AS `supplier_name` FROM ((`tb_material_in` join `v_material_in_detail` on(`tb_material_in`.`id_in` = `v_material_in_detail`.`id_in`)) join `v_purchase_manage` on(`tb_material_in`.`id_po` = `v_purchase_manage`.`id_po`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_material_in_detail`
--
DROP TABLE IF EXISTS `v_material_in_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_material_in_detail`  AS SELECT `tb_material_in_detail`.`id` AS `id`, `tb_material_in_detail`.`id_in` AS `id_in`, `tb_material_in_detail`.`color` AS `color`, `tb_material_in_detail`.`size` AS `size`, `tb_material_in_detail`.`qty` AS `qty`, `tb_material_in_detail`.`remark` AS `remark`, `tb_material_in_detail`.`id_item` AS `id_item`, `v_items`.`item_code` AS `item_code`, `v_items`.`item_description` AS `item_description`, `v_items`.`id_supplier` AS `id_supplier`, `v_items`.`supplier_name` AS `supplier_name`, `v_items`.`supplier_address` AS `supplier_address`, `v_items`.`remark_supplier` AS `remark_supplier`, `v_items`.`unit` AS `unit` FROM (`tb_material_in_detail` join `v_items` on(`tb_material_in_detail`.`id_item` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_material_in_list`
--
DROP TABLE IF EXISTS `v_material_in_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_material_in_list`  AS SELECT `tb_material_in`.`id_in` AS `id_in`, `tb_material_in`.`no_sj` AS `no_sj`, `tb_material_in`.`date` AS `date_in`, `tb_material_in`.`id_po` AS `id_po`, `tb_material_in`.`remark` AS `remark`, `v_purchase_manage`.`po_no` AS `po_no`, `v_purchase_manage`.`id_trim` AS `id_trim`, `v_purchase_manage`.`request_date` AS `request_date`, `v_purchase_manage`.`id_supplier` AS `id_supplier`, `v_purchase_manage`.`supplier_name` AS `supplier_name`, `tb_material_in`.`kurir` AS `kurir`, `tb_material_in`.`ekspedisi` AS `ekspedisi` FROM (`tb_material_in` join `v_purchase_manage` on(`tb_material_in`.`id_po` = `v_purchase_manage`.`id_po`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_material_out`
--
DROP TABLE IF EXISTS `v_material_out`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_material_out`  AS SELECT `tb_material_out`.`id_out` AS `id_out`, `tb_material_out`.`no_out` AS `no_out`, `tb_material_out`.`date` AS `date_out`, `tb_material_out`.`allocation` AS `allocation`, `tb_material_out`.`department` AS `department`, `tb_material_out`.`mo` AS `mo`, `tb_material_out`.`style` AS `style`, `tb_material_out`.`remark` AS `remark`, `v_material_out_detail`.`id_item` AS `id_item`, `v_items`.`item_description` AS `item_description`, `v_material_out_detail`.`color` AS `color`, `v_material_out_detail`.`size` AS `size`, `v_material_out_detail`.`item_code` AS `item_code`, `v_material_out_detail`.`unit` AS `unit`, `v_material_out_detail`.`remark` AS `out_remark`, `v_material_out_detail`.`qty` AS `qty`, `v_items`.`supplier_name` AS `supplier_name` FROM ((`tb_material_out` join `v_material_out_detail` on(`tb_material_out`.`id_out` = `v_material_out_detail`.`id_out`)) join `v_items` on(`v_material_out_detail`.`id_item` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_material_out_detail`
--
DROP TABLE IF EXISTS `v_material_out_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_material_out_detail`  AS SELECT `tb_material_out_detail`.`id` AS `id`, `tb_material_out_detail`.`id_out` AS `id_out`, `tb_material_out_detail`.`id_item` AS `id_item`, `tb_material_out_detail`.`color` AS `color`, `tb_material_out_detail`.`size` AS `size`, `tb_material_out_detail`.`qty` AS `qty`, `v_items`.`item_code` AS `item_code`, `v_items`.`item_description` AS `item_description`, `v_items`.`supplier_name` AS `supplier_name`, `v_items`.`supplier_address` AS `supplier_address`, `v_items`.`unit` AS `unit`, `tb_material_out_detail`.`remark` AS `remark` FROM (`tb_material_out_detail` join `v_items` on(`tb_material_out_detail`.`id_item` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_material_return_detail`
--
DROP TABLE IF EXISTS `v_material_return_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_material_return_detail`  AS SELECT `tb_material_return`.`id_return` AS `id_return`, `tb_material_return`.`no_return` AS `no_return`, `tb_material_return`.`date` AS `date`, `tb_material_return`.`person` AS `person`, `tb_material_return`.`department` AS `department`, `tb_material_return`.`mo` AS `mo`, `tb_material_return`.`style` AS `style`, `tb_material_return`.`remark` AS `remark`, `tb_material_return_detail`.`id_item` AS `id_item`, `tb_material_return_detail`.`color` AS `color`, `tb_material_return_detail`.`size` AS `size`, `tb_material_return_detail`.`qty` AS `qty`, `v_items`.`item_code` AS `item_code`, `v_items`.`item_description` AS `item_description`, `v_items`.`unit` AS `unit`, `v_items`.`supplier_name` AS `supplier_name` FROM ((`tb_material_return` join `tb_material_return_detail` on(`tb_material_return`.`id_return` = `tb_material_return_detail`.`id_return`)) join `v_items` on(`tb_material_return_detail`.`id_item` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_menu`
--
DROP TABLE IF EXISTS `v_menu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_menu`  AS SELECT `user_sub_menu`.`id` AS `ID`, `user_sub_menu`.`menu_id` AS `menu_id`, `user_menu`.`menu` AS `menu`, `user_sub_menu`.`title` AS `title`, `user_sub_menu`.`url` AS `url`, `user_sub_menu`.`icon` AS `icon`, `user_sub_menu`.`is_active` AS `is_active` FROM (`user_menu` join `user_sub_menu` on(`user_menu`.`id` = `user_sub_menu`.`menu_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_pivot_cbd`
--
DROP TABLE IF EXISTS `v_pivot_cbd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pivot_cbd`  AS SELECT `tb_trim_order`.`id_trim` AS `id_trim`, `tb_trim_order`.`order_no` AS `order_no`, `tb_cbd_detail`.`color` AS `color`, `tb_cbd_detail`.`size` AS `size`, `tb_cbd_detail`.`qty` AS `qty` FROM (`tb_trim_order` join `tb_cbd_detail` on(`tb_trim_order`.`order_no` = `tb_cbd_detail`.`order_no`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_manage`
--
DROP TABLE IF EXISTS `v_purchase_manage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_manage`  AS SELECT `tb_purchase_order`.`id_po` AS `id_po`, `tb_purchase_order`.`po_no` AS `po_no`, `tb_purchase_order`.`approval` AS `approval`, `tb_purchase_order`.`id_trim` AS `id_trim`, `tb_trim_order`.`trim_code` AS `trim_code`, `tb_trim_order`.`trim_mo` AS `trim_mo`, `tb_trim_order`.`trim_date` AS `trim_date`, `tb_trim_order`.`trim_status` AS `trim_status`, `tb_trim_order`.`user` AS `user_order`, `tb_purchase_order`.`id_supplier` AS `id_supplier`, `tb_supplier`.`supplier_name` AS `supplier_name`, `tb_supplier`.`supplier_address` AS `supplier_address`, `tb_supplier`.`supplier_email` AS `supplier_email`, `tb_supplier`.`supplier_phone` AS `supplier_phone`, `tb_supplier`.`supplier_fax` AS `supplier_fax`, `tb_supplier`.`supplier_attention` AS `supplier_attention`, `tb_supplier`.`remark` AS `remark`, `tb_purchase_order`.`request_date` AS `request_date`, `tb_purchase_order`.`request_in_house` AS `request_in_house`, `tb_purchase_order`.`delivery_at` AS `delivery_at`, `tb_purchase_order`.`allocation` AS `allocation`, `tb_purchase_order`.`applicant` AS `applicant`, `tb_purchase_order`.`po_status` AS `po_status`, `tb_purchase_order`.`sub_total` AS `sub_total`, `tb_purchase_order`.`rounding` AS `rounding`, `tb_purchase_order`.`vat` AS `vat`, `tb_purchase_order`.`vat_amount` AS `vat_amount`, `tb_purchase_order`.`grand_total` AS `grand_total`, `tb_purchase_order`.`purchase_amount` AS `purchase_amount`, `tb_purchase_order`.`note1` AS `note1`, `tb_purchase_order`.`note2` AS `note2`, `tb_purchase_order`.`user` AS `user` FROM ((`tb_purchase_order` join `tb_trim_order` on(`tb_purchase_order`.`id_trim` = `tb_trim_order`.`id_trim`)) join `tb_supplier` on(`tb_purchase_order`.`id_supplier` = `tb_supplier`.`id_supplier`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_order`
--
DROP TABLE IF EXISTS `v_purchase_order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_order`  AS SELECT `tb_purchase_order`.`id_po` AS `id_po`, `tb_purchase_order`.`po_no` AS `po_no`, `tb_purchase_order`.`id_trim` AS `id_trim`, `tb_trim_order`.`trim_code` AS `trim_code`, `tb_trim_order`.`trim_mo` AS `trim_mo`, `tb_trim_order`.`trim_date` AS `trim_date`, `tb_trim_order`.`trim_status` AS `trim_status`, `tb_purchase_order`.`id_supplier` AS `id_supplier`, `tb_purchase_order`.`request_date` AS `request_date`, `tb_purchase_order`.`request_in_house` AS `request_in_house`, `tb_purchase_order`.`delivery_at` AS `delivery_at`, `tb_purchase_order`.`allocation` AS `allocation`, `tb_purchase_order`.`applicant` AS `applicant`, `tb_purchase_order`.`po_status` AS `po_status`, `tb_purchase_order`.`sub_total` AS `sub_total`, `tb_purchase_order`.`approval` AS `approval`, `tb_purchase_order`.`rounding` AS `rounding`, `tb_purchase_order`.`vat` AS `vat`, `tb_purchase_order`.`vat_amount` AS `vat_amount`, `tb_purchase_order`.`grand_total` AS `grand_total`, `tb_purchase_order`.`purchase_amount` AS `purchase_amount`, `tb_purchase_order`.`note1` AS `note1`, `tb_purchase_order`.`note2` AS `note2`, `tb_purchase_order`.`user` AS `User`, `tb_supplier`.`supplier_name` AS `supplier_name`, `tb_supplier`.`supplier_address` AS `supplier_address`, `tb_supplier`.`supplier_phone` AS `supplier_phone`, `tb_supplier`.`supplier_email` AS `supplier_email`, `tb_supplier`.`supplier_attention` AS `supplier_attention`, `v_purchase_order_detail`.`id_item` AS `id_item`, `v_purchase_order_detail`.`item_code` AS `item_code`, `v_purchase_order_detail`.`color` AS `color`, `v_purchase_order_detail`.`size` AS `size`, `v_purchase_order_detail`.`qty` AS `qty`, `v_purchase_order_detail`.`price` AS `price`, `v_purchase_order_detail`.`total_price` AS `total_price`, `v_purchase_order_detail`.`item_description` AS `item_description`, `v_purchase_order_detail`.`unit` AS `unit`, `v_purchase_order_detail`.`remark` AS `remark`, `v_purchase_order_detail`.`remark_supplier` AS `remark_supplier` FROM (((`tb_purchase_order` join `v_purchase_order_detail` on(`tb_purchase_order`.`id_po` = `v_purchase_order_detail`.`id_po`)) join `tb_supplier` on(`tb_purchase_order`.`id_supplier` = `tb_supplier`.`id_supplier`)) join `tb_trim_order` on(`tb_purchase_order`.`id_trim` = `tb_trim_order`.`id_trim`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_order_detail`
--
DROP TABLE IF EXISTS `v_purchase_order_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_order_detail`  AS SELECT `tb_purchase_order_detail`.`id` AS `ID`, `tb_purchase_order_detail`.`id_po` AS `id_po`, `tb_purchase_order_detail`.`id_item` AS `id_item`, `v_items`.`item_code` AS `item_code`, `v_items`.`item_description` AS `item_description`, `tb_purchase_order_detail`.`color` AS `color`, `tb_purchase_order_detail`.`size` AS `size`, `tb_purchase_order_detail`.`qty` AS `qty`, `tb_purchase_order_detail`.`price` AS `price`, `tb_purchase_order_detail`.`total_price` AS `total_price`, `v_items`.`id_supplier` AS `id_supplier`, `v_items`.`supplier_name` AS `supplier_name`, `v_items`.`unit` AS `unit`, `v_items`.`remark` AS `remark`, `v_items`.`remark_supplier` AS `remark_supplier` FROM (`tb_purchase_order_detail` join `v_items` on(`tb_purchase_order_detail`.`id_item` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_status`
--
DROP TABLE IF EXISTS `v_status`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_status`  AS SELECT `tb_purchase_order`.`id_trim` AS `id_trim`, `tb_trim_order`.`trim_mo` AS `trim_mo`, `tb_trim_order`.`trim_date` AS `trim_date`, `tb_purchase_order`.`id_po` AS `id_po`, `tb_purchase_order`.`po_no` AS `po_no`, `tb_purchase_order`.`request_date` AS `request_date`, `tb_trim_order`.`trim_code` AS `trim_code`, `tb_trim_order`.`trim_style` AS `trim_style`, `tb_trim_order`.`trim_destination` AS `trim_destination`, `tb_trim_order`.`trim_status` AS `trim_status`, `tb_trim_order`.`remark` AS `remark`, `tb_purchase_order`.`id_supplier` AS `id_supplier`, `tb_purchase_order`.`request_in_house` AS `request_in_house`, `tb_purchase_order`.`delivery_at` AS `delivery_at`, `tb_purchase_order`.`allocation` AS `allocation`, `tb_purchase_order`.`applicant` AS `applicant`, `tb_purchase_order`.`po_status` AS `po_status`, `tb_purchase_order`.`sub_total` AS `sub_total`, `tb_purchase_order`.`rounding` AS `rounding`, `tb_purchase_order`.`vat` AS `vat`, `tb_purchase_order`.`vat_amount` AS `vat_amount`, `tb_purchase_order`.`grand_total` AS `grand_total`, `tb_purchase_order`.`purchase_amount` AS `purchase_amount`, `tb_purchase_order`.`note1` AS `note1`, `tb_purchase_order`.`note2` AS `note2`, `tb_purchase_order`.`user` AS `User`, `tb_supplier`.`supplier_name` AS `supplier_name`, `tb_supplier`.`supplier_address` AS `supplier_address`, `tb_supplier`.`supplier_attention` AS `supplier_attention` FROM ((`tb_purchase_order` join `tb_trim_order` on(`tb_purchase_order`.`id_trim` = `tb_trim_order`.`id_trim`)) join `tb_supplier` on(`tb_purchase_order`.`id_supplier` = `tb_supplier`.`id_supplier`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_stok_inout`
--
DROP TABLE IF EXISTS `v_stok_inout`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stok_inout`  AS SELECT `v_stok_sum`.`id_item` AS `id_item`, `v_items`.`item_code` AS `item_code`, `v_items`.`item_description` AS `item_description`, `v_items`.`unit` AS `unit`, `v_items`.`supplier_name` AS `supplier_name`, `v_stok_sum`.`size` AS `size`, `v_stok_sum`.`color` AS `color`, `v_stok_sum`.`stok` AS `stok` FROM (`v_stok_sum` join `v_items` on(`v_stok_sum`.`id_item` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_stok_sum`
--
DROP TABLE IF EXISTS `v_stok_sum`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stok_sum`  AS SELECT `u_stok_ok`.`id_item` AS `id_item`, sum(`u_stok_ok`.`qty`) AS `stok`, `u_stok_ok`.`size` AS `size`, `u_stok_ok`.`color` AS `color` FROM `u_stok_ok` GROUP BY `u_stok_ok`.`id_item`, `u_stok_ok`.`size`, `u_stok_ok`.`color``color` ;

-- --------------------------------------------------------

--
-- Structure for view `v_trimorder_detail`
--
DROP TABLE IF EXISTS `v_trimorder_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_trimorder_detail`  AS SELECT `tb_trim_detail`.`id` AS `id`, `tb_trim_detail`.`id_trim` AS `id_trim`, `tb_trim_detail`.`id_item` AS `id_item`, `v_items`.`item_code` AS `item_code`, `v_items`.`item_description` AS `item_description`, `v_items`.`unit` AS `unit`, `v_items`.`remark` AS `item_remark`, `v_items`.`id_supplier` AS `id_supplier`, `v_items`.`supplier_name` AS `supplier_name`, `v_items`.`supplier_address` AS `supplier_address`, `tb_trim_detail`.`color` AS `color`, `tb_trim_detail`.`size` AS `size`, `tb_trim_detail`.`qty` AS `qty`, `tb_trim_detail`.`consumtion` AS `consumtion`, `tb_trim_detail`.`allowance` AS `allowance`, `tb_trim_detail`.`total` AS `total`, `tb_trim_detail`.`remark` AS `detail_remark`, `v_items`.`remark_supplier` AS `remark_supplier` FROM (`tb_trim_detail` join `v_items` on(`tb_trim_detail`.`id_item` = `v_items`.`id_item`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_trimorder_fix`
--
DROP TABLE IF EXISTS `v_trimorder_fix`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_trimorder_fix`  AS SELECT `tb_trim_order`.`id_trim` AS `id_trim`, `tb_trim_order`.`order_no` AS `order_no`, `tb_trim_order`.`sample_code` AS `sample_code`, `tb_trim_order`.`trim_code` AS `trim_code`, `tb_trim_order`.`trim_mo` AS `trim_mo`, `tb_trim_order`.`trim_style` AS `trim_style`, `tb_trim_order`.`trim_destination` AS `trim_destination`, `tb_trim_order`.`trim_date` AS `trim_date`, `tb_trim_order`.`trim_status` AS `trim_status`, `tb_trim_order`.`remark` AS `remark`, `tb_trim_order`.`user` AS `User`, `v_trimorder_detail`.`id_item` AS `id_item`, `v_trimorder_detail`.`item_code` AS `item_code`, `v_trimorder_detail`.`item_description` AS `item_description`, `v_trimorder_detail`.`color` AS `color`, `v_trimorder_detail`.`size` AS `size`, `v_trimorder_detail`.`item_remark` AS `item_remark`, `v_trimorder_detail`.`id_supplier` AS `id_supplier`, `v_trimorder_detail`.`supplier_name` AS `supplier_name`, `v_trimorder_detail`.`supplier_address` AS `supplier_address`, `v_trimorder_detail`.`total` AS `qty`, `v_trimorder_detail`.`detail_remark` AS `detail_remark`, `v_trimorder_detail`.`remark_supplier` AS `remark_supplier` FROM (`tb_trim_order` join `v_trimorder_detail` on(`tb_trim_order`.`id_trim` = `v_trimorder_detail`.`id_trim`))) ;

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
-- Indexes for table `tb_material_return`
--
ALTER TABLE `tb_material_return`
  ADD PRIMARY KEY (`id_return`);

--
-- Indexes for table `tb_material_return_detail`
--
ALTER TABLE `tb_material_return_detail`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tb_cbd_detail`
--
ALTER TABLE `tb_cbd_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `tb_colors`
--
ALTER TABLE `tb_colors`
  MODIFY `id_color` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_items`
--
ALTER TABLE `tb_items`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tb_material_in`
--
ALTER TABLE `tb_material_in`
  MODIFY `id_in` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_material_in_detail`
--
ALTER TABLE `tb_material_in_detail`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tb_material_out`
--
ALTER TABLE `tb_material_out`
  MODIFY `id_out` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_material_out_detail`
--
ALTER TABLE `tb_material_out_detail`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_material_return`
--
ALTER TABLE `tb_material_return`
  MODIFY `id_return` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_material_return_detail`
--
ALTER TABLE `tb_material_return_detail`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_purchase_order`
--
ALTER TABLE `tb_purchase_order`
  MODIFY `id_po` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_purchase_order_detail`
--
ALTER TABLE `tb_purchase_order_detail`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `tb_trim_order`
--
ALTER TABLE `tb_trim_order`
  MODIFY `id_trim` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_unit`
--
ALTER TABLE `tb_unit`
  MODIFY `id_unit` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

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
