-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2020 at 01:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `materialmasterdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `apo_snp_relevant`
--

CREATE TABLE `apo_snp_relevant` (
  `asr_id` int(11) NOT NULL,
  `apo_snp_relevant` varchar(15) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apo_snp_relevant`
--

INSERT INTO `apo_snp_relevant` (`asr_id`, `apo_snp_relevant`, `status`) VALUES
(1, 'YES', 1),
(2, 'NO', 1);

-- --------------------------------------------------------

--
-- Table structure for table `availability_check`
--

CREATE TABLE `availability_check` (
  `ac_id` int(11) NOT NULL,
  `vc_id` int(11) NOT NULL,
  `availability_check` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `availability_check`
--

INSERT INTO `availability_check` (`ac_id`, `vc_id`, `availability_check`, `status`) VALUES
(1, 1, 72, 1),
(2, 2, 72, 1),
(3, 3, 72, 1),
(4, 4, 72, 1),
(5, 5, 72, 1),
(6, 6, 75, 1),
(7, 7, 72, 1),
(8, 8, 72, 1),
(9, 9, 75, 1),
(10, 10, 72, 1),
(11, 11, 72, 1),
(12, 12, 72, 1),
(13, 13, 75, 1),
(14, 14, 72, 1),
(16, 16, 72, 1),
(17, 17, 72, 1),
(18, 18, 72, 1),
(19, 19, 72, 1),
(20, 20, 72, 1),
(21, 21, 72, 1),
(22, 22, 75, 1),
(23, 23, 72, 1),
(24, 24, 72, 1),
(25, 25, 75, 1),
(26, 26, 72, 1),
(27, 27, 72, 1),
(28, 28, 72, 1),
(29, 29, 75, 1),
(30, 30, 72, 1),
(31, 31, 72, 1),
(73, 73, 72, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bpv`
--

CREATE TABLE `bpv` (
  `bpv_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `bpv` varchar(25) NOT NULL,
  `keyvalue` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bpv`
--

INSERT INTO `bpv` (`bpv_id`, `org_id`, `bpv`, `keyvalue`) VALUES
(1, 1, 'Bond', 'bpv-IN01'),
(2, 1, 'UniqueHSS', 'bpv-IN01'),
(3, 1, 'Unique_InbondMTU', 'bpv-IN01'),
(4, 1, 'Merchandise', 'bpv-IN01'),
(5, 1, 'UniqueMTU', 'bpv-IN01'),
(6, 1, 'OMP', 'bpv-IN01'),
(7, 1, 'Packaging', 'bpv-IN01'),
(8, 1, 'RM', 'bpv-IN01'),
(9, 1, 'STO', 'bpv-IN01'),
(10, 1, 'Sample', 'bpv-IN01'),
(11, 2, 'Bond', 'bpv-IN0D'),
(12, 2, 'UniqueHSS', 'bpv-IN0D'),
(13, 2, 'Unique_InbondMTU', 'bpv-IN0D'),
(14, 2, 'Merchandise', 'bpv-IN0D'),
(15, 2, 'UniqueMTU', 'bpv-IN0D'),
(16, 2, 'OMP', 'bpv-IN0D'),
(17, 2, 'Packaging', 'bpv-IN0D'),
(18, 2, 'RM', 'bpv-IN0D'),
(19, 2, 'STO', 'bpv-IN0D'),
(20, 2, 'Sample', 'bpv-IN0D');

-- --------------------------------------------------------

--
-- Table structure for table `bu`
--

CREATE TABLE `bu` (
  `bu_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `bu` varchar(50) NOT NULL,
  `keyvalue` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bu`
--

INSERT INTO `bu` (`bu_id`, `org_id`, `bu`, `keyvalue`) VALUES
(1, 1, 'AP', 'bu_IN01'),
(2, 1, 'CC', 'bu_IN01'),
(3, 1, 'CI', 'bu_IN01'),
(4, 1, 'CM', 'bu_IN01'),
(5, 1, 'CP', 'bu_IN01'),
(6, 1, 'EB', 'bu_IN01'),
(7, 1, 'EC', 'bu_IN01'),
(8, 1, 'ED', 'bu_IN01'),
(9, 1, 'EM', 'bu_IN01'),
(10, 1, 'EN', 'bu_IN01'),
(11, 1, 'EV', 'bu_IN01'),
(12, 1, 'PM', 'bu_IN01'),
(13, 2, 'BCE', 'bu_IN0D');

-- --------------------------------------------------------

--
-- Table structure for table `consumption_mode`
--

CREATE TABLE `consumption_mode` (
  `cm_id` int(11) NOT NULL,
  `consumption_mode` varchar(40) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consumption_mode`
--

INSERT INTO `consumption_mode` (`cm_id`, `consumption_mode`, `status`) VALUES
(1, 'BACKWARD CONSUMPTION MODE', 1),
(2, 'BACKWARD/FORWARD CONSUMPTION MODE', 1),
(3, 'FORWARD CONSUMPTION ONLY', 1),
(4, 'FORWARD/BACKWARD CONSUMPTION ONLY', 1);

-- --------------------------------------------------------

--
-- Table structure for table `distributionchannel`
--

CREATE TABLE `distributionchannel` (
  `dc_id` int(11) NOT NULL,
  `bu_id` int(11) NOT NULL,
  `distributionchannel` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `distributionchannel`
--

INSERT INTO `distributionchannel` (`dc_id`, `bu_id`, `distributionchannel`, `status`) VALUES
(1, 1, 'AP OD AP CropProt', 1),
(2, 1, '01 BASF General Sales', 1),
(3, 1, '53 BASF Other Business', 1),
(4, 2, 'X3 BU G CCP w/o Metal', 1),
(5, 2, 'X7 BU G CCP', 1),
(6, 2, 'X9 BU G CCP', 1),
(7, 2, 'X1 BU G CCP w Metal', 1),
(8, 2, '01 BASF General Sales', 1),
(9, 2, '53 BASF Other Business', 1),
(10, 3, 'A3 OD A CZ Intermed', 1),
(11, 3, '01 BASF General Sales', 1),
(12, 3, '53 BASF Other Business', 1),
(13, 4, 'A0 BU A KUA Polyur', 1),
(14, 4, 'AE OD A CA Inorg', 1),
(15, 4, 'D2 BU A CPA Petroch', 1),
(16, 4, 'FB BU G KTI PolyIn', 1),
(17, 4, '01 BASF General Business', 1),
(18, 4, '53 BASF Other Business', 1),
(19, 5, 'D2 BU A CPA Petroch', 1),
(20, 5, '01 BASF General Sales', 1),
(21, 5, '53 BASF Other Business', 1),
(22, 6, 'W6 OD A EB Con Chem', 1),
(23, 6, '01 BASF General Sales', 1),
(24, 6, '53 BASF Other Business', 1),
(25, 7, 'EC OD EC Coatings', 1),
(26, 7, '01 BASF General Sales', 1),
(27, 7, '54 BASF Other Business', 1),
(28, 8, 'A5 BU A EDA Disp Pig', 1),
(29, 8, 'GE BU A EDA', 1),
(30, 8, '01 BASF General Sales', 1),
(31, 8, '53 BASF Other Business', 1),
(32, 9, '01 BASF General Sales', 1),
(33, 9, '53 BASF Other Business', 1),
(34, 10, 'A5 BU A EDA Disp Pig', 1),
(36, 10, 'VC OD EN Nut+Health', 1),
(37, 10, 'VF OD EM Care Chem', 1),
(38, 10, '01 BASF General Sales', 1),
(39, 10, '53 BASF Other Business', 1),
(40, 11, 'A6 BU EV6 PlastAdd', 1),
(41, 11, 'M6 BU EV5 Mining', 1),
(42, 11, 'O6 BU EV', 1),
(43, 11, 'YH BU EV3 Auto Ref', 1),
(44, 11, 'YJ BU G EVX Textile', 1),
(45, 11, 'YK BU G EVX Leather', 1),
(46, 11, 'J6 BU EV7 WaterSol', 1),
(47, 11, 'VB OD EP Paper Chem', 1),
(48, 11, '01 BASF General Sales', 1),
(49, 11, '53 BASF Other Business', 1),
(50, 12, 'A0 BU A KUA Polyur', 1),
(51, 12, 'A9 OD A KT PerfPoly', 1),
(52, 12, 'K9 BU G KT/s SpPl', 1),
(53, 12, '01 BASF General Sales', 1),
(54, 12, '53 BASF Other Business', 1),
(55, 13, 'T1', 1),
(56, 13, '01 BASF General Sales', 1),
(57, 13, '53 BASF Other Business', 1),
(58, 9, 'VF OD EM Care Chem', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `ic_id` int(11) NOT NULL,
  `bpv_id` int(11) NOT NULL,
  `item_category` varchar(15) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`ic_id`, `bpv_id`, `item_category`, `status`) VALUES
(1, 1, 'NORM', 1),
(2, 2, 'BANS', 1),
(3, 3, 'ZTRU', 1),
(4, 4, 'NORM', 1),
(5, 5, 'ZTRU', 1),
(6, 6, 'NORM', 1),
(7, 7, 'NORM', 1),
(8, 8, 'NORM', 1),
(9, 9, 'NORM', 1),
(10, 10, 'NORM', 1),
(11, 11, 'NORM', 1),
(12, 12, 'BANS', 1),
(13, 13, 'ZTRU', 1),
(14, 14, 'NORM', 1),
(15, 15, 'ZTRU', 1),
(16, 16, 'NORM', 1),
(17, 17, 'NORM', 1),
(18, 18, 'NORM', 1),
(19, 19, 'NORM', 1),
(20, 20, 'NORM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logindb`
--

CREATE TABLE `logindb` (
  `user_no` int(11) NOT NULL,
  `novelid` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logindb`
--

INSERT INTO `logindb` (`user_no`, `novelid`, `password`, `date_time`) VALUES
(0, 'root', 'root', '2020-01-16 14:15:10'),
(1, 'admin', 'admin', '2020-01-15 14:39:53'),
(2, 'AgrawalK', 'khushalA', '2020-01-16 11:28:45'),
(3, 'KaleP', 'purvak', '2020-01-15 16:18:00'),
(4, 'MisalP', 'misalp', '2020-01-15 16:18:00'),
(5, 'RahateM', 'monikaR', '2020-01-15 16:19:07'),
(6, 'user11', 'user11', '2020-01-15 16:20:17'),
(9, 'Adminid', 'Admin@123', '2020-01-16 14:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `lot_size`
--

CREATE TABLE `lot_size` (
  `lot_id` int(11) NOT NULL,
  `lot_size` varchar(12) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lot_size`
--

INSERT INTO `lot_size` (`lot_id`, `lot_size`, `status`) VALUES
(1, '10', 1),
(2, 'DY', 1),
(3, 'EX', 1),
(4, 'FS', 1),
(5, 'FX', 1),
(6, 'GR', 1),
(7, 'HB', 1),
(8, 'MB', 1),
(9, 'PB', 1),
(10, 'PK', 1),
(11, 'SP', 1),
(12, 'TB', 1),
(13, 'W2', 1),
(14, 'WB', 1),
(15, 'WI', 1),
(16, 'Y0', 1),
(17, 'Y1', 1),
(18, 'Y2', 1),
(19, 'Y3', 1),
(20, 'Y4', 1),
(21, 'Y5', 1),
(22, 'Y6', 1),
(23, 'Y7', 1),
(24, 'Y8', 1),
(25, 'Y9', 1),
(26, 'YA', 1),
(27, 'YB', 1),
(28, 'YC', 1),
(29, 'YD', 1),
(30, 'YE', 1),
(31, 'YF', 1),
(32, 'YG', 1),
(33, 'YH', 1),
(34, 'YI', 1),
(35, 'YJ', 1),
(36, 'YK', 1),
(37, 'YL', 1),
(38, 'YM', 1),
(39, 'YN', 1),
(40, 'YM', 1),
(41, 'YP', 1),
(42, 'YQ', 1),
(43, 'YZ', 1),
(44, 'Z1', 1),
(45, 'Z2', 1),
(46, 'Z3', 1),
(47, 'Z4', 1),
(48, 'Z5', 1),
(49, 'Z6', 1),
(50, 'Z7', 1),
(51, 'Z8', 1),
(52, 'Z9', 1),
(53, 'ZC', 1),
(54, 'ZD', 1),
(55, 'ZE', 1),
(56, 'ZF', 1),
(57, 'ZG', 1),
(58, 'ZH', 1),
(59, 'ZI', 1),
(60, 'ZJ', 1),
(61, 'ZK', 1),
(62, 'ZL', 1),
(63, 'ZM', 1),
(64, 'ZN', 1),
(65, 'ZO', 1),
(66, 'ZP', 1),
(67, 'ZQ', 1),
(68, 'ZR', 1),
(69, 'ZS', 1),
(70, 'ZT', 1),
(71, 'ZU', 1),
(72, 'ZW', 1),
(73, 'ZX', 1),
(74, 'ZY', 1),
(75, 'ZZ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `materialdata`
--

CREATE TABLE `materialdata` (
  `sr_no` int(11) NOT NULL,
  `org_code` varchar(11) NOT NULL,
  `material_number` bigint(18) NOT NULL,
  `material_description` varchar(30) DEFAULT NULL,
  `bu` varchar(30) NOT NULL,
  `bpv` varchar(30) NOT NULL,
  `plant` varchar(30) NOT NULL,
  `storage_location` varchar(30) NOT NULL,
  `distributionchannel` varchar(2) NOT NULL,
  `purchasing_grp` varchar(30) DEFAULT NULL,
  `ordering_unit` varchar(30) DEFAULT NULL,
  `tax_ind_f_material` varchar(30) DEFAULT NULL,
  `min_order_qty` varchar(30) NOT NULL,
  `min_dely_qty` varchar(30) NOT NULL,
  `delivery_unit` varchar(30) NOT NULL,
  `material_pricing_grp` varchar(30) DEFAULT NULL,
  `account_assign_grp` varchar(30) DEFAULT NULL,
  `item_category` varchar(30) DEFAULT NULL,
  `general_item_category_grp` varchar(30) DEFAULT NULL,
  `availability_check` varchar(30) DEFAULT NULL,
  `loading_grp` varchar(30) DEFAULT NULL,
  `chapter_id` varchar(30) NOT NULL,
  `valuationclass` varchar(30) NOT NULL,
  `costing_lot_size` varchar(30) NOT NULL,
  `standard_price` varchar(30) NOT NULL,
  `per_unit_price` varchar(30) NOT NULL,
  `mrp_group` varchar(50) DEFAULT NULL,
  `mrp_type` varchar(50) DEFAULT NULL,
  `mrp_controller` varchar(30) DEFAULT NULL,
  `lot_size` varchar(30) DEFAULT NULL,
  `procurementtype` varchar(30) DEFAULT NULL,
  `special_procurement` varchar(30) DEFAULT NULL,
  `scheduling_margin_key` varchar(30) DEFAULT NULL,
  `strategy_group` varchar(50) DEFAULT NULL,
  `consumption_mode` varchar(50) DEFAULT NULL,
  `fwd_consumption` varchar(30) DEFAULT NULL,
  `bwd_consumption` varchar(30) DEFAULT NULL,
  `planning_material` varchar(30) DEFAULT NULL,
  `planning_plant` varchar(30) DEFAULT NULL,
  `apo_snp_relevant` varchar(30) DEFAULT NULL,
  `snp_planner_code` varchar(30) DEFAULT NULL,
  `username` varchar(15) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `do_not_cost` tinyint(1) DEFAULT NULL,
  `novel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materialdata`
--

INSERT INTO `materialdata` (`sr_no`, `org_code`, `material_number`, `material_description`, `bu`, `bpv`, `plant`, `storage_location`, `distributionchannel`, `purchasing_grp`, `ordering_unit`, `tax_ind_f_material`, `min_order_qty`, `min_dely_qty`, `delivery_unit`, `material_pricing_grp`, `account_assign_grp`, `item_category`, `general_item_category_grp`, `availability_check`, `loading_grp`, `chapter_id`, `valuationclass`, `costing_lot_size`, `standard_price`, `per_unit_price`, `mrp_group`, `mrp_type`, `mrp_controller`, `lot_size`, `procurementtype`, `special_procurement`, `scheduling_margin_key`, `strategy_group`, `consumption_mode`, `fwd_consumption`, `bwd_consumption`, `planning_material`, `planning_plant`, `apo_snp_relevant`, `snp_planner_code`, `username`, `date_time`, `do_not_cost`, `novel_id`) VALUES
(1, '1', 454135435, 'some item', 'AP', 'Packaging', 'Select Plant', 'Select Storage Locat', 'Se', 'Se', 'Select Ordering Unit', 'qw3ert', '12345kg', '6789kg', '87543kg', 'Select Material Pric', 'Select Account Assig', 'qewqe', 'fdg', 'vcbvcbvcb', 'hgfhf', '15435435365653653', 'Select Valuation Cla', 'wqetwert', 'fsgfdgf', 'gfdgfdgfd', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controlle', 'Select Lot Size', 'Select Procurement T', 'thtgs', 'dghfdg', 'Select Strategy Grou', 'Select Consumption M', 'tytgsrte', 'gstrgrtg', 'grdgrg', 'rgrg', 'Select APO/SNP', 'Select SNP Planner C', '', '2020-01-15 14:40:56', NULL, 2),
(2, '1', 123456789, 'items', 'Select BU', 'Select BPV', 'Select Plant', 'Select Storage Locat', 'Se', 'Se', 'Select Ordering Unit', 'qwew', '100kg', '10000kg', '100000kg', 'Select Material Pric', 'Select Account Assig', 'qewqe', 'erewre', 'fsdsdd', 'ffdgfdgfd', '987654321', 'Select Valuation Cla', 'lkjh', 'gfdsa', 'zxcxvc', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controlle', 'Select Lot Size', 'Select Procurement T', 'mnbcv', 'ljkhjg', 'Select Strategy Grou', 'Select Consumption M', 'poiuyt', 'trewq', 'asdfg', 'lkhjkhjk', 'Select APO/SNP', 'Select SNP Planner C', '', '2020-01-15 14:57:11', NULL, 3),
(3, '2', 123456899, 'docmunet', 'BCE', 'Unique_InbondMTU', 'Select Plant', 'Select Storage Locat', 'Se', 'Se', 'Select Ordering Unit', 'rtrtt', '3656546546', '565465', '465465465', 'Select Material Pric', 'Select Account Assig', '5rdrgsdfgfd', 'gfdgfdg', 'gfdgfdg', 'fdgfgfd', '654672575672467', 'Select Valuation Cla', 'grgdsg', 'rgrgrg', 'rgrgrsg', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controlle', 'Select Lot Size', 'Select Procurement T', 'rgregreg', 'regrefgr', 'Select Strategy Grou', 'Select Consumption M', 'rgregsrdg', 'rgrgrg', 'rgrgr', 'grsegrseg', 'Select APO/SNP', 'Select SNP Planner C', '', '2020-01-15 16:08:07', NULL, 1),
(4, '1', 987654321, 'butane', 'CM', 'UniqueMTU', 'Select Plant', 'Select Storage Locat', 'Se', 'Se', 'Select Ordering Unit', 'rtrtrt', '1000KG', '1122KG', '998877', 'Select Material Pric', 'Select Account Assig', 'itemcat', 'genralitem', 'availcheck', 'loadgrp', '12345675', 'Select Valuation Cla', 'KG', '120RS', '1200', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controlle', 'Select Lot Size', 'Select Procurement T', 'splprocument', 'marginkey', 'Select Strategy Grou', 'Select Consumption M', 'fwdconsump', 'bwdconsump', 'planningmateri', 'planning p', 'Select APO/SNP', 'Select SNP Planner C', '', '2020-01-15 16:23:21', NULL, 2),
(6, '1', 2147483647, 'nonene', 'AP', 'UniqueMTU', 'Select Plant', 'Select Storage Locat', 'Se', 'Se', 'Select Ordering Unit', 'rtretrt', '6362', '6565656', '5656546', 'Select Material Pric', 'Select Account Assig', 'trtrt', 'rgfdgf', 'gfvcv', 'cxcbc', '46326236356', 'Select Valuation Cla', 'etetret', 'retret', 'retretr', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controlle', 'Select Lot Size', 'Select Procurement T', 'fdgfdgfdg', 'fdgfdgfdg', 'Select Strategy Grou', 'Select Consumption M', 'fdgfdgfd', 'gfdg', 'fdgfdgfdg', 'fdgfdgfdg', 'Select APO/SNP', 'Select SNP Planner C', '', '2020-01-15 16:49:16', NULL, 1),
(10, '2', 636356536, 'iso_butane', 'BCE', 'RM', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'cgst', '1000.00KG', '1000.00KG', '1000.00KG', 'Select Material Pricing G', 'Select Account Assignment', 'itemcat', 'gencat', 'check', 'loadgrp', '653653656', 'Select Valuation Class', 'lss', '100/KG', '15/G', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controlle', 'Select Lot Size', 'Select Procurement T', 'splproc', 'key', 'Select Strategy Grou', 'Select Consumption M', 'tytry', 'tryteyt', 'ytdgfd', 'gxfcgx', 'Select APO/SNP', 'Select SNP Planner Code', '', '2020-01-16 10:03:23', NULL, 1),
(13, '1', 98765432, 'ethane', 'AP', 'Bond', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'gst', '1000.00kg', '1000.00kg', '1000.00kg', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'item_cat', 'gen_cat', 'avail.check', 'load-grp', '987563214', 'Select Valuation Class', 'LSS', '1000/KG', '107/G', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'Select Procurement Type', 'spl_procument', 'margin.key', 'Select Strategy Group', 'Select Consumption Mode', 'fwdconsum', 'bwdconsum', 'planningm', 'planningp', 'Select APO/SNP', 'Select SNP Planner Code', '', '2020-01-16 11:10:44', NULL, 1),
(14, '2', 32165487, 'Pentane', 'BCE', 'Sample', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'sgst', '100.00KG', '100.00KG', '100.00KG', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'item_cat', 'gen.item.cat', 'avail-check', 'yes', '87652341', 'Select Valuation Class', 'XL', '1000/kG', '123/KG', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'Select Procurement Type', 'spl_procument', 'margin-key', 'Select Strategy Group', 'Select Consumption Mode', 'fwd-consum', 'bwdconsum', 'materialp', 'plannip', 'Select APO/SNP', 'Select SNP Planner Code', '', '2020-01-16 11:23:00', NULL, 1),
(16, '1', 2147483647, 'ethane', 'CC', 'UniqueMTU', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'sdfgg', '535674265', '76765767', '6767', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'hthd', 'hgfhgfh', 'ghgfh', 'ghghfgd', '654677657657', 'Select Valuation Class', 'gfdgfdg', 'fdgfdg', 'fdvfvc', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'gtgd', 'gfdgfdg', 'fdgfdfdv', 'Select Strategy Group', 'Select Consumption Mode', 'gfdgfdg', 'fdgfdg', 'gfdgfdg', 'gfdgd', 'Select APO/SNP', 'Select SNP Planner Code', '', '2020-01-16 11:53:05', NULL, 1),
(17, '1', 2147483647, 'butane-isocynide', 'CC', 'Packaging', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'fgfdgf', '565653', '656565', '656565', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'tegrg', 'fdgfdg', 'fdgfdvfc', 'vc v', '43653653656', 'Select Valuation Class', 'rtretret', 'retretre', 'tgfdg', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'rgfdg', 'fdgfdg', 'fdgfdgfdg', 'Select Strategy Group', 'Select Consumption Mode', 'gfdgfdgfd', 'gfdgfdg', 'fdgfdgf', 'dgfdg', 'Select APO/SNP', 'Select SNP Planner Code', '', '2020-01-16 11:55:03', NULL, 1),
(18, '2', 2147483647, 'metyl-iso-cynade', 'BCE', 'Sample', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'fgsfgfdg', '56546546', '56546', '56546546', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'regfdgfd', 'gfdgfdg', 'fdgfdgfd', 'gfdgfdgf', '33625365365', 'Select Valuation Class', 'gtgdg', 'fdgfd', 'gfdgfdgfd', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'dgsgfd', 'gfdgfd', 'gfdgfdgf', 'Select Strategy Group', 'Select Consumption Mode', 'fdgfdgfdg', 'fdgfdg', 'fdgfdg', 'fdgfdg', 'Select APO/SNP', 'Select SNP Planner Code', '', '2020-01-16 11:58:02', NULL, 4),
(19, '2', 2147483647, 'methyl-isocynade', 'BCE', 'UniqueHSS', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'rgrgd', '565465', '46546', '6546546', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'rgrg', 'fgfdgfdg', 'fdgfdgfd', 'gfdgfdgfdg', '565465465', 'Select Valuation Class', 'tgfdg', 'fgfdgfd', 'gfdgfdg', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'rgregregreg', 'fdg6htey', 'ty56tygtdg', 'Select Strategy Group', 'Select Consumption Mode', 'hthth', 'ghgh', 'ghghg', 'fhgfhg', 'Select APO/SNP', 'Select SNP Planner Code', '', '2020-01-16 11:59:41', NULL, 1),
(20, '1', 2147483647, 'methane-butane', 'CC', 'Merchandise', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'gfdg', '56546546', '5546546', '7467347', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'ttesgr', 'dgfdgfdg', 'fdgfdg', 'gfdgfd', '5467564747', 'Select Valuation Class', 'tgdf', 'gfdgfdg', 'fdgfdgfd', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', '54y54y', 'tregdg', 'dfgfdgd', 'Select Strategy Group', 'Select Consumption Mode', 'dgdfg', 'fdgfdgfd', 'gfdgf', 'dgfdgfd', 'Select APO/SNP', 'Select SNP Planner Code', '', '2020-01-16 12:00:47', NULL, 1),
(21, '1', 2147483647, 'twretrwet', 'AP', 'Bond', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'gffdgf', '6236536', '56253656', '5365236', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'dgfdsg', 'fdgfdgf', 'dgfdgfdg', 'fgfgfdg', '3635536536', 'Select Valuation Class', 'gfdg', 'fdgfd', 'gfdgfdg', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'dfgfdgfd', 'gfsdgsd', 'gsfdgfdgfd', 'Select Strategy Group', 'Select Consumption Mode', 'gfdffg', 'gdgfdfd', 'fdfdfd', 'fghfgdhgdh', 'Select APO/SNP', 'Select SNP Planner Code', '', '2020-01-16 12:35:17', NULL, 5),
(22, '1', 2147483647, 'rdgrdgdg', 'AP', 'Unique_InbondMTU', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'rgrgrg', '362536536', '5656536', '2562566', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'dgsdfg', 'fdgfdg', 'fdgfdg', 'fdgfdgf', '9846857685', 'Select Valuation Class', 'gfhh', 'hghghgh', 'ghgfhgf', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'gfhgfhgh', 'ghghg', 'hgfhgh', 'Select Strategy Group', 'Select Consumption Mode', 'gfhgfhgf', 'hgfhgf', 'hfghgfhg', 'fhgfhf', 'Select APO/SNP', 'Select SNP Planner Code', '', '2020-01-16 12:36:39', NULL, 1),
(23, '1', 97654334, 'heptane', 'ED', 'Packaging', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'sgst', '1000.00kg', '100000.00kg', '100000.00kg', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'category', 'general', 'availability', 'loading', '98769876', 'Select Valuation Class', 'xls', '100/l', '10009/l', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'rsgrg', 'regr', 'gretgretr', 'Select Strategy Group', 'Select Consumption Mode', 'retret', 'retretre', 'tretret', 'rfgrertsre', 'Select APO/SNP', 'Select SNP Planner Code', '', '2020-01-16 12:39:02', NULL, 6),
(24, '1', 1234567890, 'hexane', 'EV', 'OMP', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'sgst', '100.000KG', '100.00KG', '123.00KG', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'item_cat', 'gen_item_cat', 'Avail.check', 'Load_grp', '98761234', 'Select Valuation Class', 'L', '100.9/KG', '67.87/L', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'procurement type', 'spl prc', 'margin key', 'Select Strategy Group', 'Select Consumption Mode', 'fwd con', 'bwd con', 'plan', 'goa plan', 'Select APO/SNP', 'Select SNP Planner Code', '', '2020-01-16 14:24:15', NULL, 9),
(25, '1', 2147483647, 'resource', 'PM', 'STO', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'GST', '123.45KG', '56.789KG', '1234.76KG', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'ITEM_CATEGORY', 'Gen-item.cat', 'avail.check', 'Load.grp', '7654389999', 'Select Valuation Class', 'L', '10000/L', '109/L', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'Procurement', 'specialP', 'Margin.k', 'Select Strategy Group', 'Select Consumption Mode', 'fwdconsu', 'bwdconsum', 'planM', 'planP', 'Select APO/SNP', 'Select SNP Planner Code', '', '2020-01-16 14:59:19', NULL, 1),
(26, '1', 123459876, 'resurces', 'AP', 'UniqueHSS', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'sfdfgdg', '6546463', '56546546', '546546546', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'ghfgdfg', 'ffg', 'fgfdgfdg', 'fdgfdgfdgfd', '654625756565', 'Select Valuation Class', 'rtretrettt', 'rtdtrtre', 'tretretre', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'rtretre', 'tretretre', 'tretretret', 'Select Strategy Group', 'Select Consumption Mode', 'retret', 'retretre', 'tretret', 'retretre', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-16 15:49:50', NULL, 1),
(27, '1', 74736767, 'polyamide', 'CC', 'UniqueMTU', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'gst', '43634636', '636356', '536536536', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'sgsfdgfd', 'gfdgfd', 'gfdgfdg', 'fdgfdgfdg', '346575725426', 'Select Valuation Class', 'dgdgd', 'fgfdg', 'fdgfdgfd', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'retst', 'gfdgfdg', 'fdgfdgf', 'Select Strategy Group', 'Select Consumption Mode', 'gfdgfd', 'gfdg', 'fdgfdgfdg', 'fdgfdg', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-16 17:01:00', NULL, 1),
(28, '1', 247467647, 'rthrthr', 'AP', 'Unique_InbondMTU', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'thrth', '4674276', '87686', '4346', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'dfgfg', 'fffdgdfgdg', 'fffdgdg', 'fgfdgfdg', '5237467654', 'Select Valuation Class', 'tdyhtfh', 'tfhtfht', 'htrhtrh', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'htrhtrht', 'rthrthrt', 'htrhtrh', 'Select Strategy Group', 'Select Consumption Mode', 'yhyfhfy', 'hfyh', 'fghfgh', 'gfhgfh', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-16 17:24:20', NULL, 0),
(29, '2', 2147483647, 'rfrf', 'BCE', 'Sample', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'tretret', '53646', '75656', '4635235', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'gfdg', 'gfdgfdgd', 'gfdgfdgfdg', 'fdgfdg', '4565623545', 'Select Valuation Class', 'gfdgfd', 'gfdg', 'fdgfdgfdg', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'gfdgfd', 'gfdgfdg', 'fdvfdvf', 'Select Strategy Group', 'Select Consumption Mode', 'gfdgfd', 'gfdgfdg', 'fdgfdg', 'fdgfdg', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-16 17:25:06', NULL, 0),
(30, '1', 45625656546546, 'tyte', 'AP', 'Merchandise', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'trytry', '4767637', '7876878', '241342', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'tyry', 'ytyt', 'ytytry', 'tytry', '56547467647', 'Select Valuation Class', 'hhf', 'hgfhgh', 'ghghgfh', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'oytiyuiyu', 'hgjghjh', 'tyrtey', 'Select Strategy Group', 'Select Consumption Mode', 'ertert', 'tretretr', 'ergdfgfdg', 'fvfcvx', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-16 18:19:02', NULL, 0),
(31, '1', 433462356, 'reerf', 'CI', 'UniqueHSS', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'retertf', '356365246', '6463462', '4364364', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'regrege', 'ergreg', 'rerefe', 'rgregeg', '665465465', 'Select Valuation Class', 'rgregreg', 'regerg', 'regergerg', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'gergerg', 'gregerg', 'gregreg', 'Select Strategy Group', 'Select Consumption Mode', 'gergerg', 'fdvdfvfd', 'vcvfdvfd', 'fgvfdgd', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-16 23:49:15', NULL, 0),
(32, '1', 3242354355, 'destination', 'CC', 'UniqueHSS', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'hgsdh', '6536546', '565656', '546546', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'fdgfdg', 'fdgfdgfd', 'gfdgfdg', 'fdgfdgfd', '535656536', 'Select Valuation Class', 'dttyt', 'ytgfdg', 'fdbgfg', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'gdhfgdh', 'ghgfhgfh', 'hghgfh', 'Select Strategy Group', 'Select Consumption Mode', 'tryrtyrt', 'yytrhh', 'ghfhfgh', 'hgfhfgh', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-17 12:06:37', NULL, 0),
(33, '2', 5362664563, 'data', 'BCE', 'Unique_InbondMTU', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'rgsdf', '467467', '676576', '57657', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'wqrtwrt', 'sdafdsf', 'xcvzxcv', 'kjhlhkj', '436746746', 'Select Valuation Class', 'rwetre', 'fgsdgfdg', 'fdgfg', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'rtretrf', 'sdgfgf', 'gfdgfdg', 'Select Strategy Group', 'Select Consumption Mode', 'fdgfdg', 'fdgfdg', 'fdgfdgfd', 'gfdgdg', 'Select APO/SNP', 'Select SNP Planner Code', 'MisalP', '2020-01-17 12:12:45', NULL, 0),
(34, '1', 656546546, 'product', 'CM', 'Unique_InbondMTU', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'fdgsfdg', '56546546', '6546546', '6765756756', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'ghfdfd', 'gfdgfdgfdg', 'fdgfdgfdg', 'fxvgfdg', '5435435243', 'Select Valuation Class', 'settt', 'retrtr', 'trtr', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'fgfgfdg', 'fdgfdgf', 'fdgfdg', 'Select Strategy Group', 'Select Consumption Mode', 'rgrgfd', 'gfdgfdg', 'gfdgfd', 'gfdgd', 'Select APO/SNP', 'Select SNP Planner Code', '', '2020-01-17 16:01:00', NULL, 0),
(35, '2', 2541514545, 'ere', 'BCE', 'Sample', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'fefdfdsfsd', '136536', '536536', '536536', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'sdfdsf', 'rtyuru', 'cvbvcn', 'rihkhj', '768457462', 'Select Valuation Class', 'dfgfdg', 'fdgfdg', 'gfdgfdg', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'regreg', 'rgrgrg', 'rgregsr', 'Select Strategy Group', 'Select Consumption Mode', 'grgg', 'gg', 'gg', 'gdfgfdg', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-17 16:02:44', NULL, 0),
(36, '2', 4524154252, 'rthtrg', 'BCE', 'Unique_InbondMTU', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'trtrgr', '43t34t43t', '435345345', '7657657fdg', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'fdgdfg', 'reggtre', 'rgregr', 'regerg', '2542353452345', 'Select Valuation Class', 'fgvfv', 'rfgvrfv', 'refrefre', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'rfgrgrweg', 'gergreg', 'gergreg', 'Select Strategy Group', 'Select Consumption Mode', 'ergerg', 'gergergreg', 'gregerg', 'rgregreg', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-21 10:24:18', NULL, 0),
(37, '2', 4354236346364, 'tgsteg', 'BCE', 'Sample', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'trwtrwt', '542542542', '545425', '5452512', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'fsfasdf', 'ddfdsafdsf', 'dsfdsfsdf', 'dfdsfdsfa', '5234542352345', 'Select Valuation Class', 'rfref', 'rgfrg', 'grewgrwegew', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'ewgfweg', 'ewrgregg', 'rgrgwrg', 'Select Strategy Group', 'Select Consumption Mode', 'fwefwe', 'efewf', 'fefefe', 'fewffwef', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-21 11:04:53', NULL, 0),
(38, '1', 42354325, 'propane', 'CM', 'Select BPV', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'dsfdsfds', '32423432', '5657657', '8785764', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'regreg', 'rgrgrg', 'regrgr', 'rgrgrg', '565465367', 'Select Valuation Class', 'gregrg', 'rgreg', 'rgreg', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'EFDG', 'r42r54r', '001', 'Select Strategy Group', 'Select Consumption Mode', 'sdvsd', 'vvdsv', 'vdsvsda', 'vdvdsv', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-23 10:59:41', NULL, 0),
(39, '1', 23454125, 'butane', 'AP', 'Unique_InbondMTU', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'rgfregfresf', '4234234', '56546756', '767657', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'ewewrfsdf', 'rfreferf', 'tgtergre', 'ergrgfr', '435435435435', 'Select Valuation Class', 'rregregr', 'rgrgf', 'grgrgrgr', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'EanfF', 'erfewf', 'errefrsc', 'Select Strategy Group', 'Select Consumption Mode', 'erfrfvr', 'vrvrv', 'rvrvrr', 'vrvrv', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-23 14:20:42', NULL, 0),
(40, '2', 45423523443, 'butane', 'BCE', 'Sample', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'tgrestgfserf', '53462536', '6565464', '656565', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'regregr', 'grgresgr', 'gergergfe', 'gregregre', '5435432643634', 'Select Valuation Class', 'bfdszvdf', 'bfdbfdb', 'fdbfdbfb', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'sdvsdvvfdvdvd', 'vfvfdv', 'fdfvf', 'Select Strategy Group', 'Select Consumption Mode', 'consumption', 'fwdandbwd', 'plllmm', 'pllpp', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-23 14:23:47', NULL, 0),
(41, '1', 334562435, 'rwetfewr', 'CC', 'UniqueHSS', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'rwferwf', '52454325345', '454353454', '43252455', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'ersger', 'gregsergr', 'grseergrg', 'gtrgtrgtgrt', '5256256565656', 'Select Valuation Class', 'tgtgtgdt', 'tgrdgrgfr', 'grgrdgrgf', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'rfrfrfrfr', 'rffvrvgrfvr', 'rvgrgvrfvg', 'Select Strategy Group', 'Select Consumption Mode', 'dfvfdvfdvfd', 'vfvdfvfdvdf', 'vfvfvfdvfdvfdv', 'vfdvfdvfdvfdv', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-27 09:18:09', NULL, 0),
(42, '1', 42543543534, 'trtgtrgrtg', 'CM', 'Sample', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'regtesrsgter', '65365236256', '6546546456546', '565656565656', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'ertretr', 'teertret', 'dgdtgfgf', 'cvbvbvnvn', '5435443544', 'Select Valuation Class', 'gtgytdgtg', 'tgtgtghtfhdth', 'hthththdthdth', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'thththththt', 'htrtrdhtrhh', 'htrhdhdhhyh', 'Select Strategy Group', 'Select Consumption Mode', 'trytrytry', 'trytrytry', 'tytyeytyt', 'ytyrtytytry', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-27 09:21:22', NULL, 0),
(43, '1', 245251455, 'ffrfrefr', 'CC', 'OMP', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'rfrefrf', '434342355', '4334555435', '4353w363', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'trbytryty', 'fdgffhf', 'hyythtyhgh', 'hgfhfghgfh', '474767764767', 'Select Valuation Class', 'fgfhhtyhtr', 'yrrtytrytry', 'trytytrytryr', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'rtyrtytee', 'ytrytrytry', 'rtyeyttryt', 'Select Strategy Group', 'Select Consumption Mode', 'tytryrtyty', 'tytytryty', 'fgffhd', 'fggfhgf', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-27 09:23:26', NULL, 0),
(44, '1', 454322354325, 'pentane', 'EN', 'Packaging', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'rwefewfe', '32524353325', '4545453543', '343454354', 'Select Material Pricing Group', 'Select Account Assignment Grou', 'rfgrgreg', 'gregggg', 'vbcbbcvb', 'ioytiy', '875643210', 'Select Valuation Class', 'fgfsdg', 'fdgfdgfg', 'etgtegtg', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'tgtgge', 'gtgtg', 'fdfdgvfd', 'Select Strategy Group', 'Select Consumption Mode', 'iyuityuy', 'ytytrey', 'trytryer', 'ytrytryt', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-27 09:29:28', NULL, 0),
(45, '1', 231124352345, 'methamane', 'EC', 'UniqueMTU', 'Select Plant', 'Select Storage Location', 'Se', 'Select Purchasing Group', 'Select Ordering Unit', 'erwqrew', '34321432er', 'rewrewr', '42355445', 'Select Material Pricing Group', 'Select Account Assignment Grou', '44545grege', 'asdfgh', 'zxcvb', 'lkjggf', '345646563', 'Select Valuation Class', 'rfrewtr', 'sdfsdgsdg', 'xbxvcbvbvc', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'Select Lot Size', 'iuotyitu', 'jhgjhdj', 'ghgbgbgd', 'Select Strategy Group', 'Select Consumption Mode', 'frefefffrfrf', 'rfrefer', 'rfrfref', 'jhjythrhyr', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-27 09:32:10', NULL, 0),
(46, '1', 432141324, 'pentane', '2', '4', '1', 'select storage', '5', 'Select Purchasing Group', 'Select Ordering Unit', 'fewfed', '2354235435', '454545', '4542352345', '7A', '01', 'fsfsfr', 'fffewfe', 'Availability Check', 'fsdfsdf', '5425243534', 'Select Valuation class', 'ffewfa', 'ferwfewf', 'freferfwerw', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', NULL, '1', 'dasfewfa', '001', 'Select Strategy Group', 'Select Consumption Mode', 'fwerfwef', 'rewfwerf', 'efwefw', 'fewfewf', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-27 16:28:58', NULL, 0),
(47, '1', 9234567712, 'butane', '4', '4', '6', '18', '15', 'Select Purchasing Group', 'Select Ordering Unit', 'SGST', '1000.00KG', '1000.00KG', '1000.00KG', '7A', '01', 'Category', 'general', 'Availability Check', 'loading', '76243545435435', 'Select Valuation class', 'costing', 'standard', 'per unit price', 'Select MRP Group', 'Select MRP Type', 'Select MRP Controller', 'LOT Size', 'Select Procurement Type', 'spl procument', '001', 'Select Strategy Group', 'Select Consumption Mode', 'fwd', 'bws', 'planning', 'plant', 'Select APO/SNP', 'Select SNP Planner Code', 'admin', '2020-01-28 01:58:47', NULL, 0),
(48, '1', 987034567, '', '7', '1', '1', '2', '25', 'Select Purchasing Group', '3', 'GST', '100000000', '1000000000', '234567', '7A', '01', '1', 'general', 'Availability Check', '7001', '6543219876', '1', '100', '1000', '1000', 'Select MRP Group', 'Select MRP Type', 'ewfewf', 'LOT Size', '1', 'wregfwergf', '001', '1', '2', 'regfregf', 'gergreg', 'gregreg', 'gergreg', 'NO', 'Select SNP Planner Code', 'admin', '2020-01-28 05:59:47', NULL, 0),
(49, '1', 9870665433, 'butane', '6', '2', '3', '9', '22', 'Select Purchasing Group', '3', 'GST', '100000', '10000', '10000', '7A', '01', '2', 'rgrg', 'Availability Check', '7001', '43623566', '2', '100', 'fsfdsrgf', 'gsdfgdfg', 'Select MRP Group', 'Select MRP Type', 'wrefrwgf', 'LOT Size', '2', 'fgfdsvfsdv', '001', 'XB', 'BACKWARD CONSUMPTION MODE', 'fvfdsvdsfv', 'vffdvdsfv', 'vfdvdfsv', 'vfdsvfdsvfd', NULL, 'Select SNP Planner Code', 'admin', '2020-01-28 07:14:24', NULL, 0),
(50, '1', 653635654654, 'grdgdf', '5', '10', '18', '45', '19', 'Select Purchasing Group', '3', 'fdfd', '64365546', '7686785', '1243413', '7A', '01', '10', 'erweewe', 'Availability Check', '7001', '4543543543543', '13', '100', '100000', '100000', 'Select MRP Group', 'Select MRP Type', 'rfegfrc', 'LOT Size', '13', 'dscdscdsc', '001', 'XB', 'BACKWARD/FORWARD CONSUMPTION M', 'ccsfvsdvcsda', 'dcsdcdsc', 'dscdscd', 'ddscdscds', NULL, 'Select SNP Planner Code', 'admin', '2020-01-28 07:19:36', NULL, 0),
(51, '1', 3453454325435, '', '7', '4', '6', '18', '25', 'Select Purchasing Group', '2', '', '96967856', '7657567', '324432432', '7A', '01', '4', '', 'Availability Check', '7001', '123456789', '4', '100', '1234', '4567', 'Select MRP Group', 'Select MRP Type', 'admin', 'LOT Size', '4', '', '001', 'XB', 'FORWARD/BACKWARD CONSUMPTION O', '', '', '', '', 'YES', 'Select SNP Planner Code', 'admin', '2020-01-29 15:35:53', NULL, 0),
(52, '1', 324235235465, 'butane', '6', '3', '4', '15', '22', 'Select Purchasing Group', '2', 'SGST', '52346534', '565654', '56546456', '7A', '01', '3', 'rdgfrdgtr', '3', '7001', '564567547543', '3', '100', '100', '1000', 'ZEPA  A_EPA  Accelerator SNP M', 'Z2 BASANT mat.tech no prog.', 'tgtget', NULL, '3', 'egetgerre', '001', 'XB', 'BACKWARD/FORWARD CONSUMPTION M', 'trfget', 'getgerg', '', '', 'NO', 'Select SNP Planner Code', 'admin', '2020-01-29 20:05:13', NULL, 0),
(53, '2', 56465476757656, 'propane', '13', '11', '20', '48', '55', 'Select Purchasing Group', '3', 'GST', '5435435', '43543545', '5676665', '7A', '01', '11', 'rfrfre', '17', '7001', '86586574653', '17', '100', '1000', '1000', 'ZEPA  A_EPA  Accelerator SNP MRP Group', 'Z9 MRP(Strategy Requirement Ty)', 'ewrewrewr', NULL, '17', '3243243', '001', 'XL', 'FORWARD/BACKWARD CONSUMPTION ONLY', 'ewfewf', 'ewrewrw', '', '', 'NO', 'Select SNP Planner Code', 'admin', '2020-01-29 20:13:32', NULL, 0),
(54, '1', 434341344, 'rgergfre', '5', '3', '5', '17', '19', 'Select Purchasing Group', '1', 'rfwefacd', '34243513245', '45435435', '435345435', '7A', '01', '3', 'fsefsdfd', '3', '7001', '4543534252435', '3', '100', '7867876', '867867', 'ZEPA  A_EPA  Accelerator SNP MRP Group', 'X2', 'gfgffg', 'FS', '3', 'fdgvsdfgvdf', '001', 'XB', 'BACKWARD CONSUMPTION MODE', 'fdvfdv', 'fdvfdv', 'fdvfdvfdv', 'fdvfdvf', 'YES', 'Select SNP Planner Code', 'admin', '2020-03-05 00:37:21', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mrp_group`
--

CREATE TABLE `mrp_group` (
  `mrpg_id` int(11) NOT NULL,
  `mrp_group` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mrp_group`
--

INSERT INTO `mrp_group` (`mrpg_id`, `mrp_group`, `status`) VALUES
(1, '0001 General MRP Group ', 1),
(2, '0002 Group for consuming planning materials', 1),
(3, 'ZEDA  A_EDA  Accelerator SNP MRP Group', 1),
(4, 'ZEPA  A_EPA  Accelerator SNP MRP Group', 1),
(5, 'ZEVP A_EVP  Accelerator SNP MRP Group', 1),
(6, 'ZEVX G_EVX  Accelerator SNP MRP Group ', 1),
(7, 'ZKTE G_EVX  Accelerator SNP MRP Group', 1),
(8, 'ZKUA  A_KUA  Accelerator SNP MRP Group', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mrp_type`
--

CREATE TABLE `mrp_type` (
  `mrpt_id` int(11) NOT NULL,
  `mrp_type` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mrp_type`
--

INSERT INTO `mrp_type` (`mrpt_id`, `mrp_type`, `status`) VALUES
(1, 'ND No Planning', 1),
(2, 'PD MRP', 1),
(3, 'R1 Time_phased planning', 1),
(4, 'R2 Time_phased w_auto_reord_point', 1),
(5, 'X0 External Planning', 1),
(6, 'X1 W/o planning w_BOM explosion', 1),
(7, 'X2', 1),
(8, 'YZ NO Planning', 1),
(9, 'YX Manual reorder point planning', 1),
(10, 'Z0 MRP and deletion of fixed PO', 1),
(11, 'Z1 MRP fixing type_1 _w/RollFwd', 1),
(12, 'Z2 BASANT mat.tech no prog.', 1),
(13, 'Z4 BASANT mat.tech. with prog.', 1),
(14, 'Z5 Autom_reord_point w_ext_reqs', 1),
(15, 'Z6 Material requirements planning', 1),
(16, 'Z7 Manual reord_point w_ext_reqs', 1),
(17, 'Z8 Manual reord_point w_ext_reqs', 1),
(18, 'Z9 MRP(Strategy Requirement Ty)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ordering_unit`
--

CREATE TABLE `ordering_unit` (
  `ou_id` int(11) NOT NULL,
  `ordering_unit` varchar(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordering_unit`
--

INSERT INTO `ordering_unit` (`ou_id`, `ordering_unit`, `status`) VALUES
(1, 'L', 1),
(2, 'KG', 1),
(3, 'PC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `org_code`
--

CREATE TABLE `org_code` (
  `id` int(11) NOT NULL,
  `org_code` varchar(10) NOT NULL,
  `value` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `org_code`
--

INSERT INTO `org_code` (`id`, `org_code`, `value`) VALUES
(1, 'IN01', 'orgcode-IN01'),
(2, 'IN0D', 'orgcode-IN0D');

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `plant_id` int(11) NOT NULL,
  `bpv_id` int(11) NOT NULL,
  `plant` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`plant_id`, `bpv_id`, `plant`, `status`) VALUES
(1, 1, 'BIL_BONDED_WH_CHENNAI_7I00', 1),
(2, 1, 'BIL_BONDED_WAREHOUSE_MANGLORE_7I02', 1),
(3, 2, 'HSS_PLANT_IN01', 1),
(4, 3, 'BIL_BONDED_WH_CHENNAI_7I00', 1),
(5, 3, 'BIL_BONDED_WAREHOUSE_MANGLORE_7I02', 1),
(6, 4, 'BIL_DEPOT_GURUGRAM_7IEI', 1),
(7, 4, 'BIL_DEPOT_KOLKATA_7IEJ', 1),
(8, 5, 'BIL_MET_J&K_7IF0', 1),
(9, 5, 'BIL_MET_HIMACHAL_7IF1', 1),
(10, 6, 'BIL_BONDED_WAREHOUSE_MUMBAI_7I01', 1),
(11, 6, 'BIL_HIGH_SEA_SALES_7I06', 1),
(12, 7, 'BIL_SERVICE_TAX_DELHI_7I07', 1),
(13, 7, 'BIL_SERVICE_TAX_KOLKATA_7I08', 1),
(14, 8, 'BIL_SERVICE_TAX_HYDERABAD_7I09', 1),
(15, 8, 'BIL_SERVICE_CHENNAI_7I0A', 1),
(16, 9, 'BIL_SERVICE_BANGALORE_7I0B', 1),
(17, 9, 'BIL_SERVICE_TAX_AHEMDABAD_7I0C', 1),
(18, 10, '7I0W', 1),
(19, 11, 'BCE_IN_3rd_PARTY_SALES_IND0', 1),
(20, 11, 'BCE_IN_OFFICE_AND_LAB_IND1', 1),
(21, 12, 'BCE_IN_KOLKATA_PLANT_IND2', 1),
(22, 12, 'BCE_IN_URAN_PLANT_IND3', 1),
(23, 13, 'BCE_IN_SAMPLE_PLANT_IND4', 1),
(24, 13, 'BCE_IN_CHENNAI_PLANT_IND5', 1),
(25, 14, 'BCE_IN_MUMBAI_INBOUND_PLANT_IND6', 1),
(26, 14, 'BCE_IN_KOLKATA_MET_PLANT_INDA', 1),
(27, 15, 'BCE_IN_BANGALORE_MET_PLANT_INDB', 1),
(28, 15, 'BCE_IN_CHENNAI_MET_PLANT_INDC', 1),
(29, 16, 'BCE_IN_DELHI_MET_PLANT_INDD', 1),
(30, 16, 'BCE_IN_MUMBAI_MET_PLANT_INDE', 1),
(31, 17, 'BIL_IN_SCRAPPING_PLANT_INDS', 1),
(32, 17, 'BIL_IN_BACKORDER_PLANT_INDZ', 1),
(33, 18, 'BCE_IN_3rd_PARTY_SALES_IND0', 1),
(34, 18, 'BCE_IN_OFFICE_AND_LAB_IND1', 1),
(35, 19, 'BCE_IN_KOLKATA_PLANT_IND2', 1),
(36, 19, 'BCE_IN_URAN_PLANT_IND3', 1),
(37, 20, 'BCE_IN_SAMPLE_PLANT_IND4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `procurementtype`
--

CREATE TABLE `procurementtype` (
  `pt_id` int(11) NOT NULL,
  `vc_id` int(11) NOT NULL,
  `procurementtype` varchar(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `procurementtype`
--

INSERT INTO `procurementtype` (`pt_id`, `vc_id`, `procurementtype`, `status`) VALUES
(1, 1, 'F', 1),
(2, 2, 'F', 1),
(3, 3, 'F', 1),
(4, 4, 'F', 1),
(5, 5, 'F', 1),
(6, 6, 'E', 1),
(7, 7, 'F', 1),
(8, 8, 'F', 1),
(9, 9, 'E', 1),
(10, 10, 'F', 1),
(11, 11, 'F', 1),
(12, 12, 'F', 1),
(13, 13, 'E', 1),
(14, 14, 'F', 1),
(15, 15, 'F', 1),
(16, 16, 'F', 1),
(17, 17, 'F', 1),
(18, 18, 'F', 1),
(19, 19, 'F', 1),
(20, 20, 'F', 1),
(21, 21, 'F', 1),
(22, 22, 'E', 1),
(23, 23, 'F', 1),
(24, 24, 'F', 1),
(25, 25, 'E', 1),
(26, 26, 'F', 1),
(27, 27, 'F', 1),
(28, 28, 'F', 1),
(29, 29, 'E', 1),
(30, 30, 'F', 1),
(31, 31, 'F', 1),
(32, 32, 'F', 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchasing_grp`
--

CREATE TABLE `purchasing_grp` (
  `pg_id` int(11) NOT NULL,
  `bu_id` int(11) DEFAULT NULL,
  `purchasing_grp` varchar(55) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchasing_grp`
--

INSERT INTO `purchasing_grp` (`pg_id`, `bu_id`, `purchasing_grp`, `status`) VALUES
(1, 1, 'SB0 - IN01- AP SCPO', 1),
(2, 1, 'SB1 - IN01 - AP Merch', 1),
(3, 1, 'SB2 - IN01 - AP Indt Purc', 1),
(4, 2, 'A2W - IN01 - CCP SCPO', 1),
(5, 5, 'SB2 - IN01 - CP Merch', 1),
(6, 6, 'A2D - IN01 - EB RM(Mahale)', 1),
(7, 6, 'A2E - IN01 - EB RM(Kamble)', 1),
(8, 6, 'SB5 - IN01 - EB SCPO', 1),
(9, 6, 'SB6 - IN01 - EB Merch', 1),
(10, 6, 'SB7 - IN01 - EB Indt Purc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `snp_planner_code`
--

CREATE TABLE `snp_planner_code` (
  `snp_id` int(11) NOT NULL,
  `bu_id` int(11) NOT NULL,
  `asr_id` int(11) NOT NULL,
  `snp_planner_code` varchar(30) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `snp_planner_code`
--

INSERT INTO `snp_planner_code` (`snp_id`, `bu_id`, `asr_id`, `snp_planner_code`, `status`) VALUES
(1, 1, 2, 'BLANK', 1),
(2, 8, 1, 'A_EDA_5PC', 1),
(3, 8, 1, 'A_EDA_5PD', 1),
(4, 11, 1, 'A_EVP_TG1', 1),
(5, 11, 1, 'A_EVP_TG2', 1),
(6, 11, 1, 'A_EVP_TG3', 1),
(7, 11, 1, 'A_EVP_TG4', 1),
(8, 11, 1, 'A_EVP_TG5', 1),
(9, 11, 1, 'A_EVP_TG6', 1),
(10, 11, 1, 'A_EVP_TG7', 1),
(11, 1, 1, 'A_AP_9KU', 1),
(12, 1, 1, 'A_AP_9OZ', 1),
(13, 9, 1, 'A_EM_VCL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `storage_location`
--

CREATE TABLE `storage_location` (
  `sl_id` int(11) NOT NULL,
  `plant_id` int(11) NOT NULL,
  `storage_location` varchar(55) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storage_location`
--

INSERT INTO `storage_location` (`sl_id`, `plant_id`, `storage_location`, `status`) VALUES
(1, 1, 'HSSF HSS Failure', 1),
(2, 1, 'MAA1 Chennai X Madras', 1),
(3, 1, 'METF Mer Thru Failure', 1),
(4, 1, 'TUT1 Tuticorin', 1),
(5, 2, 'BLR5 ICD Banglore', 1),
(6, 2, 'HSSF HSS Failure', 1),
(7, 2, 'METF Mer Thru Failure', 1),
(8, 2, 'NML1 New Mangalore', 1),
(9, 3, 'AKV6 ICD Ankleshwar', 1),
(10, 3, 'AMD4 ICD Ahmedabad', 1),
(11, 3, 'BLR5 ICD Banglore', 1),
(12, 3, 'BOM4 Bombay Air Cargo', 1),
(13, 4, 'HSSF HSS Failure', 1),
(14, 4, 'MAA1 Chennai X Madras', 1),
(15, 4, 'BLR5 ICD Banglore', 1),
(16, 4, 'HSSF HSS Failure', 1),
(17, 5, '7IFG FinishGoods 7IEI', 1),
(18, 6, '7IFG FinishGoods 7IEJ', 1),
(19, 8, '7IFG FinishGoods 7IF0', 1),
(20, 9, '7IFG FinishGoods 7IF1', 1),
(21, 10, 'INFG', 1),
(22, 10, '7IFG', 1),
(23, 10, 'INRM', 1),
(24, 11, 'INFG', 1),
(25, 11, '7IFG', 1),
(26, 11, 'INRM', 1),
(27, 12, 'INFG', 1),
(28, 12, '7IFG', 1),
(29, 12, 'INRM', 1),
(30, 13, 'INFG', 1),
(31, 13, '7IFG', 1),
(32, 13, 'INRM', 1),
(33, 14, 'INFG', 1),
(34, 14, '7IFG', 1),
(35, 14, 'INRM', 1),
(36, 15, 'INFG', 1),
(37, 15, '7IFG', 1),
(38, 15, 'INRM', 1),
(39, 16, 'INFG', 1),
(40, 16, '7IFG', 1),
(41, 16, 'INRM', 1),
(42, 17, 'INFG', 1),
(43, 17, '7IFG', 1),
(44, 17, 'INRM', 1),
(45, 18, 'INSM', 1),
(46, 19, 'INFG', 1),
(47, 19, 'INRM', 1),
(48, 20, 'INFG', 1),
(49, 20, 'INRM', 1),
(50, 21, 'INFG', 1),
(51, 21, 'INRM', 1),
(52, 22, 'INFG', 1),
(53, 22, 'INRM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `strategy_group`
--

CREATE TABLE `strategy_group` (
  `sg_id` int(11) NOT NULL,
  `strategy_group` varchar(15) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strategy_group`
--

INSERT INTO `strategy_group` (`sg_id`, `strategy_group`, `status`) VALUES
(1, 'XB', 1),
(2, 'XL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `valuationclass`
--

CREATE TABLE `valuationclass` (
  `vc_id` int(11) NOT NULL,
  `bpv_id` int(11) NOT NULL,
  `valuationclass` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `valuationclass`
--

INSERT INTO `valuationclass` (`vc_id`, `bpv_id`, `valuationclass`, `status`) VALUES
(1, 1, '3709 MERCHANDISE(MER)', 1),
(2, 2, '3709 MERCHANDISE(MER)', 1),
(3, 3, '3709 MERCHANDISE(MER)', 1),
(4, 4, '3709 MERCHANDISE(MER)', 1),
(5, 5, '3709 MERCHANDISE(MER)', 1),
(6, 6, '3609 OWN MFG PRODUCTS(OMP)', 1),
(7, 7, '3400 PACKING MATERIAL(PM)', 1),
(8, 8, '3009 RAW MATERIAL(RM)', 1),
(9, 9, '3609 OWN MFG PRODUCTS(OMP)', 1),
(10, 9, '3709 MERCHANDISE(MER)', 1),
(11, 9, '3009 RAW MATERIAL(RM)', 1),
(12, 9, '3400 PACKING MATERIAL(PM)', 1),
(13, 10, '3609 OWN MFG PRODUCTS(OMP)', 1),
(14, 10, '3709 MERCHANDISE(MER)', 1),
(15, 10, '3009 RAW MATERIAL(RM)', 1),
(16, 10, '3400 PACKING MATERIAL(PM)', 1),
(17, 11, '3709 MERCHANDISE(MER)', 1),
(18, 12, '3709 MERCHANDISE(MER)', 1),
(19, 13, '3709 MERCHANDISE(MER)', 1),
(20, 14, '3709 MERCHANDISE(MER)', 1),
(21, 15, '3709 MERCHANDISE(MER)', 1),
(22, 16, '3609 OWN MFG PRODUCTS(OMP)', 1),
(23, 17, '3400 PACKING MATERIAL(PM)', 1),
(24, 18, '3009 RAW MATERIAL(RM)', 1),
(25, 19, '3609 OWN MFG PRODUCTS(OMP)', 1),
(26, 19, '3709 MERCHANDISE(MER)', 1),
(27, 19, '3400 PACKING MATERIAL(PM)', 1),
(28, 19, '3009 RAW MATERIAL(RM)', 1),
(29, 20, '3609 OWN MFG PRODUCTS(OMP)', 1),
(30, 20, '3709 MERCHANDISE(MER)', 1),
(31, 20, '3400 PACKING MATERIAL(PM)', 1),
(32, 20, '3009 RAW MATERIAL(RM)', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apo_snp_relevant`
--
ALTER TABLE `apo_snp_relevant`
  ADD PRIMARY KEY (`asr_id`);

--
-- Indexes for table `availability_check`
--
ALTER TABLE `availability_check`
  ADD PRIMARY KEY (`ac_id`);

--
-- Indexes for table `bpv`
--
ALTER TABLE `bpv`
  ADD PRIMARY KEY (`bpv_id`);

--
-- Indexes for table `bu`
--
ALTER TABLE `bu`
  ADD PRIMARY KEY (`bu_id`);

--
-- Indexes for table `consumption_mode`
--
ALTER TABLE `consumption_mode`
  ADD PRIMARY KEY (`cm_id`);

--
-- Indexes for table `distributionchannel`
--
ALTER TABLE `distributionchannel`
  ADD PRIMARY KEY (`dc_id`),
  ADD KEY `bu_id` (`bu_id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`ic_id`);

--
-- Indexes for table `logindb`
--
ALTER TABLE `logindb`
  ADD PRIMARY KEY (`user_no`),
  ADD UNIQUE KEY `novelid` (`novelid`);

--
-- Indexes for table `lot_size`
--
ALTER TABLE `lot_size`
  ADD PRIMARY KEY (`lot_id`);

--
-- Indexes for table `materialdata`
--
ALTER TABLE `materialdata`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `novel_id` (`novel_id`);

--
-- Indexes for table `mrp_group`
--
ALTER TABLE `mrp_group`
  ADD PRIMARY KEY (`mrpg_id`);

--
-- Indexes for table `mrp_type`
--
ALTER TABLE `mrp_type`
  ADD PRIMARY KEY (`mrpt_id`);

--
-- Indexes for table `ordering_unit`
--
ALTER TABLE `ordering_unit`
  ADD PRIMARY KEY (`ou_id`);

--
-- Indexes for table `org_code`
--
ALTER TABLE `org_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`plant_id`),
  ADD KEY `bpv_id` (`bpv_id`);

--
-- Indexes for table `procurementtype`
--
ALTER TABLE `procurementtype`
  ADD PRIMARY KEY (`pt_id`);

--
-- Indexes for table `purchasing_grp`
--
ALTER TABLE `purchasing_grp`
  ADD PRIMARY KEY (`pg_id`);

--
-- Indexes for table `snp_planner_code`
--
ALTER TABLE `snp_planner_code`
  ADD PRIMARY KEY (`snp_id`),
  ADD KEY `asr_id` (`asr_id`),
  ADD KEY `bu_id` (`bu_id`);

--
-- Indexes for table `storage_location`
--
ALTER TABLE `storage_location`
  ADD PRIMARY KEY (`sl_id`);

--
-- Indexes for table `strategy_group`
--
ALTER TABLE `strategy_group`
  ADD PRIMARY KEY (`sg_id`);

--
-- Indexes for table `valuationclass`
--
ALTER TABLE `valuationclass`
  ADD PRIMARY KEY (`vc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apo_snp_relevant`
--
ALTER TABLE `apo_snp_relevant`
  MODIFY `asr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `availability_check`
--
ALTER TABLE `availability_check`
  MODIFY `ac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `bpv`
--
ALTER TABLE `bpv`
  MODIFY `bpv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `bu`
--
ALTER TABLE `bu`
  MODIFY `bu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `consumption_mode`
--
ALTER TABLE `consumption_mode`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `distributionchannel`
--
ALTER TABLE `distributionchannel`
  MODIFY `dc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `ic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `logindb`
--
ALTER TABLE `logindb`
  MODIFY `user_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lot_size`
--
ALTER TABLE `lot_size`
  MODIFY `lot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `materialdata`
--
ALTER TABLE `materialdata`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `mrp_group`
--
ALTER TABLE `mrp_group`
  MODIFY `mrpg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mrp_type`
--
ALTER TABLE `mrp_type`
  MODIFY `mrpt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ordering_unit`
--
ALTER TABLE `ordering_unit`
  MODIFY `ou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `org_code`
--
ALTER TABLE `org_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plant`
--
ALTER TABLE `plant`
  MODIFY `plant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `procurementtype`
--
ALTER TABLE `procurementtype`
  MODIFY `pt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `purchasing_grp`
--
ALTER TABLE `purchasing_grp`
  MODIFY `pg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `snp_planner_code`
--
ALTER TABLE `snp_planner_code`
  MODIFY `snp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `storage_location`
--
ALTER TABLE `storage_location`
  MODIFY `sl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `strategy_group`
--
ALTER TABLE `strategy_group`
  MODIFY `sg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `valuationclass`
--
ALTER TABLE `valuationclass`
  MODIFY `vc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `distributionchannel`
--
ALTER TABLE `distributionchannel`
  ADD CONSTRAINT `distributionchannel_ibfk_1` FOREIGN KEY (`bu_id`) REFERENCES `bu` (`bu_id`);

--
-- Constraints for table `materialdata`
--
ALTER TABLE `materialdata`
  ADD CONSTRAINT `materialdata_ibfk_1` FOREIGN KEY (`novel_id`) REFERENCES `logindb` (`user_no`);

--
-- Constraints for table `plant`
--
ALTER TABLE `plant`
  ADD CONSTRAINT `plant_ibfk_1` FOREIGN KEY (`bpv_id`) REFERENCES `bpv` (`bpv_id`);

--
-- Constraints for table `snp_planner_code`
--
ALTER TABLE `snp_planner_code`
  ADD CONSTRAINT `snp_planner_code_ibfk_1` FOREIGN KEY (`asr_id`) REFERENCES `apo_snp_relevant` (`asr_id`),
  ADD CONSTRAINT `snp_planner_code_ibfk_2` FOREIGN KEY (`bu_id`) REFERENCES `bu` (`bu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
