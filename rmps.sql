-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 04:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rmps`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `rab_master_component_id` int(11) NOT NULL,
  `rab_component_id` int(11) NOT NULL,
  `rab_item_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `finish` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `program_id`, `rab_master_component_id`, `rab_component_id`, `rab_item_id`, `description`, `created_at`, `created_by`, `finish`) VALUES
(9, 1, 3, 1, 1, 'asd', '2023-02-01 09:40:24', 0, 1),
(10, 1, 3, 1, 2, 'c', '2023-01-02 09:40:54', 0, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `administrasi lembaga`
-- (See below for the actual view)
--
CREATE TABLE `administrasi lembaga` (
`Kategori` varchar(255)
,`Judul` varchar(255)
,`Versi` varchar(255)
,`Lampiran` varchar(255)
,`Keterangan` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `approve_pelaporan_um`
--

CREATE TABLE `approve_pelaporan_um` (
  `id` int(11) NOT NULL,
  `pelaporan_um_id` int(11) NOT NULL,
  `level_id` varchar(3) NOT NULL,
  `approved` enum('y','n') NOT NULL DEFAULT 'y',
  `description` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `active` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `approve_pelaporan_um`
--

INSERT INTO `approve_pelaporan_um` (`id`, `pelaporan_um_id`, `level_id`, `approved`, `description`, `date`, `active`) VALUES
(4, 1, '3', 'y', 'keuangan ok', '2023-01-26 00:00:00', 'y'),
(5, 1, '2', 'y', 'ok', '2023-01-26 00:00:00', 'y'),
(6, 1, '-1', 'y', 'ok', '2023-01-26 00:00:00', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `approve_pengajuan_kegiatan`
--

CREATE TABLE `approve_pengajuan_kegiatan` (
  `id` int(11) NOT NULL,
  `tb_pengajuan_kegiatan_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `approved` enum('y','n') NOT NULL DEFAULT 'y',
  `description` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `active` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approve_pengajuan_kegiatan`
--

INSERT INTO `approve_pengajuan_kegiatan` (`id`, `tb_pengajuan_kegiatan_id`, `level_id`, `approved`, `description`, `date`, `active`) VALUES
(1, 1, 3, 'y', 'keuangan ok', '2023-01-28 13:11:27', 'y'),
(2, 1, 2, 'y', 'program ok', '2023-01-28 13:13:29', 'y'),
(3, 1, -1, 'y', 'ketua ok', '2023-01-28 13:13:44', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `approve_pengajuan_um`
--

CREATE TABLE `approve_pengajuan_um` (
  `id` int(11) NOT NULL,
  `pengajuan_um_id` int(11) NOT NULL,
  `level_id` varchar(3) NOT NULL,
  `approved` enum('y','n') NOT NULL DEFAULT 'y',
  `description` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `active` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `approve_pengajuan_um`
--

INSERT INTO `approve_pengajuan_um` (`id`, `pengajuan_um_id`, `level_id`, `approved`, `description`, `date`, `active`) VALUES
(7, 4, '3', 'y', 'ok', '2023-01-26 04:02:40', 'y'),
(8, 4, '2', 'y', 'ok program', '2023-01-26 04:03:31', 'y'),
(9, 4, '-1', 'y', 'admin ok', '2023-01-26 04:03:45', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `audittrail`
--

CREATE TABLE `audittrail` (
  `id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `script` varchar(80) DEFAULT NULL,
  `user` varchar(80) DEFAULT NULL,
  `action` varchar(80) DEFAULT NULL,
  `table` varchar(80) DEFAULT NULL,
  `field` varchar(80) DEFAULT NULL,
  `keyvalue` longtext DEFAULT NULL,
  `oldvalue` longtext DEFAULT NULL,
  `newvalue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `audittrail`
--

INSERT INTO `audittrail` (`id`, `datetime`, `script`, `user`, `action`, `table`, `field`, `keyvalue`, `oldvalue`, `newvalue`) VALUES
(1, '2022-12-28 06:42:49', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(2, '2022-12-28 22:26:37', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(3, '2022-12-29 04:56:47', '/simanda/login', '7', 'login', '::1', '', '', '', ''),
(4, '2022-12-30 04:51:03', '/simanda/login', '2', 'login', '::1', '', '', '', ''),
(5, '2022-12-30 04:51:39', '/simanda/logout', '2', 'logout', '::1', '', '', '', ''),
(6, '2022-12-30 04:51:49', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(7, '2023-01-02 13:00:04', '/simanda/login', '2', 'login', '::1', '', '', '', ''),
(8, '2023-01-02 13:00:34', '/simanda/logout', '2', 'logout', '::1', '', '', '', ''),
(9, '2023-01-02 13:06:20', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(10, '2023-01-02 13:41:33', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(11, '2023-01-03 06:39:13', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(12, '2023-01-04 19:08:21', '/simanda/logout', '1', 'logout', '::1', '', '', '', ''),
(13, '2023-01-05 02:25:15', '/simanda/login', '2', 'login', '::1', '', '', '', ''),
(14, '2023-01-05 02:25:39', '/simanda/logout', '2', 'logout', '::1', '', '', '', ''),
(15, '2023-01-05 02:25:57', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(16, '2023-01-05 19:24:11', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(17, '2023-01-05 20:26:05', '/simanda23/login', '1', 'login', '::1', '', '', '', ''),
(18, '2023-01-05 20:28:29', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(19, '2023-01-06 03:51:58', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(20, '2023-01-06 04:01:30', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(21, '2023-01-07 15:49:39', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(22, '2023-01-07 16:52:25', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(23, '2023-01-08 00:33:44', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(24, '2023-01-10 06:37:54', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(25, '2023-01-11 04:59:58', '/test/login', '1', 'login', '::1', '', '', '', ''),
(26, '2023-01-11 05:00:54', '/test/logout', '1', 'logout', '::1', '', '', '', ''),
(27, '2023-01-11 05:01:00', '/test/login', '5', 'login', '::1', '', '', '', ''),
(28, '2023-01-11 05:03:58', '/test/logout', '5', 'logout', '::1', '', '', '', ''),
(29, '2023-01-11 06:37:53', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(30, '2023-01-11 07:39:07', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(31, '2023-01-12 00:46:53', '/dms/login', '1', 'login', '::1', '', '', '', ''),
(32, '2023-01-12 05:13:01', '/dms/login', '1', 'login', '::1', '', '', '', ''),
(33, '2023-01-12 07:33:12', '/simanda/login', '2', 'login', '::1', '', '', '', ''),
(34, '2023-01-12 07:33:24', '/simanda/logout', '2', 'logout', '::1', '', '', '', ''),
(35, '2023-01-12 07:33:34', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(36, '2023-01-12 14:25:37', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(37, '2023-01-14 01:46:02', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(38, '2023-01-14 12:47:42', '/simanda/login', '2', 'login', '::1', '', '', '', ''),
(39, '2023-01-15 13:24:42', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(40, '2023-01-16 17:04:08', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(41, '2023-01-17 11:43:09', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(42, '2023-01-17 14:57:28', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(43, '2023-01-17 11:22:04', '/dms/login', '1', 'login', '::1', '', '', '', ''),
(44, '2023-01-17 11:25:17', '/dms/logout', '1', 'logout', '::1', '', '', '', ''),
(45, '2023-01-17 11:25:31', '/dms/login', '2', 'login', '::1', '', '', '', ''),
(46, '2023-01-17 11:26:26', '/dms/logout', '2', 'logout', '::1', '', '', '', ''),
(47, '2023-01-17 11:26:32', '/dms/login', '12', 'login', '::1', '', '', '', ''),
(48, '2023-01-17 11:27:39', '/dms/login', '2', 'login', '::1', '', '', '', ''),
(49, '2023-01-17 11:55:26', '/dms/login', '2', 'login', '::1', '', '', '', ''),
(50, '2023-01-18 04:07:36', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(51, '2023-01-18 11:27:09', '/simanda/login', '2', 'login', '::1', '', '', '', ''),
(52, '2023-01-18 11:27:16', '/simanda/logout', '2', 'logout', '::1', '', '', '', ''),
(53, '2023-01-18 11:27:24', '/simanda/login', '1', 'login', '::1', '', '', '', ''),
(54, '2023-01-18 18:22:18', '/simanda-web/login', '-1', 'login', '::1', '', '', '', ''),
(55, '2023-01-19 12:28:30', '/rdms/login', '1', 'login', '::1', '', '', '', ''),
(56, '2023-01-20 06:15:01', '/simanda-web/login', '-1', 'login', '::1', '', '', '', ''),
(57, '2023-01-22 17:32:45', '/simanda-web/login', '6', 'login', '::1', '', '', '', ''),
(58, '2023-01-22 17:34:33', '/simanda-web/logout', '6', 'logout', '::1', '', '', '', ''),
(59, '2023-01-22 17:35:10', '/simanda-web/login', '6', 'login', '::1', '', '', '', ''),
(60, '2023-01-22 19:04:27', '/simanda-web/logout', '6', 'logout', '::1', '', '', '', ''),
(61, '2023-01-22 19:04:35', '/simanda-web/login', '13', 'login', '::1', '', '', '', ''),
(62, '2023-01-22 19:05:31', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', ''),
(63, '2023-01-22 19:05:38', '/simanda-web/login', '13', 'login', '::1', '', '', '', ''),
(64, '2023-01-22 19:06:15', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', ''),
(65, '2023-01-22 19:06:24', '/simanda-web/login', '13', 'login', '::1', '', '', '', ''),
(66, '2023-01-22 19:15:39', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', ''),
(67, '2023-01-22 19:15:57', '/simanda-web/login', '6', 'login', '::1', '', '', '', ''),
(68, '2023-01-22 20:42:41', '/simanda-web/logout', '-1', 'logout', '::1', '', '', '', ''),
(69, '2023-01-22 20:42:47', '/simanda-web/login', '-1', 'login', '::1', '', '', '', ''),
(70, '2023-01-22 22:32:17', '/simanda-web/login', '-1', 'login', '::1', '', '', '', ''),
(71, '2023-01-23 05:23:11', '/simanda-web/login', '13', 'login', '::1', '', '', '', ''),
(72, '2023-01-23 05:24:55', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', ''),
(73, '2023-01-23 05:25:03', '/simanda-web/login', '13', 'login', '::1', '', '', '', ''),
(74, '2023-01-23 05:26:23', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', ''),
(75, '2023-01-23 05:26:30', '/simanda-web/login', '13', 'login', '::1', '', '', '', ''),
(76, '2023-01-23 05:40:40', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', ''),
(77, '2023-01-23 05:40:49', '/simanda-web/login', '6', 'login', '::1', '', '', '', ''),
(78, '2023-01-23 05:42:09', '/simanda-web/logout', '6', 'logout', '::1', '', '', '', ''),
(79, '2023-01-23 05:42:17', '/simanda-web/login', '6', 'login', '::1', '', '', '', ''),
(80, '2023-01-23 05:49:28', '/simanda-web/logout', '6', 'logout', '::1', '', '', '', ''),
(81, '2023-01-23 05:49:36', '/simanda-web/login', '13', 'login', '::1', '', '', '', ''),
(82, '2023-01-23 05:50:03', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', ''),
(83, '2023-01-23 05:50:21', '/simanda-web/login', '6', 'login', '::1', '', '', '', ''),
(84, '2023-01-23 06:01:12', '/simanda-web/logout', '-1', 'logout', '::1', '', '', '', ''),
(85, '2023-01-23 06:01:17', '/simanda-web/login', '-1', 'login', '::1', '', '', '', ''),
(86, '2023-01-24 00:07:31', '/simanda-web/logout', '-1', 'logout', '::1', '', '', '', ''),
(87, '2023-01-24 00:07:39', '/simanda-web/login', '13', 'login', '::1', '', '', '', ''),
(88, '2023-01-24 00:08:26', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', ''),
(89, '2023-01-24 00:08:36', '/simanda-web/login', '-1', 'login', '::1', '', '', '', ''),
(90, '2023-01-24 00:09:12', '/simanda-web/login', '6', 'login', '::1', '', '', '', ''),
(91, '2023-01-24 00:12:52', '/simanda-web/logout', '6', 'logout', '::1', '', '', '', ''),
(92, '2023-01-24 00:13:00', '/simanda-web/login', '13', 'login', '::1', '', '', '', ''),
(93, '2023-01-24 00:16:00', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', ''),
(94, '2023-01-24 00:16:11', '/simanda-web/login', '13', 'login', '::1', '', '', '', ''),
(95, '2023-01-24 03:01:21', '/simanda-web/login', '13', 'login', '::1', '', '', '', ''),
(96, '2023-01-24 03:01:32', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', ''),
(97, '2023-01-24 03:03:14', '/simanda-web/login', '13', 'login', '::1', '', '', '', ''),
(98, '2023-01-24 03:07:49', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', ''),
(99, '2023-01-24 03:07:58', '/simanda-web/login', '7', 'login', '::1', '', '', '', ''),
(100, '2023-01-24 18:23:09', '/rmps/login', '1', 'login', '::1', '', '', '', ''),
(101, '2023-01-24 22:20:54', '/rmps/login', '1', 'login', '::1', '', '', '', ''),
(102, '2023-01-25 01:29:57', '/rmps/login', '1', 'login', '::1', '', '', '', ''),
(103, '2023-01-25 01:42:45', '/rmps/logout', '1', 'logout', '::1', '', '', '', ''),
(104, '2023-01-25 02:01:54', '/rmps/login', '1', 'login', '::1', '', '', '', ''),
(105, '2023-01-26 01:28:08', '/simanda-web/login', '-1', 'login', '::1', '', '', '', ''),
(106, '2023-01-26 04:00:10', '/simanda-web/login', '9', 'login', '::1', '', '', '', ''),
(107, '2023-01-26 04:00:20', '/simanda-web/logout', '9', 'logout', '::1', '', '', '', ''),
(108, '2023-01-26 04:02:18', '/simanda-web/login', '9', 'login', '::1', '', '', '', ''),
(109, '2023-01-26 04:02:53', '/simanda-web/logout', '9', 'logout', '::1', '', '', '', ''),
(110, '2023-01-26 04:03:11', '/simanda-web/login', '3', 'login', '::1', '', '', '', ''),
(111, '2023-01-26 04:04:09', '/simanda-web/logout', '3', 'logout', '::1', '', '', '', ''),
(112, '2023-01-26 04:04:38', '/simanda-web/login', '9', 'login', '::1', '', '', '', ''),
(113, '2023-01-26 04:23:50', '/simanda-web/logout', '9', 'logout', '::1', '', '', '', ''),
(114, '2023-01-26 04:23:58', '/simanda-web/login', '9', 'login', '::1', '', '', '', ''),
(115, '2023-01-26 04:24:22', '/simanda-web/logout', '9', 'logout', '::1', '', '', '', ''),
(116, '2023-01-26 04:24:28', '/simanda-web/login', '3', 'login', '::1', '', '', '', ''),
(117, '2023-01-28 12:09:50', '/simanda-web/login', '-1', 'login', '::1', '', '', '', ''),
(118, '2023-01-28 13:05:32', '/simanda-web/login', '9', 'login', '::1', '', '', '', ''),
(119, '2023-01-28 13:06:36', '/simanda-web/logout', '9', 'logout', '::1', '', '', '', ''),
(120, '2023-01-28 13:06:43', '/simanda-web/login', '9', 'login', '::1', '', '', '', ''),
(121, '2023-01-28 13:08:15', '/simanda-web/logout', '9', 'logout', '::1', '', '', '', ''),
(122, '2023-01-28 13:08:21', '/simanda-web/login', '9', 'login', '::1', '', '', '', ''),
(123, '2023-01-28 13:11:51', '/simanda-web/logout', '9', 'logout', '::1', '', '', '', ''),
(124, '2023-01-28 13:11:59', '/simanda-web/login', '3', 'login', '::1', '', '', '', ''),
(125, '2023-01-28 13:13:10', '/simanda-web/logout', '3', 'logout', '::1', '', '', '', ''),
(126, '2023-01-28 13:13:17', '/simanda-web/login', '3', 'login', '::1', '', '', '', ''),
(127, '2023-01-28 20:36:03', '/simanda-web/logout', '-1', 'logout', '::1', '', '', '', ''),
(128, '2023-01-28 20:36:07', '/simanda-web/login', '-1', 'login', '::1', '', '', '', ''),
(129, '2023-01-28 20:36:58', '/simanda-web/login', '-1', 'login', '::1', '', '', '', ''),
(130, '2023-01-30 05:23:50', '/simanda-web/login', '-1', 'login', '::1', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `balancing`
--

CREATE TABLE `balancing` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `rab_master_component_id` int(11) NOT NULL,
  `rab_component_id` int(11) NOT NULL,
  `pelaporan_id` int(11) NOT NULL,
  `total_pelaporan` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `payment_method` enum('transfer','cash') NOT NULL,
  `transaction_number` varchar(100) NOT NULL,
  `bank_sender_id` int(11) NOT NULL,
  `bank_receiver_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `atachment` text NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) DEFAULT NULL,
  `active` enum('y','n') DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `balancing`
--

INSERT INTO `balancing` (`id`, `program_id`, `rab_master_component_id`, `rab_component_id`, `pelaporan_id`, `total_pelaporan`, `type`, `payment_method`, `transaction_number`, `bank_sender_id`, `bank_receiver_id`, `amount`, `description`, `atachment`, `date`, `status`, `active`) VALUES
(1, 1, 3, 1, 1, 25400000, 0, 'cash', '123', 0, 0, -450000, NULL, 'example-red-tag-example-red-square-price-tag-117502755(4).jpg', '2023-01-26 00:00:00', NULL, 'y'),
(2, 1, 3, 1, 1, 25400000, 0, 'cash', '123', 0, 0, 5, NULL, 'example-red-tag-example-red-square-price-tag-117502755(5).jpg', '2023-01-26 00:00:00', NULL, 'y'),
(3, 1, 3, 1, 1, 25400000, 0, 'cash', '123', 0, 0, -5, NULL, 'example-red-tag-example-red-square-price-tag-117502755(6).jpg', '2023-01-26 00:00:00', NULL, 'y'),
(4, 1, 3, 1, 1, 25400000, 1, 'cash', '132', 0, 0, 5, NULL, 'example-red-tag-example-red-square-price-tag-117502755(7).jpg', '2023-01-26 00:00:00', NULL, 'y');

-- --------------------------------------------------------

--
-- Stand-in structure for view `kategori barang`
-- (See below for the actual view)
--
CREATE TABLE `kategori barang` (
`ID` int(11)
,`Kategori` varchar(255)
,`Sub-kategori` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `laporan bulanan`
-- (See below for the actual view)
--
CREATE TABLE `laporan bulanan` (
`Create Date` datetime
,`ID Program` int(11)
,`PJ Laporan` int(11)
,`Judul` varchar(255)
,`Kategori Laporan` varchar(255)
,`Tahun` int(11)
,`Bulan` int(11)
,`Lampiran` varchar(225)
,`Create By` varchar(255)
,`Update Date` datetime
,`Update By` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `laporan mingguan`
-- (See below for the actual view)
--
CREATE TABLE `laporan mingguan` (
`Create Date` datetime
,`ID Program` int(11)
,`PJ Laporan` int(11)
,`Judul` varchar(255)
,`Kategori Laporan` varchar(255)
,`Tahun` int(11)
,`Bulan` int(11)
,`Lampiran` varchar(225)
,`Create By` varchar(255)
,`Update Date` datetime
,`Update By` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `laporan tahunan`
-- (See below for the actual view)
--
CREATE TABLE `laporan tahunan` (
`Kategori` varchar(255)
,`Judul` varchar(255)
,`Versi` varchar(255)
,`Lampiran` varchar(255)
,`Keterangan` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `pelaporan_um`
--

CREATE TABLE `pelaporan_um` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `periode_tahun` int(11) NOT NULL,
  `periode_bulan` int(11) NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `pj_pelaporan_id` int(11) NOT NULL,
  `lampiran` text DEFAULT NULL,
  `total_pelaporan` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pelaporan_um`
--

INSERT INTO `pelaporan_um` (`id`, `program_id`, `periode_tahun`, `periode_bulan`, `tanggal_pengajuan`, `pj_pelaporan_id`, `lampiran`, `total_pelaporan`, `created_at`, `created_by`, `status`) VALUES
(1, 1, 15, 1, '2023-01-26', 3, 'example-red-tag-example-red-square-price-tag-117502755(3).jpg', 25400000, NULL, NULL, 3),
(2, 1, 15, 5, '2023-01-20', 3, NULL, 8400000, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pelaporan_um_detail`
--

CREATE TABLE `pelaporan_um_detail` (
  `id` int(11) NOT NULL,
  `pelaporan_um_id` int(11) NOT NULL,
  `periode_tahun` int(11) NOT NULL,
  `periode_bulan` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `rab_master_component_id` int(11) NOT NULL,
  `rab_component_id` int(11) NOT NULL,
  `rab_item_component_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `termin_cost` int(11) NOT NULL,
  `unit_termin_id` int(11) NOT NULL,
  `total_cost` int(11) DEFAULT NULL,
  `cost` int(11) NOT NULL,
  `attachment` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pelaporan_um_detail`
--

INSERT INTO `pelaporan_um_detail` (`id`, `pelaporan_um_id`, `periode_tahun`, `periode_bulan`, `program_id`, `rab_master_component_id`, `rab_component_id`, `rab_item_component_id`, `amount`, `unit_id`, `termin_cost`, `unit_termin_id`, `total_cost`, `cost`, `attachment`, `description`) VALUES
(5, 1, 15, 1, 1, 3, 1, 1, 2, 9, 1, 1, 500000, 250000, NULL, NULL),
(6, 1, 15, 1, 1, 3, 1, 2, 2, 9, 5, 1, 600000, 300000, NULL, NULL),
(7, 1, 15, 1, 1, 3, 1, 3, 2, 9, 1, 3, 300000, 150000, NULL, NULL),
(8, 1, 15, 1, 1, 3, 1, 4, 2, 9, 1, 3, 4000000, 2000000, NULL, NULL),
(9, 1, 15, 1, 1, 3, 1, 6, 2, 9, 10, 3, 20000000, 1000000, NULL, NULL),
(10, 2, 15, 5, 1, 3, 3, 13, 2, 1, 2, 2, 8000000, 2000000, NULL, NULL),
(11, 2, 15, 5, 1, 3, 1, 5, 1, 1, 2, 1, 400000, 200000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_um`
--

CREATE TABLE `pengajuan_um` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `periode_tahun` int(11) NOT NULL,
  `periode_bulan` int(11) NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `pj_pengajuan_id` int(11) NOT NULL,
  `lampiran` text DEFAULT NULL,
  `total_pengajuan` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pengajuan_um`
--

INSERT INTO `pengajuan_um` (`id`, `program_id`, `periode_tahun`, `periode_bulan`, `tanggal_pengajuan`, `pj_pengajuan_id`, `lampiran`, `total_pengajuan`, `created_at`, `created_by`, `status`) VALUES
(4, 1, 15, 1, '2020-02-07', 3, NULL, 4500000, NULL, NULL, 3),
(5, 1, 15, 3, '2023-01-29', 3, 'example-red-tag-example-red-square-price-tag-117502755(8).jpg', 600000, NULL, NULL, 3),
(6, 1, 15, 5, '2023-03-23', 3, 'example-red-tag-example-red-square-price-tag-117502755(9).jpg', 10600000, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_um_detail`
--

CREATE TABLE `pengajuan_um_detail` (
  `id` int(11) NOT NULL,
  `pengajuan_um_id` int(11) NOT NULL,
  `periode_tahun` int(11) NOT NULL,
  `periode_bulan` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `rab_master_component_id` int(11) NOT NULL,
  `rab_component_id` int(11) NOT NULL,
  `rab_item_component_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `termin_cost` int(11) NOT NULL,
  `unit_termin_id` int(11) NOT NULL,
  `total_cost` int(11) DEFAULT NULL,
  `cost` int(11) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pengajuan_um_detail`
--

INSERT INTO `pengajuan_um_detail` (`id`, `pengajuan_um_id`, `periode_tahun`, `periode_bulan`, `program_id`, `rab_master_component_id`, `rab_component_id`, `rab_item_component_id`, `amount`, `unit_id`, `termin_cost`, `unit_termin_id`, `total_cost`, `cost`, `description`) VALUES
(3, 4, 15, 1, 1, 3, 1, 1, 2, 9, 1, 1, 600000, 300000, NULL),
(4, 4, 15, 1, 1, 3, 1, 2, 2, 9, 1, 1, 700000, 350000, NULL),
(5, 4, 15, 1, 1, 3, 1, 3, 2, 9, 1, 3, 200000, 100000, NULL),
(6, 4, 15, 1, 1, 3, 1, 4, 2, 9, 1, 3, 3000000, 1500000, NULL),
(7, 5, 15, 3, 1, 3, 1, 2, 1, 1, 2, 2, 600000, 300000, NULL),
(8, 6, 15, 5, 1, 3, 3, 8, 9, 1, 1, 7, 9000000, 1000000, NULL),
(9, 6, 15, 5, 1, 3, 3, 13, 4, 1, 1, 8, 1600000, 400000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_um_payment`
--

CREATE TABLE `pengajuan_um_payment` (
  `id` int(11) NOT NULL,
  `pengajuan_um_id` int(11) NOT NULL,
  `payment_method` enum('transfer','cash') NOT NULL DEFAULT 'transfer',
  `user_id` int(11) NOT NULL,
  `transaction_number` varchar(100) NOT NULL,
  `bank_sender_id` int(11) DEFAULT NULL,
  `bank_receiver_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `atachment` text NOT NULL,
  `date` date NOT NULL,
  `status` enum('pending','success') NOT NULL DEFAULT 'pending',
  `active` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pengajuan_um_payment`
--

INSERT INTO `pengajuan_um_payment` (`id`, `pengajuan_um_id`, `payment_method`, `user_id`, `transaction_number`, `bank_sender_id`, `bank_receiver_id`, `amount`, `description`, `atachment`, `date`, `status`, `active`) VALUES
(1, 4, 'cash', 9, 'PMB123', NULL, NULL, 4500000, NULL, 'example-red-tag-example-red-square-price-tag-117502755(1).jpg', '2023-01-26', 'success', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_um_payment_confirmation`
--

CREATE TABLE `pengajuan_um_payment_confirmation` (
  `id` int(11) NOT NULL,
  `pengajuan_um_payment_id` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `attachment` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pengajuan_um_payment_confirmation`
--

INSERT INTO `pengajuan_um_payment_confirmation` (`id`, `pengajuan_um_payment_id`, `keterangan`, `attachment`, `date`) VALUES
(4, 1, 'oke, sudah diterima', 'example-red-tag-example-red-square-price-tag-117502755(2).jpg', '2023-01-26 04:05:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `prosedur standar operasional`
-- (See below for the actual view)
--
CREATE TABLE `prosedur standar operasional` (
`Kategori` varchar(255)
,`Judul Dokumen` varchar(255)
,`Versi` varchar(255)
,`Lampiran` varchar(255)
,`Keterangan` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `rab_component`
--

CREATE TABLE `rab_component` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `rab_master_component_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `total_item` int(11) DEFAULT NULL,
  `total_cost` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `active` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `rab_component`
--

INSERT INTO `rab_component` (`id`, `program_id`, `rab_master_component_id`, `name`, `description`, `total_item`, `total_cost`, `created_at`, `active`) VALUES
(1, 1, 3, 'Equipment and Supplies', NULL, 6, 5950000, '2023-01-28 14:55:45', 'y'),
(2, 1, 3, 'Class Room', NULL, 1, 1500000, '2023-01-28 14:56:02', 'y'),
(3, 1, 3, 'Accomodation', NULL, 6, 3650000, '2023-01-28 14:56:10', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `rab_item_component`
--

CREATE TABLE `rab_item_component` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `rab_master_component_id` int(11) NOT NULL,
  `rab_component_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `termin_cost` int(11) NOT NULL,
  `unit_termin_id` int(11) DEFAULT NULL,
  `cost` int(11) NOT NULL DEFAULT 0,
  `total_cost` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `is_activity` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `active` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `rab_item_component`
--

INSERT INTO `rab_item_component` (`id`, `program_id`, `rab_master_component_id`, `rab_component_id`, `name`, `amount`, `unit_id`, `termin_cost`, `unit_termin_id`, `cost`, `total_cost`, `description`, `is_activity`, `created_at`, `active`) VALUES
(1, 1, 3, 1, 'Ketinting Machine (Rent)', 2, 9, 1, 1, 250000, 500000, NULL, 1, '2023-01-28 15:05:32', 'y'),
(2, 1, 3, 1, 'Outboard Boat Machine (Rent)', 2, 9, 1, 1, 300000, 600000, NULL, 1, '2023-01-28 23:49:36', 'y'),
(3, 1, 3, 1, 'Stationery', 2, 9, 1, 3, 150000, 300000, NULL, 0, '0000-00-00 00:00:00', 'y'),
(4, 1, 3, 1, 'Screen and Projector (Rent)', 2, 9, 1, 3, 2000000, 4000000, NULL, 0, '0000-00-00 00:00:00', 'y'),
(5, 1, 3, 1, 'Material', 2, 9, 1, 3, 25000, 50000, NULL, 0, '2023-01-26 03:16:37', 'y'),
(6, 1, 3, 1, 'Banner', 2, 9, 1, 1, 250000, 500000, NULL, 0, '0000-00-00 00:00:00', 'y'),
(7, 1, 3, 2, 'Class Room', 2, 9, 1, 2, 750000, 1500000, NULL, 1, '2023-01-28 23:49:46', 'y'),
(8, 1, 3, 3, 'Hall and bathroom for participant lodging (Rent)', 2, 9, 1, 5, 1000000, 2000000, NULL, 0, '0000-00-00 00:00:00', 'y'),
(9, 1, 3, 3, 'General Ketinting Training Participant', 1, 9, 1, 12, 150000, 150000, NULL, 0, '0000-00-00 00:00:00', 'y'),
(10, 1, 3, 3, 'Mechanic Ketinting Training Participant', 1, 9, 1, 12, 150000, 150000, NULL, 0, '0000-00-00 00:00:00', 'y'),
(11, 1, 3, 3, 'Outboard Machine Training Participant', 1, 9, 1, 12, 150000, 150000, NULL, 0, '0000-00-00 00:00:00', 'y'),
(12, 1, 3, 3, 'Instructure Lodging', 2, 9, 1, 3, 400000, 800000, NULL, 0, '0000-00-00 00:00:00', 'y'),
(13, 1, 3, 3, 'Comitte Lodging', 1, 9, 1, 3, 400000, 400000, NULL, 0, '0000-00-00 00:00:00', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `rab_master_component`
--

CREATE TABLE `rab_master_component` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `aktif` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `rab_master_component`
--

INSERT INTO `rab_master_component` (`id`, `program_id`, `name`, `description`, `created_at`, `aktif`) VALUES
(3, 1, 'Cost Component', NULL, '2023-01-26 03:09:31', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_akunbank`
--

CREATE TABLE `tb_akunbank` (
  `id` int(11) NOT NULL,
  `nama_bank` varchar(255) DEFAULT NULL,
  `no_rek` int(11) DEFAULT NULL,
  `pemelik_rek` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bulan`
--

CREATE TABLE `tb_bulan` (
  `id` int(11) NOT NULL,
  `bulan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_bulan`
--

INSERT INTO `tb_bulan` (`id`, `bulan`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokumen`
--

CREATE TABLE `tb_dokumen` (
  `id` int(11) NOT NULL,
  `id_kategori` varchar(255) DEFAULT NULL,
  `nama_dokumen` varchar(255) DEFAULT NULL,
  `versi_dokumen` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `create_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `update_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokumen_kategori`
--

CREATE TABLE `tb_dokumen_kategori` (
  `id` int(11) NOT NULL,
  `kategori_dokumen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_dokumen_kategori`
--

INSERT INTO `tb_dokumen_kategori` (`id`, `kategori_dokumen`) VALUES
(1, 'SOP'),
(2, 'Template'),
(3, 'Administrasi'),
(4, 'Laporan Tahunan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_inventaris_barang`
--

CREATE TABLE `tb_inventaris_barang` (
  `id` int(11) NOT NULL,
  `foto_barang` varchar(255) DEFAULT NULL,
  `kode_barang` varchar(255) DEFAULT NULL,
  `id_katbarang` int(11) DEFAULT NULL,
  `id_subkategori` int(11) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `merk_barang` varchar(255) DEFAULT NULL,
  `spesifikasi_barang` text DEFAULT NULL,
  `sn_barang` varchar(255) DEFAULT NULL,
  `harga_beli` decimal(18,2) DEFAULT NULL,
  `tanggal_beli` date DEFAULT NULL,
  `kondisi_barang` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `sumber_barang` varchar(255) DEFAULT NULL,
  `sumber_hibah` varchar(255) DEFAULT NULL,
  `lampiran_kwitansi` varchar(255) DEFAULT NULL,
  `id_ruangan` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `create_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_inventaris_kategori_barang`
--

CREATE TABLE `tb_inventaris_kategori_barang` (
  `id` int(11) NOT NULL,
  `kategori_barang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_inventaris_kategori_barang`
--

INSERT INTO `tb_inventaris_kategori_barang` (`id`, `kategori_barang`) VALUES
(1, 'Elektronik'),
(2, 'Alat Dapur'),
(3, 'Alat Survei');

-- --------------------------------------------------------

--
-- Table structure for table `tb_inventaris_ruangan`
--

CREATE TABLE `tb_inventaris_ruangan` (
  `id` int(11) NOT NULL,
  `nama_ruangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_inventaris_subkat_barang`
--

CREATE TABLE `tb_inventaris_subkat_barang` (
  `id` int(11) NOT NULL,
  `id_kategori_barang` int(11) DEFAULT NULL,
  `subkategori_barang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_inventaris_subkat_barang`
--

INSERT INTO `tb_inventaris_subkat_barang` (`id`, `id_kategori_barang`, `subkategori_barang`) VALUES
(1, 1, 'Laptop'),
(2, 1, 'Kamera Mirrorless'),
(3, 1, 'Kamera Poket'),
(4, 1, 'TV'),
(5, 2, 'Piring'),
(6, 3, 'Bor Gambut');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kabupaten`
--

CREATE TABLE `tb_kabupaten` (
  `id` int(11) NOT NULL,
  `id_propinsi` int(11) NOT NULL,
  `Kabupaten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_kegiatan`
--

CREATE TABLE `tb_kategori_kegiatan` (
  `id` int(11) NOT NULL,
  `kategori_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_kelompok`
--

CREATE TABLE `tb_kategori_kelompok` (
  `id` int(11) NOT NULL,
  `kategori_kelompok` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_laporan`
--

CREATE TABLE `tb_kategori_laporan` (
  `id` int(11) NOT NULL,
  `kategori_laporan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_partisipan`
--

CREATE TABLE `tb_kategori_partisipan` (
  `id` int(11) NOT NULL,
  `kategori_partisipan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kecamatan`
--

CREATE TABLE `tb_kecamatan` (
  `id` int(11) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `Kecamatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelurahan_desa`
--

CREATE TABLE `tb_kelurahan_desa` (
  `id` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `kelurahan/desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ketergorisub_kegiatan`
--

CREATE TABLE `tb_ketergorisub_kegiatan` (
  `id` int(11) NOT NULL,
  `id_kategori_kegiatan` int(11) DEFAULT NULL,
  `subkategori_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_laporan_kegiatan`
--

CREATE TABLE `tb_laporan_kegiatan` (
  `id` int(11) NOT NULL,
  `id_program` int(11) DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `sub-kategori` int(11) DEFAULT NULL,
  `partisipan` varchar(11) DEFAULT NULL,
  `kelompok` varchar(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `rapat_mulai` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `rapat_selesai` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `topik_pembahasan` text DEFAULT NULL,
  `hasil_pembahasan` text DEFAULT NULL,
  `propinsi` int(11) DEFAULT NULL,
  `kabupaten` int(11) DEFAULT NULL,
  `kecamatan` int(11) DEFAULT NULL,
  `desa` varchar(255) DEFAULT NULL,
  `pria` int(11) DEFAULT NULL,
  `wanita` int(11) DEFAULT NULL,
  `pj_kegiatan` int(11) DEFAULT NULL,
  `pj_pelaporan` int(11) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `update_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_laporan_keg_lampiran`
--

CREATE TABLE `tb_laporan_keg_lampiran` (
  `id` int(11) NOT NULL,
  `id_laporan_kegiatan` int(11) DEFAULT NULL,
  `kategori_laporan` int(11) DEFAULT NULL,
  `desa` varchar(255) DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_lembaga`
--

CREATE TABLE `tb_lembaga` (
  `id` int(11) NOT NULL,
  `logo_lembaga` varchar(255) DEFAULT NULL,
  `nama_lembaga` varchar(255) DEFAULT NULL,
  `kode_lembaga` varchar(255) DEFAULT NULL,
  `id_katlembaga` int(11) DEFAULT NULL,
  `fokus_lembaga` text DEFAULT NULL,
  `negara_lembaga` int(11) DEFAULT NULL,
  `alamat_lembaga` varchar(255) DEFAULT NULL,
  `tlpfax_lembaga` int(11) DEFAULT NULL,
  `email_lembaga` varchar(255) DEFAULT NULL,
  `website_lembaga` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedIn` varchar(255) DEFAULT NULL,
  `nama_cp_lembaga` varchar(255) DEFAULT NULL,
  `email_cp_lembaga` varchar(255) DEFAULT NULL,
  `tlp_cp_lembaga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_lembaga_kategori`
--

CREATE TABLE `tb_lembaga_kategori` (
  `id` int(11) NOT NULL,
  `kategori_lembaga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_lembaga_kategori`
--

INSERT INTO `tb_lembaga_kategori` (`id`, `kategori_lembaga`) VALUES
(1, 'Lembaga Pemerintah'),
(2, 'NGO');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lembaga_kerjasama`
--

CREATE TABLE `tb_lembaga_kerjasama` (
  `id` int(11) NOT NULL,
  `id_lembaga` int(11) DEFAULT NULL,
  `id_program` int(11) DEFAULT NULL,
  `judul_kegiatan` varchar(255) DEFAULT NULL,
  `posisi_kerjasama` varchar(255) DEFAULT NULL,
  `program_mulai` date DEFAULT NULL,
  `program_berakhir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_negara`
--

CREATE TABLE `tb_negara` (
  `id` int(11) NOT NULL,
  `nama_negara` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_negara`
--

INSERT INTO `tb_negara` (`id`, `nama_negara`) VALUES
(1, 'Indonesia'),
(2, 'USA'),
(3, 'Belanda');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penerima_manfaat`
--

CREATE TABLE `tb_penerima_manfaat` (
  `id` int(11) NOT NULL,
  `id_laporan_kegiatan` int(11) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `jeniskelamin` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tanggallahir` date DEFAULT NULL,
  `tanggal_terima` date DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengajuan_kegiatan`
--

CREATE TABLE `tb_pengajuan_kegiatan` (
  `id` int(11) NOT NULL,
  `id_program` int(11) DEFAULT NULL,
  `judul_kegiatan` varchar(255) DEFAULT NULL,
  `detail_kegiatan` text DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `tgl_pelaksanaan` date DEFAULT NULL,
  `rencana_anggaran` decimal(18,2) DEFAULT NULL,
  `pj_kegiatan` int(11) DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_pengajuan_kegiatan`
--

INSERT INTO `tb_pengajuan_kegiatan` (`id`, `id_program`, `judul_kegiatan`, `detail_kegiatan`, `tahun`, `bulan`, `tgl_pelaksanaan`, `rencana_anggaran`, `pj_kegiatan`, `lampiran`, `status`, `create_date`, `create_by`, `update_date`, `update_by`) VALUES
(1, 1, 'Tes pengjuan', 'Dictum ullamcorper lobortis interdum ultrices cursus penatibus gravida vulputate nunc mauris porttitor', 15, 1, '2023-01-28', '15000000.00', 3, 'example-red-tag-example-red-square-price-tag-117502755.jpg', 3, '2023-01-28 12:46:40', 'Administrator', '2023-01-28 12:46:40', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tb_posisi_kerja`
--

CREATE TABLE `tb_posisi_kerja` (
  `id` int(11) NOT NULL,
  `posisi_kerja` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_posisi_kerja`
--

INSERT INTO `tb_posisi_kerja` (`id`, `posisi_kerja`) VALUES
(1, 'Team Leader'),
(2, 'Fasilitator'),
(3, 'Sistem Informasi Geografis'),
(4, 'Admin Keuangan'),
(5, 'Koordinator Lapangan'),
(6, 'Penginput Data'),
(7, 'Arsip Data');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prog_detail`
--

CREATE TABLE `tb_prog_detail` (
  `id` int(11) NOT NULL,
  `nama_program` varchar(255) DEFAULT NULL,
  `kode_program` varchar(255) DEFAULT NULL,
  `kategori_program` varchar(255) DEFAULT NULL,
  `lembaga_donor` int(11) DEFAULT NULL COMMENT 'id_lembaga_detail',
  `lembaga_mitra` varchar(255) DEFAULT NULL,
  `no.kontrak` varchar(255) DEFAULT NULL,
  `nilai_kontrak` decimal(18,2) DEFAULT NULL,
  `kontrak_mulai` date DEFAULT NULL,
  `kontrak_berakhir` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `pj_program` int(11) DEFAULT NULL COMMENT 'penanggung jawab program',
  `lampiran_kontrak` varchar(255) DEFAULT NULL,
  `lampiran_proposal` varchar(255) DEFAULT NULL,
  `lampiran_kontrakstaff` varchar(255) DEFAULT NULL,
  `latar_belakang` text DEFAULT NULL,
  `tujuan` text DEFAULT NULL,
  `keluaran` text DEFAULT NULL,
  `create_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `create_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `update_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_prog_detail`
--

INSERT INTO `tb_prog_detail` (`id`, `nama_program`, `kode_program`, `kategori_program`, `lembaga_donor`, `lembaga_mitra`, `no.kontrak`, `nilai_kontrak`, `kontrak_mulai`, `kontrak_berakhir`, `status`, `pj_program`, `lampiran_kontrak`, `lampiran_proposal`, `lampiran_kontrakstaff`, `latar_belakang`, `tujuan`, `keluaran`, `create_date`, `create_by`, `update_date`, `update_by`) VALUES
(1, 'Program 1', 'CNTH1', NULL, NULL, NULL, '123', '12000000.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26 03:08:48', 'Administrator', '2023-01-26 03:08:48', 'Administrator'),
(2, 'Program 2', 'CNTH2', '2,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-05 21:24:04', 'Administrator', '2023-02-05 21:24:04', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prog_evaluasi`
--

CREATE TABLE `tb_prog_evaluasi` (
  `id` int(11) NOT NULL,
  `id_program` int(11) DEFAULT NULL,
  `capaian_tujuan` text DEFAULT NULL,
  `strategi_pendekatan` text DEFAULT NULL,
  `dampak` text DEFAULT NULL,
  `rekomendasi` text DEFAULT NULL,
  `pembelajaran` text DEFAULT NULL,
  `kisah_sukses` text DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_prog_kategori_kegiatan`
--

CREATE TABLE `tb_prog_kategori_kegiatan` (
  `id` int(11) NOT NULL,
  `kategori_program` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_prog_kategori_kegiatan`
--

INSERT INTO `tb_prog_kategori_kegiatan` (`id`, `kategori_program`) VALUES
(1, 'Hutan Desa'),
(2, 'Kebakaran Hutan'),
(3, 'Pemetaan Batas Desa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prog_laporanfinal`
--

CREATE TABLE `tb_prog_laporanfinal` (
  `id` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  `lampiran_dokumen` varchar(225) NOT NULL,
  `lampiran_peta` varchar(225) NOT NULL,
  `lampiran_foto` varchar(225) NOT NULL,
  `lampiran_lain1` varchar(225) NOT NULL,
  `lampiran_lain2` varchar(225) NOT NULL,
  `createdate` datetime NOT NULL,
  `createby` varchar(255) DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `updateby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_prog_lap_mingguan_bulanan`
--

CREATE TABLE `tb_prog_lap_mingguan_bulanan` (
  `id` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  `kategori_laporan` varchar(255) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `pj_laporan` int(11) NOT NULL COMMENT 'nama pengupload',
  `judul` varchar(255) DEFAULT NULL,
  `lampiran` varchar(225) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_prog_rapat_nonaktivitas`
--

CREATE TABLE `tb_prog_rapat_nonaktivitas` (
  `id` int(11) NOT NULL,
  `nama_rapat` varchar(255) DEFAULT NULL,
  `tempat_pelaksana` varchar(255) DEFAULT NULL,
  `inisiator_rapat` varchar(255) DEFAULT NULL,
  `lembaga_inisiator` varchar(255) DEFAULT NULL,
  `partisipan_pria` int(11) DEFAULT NULL,
  `partisipan_wanita` int(11) DEFAULT NULL,
  `poin_pembahasan` text DEFAULT NULL,
  `rencana_tindaklanjut` varchar(255) DEFAULT NULL,
  `waktu_mulai` datetime DEFAULT NULL,
  `waktu_berakhir` datetime DEFAULT NULL,
  `lampiran_absen` varchar(255) DEFAULT NULL,
  `lampiran_notulensi` varchar(255) DEFAULT NULL,
  `lampiran_foto` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `create_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_prog_staff`
--

CREATE TABLE `tb_prog_staff` (
  `id` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  `id_temanputer` int(11) NOT NULL,
  `id_posisi` int(11) NOT NULL,
  `deskripsi_pekerjaan` text NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_prog_wilayahkerja`
--

CREATE TABLE `tb_prog_wilayahkerja` (
  `id` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  `propinsi` int(11) NOT NULL,
  `kabupaten` int(11) NOT NULL,
  `kecamatan` int(11) NOT NULL,
  `desa` varchar(11) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_propinsi`
--

CREATE TABLE `tb_propinsi` (
  `id` int(11) NOT NULL,
  `propinsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_propinsi`
--

INSERT INTO `tb_propinsi` (`id`, `propinsi`) VALUES
(11, 'Aceh'),
(12, 'Sumatera Utara'),
(13, 'Sumatera Barat'),
(14, 'Riau'),
(15, 'Jambi'),
(16, 'Sumatera Selatan'),
(17, 'Bengkulu'),
(18, 'Lampung'),
(19, 'Kepulauan Bangka Belitung'),
(21, 'Kepulauan Riau'),
(31, 'DKI Jakarta'),
(32, 'Jawa Barat'),
(33, 'Jawa Tengah'),
(34, 'DI Yogyakarta'),
(35, 'Jawa Timur'),
(36, 'Banten'),
(51, 'Bali'),
(52, 'Nusa Tenggara Barat'),
(53, 'Nusa Tenggara Timur'),
(61, 'Kalimantan Barat'),
(62, 'Kalimantan Tengah'),
(63, 'Kalimantan Selatan'),
(64, 'Kalimantan Timur'),
(65, 'Kalimantan Utara'),
(71, 'Sulawesi Utara'),
(72, 'Sulawesi Tengah'),
(73, 'Sulawesi Selatan'),
(74, 'Sulawesi Tenggara'),
(75, 'Gorontalo'),
(76, 'Sulawesi Barat'),
(81, 'Maluku'),
(82, 'Maluku Utara'),
(91, 'Papua Barat'),
(94, 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rapat_bulanan`
--

CREATE TABLE `tb_rapat_bulanan` (
  `id` int(11) NOT NULL,
  `tahun` int(11) DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `rapat_mulai` datetime DEFAULT NULL,
  `rapat_selesai` datetime DEFAULT NULL,
  `topik_pembahasan` varchar(255) DEFAULT NULL,
  `hasil_pembahasan` text DEFAULT NULL,
  `rencana_tindaklanjut` varchar(255) DEFAULT NULL,
  `tempat_rapat` varchar(255) DEFAULT NULL,
  `partisipan_pria` int(11) DEFAULT NULL,
  `partisipan_wanita` int(11) DEFAULT NULL,
  `lampiran_notulensi` varchar(255) DEFAULT NULL,
  `lampiran_foto` varchar(255) DEFAULT NULL,
  `lampiran_absen` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_rapat_tahunan`
--

CREATE TABLE `tb_rapat_tahunan` (
  `id` int(11) NOT NULL,
  `tahun` int(11) DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `rapat_mulai` datetime DEFAULT NULL,
  `rapat_selesai` datetime DEFAULT NULL,
  `topik_pembahasan` varchar(255) DEFAULT NULL,
  `hasil_pembahasan` text DEFAULT NULL,
  `rencana_tindaklanjut` varchar(255) DEFAULT NULL,
  `tempat_rapat` varchar(255) DEFAULT NULL,
  `partisipan_pria` int(11) DEFAULT NULL,
  `partisipan_wanita` int(11) DEFAULT NULL,
  `lampiran_notulensi` varchar(255) DEFAULT NULL,
  `lampiran_foto` varchar(255) DEFAULT NULL,
  `lampiran_absen` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_rencana_mitra_kegiatan`
--

CREATE TABLE `tb_rencana_mitra_kegiatan` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) DEFAULT NULL,
  `lembaga` varchar(255) DEFAULT NULL,
  `email_lembaga` varchar(255) DEFAULT NULL,
  `nama_cp` varchar(255) DEFAULT NULL,
  `tlp_cp` int(11) DEFAULT NULL,
  `email_cp` varchar(255) DEFAULT NULL,
  `latarbelakang_kegiatan` text DEFAULT NULL,
  `tujuan_kegiatan` text DEFAULT NULL,
  `potensi_kegiatan` text DEFAULT NULL,
  `keluaran_kegiatan` varchar(255) DEFAULT NULL,
  `provinsi` int(11) DEFAULT NULL,
  `kabupaten` int(11) DEFAULT NULL,
  `kecamatan` int(11) DEFAULT NULL,
  `desa` varchar(255) DEFAULT NULL,
  `sumber_informasi` varchar(255) DEFAULT NULL,
  `tanggal_komunikasi` date DEFAULT NULL,
  `metode_komunikasi` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `createby` varchar(255) DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updateby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_rencana_mitra_progres`
--

CREATE TABLE `tb_rencana_mitra_progres` (
  `id` int(11) NOT NULL,
  `id_kgtn_pengajuan` int(11) DEFAULT NULL,
  `rapat_berakhir` datetime DEFAULT NULL,
  `rapat_mulai` datetime DEFAULT NULL,
  `metode_komunikasi` varchar(255) DEFAULT NULL,
  `pembahasan` text DEFAULT NULL,
  `intipembahasan` varchar(255) DEFAULT NULL,
  `nama_partisipan` varchar(255) DEFAULT NULL,
  `rencana_tindaklanjut` varchar(255) DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `pria` int(11) DEFAULT NULL,
  `wanita` int(11) DEFAULT NULL,
  `notulensi` varchar(255) DEFAULT NULL,
  `absen` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `create_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `update_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_satuan_unit`
--

CREATE TABLE `tb_satuan_unit` (
  `id` int(11) NOT NULL,
  `unit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_satuan_unit`
--

INSERT INTO `tb_satuan_unit` (`id`, `unit`) VALUES
(1, 'Unit'),
(2, 'Days'),
(3, 'Pax'),
(4, 'Room'),
(5, 'Night'),
(6, 'Package'),
(7, 'Pax'),
(8, 'Orang'),
(9, 'Time'),
(10, 'Month'),
(11, 'Weeks'),
(12, 'Paket');

-- --------------------------------------------------------

--
-- Table structure for table `tb_staff`
--

CREATE TABLE `tb_staff` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `nama_staff` varchar(255) DEFAULT NULL,
  `jeniskelamin` varchar(255) DEFAULT NULL,
  `domisili` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `mulai_kerja` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_tlp` int(11) DEFAULT NULL,
  `posisi` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `lampiran1` varchar(255) DEFAULT NULL,
  `lampiran2` varchar(255) DEFAULT NULL,
  `lampiran3` varchar(255) DEFAULT NULL,
  `lampiran4` varchar(255) DEFAULT NULL,
  `lampiran5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_kategori`
--

CREATE TABLE `tb_surat_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_keluar`
--

CREATE TABLE `tb_surat_keluar` (
  `id` int(11) NOT NULL,
  `id_kategorisurat` int(11) DEFAULT NULL,
  `no_surat` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `tujuan_surat` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `create_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `update_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_masuk`
--

CREATE TABLE `tb_surat_masuk` (
  `id` int(11) NOT NULL,
  `id_kategorisurat` int(11) DEFAULT NULL,
  `no_surat` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `asal_surat` varchar(255) DEFAULT NULL,
  `id_ruangan` int(11) DEFAULT NULL COMMENT 'tempat_arsip',
  `create_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `create_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `update_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tahun`
--

CREATE TABLE `tb_tahun` (
  `id` int(11) NOT NULL,
  `tahun` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_tahun`
--

INSERT INTO `tb_tahun` (`id`, `tahun`) VALUES
(1, '2009'),
(2, '2010'),
(3, '2011'),
(4, '2012'),
(5, '2013'),
(6, '2014'),
(7, '2015'),
(8, '2016'),
(9, '2017'),
(10, '2018'),
(11, '2019'),
(12, '2020'),
(13, '2021'),
(14, '2022'),
(15, '2023');

-- --------------------------------------------------------

--
-- Table structure for table `tb_temanputer_detail`
--

CREATE TABLE `tb_temanputer_detail` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `namalengkap` varchar(255) DEFAULT NULL,
  `jeniskelamin` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `domisili` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `notlpon` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL,
  `akun` int(11) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_temanputer_detail`
--

INSERT INTO `tb_temanputer_detail` (`id`, `foto`, `namalengkap`, `jeniskelamin`, `tempat_lahir`, `tanggal_lahir`, `domisili`, `alamat`, `notlpon`, `email`, `status`, `skill`, `akun`, `facebook`, `twitter`, `instagram`) VALUES
(3, NULL, 'Contoh Teman Puter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_temanputer_lampiran`
--

CREATE TABLE `tb_temanputer_lampiran` (
  `id` int(11) NOT NULL,
  `id_tp` int(11) DEFAULT NULL,
  `lampiran_ktp` varchar(255) DEFAULT NULL,
  `lampiran_npwp` varchar(255) DEFAULT NULL,
  `lampiran_kk` varchar(255) DEFAULT NULL,
  `lampiran_asuransi` varchar(255) DEFAULT NULL,
  `lampiran_cv` varchar(255) DEFAULT NULL,
  `lampiran_lain` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_temanputer_lampiran`
--

INSERT INTO `tb_temanputer_lampiran` (`id`, `id_tp`, `lampiran_ktp`, `lampiran_npwp`, `lampiran_kk`, `lampiran_asuransi`, `lampiran_cv`, `lampiran_lain`) VALUES
(2, 2, '119-238-1-SM(1).pdf', '119-238-1-SM(1).pdf', '119-238-1-SM(1).pdf', '119-238-1-SM(1).pdf', '119-238-1-SM(1).pdf', '119-238-1-SM(1).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_temanputer_pengalamankerja`
--

CREATE TABLE `tb_temanputer_pengalamankerja` (
  `id` int(11) NOT NULL,
  `id_tp` int(11) DEFAULT NULL,
  `pengalamankerja` varchar(255) DEFAULT NULL,
  `lembaga` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `id_posisi` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_temanputer_pengalamankerja`
--

INSERT INTO `tb_temanputer_pengalamankerja` (`id`, `id_tp`, `pengalamankerja`, `lembaga`, `tahun`, `id_posisi`, `deskripsi`) VALUES
(1, 1, 'asdfdsf', 646, 1, 3, 'afdsf'),
(2, 1, 'adfas', 234234, 3, 1, 'sdfsadf'),
(3, 2, 'adfadsfsfwerewr', 234324, 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_temanputer_skills`
--

CREATE TABLE `tb_temanputer_skills` (
  `id` int(11) NOT NULL,
  `nama_skill` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_temanputer_skills`
--

INSERT INTO `tb_temanputer_skills` (`id`, `nama_skill`) VALUES
(1, 'Desain Grafis'),
(2, 'Managemen penanganan bencana'),
(3, 'Sistem informasi geospasial'),
(4, 'videografi'),
(5, 'fotografi'),
(6, 'Analisis Bisnis');

-- --------------------------------------------------------

--
-- Table structure for table `tb_termin_donor_detail`
--

CREATE TABLE `tb_termin_donor_detail` (
  `id` int(11) NOT NULL,
  `id_termin_donor` int(11) DEFAULT NULL,
  `tanggal_transfer` date DEFAULT NULL,
  `tanggal_laporan` datetime DEFAULT NULL,
  `no_invoice` varchar(255) DEFAULT NULL,
  `id_akunbank` int(11) DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `jumlah` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_termin_donor_master`
--

CREATE TABLE `tb_termin_donor_master` (
  `id` int(11) NOT NULL,
  `id_donor` int(11) DEFAULT NULL,
  `id_program` int(11) DEFAULT NULL,
  `no_kontrak` varchar(255) DEFAULT NULL,
  `program_mulai` date DEFAULT NULL,
  `program_berakhir` date DEFAULT NULL,
  `total_kontrak` decimal(18,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `namalengkap` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL,
  `id_program` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `foto`, `namalengkap`, `email`, `password`, `id_level`, `id_program`) VALUES
(1, NULL, 'Super Admin', 'admin@puter.or.id', 'qwerty123', -1, NULL),
(2, NULL, 'Kelvin Cungiharjo', 'kelvin.cungiharjo@puter.or.id', 'Qwerty123', -1, NULL),
(3, NULL, 'Andaman Muthadir', 'andaman.muthadir@puter.or.id', 'qwerty123', 2, NULL),
(4, NULL, 'Asep Deni', 'asep.deni@puter.or.id', 'qwerty123', 4, NULL),
(5, NULL, 'Asep Mulyana', 'asep.mulyana@puter.or.id', 'qwerty123', 8, NULL),
(6, NULL, 'Deny Boy Mochran', 'dbmochran@puter.or.id', 'qwerty123', 7, NULL),
(7, NULL, 'Deni Rahadian', 'deni.rahadian@puter.or.id', 'qwerty123', 1, NULL),
(8, NULL, 'Fery Supriadi', 'ferry.supriadi@puter.or.id', 'qwerty123', 8, NULL),
(9, NULL, 'Iriana Jayasantika', 'iriana.jayasantika@puter.or.id', 'qwerty123', 3, NULL),
(10, NULL, 'Lisa Fallani', 'lisa.fallany.sarman@puter.or.id', 'qwerty123', 11, NULL),
(11, NULL, 'Luthfia Zahra Zen', 'luthfiazahra.zen@puter.or.id', 'qwerty123', 8, '1'),
(12, NULL, 'Nadia Febrianti', 'nadia.febrianti@puter.or.id', 'qwerty123', 8, '1,2'),
(13, NULL, 'Rachmat Budiono', 'rboediono@puter.or.id', 'qwerty123', 5, NULL),
(14, NULL, 'Ridwan Fauzi', 'ridwan.fauzi@puter.or.id', 'qwerty123', 4, NULL),
(15, NULL, 'Taryono Darusman', 'taryono.darusman@puter.or.id', 'Qwerty123', 9, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `template dokumen`
-- (See below for the actual view)
--
CREATE TABLE `template dokumen` (
`Kategori` varchar(255)
,`Judul` varchar(255)
,`versi` varchar(255)
,`Lampiran` varchar(255)
,`Keterangan` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `userlevelpermissions`
--

CREATE TABLE `userlevelpermissions` (
  `userlevelid` int(11) NOT NULL,
  `tablename` varchar(255) NOT NULL,
  `permission` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `userlevelpermissions`
--

INSERT INTO `userlevelpermissions` (`userlevelid`, `tablename`, `permission`) VALUES
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Alphabetical List of Products', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}cars', 8),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}cars2', 8),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}categories', 8),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}customers', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Dashboard1', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}dji', 8),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}employees', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}employee_sales_by_country_for_2014', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}home.php', 8),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}list_of_products', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}locations', 8),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}locations2', 8),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}locations3', 8),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}models', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}news.php', 8),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}order details extended', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}order details extended 2', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orderdetails', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders', 1024),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders2', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders_by_product', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}products', 8),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Products By Category', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}products_by_category', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}product_sales_for_2014', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Quarterly Orders By Product', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales by Category for 2014', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Customer', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Customer (Compact)', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Customer 2', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Order', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Year', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}sales_by_category_for_2014', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}sales_by_year', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}shippers', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}suppliers', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}trademarks', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}userlevelpermissions', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}userlevels', 0),
(1, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Alphabetical List of Products', 0),
(2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}cars', 104),
(3, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}cars2', 0),
(4, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}categories', 104),
(5, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}customers', 0),
(6, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Dashboard1', 0),
(7, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}dji', 0),
(8, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}employees', 0),
(9, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}employee_sales_by_country_for_2014', 0),
(10, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Gantt', 0),
(11, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}gantt3', 0),
(12, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}home.php', 0),
(13, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}list_of_products', 0),
(14, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}locations', 8),
(15, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}locations2', 8),
(16, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}locations3', 8),
(17, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}models', 256),
(18, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}news.php', 0),
(19, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}order details extended', 0),
(20, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}order details extended 2', 0),
(21, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orderdetails', 0),
(22, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders', 0),
(23, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders2', 0),
(24, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders_by_product', 0),
(25, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders_by_product2', 0),
(26, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}products', 104),
(27, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Products By Category', 0),
(28, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}products_by_category', 0),
(29, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}product_sales_for_2014', 0),
(30, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Quarterly Orders By Product', 0),
(31, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales by Category for 2014', 0),
(32, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Customer', 0),
(33, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Customer (Compact)', 0),
(34, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Customer 2', 0),
(35, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Order', 0),
(36, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Year', 0),
(37, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}sales_by_category_for_2014', 0),
(38, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}sales_by_year', 0),
(39, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}shippers', 0),
(40, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}suppliers', 0),
(41, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}tasks', 0),
(42, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}trademarks', 256),
(43, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}userlevelpermissions', 0),
(44, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}userlevels', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}gantt3', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders_by_product2', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Gantt', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}tasks', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}calendar', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Calendar1', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}exportlog', 0),
(45, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}calendar', 0),
(46, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Calendar1', 0),
(47, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}announcement', 0),
(48, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}breadcrumblinks', 0),
(49, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}events', 0),
(50, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}settings', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}stats_counter', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}stats_counterlog', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}stats_date', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}stats_hour', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}stats_month', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}stats_year', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}breadcrumblinksaddsp', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}breadcrumblinkschecksp', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}breadcrumblinksdeletesp', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}breadcrumblinksmovesp', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}calendarscheduler', 0),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}loadhelponline', 8),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}loadaboutus', 8),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}loadtermsconditions', 8),
(-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}printtermsconditions', 8),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_user', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}userlevelpermissions', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}userlevels', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}audittrail', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_dokumen', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_dokumen_kategori', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_barang', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_ruangan', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_satuan_unit', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_subkat_barang', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_kategori_barang', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_surat_kategori', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_surat_keluar', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_surat_masuk', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_lembaga', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_lembaga_kategori', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_lembaga_kerjasama', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_negara', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_akunbank', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_kabupaten', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_kecamatan', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_kelurahan_desa', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_propinsi', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_detail', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_lampiran', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_pengalamankerja', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_skills', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_bulan', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_posisi_kerja', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_tahun', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_detail', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_evaluasi', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_laporanfinal', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_staff', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_wilayahkerja', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_kategori_kegiatan', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rencana_mitra_kegiatan', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rencana_mitra_progres', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_termin_donor_detail', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_termin_donor_master', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_rapat_nonaktivitas', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rapat_bulanan_tahunan', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pelaporan_dtl', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pelaporan_hdr', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pengajuan_dtl', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pengajuan_hdr', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_kat', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_subkat', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}kategori rab', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_dtl_proposal', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_dtl_real', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_hdr_proposal', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_hdr_real', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}kategori barang', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_lap_mingguan_bulanan', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}laporan mingguan', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}laporan bulanan', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_approve_pelaporan', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_approve_pengajuan', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}prosedur standar operasional', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}template dokumen', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}administrasi lembaga', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}laporan tahunan', 360),
(4, '{5B492BD8-255A-41BD-B152-2484E5240642}wilayah', 360),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_user', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}userlevelpermissions', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}userlevels', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}audittrail', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_dokumen', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_dokumen_kategori', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_barang', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_ruangan', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_satuan_unit', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_subkat_barang', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_kategori_barang', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_surat_kategori', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_surat_keluar', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_surat_masuk', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_lembaga', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_lembaga_kategori', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_lembaga_kerjasama', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_negara', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_akunbank', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_kabupaten', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_kecamatan', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_kelurahan_desa', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_propinsi', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_detail', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_lampiran', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_pengalamankerja', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_skills', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_bulan', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_posisi_kerja', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_tahun', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_detail', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_evaluasi', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_laporanfinal', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_staff', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_wilayahkerja', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_kategori_kegiatan', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rencana_mitra_kegiatan', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rencana_mitra_progres', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_termin_donor_detail', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_termin_donor_master', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_rapat_nonaktivitas', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rapat_bulanan_tahunan', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pelaporan_dtl', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pelaporan_hdr', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pengajuan_dtl', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pengajuan_hdr', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_kat', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_subkat', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}kategori rab', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_dtl_proposal', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_dtl_real', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_hdr_proposal', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_hdr_real', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}kategori barang', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_lap_mingguan_bulanan', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}laporan mingguan', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}laporan bulanan', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_approve_pelaporan', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_approve_pengajuan', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}prosedur standar operasional', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}template dokumen', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}administrasi lembaga', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}laporan tahunan', 2031),
(6, '{5B492BD8-255A-41BD-B152-2484E5240642}wilayah', 2031),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_user', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}userlevelpermissions', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}userlevels', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}audittrail', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_dokumen', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_dokumen_kategori', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_barang', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_ruangan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_satuan_unit', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_subkat_barang', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_kategori_barang', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_surat_kategori', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_surat_keluar', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_surat_masuk', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_lembaga', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_lembaga_kategori', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_lembaga_kerjasama', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_negara', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_akunbank', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kabupaten', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kecamatan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kelurahan_desa', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_propinsi', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_detail', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_lampiran', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_pengalamankerja', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_skills', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_bulan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_posisi_kerja', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_tahun', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_detail', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_evaluasi', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_laporanfinal', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_staff', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_wilayahkerja', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_kategori_kegiatan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rencana_mitra_kegiatan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rencana_mitra_progres', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_termin_donor_detail', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_termin_donor_master', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_rapat_nonaktivitas', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rapat_bulanan_tahunan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_dtl', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_hdr', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_dtl', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_hdr', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_kat', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_subkat', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}kategori rab', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_dtl_proposal', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_hdr_proposal', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}kategori barang', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_lap_mingguan_bulanan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}laporan mingguan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}laporan bulanan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pelaporan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pengajuan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}prosedur standar operasional', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}template dokumen', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}administrasi lembaga', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}laporan tahunan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}wilayah', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_staff', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_laporan_keg_lampiran', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_laporan_kegiatan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_penerima_manfaat', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_laporan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_kegiatan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_kelompok', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_partisipan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_ketergorisub_kegiatan', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rab_component', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rab_item_component', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rab_master_component', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}v_rab', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}RAB Report', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_component', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_item_component', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_item_component_report', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_master_component', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_payment', 0),
(-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_kegiatan', 0),
(51, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_user', 0),
(52, '{DD6024B5-E789-4E94-AA77-3B6F07190313}userlevelpermissions', 0),
(53, '{DD6024B5-E789-4E94-AA77-3B6F07190313}userlevels', 0),
(54, '{DD6024B5-E789-4E94-AA77-3B6F07190313}audittrail', 0),
(55, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_dokumen', 0),
(56, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_dokumen_kategori', 0),
(57, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_barang', 0),
(58, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_ruangan', 0),
(59, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_satuan_unit', 0),
(60, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_subkat_barang', 0),
(61, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_kategori_barang', 0),
(62, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_surat_kategori', 0),
(63, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_surat_keluar', 0),
(64, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_surat_masuk', 0),
(65, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_lembaga', 0),
(66, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_lembaga_kategori', 0),
(67, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_lembaga_kerjasama', 0),
(68, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_negara', 0),
(69, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_akunbank', 0),
(70, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kabupaten', 0),
(71, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kecamatan', 0),
(72, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kelurahan_desa', 0),
(73, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_propinsi', 0),
(74, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_detail', 0),
(75, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_lampiran', 0),
(76, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_pengalamankerja', 0),
(77, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_skills', 0),
(78, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_bulan', 0),
(79, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_posisi_kerja', 0),
(80, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_tahun', 0),
(81, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_detail', 0),
(82, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_evaluasi', 0),
(83, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_laporanfinal', 0),
(84, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_staff', 0),
(85, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_wilayahkerja', 0),
(86, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_kategori_kegiatan', 0),
(87, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rencana_mitra_kegiatan', 0),
(88, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rencana_mitra_progres', 0),
(89, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_termin_donor_detail', 0),
(90, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_termin_donor_master', 0),
(91, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_rapat_nonaktivitas', 0),
(92, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rapat_bulanan_tahunan', 0),
(93, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_dtl', 0),
(94, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_hdr', 0),
(95, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_dtl', 0),
(96, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_hdr', 0),
(97, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_kat', 0),
(98, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_subkat', 0),
(99, '{DD6024B5-E789-4E94-AA77-3B6F07190313}kategori rab', 0),
(100, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_dtl_proposal', 0),
(101, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_hdr_proposal', 0),
(102, '{DD6024B5-E789-4E94-AA77-3B6F07190313}kategori barang', 0),
(103, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_lap_mingguan_bulanan', 0),
(104, '{DD6024B5-E789-4E94-AA77-3B6F07190313}laporan mingguan', 0),
(105, '{DD6024B5-E789-4E94-AA77-3B6F07190313}laporan bulanan', 0),
(106, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pelaporan', 0),
(107, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pengajuan', 0),
(108, '{DD6024B5-E789-4E94-AA77-3B6F07190313}prosedur standar operasional', 0),
(109, '{DD6024B5-E789-4E94-AA77-3B6F07190313}template dokumen', 0),
(110, '{DD6024B5-E789-4E94-AA77-3B6F07190313}administrasi lembaga', 0),
(111, '{DD6024B5-E789-4E94-AA77-3B6F07190313}laporan tahunan', 0),
(112, '{DD6024B5-E789-4E94-AA77-3B6F07190313}wilayah', 0),
(113, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_staff', 0),
(114, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_laporan_keg_lampiran', 0),
(115, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_laporan_kegiatan', 0),
(116, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_penerima_manfaat', 0),
(117, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_laporan', 0),
(118, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_kegiatan', 0),
(119, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_kelompok', 0),
(120, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_partisipan', 0),
(121, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_ketergorisub_kegiatan', 0),
(122, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rab_component', 0),
(123, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rab_item_component', 0),
(124, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rab_master_component', 0),
(125, '{DD6024B5-E789-4E94-AA77-3B6F07190313}v_rab', 0),
(126, '{DD6024B5-E789-4E94-AA77-3B6F07190313}RAB Report', 0),
(127, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_component', 0),
(128, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_item_component', 0),
(129, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_item_component_report', 0),
(130, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_master_component', 0),
(131, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_payment', 0),
(132, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_kegiatan', 0),
(2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_item_component', 297),
(2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}approve_rap_item_component', 511),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_component', 376),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}approve_rap_item_component', 377),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_item_component', 376),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_dtl', 0),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_hdr', 504),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pengajuan', 0),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_pengajuan_kegiatan', 0),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}status pengajuan kegiatan', 0),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pengajuan_um', 504),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}approve_pengajuan_um', 509),
(2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_dtl', 0),
(2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_hdr', 504),
(2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pengajuan', 0),
(2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_pengajuan_kegiatan', 0),
(2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}status pengajuan kegiatan', 0),
(2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pengajuan_um', 504),
(2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}approve_pengajuan_um', 505),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pengajuan_um_payment', 511),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pengajuan_um_payment_confirmation', 0),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}approve_pelaporan_um', 509),
(2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}approve_pelaporan_um', 505),
(2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pelaporan_um', 504),
(2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pelaporan_um_detail', 0),
(2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pelaporan', 0),
(2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_dtl', 0),
(2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_hdr', 0),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pelaporan_um', 504),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pelaporan_um_detail', 0),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pelaporan', 0),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_dtl', 0),
(3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_hdr', 0),
(3, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}approve_pengajuan_um', 509),
(3, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}pengajuan_um', 504),
(3, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}pengajuan_um_detail', 504),
(3, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}tb_pengajuan_kegiatan', 504),
(2, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}approve_pengajuan_um', 505),
(2, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}pengajuan_um', 504),
(2, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}pengajuan_um_detail', 504),
(2, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}tb_pengajuan_kegiatan', 504),
(3, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}pengajuan_um_payment', 511),
(3, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}pengajuan_um_payment_confirmation', 0),
(3, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}pelaporan_um', 504),
(3, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}pelaporan_um_detail', 504),
(3, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}approve_pelaporan_um', 509),
(2, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}pelaporan_um', 504),
(2, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}pelaporan_um_detail', 504),
(2, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}approve_pelaporan_um', 505),
(3, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}approve_pengajuan_kegiatan', 509),
(3, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}audittrail', 0),
(2, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}approve_pengajuan_kegiatan', 505),
(2, '{F3560AC8-C86C-41C2-9965-888FE775AFBD}audittrail', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userlevels`
--

CREATE TABLE `userlevels` (
  `userlevelid` int(11) NOT NULL,
  `userlevelname` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `userlevels`
--

INSERT INTO `userlevels` (`userlevelid`, `userlevelname`) VALUES
(-2, 'Anonymous'),
(-1, 'Administrator'),
(1, 'Default'),
(2, 'Manajer Program'),
(3, 'Keuangan'),
(4, 'Staf'),
(5, 'Manajer Kantor'),
(6, 'Operator'),
(7, 'Default'),
(8, 'Staf Program'),
(9, 'Ketua'),
(10, 'PJ. Program'),
(11, 'Staf Keuangan');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_uangmuka`
-- (See below for the actual view)
--
CREATE TABLE `view_uangmuka` (
`program_id` int(11)
,`rab_master_component_id` int(11)
,`component_id` int(11)
,`name` varchar(100)
,`total_rab` int(11)
,`total_pengajuan` decimal(32,0)
,`total_pelaporan` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vmactivityitem`
-- (See below for the actual view)
--
CREATE TABLE `vmactivityitem` (
`id` int(11)
,`program_id` int(11)
,`rab_master_component_id` int(11)
,`rab_component_id` int(11)
,`name` varchar(100)
,`description` text
,`finish` tinyint(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vmaktivity`
-- (See below for the actual view)
--
CREATE TABLE `vmaktivity` (
`id` int(11)
,`program_id` int(11)
,`rab_master_component_id` int(11)
,`name` varchar(100)
,`total_activity` bigint(21)
,`total_activity_finish` bigint(21)
,`prosentase` decimal(24,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vrab`
-- (See below for the actual view)
--
CREATE TABLE `vrab` (
`program_id` int(11)
,`rab_master_component_id` int(11)
,`rab_component_id` int(11)
,`name` varchar(100)
,`total` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vrabrap`
-- (See below for the actual view)
--
CREATE TABLE `vrabrap` (
`program_id` int(11)
,`master_id` int(11)
,`component_id` int(11)
,`nama_komponen` varchar(100)
,`rencana_biaya` int(11)
,`realisasi_biaya` decimal(32,0)
,`total` decimal(33,0)
,`penyesuaian` decimal(32,0)
,`hasil` decimal(34,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vrabrapmonthly`
-- (See below for the actual view)
--
CREATE TABLE `vrabrapmonthly` (
`id` int(11)
,`kode_program` varchar(255)
,`tahun_name` varchar(255)
,`total_rencana` decimal(32,0)
,`total_realisasi` decimal(33,0)
,`jan` decimal(37,0)
,`feb` decimal(37,0)
,`mar` decimal(37,0)
,`apr` decimal(37,0)
,`mei` decimal(37,0)
,`jun` decimal(37,0)
,`jul` decimal(37,0)
,`agust` decimal(37,0)
,`sept` decimal(37,0)
,`okt` decimal(37,0)
,`nov` decimal(37,0)
,`des` decimal(37,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vrealisasimonthly`
-- (See below for the actual view)
--
CREATE TABLE `vrealisasimonthly` (
`program_id` int(11)
,`rab_master_component_id` int(11)
,`id` int(11)
,`name` varchar(100)
,`periode_tahun` int(11)
,`periode_bulan` int(11)
,`periode` date
,`rencana` int(11)
,`realisasi` decimal(32,0)
,`percentase` decimal(40,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wilayah`
-- (See below for the actual view)
--
CREATE TABLE `wilayah` (
`ID` int(11)
,`Propinsi` varchar(255)
,`Kabupeten` varchar(255)
,`Kecamatan` varchar(255)
,`Kelurahan/Desa` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `administrasi lembaga`
--
DROP TABLE IF EXISTS `administrasi lembaga`;

CREATE VIEW `administrasi lembaga`  AS SELECT `tb_dokumen`.`id_kategori` AS `Kategori`, `tb_dokumen`.`nama_dokumen` AS `Judul`, `tb_dokumen`.`versi_dokumen` AS `Versi`, `tb_dokumen`.`lampiran` AS `Lampiran`, `tb_dokumen`.`keterangan` AS `Keterangan` FROM (`tb_dokumen` join `tb_dokumen_kategori` on(`tb_dokumen`.`id_kategori` = `tb_dokumen_kategori`.`id`)) WHERE `tb_dokumen`.`id_kategori` = '3\'3\'3\'3\'3\'3\'3\'3''3\'3\'3\'3\'3\'3\'3\'3'  ;

-- --------------------------------------------------------

--
-- Structure for view `kategori barang`
--
DROP TABLE IF EXISTS `kategori barang`;

CREATE VIEW `kategori barang`  AS SELECT `tb_inventaris_kategori_barang`.`id` AS `ID`, `tb_inventaris_kategori_barang`.`kategori_barang` AS `Kategori`, `tb_inventaris_subkat_barang`.`subkategori_barang` AS `Sub-kategori` FROM (`tb_inventaris_kategori_barang` join `tb_inventaris_subkat_barang` on(`tb_inventaris_kategori_barang`.`id` = `tb_inventaris_subkat_barang`.`id_kategori_barang`)) ORDER BY `tb_inventaris_kategori_barang`.`id` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `laporan bulanan`
--
DROP TABLE IF EXISTS `laporan bulanan`;

CREATE VIEW `laporan bulanan`  AS SELECT `tb_prog_lap_mingguan_bulanan`.`create_date` AS `Create Date`, `tb_prog_lap_mingguan_bulanan`.`id_program` AS `ID Program`, `tb_prog_lap_mingguan_bulanan`.`pj_laporan` AS `PJ Laporan`, `tb_prog_lap_mingguan_bulanan`.`judul` AS `Judul`, `tb_prog_lap_mingguan_bulanan`.`kategori_laporan` AS `Kategori Laporan`, `tb_prog_lap_mingguan_bulanan`.`tahun` AS `Tahun`, `tb_prog_lap_mingguan_bulanan`.`bulan` AS `Bulan`, `tb_prog_lap_mingguan_bulanan`.`lampiran` AS `Lampiran`, `tb_prog_lap_mingguan_bulanan`.`create_by` AS `Create By`, `tb_prog_lap_mingguan_bulanan`.`update_date` AS `Update Date`, `tb_prog_lap_mingguan_bulanan`.`update_by` AS `Update By` FROM `tb_prog_lap_mingguan_bulanan` WHERE `tb_prog_lap_mingguan_bulanan`.`kategori_laporan` = 'lapbulanan' ORDER BY `tb_prog_lap_mingguan_bulanan`.`create_date` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `laporan mingguan`
--
DROP TABLE IF EXISTS `laporan mingguan`;

CREATE VIEW `laporan mingguan`  AS SELECT `tb_prog_lap_mingguan_bulanan`.`create_date` AS `Create Date`, `tb_prog_lap_mingguan_bulanan`.`id_program` AS `ID Program`, `tb_prog_lap_mingguan_bulanan`.`pj_laporan` AS `PJ Laporan`, `tb_prog_lap_mingguan_bulanan`.`judul` AS `Judul`, `tb_prog_lap_mingguan_bulanan`.`kategori_laporan` AS `Kategori Laporan`, `tb_prog_lap_mingguan_bulanan`.`tahun` AS `Tahun`, `tb_prog_lap_mingguan_bulanan`.`bulan` AS `Bulan`, `tb_prog_lap_mingguan_bulanan`.`lampiran` AS `Lampiran`, `tb_prog_lap_mingguan_bulanan`.`create_by` AS `Create By`, `tb_prog_lap_mingguan_bulanan`.`update_date` AS `Update Date`, `tb_prog_lap_mingguan_bulanan`.`update_by` AS `Update By` FROM `tb_prog_lap_mingguan_bulanan` WHERE `tb_prog_lap_mingguan_bulanan`.`kategori_laporan` = 'lapmingguan' ORDER BY `tb_prog_lap_mingguan_bulanan`.`create_date` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `laporan tahunan`
--
DROP TABLE IF EXISTS `laporan tahunan`;

CREATE VIEW `laporan tahunan`  AS SELECT `tb_dokumen`.`id_kategori` AS `Kategori`, `tb_dokumen`.`nama_dokumen` AS `Judul`, `tb_dokumen`.`versi_dokumen` AS `Versi`, `tb_dokumen`.`lampiran` AS `Lampiran`, `tb_dokumen`.`keterangan` AS `Keterangan` FROM (`tb_dokumen` join `tb_dokumen_kategori` on(`tb_dokumen`.`id_kategori` = `tb_dokumen_kategori`.`id`)) WHERE `tb_dokumen`.`id_kategori` = '4\'4\'4\'4\'4\'4\'4\'4''4\'4\'4\'4\'4\'4\'4\'4'  ;

-- --------------------------------------------------------

--
-- Structure for view `prosedur standar operasional`
--
DROP TABLE IF EXISTS `prosedur standar operasional`;

CREATE VIEW `prosedur standar operasional`  AS SELECT `tb_dokumen`.`id_kategori` AS `Kategori`, `tb_dokumen`.`nama_dokumen` AS `Judul Dokumen`, `tb_dokumen`.`versi_dokumen` AS `Versi`, `tb_dokumen`.`lampiran` AS `Lampiran`, `tb_dokumen`.`keterangan` AS `Keterangan` FROM (`tb_dokumen` join `tb_dokumen_kategori` on(`tb_dokumen`.`id_kategori` = `tb_dokumen_kategori`.`id`)) WHERE `tb_dokumen`.`id_kategori` = '1\'1\'1\'1\'1\'1\'1\'1''1\'1\'1\'1\'1\'1\'1\'1'  ;

-- --------------------------------------------------------

--
-- Structure for view `template dokumen`
--
DROP TABLE IF EXISTS `template dokumen`;

CREATE VIEW `template dokumen`  AS SELECT `tb_dokumen`.`id_kategori` AS `Kategori`, `tb_dokumen`.`nama_dokumen` AS `Judul`, `tb_dokumen`.`versi_dokumen` AS `versi`, `tb_dokumen`.`lampiran` AS `Lampiran`, `tb_dokumen`.`keterangan` AS `Keterangan` FROM (`tb_dokumen` join `tb_dokumen_kategori` on(`tb_dokumen`.`id_kategori` = `tb_dokumen_kategori`.`id`)) WHERE `tb_dokumen`.`id_kategori` = '2\'2\'2\'2\'2\'2\'2\'2''2\'2\'2\'2\'2\'2\'2\'2'  ;

-- --------------------------------------------------------

--
-- Structure for view `view_uangmuka`
--
DROP TABLE IF EXISTS `view_uangmuka`;

CREATE VIEW `view_uangmuka`  AS SELECT `rab_master_component`.`program_id` AS `program_id`, `rab_component`.`rab_master_component_id` AS `rab_master_component_id`, `rab_component`.`id` AS `component_id`, `rab_component`.`name` AS `name`, `rab_component`.`total_cost` AS `total_rab`, (select sum(`pengajuan_um_detail`.`total_cost`) from `pengajuan_um_detail` where `pengajuan_um_detail`.`program_id` = `rab_master_component`.`program_id` and `pengajuan_um_detail`.`rab_master_component_id` = `rab_master_component`.`id` and `pengajuan_um_detail`.`rab_component_id` = `rab_component`.`id`) AS `total_pengajuan`, (select sum(`pelaporan_um_detail`.`total_cost`) from `pelaporan_um_detail` where `pelaporan_um_detail`.`program_id` = `rab_master_component`.`program_id` and `pelaporan_um_detail`.`rab_master_component_id` = `rab_master_component`.`id` and `pelaporan_um_detail`.`rab_component_id` = `rab_component`.`id`) AS `total_pelaporan` FROM ((((`rab_component` join `rab_master_component` on(`rab_master_component`.`id` = `rab_component`.`rab_master_component_id`)) join `rab_item_component` on(`rab_component`.`id` = `rab_item_component`.`rab_component_id`)) left join `pengajuan_um_detail` on(`rab_master_component`.`program_id` = `pengajuan_um_detail`.`program_id` and `rab_component`.`rab_master_component_id` = `pengajuan_um_detail`.`rab_master_component_id` and `rab_item_component`.`rab_component_id` = `pengajuan_um_detail`.`rab_component_id` and `rab_item_component`.`id` = `pengajuan_um_detail`.`rab_item_component_id`)) left join `pelaporan_um_detail` on(`rab_master_component`.`program_id` = `pelaporan_um_detail`.`program_id` and `rab_component`.`rab_master_component_id` = `pelaporan_um_detail`.`rab_master_component_id` and `rab_item_component`.`rab_component_id` = `pelaporan_um_detail`.`rab_component_id` and `rab_item_component`.`id` = `pelaporan_um_detail`.`rab_item_component_id`)) GROUP BY `rab_master_component`.`program_id`, `rab_component`.`rab_master_component_id`, `rab_component`.`id`;

-- --------------------------------------------------------

--
-- Structure for view `vmactivityitem`
--
DROP TABLE IF EXISTS `vmactivityitem`;

CREATE VIEW `vmactivityitem`  AS SELECT `rab_item_component`.`id` AS `id`, `rab_item_component`.`program_id` AS `program_id`, `rab_item_component`.`rab_master_component_id` AS `rab_master_component_id`, `rab_item_component`.`rab_component_id` AS `rab_component_id`, `rab_item_component`.`name` AS `name`, `activity`.`description` AS `description`, `activity`.`finish` AS `finish` FROM (`rab_item_component` left join `activity` on(`rab_item_component`.`program_id` = `activity`.`program_id` and `rab_item_component`.`rab_master_component_id` = `activity`.`rab_master_component_id` and `rab_item_component`.`rab_component_id` = `activity`.`rab_component_id` and `rab_item_component`.`id` = `activity`.`rab_item_id`)) WHERE `rab_item_component`.`is_activity` = 11  ;

-- --------------------------------------------------------

--
-- Structure for view `vmaktivity`
--
DROP TABLE IF EXISTS `vmaktivity`;

CREATE VIEW `vmaktivity`  AS SELECT `rab_component`.`id` AS `id`, `rab_component`.`program_id` AS `program_id`, `rab_component`.`rab_master_component_id` AS `rab_master_component_id`, `rab_component`.`name` AS `name`, (select coalesce(count(0),0) from `rab_item_component` where `rab_item_component`.`program_id` = `rab_component`.`program_id` and `rab_item_component`.`rab_component_id` = `rab_component`.`id` and `rab_item_component`.`is_activity` = 1) AS `total_activity`, (select coalesce(count(0),0) from `activity` where `activity`.`program_id` = `rab_component`.`program_id` and `activity`.`rab_component_id` = `rab_component`.`id` and `activity`.`finish` = 1) AS `total_activity_finish`, coalesce(round(100 / (select coalesce(count(0),0) from `rab_item_component` where `rab_item_component`.`program_id` = `rab_component`.`program_id` and `rab_item_component`.`rab_component_id` = `rab_component`.`id` and `rab_item_component`.`is_activity` = 1) * (select coalesce(count(0),0) from `activity` where `activity`.`program_id` = `rab_component`.`program_id` and `activity`.`rab_component_id` = `rab_component`.`id` and `activity`.`finish` = 1),0),0) AS `prosentase` FROM ((`rab_component` left join `rab_item_component` on(`rab_component`.`id` = `rab_item_component`.`rab_component_id` and `rab_component`.`program_id` = `rab_item_component`.`program_id` and `rab_component`.`rab_master_component_id` = `rab_item_component`.`rab_master_component_id`)) left join `activity` on(`rab_item_component`.`program_id` = `activity`.`program_id` and `rab_item_component`.`rab_master_component_id` = `activity`.`rab_master_component_id` and `rab_item_component`.`rab_component_id` = `activity`.`rab_component_id` and `rab_item_component`.`id` = `activity`.`rab_item_id`)) WHERE `rab_item_component`.`is_activity` = 1 GROUP BY `rab_component`.`id`;

-- --------------------------------------------------------

--
-- Structure for view `vrab`
--
DROP TABLE IF EXISTS `vrab`;

CREATE VIEW `vrab`  AS SELECT `rab_master_component`.`program_id` AS `program_id`, `rab_component`.`rab_master_component_id` AS `rab_master_component_id`, `rab_item_component`.`rab_component_id` AS `rab_component_id`, `rab_component`.`name` AS `name`, (select coalesce(sum(`rab_item_component`.`total_cost`),0) from `rab_item_component` where `rab_item_component`.`rab_component_id` = `rab_component`.`id`) AS `total` FROM ((`rab_master_component` left join `rab_component` on(`rab_master_component`.`id` = `rab_component`.`rab_master_component_id`)) left join `rab_item_component` on(`rab_component`.`id` = `rab_item_component`.`rab_component_id`)) GROUP BY `rab_item_component`.`rab_component_id`, `rab_component`.`name`;

-- --------------------------------------------------------

--
-- Structure for view `vrabrap`
--
DROP TABLE IF EXISTS `vrabrap`;

CREATE VIEW `vrabrap`  AS SELECT `rab_master_component`.`program_id` AS `program_id`, `rab_component`.`rab_master_component_id` AS `master_id`, `rab_item_component`.`rab_component_id` AS `component_id`, `rab_item_component`.`name` AS `nama_komponen`, `rab_component`.`total_cost` AS `rencana_biaya`, (select coalesce(sum(`pelaporan_um_detail`.`total_cost`),0) from `pelaporan_um_detail` where `pelaporan_um_detail`.`rab_component_id` = `rab_component`.`id`) AS `realisasi_biaya`, `rab_component`.`total_cost`- (select coalesce(sum(`pelaporan_um_detail`.`total_cost`),0) from `pelaporan_um_detail` where `pelaporan_um_detail`.`rab_component_id` = `rab_component`.`id`) AS `total`, (select coalesce(sum(`balancing`.`amount`),0) from `balancing` where `balancing`.`program_id` = `rab_master_component`.`program_id` and `balancing`.`rab_master_component_id` = `rab_component`.`rab_master_component_id` and `balancing`.`rab_component_id` = `rab_component`.`id`) AS `penyesuaian`, `rab_component`.`total_cost`- (select coalesce(sum(`pelaporan_um_detail`.`total_cost`),0) from `pelaporan_um_detail` where `pelaporan_um_detail`.`rab_component_id` = `rab_component`.`id`) - (select coalesce(sum(`balancing`.`amount`),0) from `balancing` where `balancing`.`program_id` = `rab_master_component`.`program_id` and `balancing`.`rab_master_component_id` = `rab_component`.`rab_master_component_id` and `balancing`.`rab_component_id` = `rab_component`.`id`) AS `hasil` FROM ((`rab_master_component` left join `rab_component` on(`rab_master_component`.`id` = `rab_component`.`rab_master_component_id`)) join `rab_item_component` on(`rab_component`.`id` = `rab_item_component`.`rab_component_id`)) GROUP BY `rab_master_component`.`program_id`, `rab_component`.`rab_master_component_id`, `rab_item_component`.`rab_component_id`;

-- --------------------------------------------------------

--
-- Structure for view `vrabrapmonthly`
--
DROP TABLE IF EXISTS `vrabrapmonthly`;

CREATE VIEW `vrabrapmonthly`  AS SELECT `tb_prog_detail`.`id` AS `id`, `tb_prog_detail`.`kode_program` AS `kode_program`, `tb_tahun`.`tahun` AS `tahun_name`, (select coalesce(sum(`rab_component`.`total_cost`),0) from `rab_component` where `rab_component`.`program_id` = `tb_prog_detail`.`id`) AS `total_rencana`, (select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id`) - (select (select coalesce(sum(`balancing`.`amount`),0) from `balancing` where `balancing`.`program_id` = `tb_prog_detail`.`id` and `balancing`.`pelaporan_id` in (select `pelaporan_um`.`id` from `pelaporan_um` where `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id`))) AS `total_realisasi`, (select round((select if((select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 1) >= (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 1),-1 * (select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 1),(select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 1))) / (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 1) * 100,0)) AS `jan`, (select round((select if((select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 2) >= (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 2),-1 * (select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 2),(select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 2))) / (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 2) * 100,0)) AS `feb`, (select round((select if((select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 3) >= (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 3),-1 * (select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 3),(select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 3))) / (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 3) * 100,0)) AS `mar`, (select round((select if((select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 4) >= (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 4),-1 * (select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 4),(select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 4))) / (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 4) * 100,0)) AS `apr`, (select round((select if((select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 5) >= (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 5),-1 * (select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 5),(select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 5))) / (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 5) * 100,0)) AS `mei`, (select round((select if((select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 6) >= (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 6),-1 * (select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 6),(select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 6))) / (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 6) * 100,0)) AS `jun`, (select round((select if((select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 7) >= (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 7),-1 * (select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 7),(select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 7))) / (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 7) * 100,0)) AS `jul`, (select round((select if((select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 8) >= (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 8),-1 * (select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 8),(select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 8))) / (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 8) * 100,0)) AS `agust`, (select round((select if((select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 9) >= (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 9),-1 * (select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 9),(select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 9))) / (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 9) * 100,0)) AS `sept`, (select round((select if((select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 10) >= (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 10),-1 * (select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 10),(select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 10))) / (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 10) * 100,0)) AS `okt`, (select round((select if((select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 11) >= (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 11),-1 * (select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 11),(select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 11))) / (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 11) * 100,0)) AS `nov`, (select round((select if((select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 12) >= (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 12),-1 * (select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 12),(select coalesce(sum(`pelaporan_um`.`total_pelaporan`),0) from `pelaporan_um` where `pelaporan_um`.`program_id` = `tb_prog_detail`.`id` and `pelaporan_um`.`periode_tahun` = `tb_tahun`.`id` and `pelaporan_um`.`periode_bulan` = 12))) / (select coalesce(sum(`pengajuan_um`.`total_pengajuan`),0) from `pengajuan_um` where `pengajuan_um`.`program_id` = `tb_prog_detail`.`id` and `pengajuan_um`.`periode_tahun` = `tb_tahun`.`id` and `pengajuan_um`.`periode_bulan` = 12) * 100,0)) AS `des` FROM (((((`rab_component` left join `pelaporan_um` on(`pelaporan_um`.`program_id` = `rab_component`.`program_id`)) join `tb_prog_detail` on(`tb_prog_detail`.`id` = `rab_component`.`program_id`)) join `tb_tahun`) join `balancing`) join `pengajuan_um`) GROUP BY `tb_prog_detail`.`id`, `tb_prog_detail`.`kode_program`, `tb_tahun`.`tahun`  ;

-- --------------------------------------------------------

--
-- Structure for view `vrealisasimonthly`
--
DROP TABLE IF EXISTS `vrealisasimonthly`;

CREATE VIEW `vrealisasimonthly`  AS SELECT `rab_component`.`program_id` AS `program_id`, `rab_component`.`rab_master_component_id` AS `rab_master_component_id`, `rab_component`.`id` AS `id`, `rab_component`.`name` AS `name`, `pelaporan_um_detail`.`periode_tahun` AS `periode_tahun`, `pelaporan_um_detail`.`periode_bulan` AS `periode_bulan`, (select str_to_date(concat(`tb_tahun`.`tahun`,'-',if(octet_length(`pelaporan_um_detail`.`periode_bulan`) < 2,concat('0',`pelaporan_um_detail`.`periode_bulan`),`pelaporan_um_detail`.`periode_bulan`),'-01'),'%Y-%m-%d')) AS `periode`, `rab_component`.`total_cost` AS `rencana`, sum(distinct `pelaporan_um_detail`.`total_cost`) AS `realisasi`, (select if(sum(distinct `pelaporan_um_detail`.`total_cost`) <= `rab_component`.`total_cost`,sum(distinct `pelaporan_um_detail`.`total_cost`),-1 * sum(distinct `pelaporan_um_detail`.`total_cost`)) / (select coalesce(`rab_component`.`total_cost`,0)) * 100) AS `percentase` FROM (((`rab_master_component` join `rab_component` on(`rab_master_component`.`id` = `rab_component`.`rab_master_component_id` and `rab_master_component`.`program_id` = `rab_component`.`program_id`)) left join `pelaporan_um_detail` on(`rab_component`.`program_id` = `pelaporan_um_detail`.`program_id` and `rab_component`.`rab_master_component_id` = `pelaporan_um_detail`.`rab_master_component_id` and `rab_component`.`id` = `pelaporan_um_detail`.`rab_component_id`)) join `tb_tahun` on(`pelaporan_um_detail`.`periode_tahun` = `tb_tahun`.`id`)) GROUP BY `rab_component`.`program_id`, `rab_component`.`rab_master_component_id`, `rab_component`.`id`, `rab_component`.`name`, `pelaporan_um_detail`.`periode_tahun`, `pelaporan_um_detail`.`periode_bulan`;

-- --------------------------------------------------------

--
-- Structure for view `wilayah`
--
DROP TABLE IF EXISTS `wilayah`;

CREATE VIEW `wilayah`  AS SELECT `tb_propinsi`.`id` AS `ID`, `tb_propinsi`.`propinsi` AS `Propinsi`, `tb_kabupaten`.`Kabupaten` AS `Kabupeten`, `tb_kecamatan`.`Kecamatan` AS `Kecamatan`, `tb_kelurahan_desa`.`kelurahan/desa` AS `Kelurahan/Desa` FROM (((`tb_propinsi` join `tb_kabupaten` on(`tb_propinsi`.`id` = `tb_kabupaten`.`id_propinsi`)) join `tb_kecamatan` on(`tb_kabupaten`.`id` = `tb_kecamatan`.`id_kabupaten`)) join `tb_kelurahan_desa` on(`tb_kecamatan`.`id` = `tb_kelurahan_desa`.`id_kecamatan`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approve_pelaporan_um`
--
ALTER TABLE `approve_pelaporan_um`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `approve_pengajuan_kegiatan`
--
ALTER TABLE `approve_pengajuan_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approve_pengajuan_um`
--
ALTER TABLE `approve_pengajuan_um`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `audittrail`
--
ALTER TABLE `audittrail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `balancing`
--
ALTER TABLE `balancing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelaporan_um`
--
ALTER TABLE `pelaporan_um`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pelaporan_um_detail`
--
ALTER TABLE `pelaporan_um_detail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pengajuan_um`
--
ALTER TABLE `pengajuan_um`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pengajuan_um_detail`
--
ALTER TABLE `pengajuan_um_detail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pengajuan_um_payment`
--
ALTER TABLE `pengajuan_um_payment`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pengajuan_um_payment_confirmation`
--
ALTER TABLE `pengajuan_um_payment_confirmation`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rab_component`
--
ALTER TABLE `rab_component`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rab_item_component`
--
ALTER TABLE `rab_item_component`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rab_master_component`
--
ALTER TABLE `rab_master_component`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_akunbank`
--
ALTER TABLE `tb_akunbank`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_bulan`
--
ALTER TABLE `tb_bulan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_dokumen`
--
ALTER TABLE `tb_dokumen`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_dokumen_kategori`
--
ALTER TABLE `tb_dokumen_kategori`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_inventaris_barang`
--
ALTER TABLE `tb_inventaris_barang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_inventaris_kategori_barang`
--
ALTER TABLE `tb_inventaris_kategori_barang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_inventaris_ruangan`
--
ALTER TABLE `tb_inventaris_ruangan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_inventaris_subkat_barang`
--
ALTER TABLE `tb_inventaris_subkat_barang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_kabupaten`
--
ALTER TABLE `tb_kabupaten`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_kategori_kegiatan`
--
ALTER TABLE `tb_kategori_kegiatan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_kategori_kelompok`
--
ALTER TABLE `tb_kategori_kelompok`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_kategori_laporan`
--
ALTER TABLE `tb_kategori_laporan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_kategori_partisipan`
--
ALTER TABLE `tb_kategori_partisipan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_kelurahan_desa`
--
ALTER TABLE `tb_kelurahan_desa`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_ketergorisub_kegiatan`
--
ALTER TABLE `tb_ketergorisub_kegiatan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_laporan_kegiatan`
--
ALTER TABLE `tb_laporan_kegiatan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_laporan_keg_lampiran`
--
ALTER TABLE `tb_laporan_keg_lampiran`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_lembaga`
--
ALTER TABLE `tb_lembaga`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_lembaga_kategori`
--
ALTER TABLE `tb_lembaga_kategori`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_lembaga_kerjasama`
--
ALTER TABLE `tb_lembaga_kerjasama`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_negara`
--
ALTER TABLE `tb_negara`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_penerima_manfaat`
--
ALTER TABLE `tb_penerima_manfaat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_pengajuan_kegiatan`
--
ALTER TABLE `tb_pengajuan_kegiatan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_posisi_kerja`
--
ALTER TABLE `tb_posisi_kerja`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_prog_detail`
--
ALTER TABLE `tb_prog_detail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_prog_evaluasi`
--
ALTER TABLE `tb_prog_evaluasi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_prog_kategori_kegiatan`
--
ALTER TABLE `tb_prog_kategori_kegiatan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_prog_laporanfinal`
--
ALTER TABLE `tb_prog_laporanfinal`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_prog_lap_mingguan_bulanan`
--
ALTER TABLE `tb_prog_lap_mingguan_bulanan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_prog_rapat_nonaktivitas`
--
ALTER TABLE `tb_prog_rapat_nonaktivitas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_prog_staff`
--
ALTER TABLE `tb_prog_staff`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_prog_wilayahkerja`
--
ALTER TABLE `tb_prog_wilayahkerja`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_propinsi`
--
ALTER TABLE `tb_propinsi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_rapat_bulanan`
--
ALTER TABLE `tb_rapat_bulanan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_rapat_tahunan`
--
ALTER TABLE `tb_rapat_tahunan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_rencana_mitra_kegiatan`
--
ALTER TABLE `tb_rencana_mitra_kegiatan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_rencana_mitra_progres`
--
ALTER TABLE `tb_rencana_mitra_progres`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_satuan_unit`
--
ALTER TABLE `tb_satuan_unit`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_staff`
--
ALTER TABLE `tb_staff`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_surat_kategori`
--
ALTER TABLE `tb_surat_kategori`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_surat_keluar`
--
ALTER TABLE `tb_surat_keluar`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_tahun`
--
ALTER TABLE `tb_tahun`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_temanputer_detail`
--
ALTER TABLE `tb_temanputer_detail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_temanputer_lampiran`
--
ALTER TABLE `tb_temanputer_lampiran`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_temanputer_pengalamankerja`
--
ALTER TABLE `tb_temanputer_pengalamankerja`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_temanputer_skills`
--
ALTER TABLE `tb_temanputer_skills`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_termin_donor_detail`
--
ALTER TABLE `tb_termin_donor_detail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_termin_donor_master`
--
ALTER TABLE `tb_termin_donor_master`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `userlevelpermissions`
--
ALTER TABLE `userlevelpermissions`
  ADD PRIMARY KEY (`userlevelid`,`tablename`) USING BTREE;

--
-- Indexes for table `userlevels`
--
ALTER TABLE `userlevels`
  ADD PRIMARY KEY (`userlevelid`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `approve_pelaporan_um`
--
ALTER TABLE `approve_pelaporan_um`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `approve_pengajuan_kegiatan`
--
ALTER TABLE `approve_pengajuan_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `approve_pengajuan_um`
--
ALTER TABLE `approve_pengajuan_um`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `audittrail`
--
ALTER TABLE `audittrail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `balancing`
--
ALTER TABLE `balancing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelaporan_um`
--
ALTER TABLE `pelaporan_um`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelaporan_um_detail`
--
ALTER TABLE `pelaporan_um_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pengajuan_um`
--
ALTER TABLE `pengajuan_um`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengajuan_um_detail`
--
ALTER TABLE `pengajuan_um_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pengajuan_um_payment`
--
ALTER TABLE `pengajuan_um_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengajuan_um_payment_confirmation`
--
ALTER TABLE `pengajuan_um_payment_confirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rab_component`
--
ALTER TABLE `rab_component`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rab_item_component`
--
ALTER TABLE `rab_item_component`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rab_master_component`
--
ALTER TABLE `rab_master_component`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_akunbank`
--
ALTER TABLE `tb_akunbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_bulan`
--
ALTER TABLE `tb_bulan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_dokumen`
--
ALTER TABLE `tb_dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_dokumen_kategori`
--
ALTER TABLE `tb_dokumen_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_inventaris_barang`
--
ALTER TABLE `tb_inventaris_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_inventaris_kategori_barang`
--
ALTER TABLE `tb_inventaris_kategori_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_inventaris_ruangan`
--
ALTER TABLE `tb_inventaris_ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_inventaris_subkat_barang`
--
ALTER TABLE `tb_inventaris_subkat_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_kabupaten`
--
ALTER TABLE `tb_kabupaten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kategori_kegiatan`
--
ALTER TABLE `tb_kategori_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kategori_kelompok`
--
ALTER TABLE `tb_kategori_kelompok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kategori_laporan`
--
ALTER TABLE `tb_kategori_laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kategori_partisipan`
--
ALTER TABLE `tb_kategori_partisipan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_kelurahan_desa`
--
ALTER TABLE `tb_kelurahan_desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_ketergorisub_kegiatan`
--
ALTER TABLE `tb_ketergorisub_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_laporan_kegiatan`
--
ALTER TABLE `tb_laporan_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_laporan_keg_lampiran`
--
ALTER TABLE `tb_laporan_keg_lampiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_lembaga`
--
ALTER TABLE `tb_lembaga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_lembaga_kategori`
--
ALTER TABLE `tb_lembaga_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_lembaga_kerjasama`
--
ALTER TABLE `tb_lembaga_kerjasama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_negara`
--
ALTER TABLE `tb_negara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_penerima_manfaat`
--
ALTER TABLE `tb_penerima_manfaat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_pengajuan_kegiatan`
--
ALTER TABLE `tb_pengajuan_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_posisi_kerja`
--
ALTER TABLE `tb_posisi_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_prog_detail`
--
ALTER TABLE `tb_prog_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_prog_evaluasi`
--
ALTER TABLE `tb_prog_evaluasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_prog_kategori_kegiatan`
--
ALTER TABLE `tb_prog_kategori_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_prog_laporanfinal`
--
ALTER TABLE `tb_prog_laporanfinal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_prog_lap_mingguan_bulanan`
--
ALTER TABLE `tb_prog_lap_mingguan_bulanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_prog_rapat_nonaktivitas`
--
ALTER TABLE `tb_prog_rapat_nonaktivitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_prog_staff`
--
ALTER TABLE `tb_prog_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_prog_wilayahkerja`
--
ALTER TABLE `tb_prog_wilayahkerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_propinsi`
--
ALTER TABLE `tb_propinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `tb_rapat_bulanan`
--
ALTER TABLE `tb_rapat_bulanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_rapat_tahunan`
--
ALTER TABLE `tb_rapat_tahunan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_rencana_mitra_kegiatan`
--
ALTER TABLE `tb_rencana_mitra_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_rencana_mitra_progres`
--
ALTER TABLE `tb_rencana_mitra_progres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_satuan_unit`
--
ALTER TABLE `tb_satuan_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_staff`
--
ALTER TABLE `tb_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_surat_kategori`
--
ALTER TABLE `tb_surat_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_surat_keluar`
--
ALTER TABLE `tb_surat_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_tahun`
--
ALTER TABLE `tb_tahun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_temanputer_detail`
--
ALTER TABLE `tb_temanputer_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_temanputer_lampiran`
--
ALTER TABLE `tb_temanputer_lampiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_temanputer_pengalamankerja`
--
ALTER TABLE `tb_temanputer_pengalamankerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_temanputer_skills`
--
ALTER TABLE `tb_temanputer_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_termin_donor_detail`
--
ALTER TABLE `tb_termin_donor_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_termin_donor_master`
--
ALTER TABLE `tb_termin_donor_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `userlevelpermissions`
--
ALTER TABLE `userlevelpermissions`
  MODIFY `userlevelid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `userlevels`
--
ALTER TABLE `userlevels`
  MODIFY `userlevelid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



CREATE TABLE `pelaporan_um_external`
(
 `id` int
(11) NOT NULL AUTO_INCREMENT,
 `date` date NOT NULL,
 `program_id` int
(11) NOT NULL,
 `rab_master_component_id` int
(11) NOT NULL,
 `rab_component_id` int
(11) NOT NULL,
 `rab_item_component_id` int
(11) NOT NULL,
 `amount` int
(11) NOT NULL,
 `unit_id` int
(11) NOT NULL,
 `termin_cost` int
(11) NOT NULL,
 `unit_termin_id` int
(11) NOT NULL,
 `total_cost` int
(11) DEFAULT NULL,
 `cost` int
(11) NOT NULL,
 `attachment` text DEFAULT NULL,
 `description` text DEFAULT NULL,
 PRIMARY KEY
(`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC


CREATE TABLE `rab_component_external`
(
 `id` int
(11) NOT NULL AUTO_INCREMENT,
 `program_id` int
(11) NOT NULL,
 `rab_master_component_id` int
(11) NOT NULL,
 `name` varchar
(100) NOT NULL,
 `description` text DEFAULT NULL,
 `total_item` int
(11) DEFAULT NULL,
 `total_cost` int
(11) DEFAULT NULL,
 `created_at` datetime NOT NULL,
 `active` enum
('y','n') NOT NULL DEFAULT 'y',
 PRIMARY KEY
(`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC


CREATE TABLE `rab_item_component_external`
(
 `id` int
(11) NOT NULL AUTO_INCREMENT,
 `program_id` int
(11) NOT NULL,
 `rab_master_component_id` int
(11) NOT NULL,
 `rab_component_id` int
(11) NOT NULL,
 `name` varchar
(100) NOT NULL,
 `amount` int
(11) NOT NULL,
 `unit_id` int
(11) DEFAULT NULL,
 `termin_cost` int
(11) NOT NULL,
 `unit_termin_id` int
(11) DEFAULT NULL,
 `cost` int
(11) NOT NULL DEFAULT 0,
 `total_cost` int
(11) NOT NULL,
 `description` text DEFAULT NULL,
 `is_activity` tinyint
(1) NOT NULL,
 `created_at` datetime NOT NULL,
 `active` enum
('y','n') NOT NULL DEFAULT 'y',
 PRIMARY KEY
(`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC


CREATE TABLE `rab_master_component_external`
(
 `id` int
(11) NOT NULL AUTO_INCREMENT,
 `program_id` int
(11) NOT NULL,
 `name` varchar
(100) NOT NULL,
 `description` text DEFAULT NULL,
 `created_at` datetime DEFAULT NULL,
 `aktif` enum
('y','n') NOT NULL DEFAULT 'y',
 PRIMARY KEY
(`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC