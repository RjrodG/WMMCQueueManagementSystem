-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2019 at 03:52 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wmmcqms`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCouterServingNextNumber` (IN `ID` BIGINT)  NO SQL
SELECT MIN(a.`customerassigncounter_id`) as `customerassigncounter_id`, a.`queuenumber` FROM `customerassigncounter` AS `a` WHERE (DATE(datetimequeued) = CURRENT_DATE AND a.counter_id = ID) AND (a.`customerassigncounter_id` NOT IN (SELECT b.`customerassigncounter_id` FROM servedcustomer as `b`))$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `counter_id` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `section` varchar(100) NOT NULL,
  `servicedescription` varchar(100) NOT NULL,
  `counterPrefix` varchar(5) NOT NULL,
  `countercode` varchar(5) NOT NULL DEFAULT '12345',
  `icon` int(11) DEFAULT 0,
  `isQueuingCounter` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`counter_id`, `department`, `section`, `servicedescription`, `counterPrefix`, `countercode`, `icon`, `isQueuingCounter`) VALUES
(1, 'Queue Main', 'Main Counter', 'Main Counter', 'MAIN', '12345', 12, 0),
(2, 'Finance/Accounting', 'BILLING/TELLER', 'BILLING/TELLER', 'TEL', '12345', 1, 1),
(3, 'Ancillary', 'Cardio-Pulmonary', 'Cardio-Pulmonary', 'CAR', '12345', 2, 1),
(4, 'Consultation', 'Consultation', 'Consultation', 'CON', '12345', 3, 1),
(5, 'Quality Assurance', 'Health Information Management Section (Medical Record)', 'Medical Record', 'HIMS', '12345', 4, 1),
(6, 'Finance/Accounting', 'Account Management (HMO)', 'HMO', 'HMO', '12345', 5, 1),
(7, 'Ancillary', 'Laboratory', 'Laboratory', 'LAB', '12345', 6, 1),
(8, 'Ancillary', 'MedExpress Pharmacy (OPD)', 'MedExpress ', 'MED', '12345', 7, 1),
(9, 'Finance/Accounting', 'Philhealth/Billing', 'Philhealth/Billing', 'PHI', '12345', 8, 1),
(10, 'Ancillary', 'Radiology (X-Ray, CT-SCAN, etc..)', 'Radiology', 'RAD', '12345', 9, 1),
(11, 'Social Work', 'Social Work', 'Social Work', 'SOC', '12345', 10, 1),
(12, 'Triage', 'Triage', 'Triage', 'TRI', '12345', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phonenumber` int(15) DEFAULT NULL,
  `dateofvisit` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `fullname`, `address`, `phonenumber`, `dateofvisit`) VALUES
(24, '', '', 0, '2019-11-26 15:15:32'),
(25, '', '', 0, '2019-11-26 15:21:57'),
(26, '', '', 0, '2019-11-26 15:22:04'),
(27, '', '', 0, '2019-11-26 15:22:11'),
(28, '', '', 0, '2019-11-26 15:22:15'),
(29, '', '', 0, '2019-11-26 15:22:18'),
(30, '', '', 0, '2019-11-26 15:22:29'),
(31, '', '', 0, '2019-11-26 15:22:44'),
(32, '', '', 0, '2019-11-26 15:22:50'),
(33, '', '', 0, '2019-11-26 15:22:54'),
(34, '', '', 0, '2019-11-26 15:22:59'),
(35, '', '', 0, '2019-11-26 15:23:24'),
(36, '', '', 0, '2019-11-26 15:24:20'),
(37, '', '', 0, '2019-11-26 15:24:23'),
(38, '', '', 0, '2019-11-26 15:24:32'),
(39, '', '', 0, '2019-11-26 15:24:43'),
(40, '', '', 0, '2019-11-26 15:28:06'),
(41, '', '', 0, '2019-11-26 15:28:47'),
(42, '', '', 0, '2019-11-26 15:28:52'),
(43, '', '', 0, '2019-11-26 15:44:47'),
(44, '', '', 0, '2019-11-26 15:44:49'),
(45, '', '', 0, '2019-11-26 15:44:51'),
(46, '', '', 0, '2019-11-26 15:44:54'),
(47, '', '', 0, '2019-11-26 15:44:55'),
(48, '', '', 0, '2019-11-26 15:44:57'),
(49, '', '', 0, '2019-11-26 15:44:58'),
(50, '', '', 0, '2019-11-26 15:44:59'),
(51, '', '', 0, '2019-11-26 15:45:00'),
(52, '', '', 0, '2019-11-26 15:45:02'),
(53, '', '', 0, '2019-11-26 15:45:04'),
(54, '', '', 0, '2019-11-26 15:45:06'),
(55, '', '', 0, '2019-11-26 15:45:09'),
(56, '', '', 0, '2019-11-26 15:45:12'),
(57, '', '', 0, '2019-11-26 15:45:16'),
(58, '', '', 0, '2019-11-26 15:45:21'),
(59, '', '', 0, '2019-11-26 15:45:56'),
(60, '', '', 0, '2019-11-26 15:45:59'),
(61, '', '', 0, '2019-11-26 15:46:15'),
(62, '', '', 0, '2019-11-26 15:46:38'),
(63, '', '', 0, '2019-11-26 15:46:42'),
(64, '', '', 0, '2019-11-26 15:46:52'),
(65, '', '', 0, '2019-11-26 15:47:04'),
(66, '', '', 0, '2019-11-26 15:47:17'),
(67, '', '', 0, '2019-11-26 15:47:38'),
(68, '', '', 0, '2019-11-26 15:47:54'),
(69, '', '', 0, '2019-11-26 15:47:58'),
(70, '', '', 0, '2019-11-26 15:47:59'),
(71, '', '', 0, '2019-11-26 15:48:00'),
(72, '', '', 0, '2019-11-26 15:48:02'),
(73, '', '', 0, '2019-11-26 15:48:03'),
(74, '', '', 0, '2019-11-26 15:48:04'),
(75, '', '', 0, '2019-11-26 15:48:06'),
(76, '', '', 0, '2019-11-26 15:48:21'),
(77, '', '', 0, '2019-11-26 15:48:31'),
(78, '', '', 0, '2019-11-26 15:48:43'),
(79, '', '', 0, '2019-11-26 15:49:41'),
(80, '', '', 0, '2019-11-26 15:49:46'),
(81, '', '', 0, '2019-11-26 15:49:53'),
(82, '', '', 0, '2019-11-26 15:49:58'),
(83, '', '', 0, '2019-11-26 15:50:28'),
(84, '', '', 0, '2019-11-26 15:50:42'),
(85, '', '', 0, '2019-11-26 15:50:54'),
(86, '', '', 0, '2019-11-26 15:50:59'),
(87, '', '', 0, '2019-11-26 15:51:02'),
(88, '', '', 0, '2019-11-26 15:51:24'),
(89, '', '', 0, '2019-11-26 15:51:32'),
(90, '', '', 0, '2019-11-26 15:51:38'),
(91, '', '', 0, '2019-11-26 15:51:42'),
(92, '', '', 0, '2019-11-26 15:52:37'),
(93, '', '', 0, '2019-11-26 15:52:39'),
(94, '', '', 0, '2019-11-26 15:52:40'),
(95, '', '', 0, '2019-11-26 15:52:44'),
(96, '', '', 0, '2019-11-26 15:52:48'),
(97, '', '', 0, '2019-11-26 15:53:42'),
(98, '', '', 0, '2019-11-26 15:53:46'),
(99, '', '', 0, '2019-11-26 15:53:48'),
(100, '', '', 0, '2019-11-26 15:53:50'),
(101, '', '', 0, '2019-11-26 15:53:53'),
(102, '', '', 0, '2019-11-26 15:54:53'),
(103, '', '', 0, '2019-11-26 15:54:56'),
(104, '', '', 0, '2019-11-26 15:55:00'),
(105, '', '', 0, '2019-11-26 15:55:01'),
(106, '', '', 0, '2019-11-26 15:55:01'),
(107, '', '', 0, '2019-11-26 15:55:01'),
(108, '', '', 0, '2019-11-26 15:55:02'),
(109, '', '', 0, '2019-11-26 15:55:02'),
(110, '', '', 0, '2019-11-26 15:55:03'),
(111, '', '', 0, '2019-11-26 15:55:03'),
(112, '', '', 0, '2019-11-26 15:55:05'),
(113, '', '', 0, '2019-11-26 15:55:11'),
(114, '', '', 0, '2019-11-26 15:55:16'),
(115, '', '', 0, '2019-11-26 15:55:58'),
(116, '', '', 0, '2019-11-26 15:56:03'),
(117, '', '', 0, '2019-11-26 15:56:05'),
(118, '', '', 0, '2019-11-26 15:56:09'),
(119, '', '', 0, '2019-11-26 15:57:46'),
(120, '', '', 0, '2019-11-26 15:57:56'),
(121, '', '', 0, '2019-11-26 15:58:00'),
(122, '', '', 0, '2019-11-26 15:58:04'),
(123, '', '', 0, '2019-11-26 15:58:12'),
(124, '', '', 0, '2019-11-26 15:58:49'),
(125, '', '', 0, '2019-11-26 15:58:51'),
(126, '', '', 0, '2019-11-26 15:58:54'),
(127, '', '', 0, '2019-11-26 15:58:55'),
(128, '', '', 0, '2019-11-26 15:58:57'),
(129, '', '', 0, '2019-11-26 15:58:59'),
(130, '', '', 0, '2019-11-26 15:59:02'),
(131, '', '', 0, '2019-11-26 15:59:04'),
(132, '', '', 0, '2019-11-26 15:59:30'),
(133, '', '', 0, '2019-11-26 15:59:35'),
(134, '', '', 0, '2019-11-26 15:59:38'),
(135, '', '', 0, '2019-11-26 15:59:40'),
(136, '', '', 0, '2019-11-26 15:59:42'),
(137, '', '', 0, '2019-11-26 15:59:45'),
(138, '', '', 0, '2019-11-26 15:59:49'),
(139, '', '', 0, '2019-11-26 15:59:52'),
(140, '', '', 0, '2019-11-26 15:59:54'),
(141, '', '', 0, '2019-11-26 15:59:55'),
(142, '', '', 0, '2019-11-26 15:59:55'),
(143, '', '', 0, '2019-11-26 15:59:56'),
(144, '', '', 0, '2019-11-26 15:59:57'),
(145, '', '', 0, '2019-11-26 15:59:58'),
(146, '', '', 0, '2019-11-26 15:59:59'),
(147, '', '', 0, '2019-11-26 16:00:01'),
(148, '', '', 0, '2019-11-26 16:00:37'),
(149, '', '', 0, '2019-11-26 16:02:02'),
(150, '', '', 0, '2019-11-26 16:02:04'),
(151, '', '', 0, '2019-11-26 16:02:13'),
(152, '', '', 0, '2019-11-26 16:02:19'),
(153, '', '', 0, '2019-11-26 16:02:27'),
(154, '', '', 0, '2019-11-26 16:42:14'),
(155, '', '', 0, '2019-11-26 16:51:55'),
(156, '', '', 0, '2019-11-27 07:50:46'),
(157, '', '', 0, '2019-11-27 07:50:52'),
(158, '', '', 0, '2019-11-27 07:50:54'),
(159, '', '', 0, '2019-11-27 07:50:56'),
(160, '', '', 0, '2019-11-27 07:50:58'),
(161, '', '', 0, '2019-11-27 08:56:37'),
(162, '', '', 0, '2019-11-27 08:56:41'),
(163, '', '', 0, '2019-11-27 08:56:44'),
(164, '', '', 0, '2019-11-27 08:56:48'),
(165, '', '', 0, '2019-11-27 09:40:02'),
(166, '', '', 0, '2019-11-27 09:40:07'),
(167, '', '', 0, '2019-11-27 09:40:09'),
(168, '', '', 0, '2019-11-27 09:40:19'),
(169, '', '', 0, '2019-11-27 09:40:21'),
(170, '', '', 0, '2019-11-27 09:40:23'),
(171, '', '', 0, '2019-11-27 09:40:26'),
(172, '', '', 0, '2019-11-27 09:40:37'),
(173, '', '', 0, '2019-11-27 09:40:42'),
(174, '', '', 0, '2019-11-27 09:40:45'),
(175, '', '', 0, '2019-11-27 09:40:50'),
(176, '', '', 0, '2019-11-27 09:40:53'),
(177, '', '', 0, '2019-11-27 09:41:02'),
(178, '', '', 0, '2019-11-27 09:41:04'),
(179, '', '', 0, '2019-11-27 09:41:06'),
(180, '', '', 0, '2019-11-27 09:41:09'),
(181, '', '', 0, '2019-11-27 09:41:13'),
(182, '', '', 0, '2019-11-27 09:41:24'),
(183, '', '', 0, '2019-11-27 09:52:13'),
(184, '', '', 0, '2019-11-27 09:55:36'),
(185, '', '', 0, '2019-11-27 09:55:49'),
(186, '', '', 0, '2019-11-27 10:17:00'),
(187, '', '', 0, '2019-11-27 10:18:02'),
(188, '', '', 0, '2019-11-27 10:19:48'),
(189, '', '', 0, '2019-11-27 10:20:28'),
(190, '', '', 0, '2019-11-27 10:21:29'),
(191, '', '', 0, '2019-11-27 10:21:43'),
(192, '', '', 0, '2019-11-27 10:22:39'),
(193, '', '', 0, '2019-11-27 10:25:12'),
(194, '', '', 0, '2019-11-27 10:26:10'),
(195, '', '', 0, '2019-11-27 10:27:26'),
(196, '', '', 0, '2019-11-27 11:07:33'),
(197, '', '', 0, '2019-11-27 11:09:54'),
(198, '', '', 0, '2019-11-27 11:10:43'),
(199, '', '', 0, '2019-11-27 13:44:34'),
(200, '', '', 0, '2019-11-27 15:41:36'),
(201, '', '', 0, '2019-11-27 15:41:43'),
(202, '', '', 0, '2019-11-27 15:42:20'),
(203, '', '', 0, '2019-11-27 15:45:35'),
(204, '', '', 0, '2019-11-27 15:48:30'),
(205, '', '', 0, '2019-11-27 16:05:22'),
(206, '', '', 0, '2019-11-27 16:05:28'),
(207, '', '', 0, '2019-11-27 16:05:31'),
(208, '', '', 0, '2019-11-27 16:05:35'),
(209, '', '', 0, '2019-11-27 16:05:39'),
(210, '', '', 0, '2019-11-27 16:05:49'),
(211, '', '', 0, '2019-11-27 16:05:59'),
(212, '', '', 0, '2019-11-27 16:06:21'),
(213, '', '', 0, '2019-11-27 16:06:33'),
(214, '', '', 0, '2019-11-27 16:07:34'),
(215, '', '', 0, '2019-11-27 16:07:50'),
(216, '', '', 0, '2019-11-27 16:12:33'),
(217, '', '', 0, '2019-11-27 16:13:23'),
(218, '', '', 0, '2019-11-27 17:01:26'),
(219, '', '', 0, '2019-11-27 17:01:33'),
(220, '', '', 0, '2019-11-27 17:01:37'),
(221, '', '', 0, '2019-11-27 17:01:43'),
(222, '', '', 0, '2019-11-27 17:01:45'),
(223, '', '', 0, '2019-11-28 08:14:14'),
(224, '', '', 0, '2019-11-28 09:16:11'),
(225, '', '', 0, '2019-11-28 09:16:15'),
(226, '', '', 0, '2019-11-28 09:16:18'),
(227, '', '', 0, '2019-11-28 09:16:20'),
(228, '', '', 0, '2019-11-28 09:16:21'),
(229, '', '', 0, '2019-11-28 09:32:05'),
(230, '', '', 0, '2019-11-28 09:32:08'),
(231, '', '', 0, '2019-11-28 09:32:14'),
(232, '', '', 0, '2019-11-28 11:37:37'),
(233, '', '', 0, '2019-11-28 11:37:39'),
(234, '', '', 0, '2019-11-28 14:33:56'),
(235, '', '', 0, '2019-11-28 14:33:59'),
(236, '', '', 0, '2019-11-28 14:34:02'),
(237, '', '', 0, '2019-11-28 14:41:26'),
(238, '', '', 0, '2019-11-28 14:41:30'),
(239, '', '', 0, '2019-11-28 14:41:32'),
(240, '', '', 0, '2019-11-28 14:41:42'),
(241, '', '', 0, '2019-11-28 14:41:47'),
(242, '', '', 0, '2019-11-28 14:42:29'),
(243, '', '', 0, '2019-11-28 14:42:31'),
(244, '', '', 0, '2019-11-28 14:42:34'),
(245, '', '', 0, '2019-11-28 14:42:37'),
(246, '', '', 0, '2019-11-28 14:42:40'),
(247, '', '', 0, '2019-11-28 14:56:17'),
(248, '', '', 0, '2019-11-28 14:56:22'),
(249, '', '', 0, '2019-11-28 14:56:27'),
(250, '', '', 0, '2019-11-28 14:56:30'),
(251, '', '', 0, '2019-11-28 14:56:33'),
(252, '', '', 0, '2019-11-28 14:56:38'),
(253, '', '', 0, '2019-11-28 14:57:54'),
(254, '', '', 0, '2019-11-28 14:57:57'),
(255, '', '', 0, '2019-11-28 14:58:01'),
(256, '', '', 0, '2019-11-28 14:58:52'),
(257, '', '', 0, '2019-11-28 14:58:56'),
(258, '', '', 0, '2019-11-28 14:59:01'),
(259, '', '', 0, '2019-11-28 14:59:18'),
(260, '', '', 0, '2019-11-28 15:01:06'),
(261, '', '', 0, '2019-11-28 15:01:09'),
(262, '', '', 0, '2019-11-28 15:01:12'),
(263, '', '', 0, '2019-11-28 16:01:31'),
(264, '', '', 0, '2019-11-28 16:01:45'),
(265, '', '', 0, '2019-11-28 16:01:47'),
(266, '', '', 0, '2019-11-28 16:25:15'),
(267, '', '', 0, '2019-11-28 16:25:17'),
(268, '', '', 0, '2019-11-28 16:25:19'),
(269, '', '', 0, '2019-11-28 16:25:20'),
(270, '', '', 0, '2019-11-28 16:25:21'),
(271, '', '', 0, '2019-11-28 16:25:22'),
(272, '', '', 0, '2019-11-28 16:25:23'),
(273, '', '', 0, '2019-11-28 16:25:25'),
(274, '', '', 0, '2019-11-28 16:25:28'),
(275, '', '', 0, '2019-11-28 16:55:36'),
(276, '', '', 0, '2019-11-28 16:55:38'),
(277, '', '', 0, '2019-11-28 16:55:40'),
(278, '', '', 0, '2019-11-28 16:55:41'),
(279, '', '', 0, '2019-11-28 16:55:43'),
(280, '', '', 0, '2019-11-28 16:55:45'),
(281, '', '', 0, '2019-11-28 16:55:47'),
(282, '', '', 0, '2019-11-29 07:30:27'),
(283, '', '', 0, '2019-11-29 07:36:17'),
(284, '', '', 0, '2019-11-29 07:36:21'),
(285, '', '', 0, '2019-11-29 07:36:27'),
(286, '', '', 0, '2019-11-29 07:36:33'),
(287, '', '', 0, '2019-11-29 07:37:03'),
(288, '', '', 0, '2019-11-29 07:37:09'),
(289, '', '', 0, '2019-11-29 07:38:21'),
(290, '', '', 0, '2019-11-29 07:38:22'),
(291, '', '', 0, '2019-11-29 07:38:24'),
(292, '', '', 0, '2019-11-29 07:38:25'),
(293, '', '', 0, '2019-11-29 07:38:27'),
(294, '', '', 0, '2019-11-29 07:38:30'),
(295, '', '', 0, '2019-11-29 07:42:04'),
(296, '', '', 0, '2019-11-29 07:42:07'),
(297, '', '', 0, '2019-11-29 07:42:14'),
(298, '', '', 0, '2019-11-29 07:42:16'),
(299, '', '', 0, '2019-11-29 07:42:18'),
(300, '', '', 0, '2019-11-29 07:42:22'),
(301, '', '', 0, '2019-11-29 07:42:25'),
(302, '', '', 0, '2019-11-29 07:42:31'),
(303, '', '', 0, '2019-11-29 07:42:34'),
(304, '', '', 0, '2019-11-29 07:42:36'),
(305, '', '', 0, '2019-11-29 08:40:45'),
(306, '', '', 0, '2019-11-29 08:40:49'),
(307, '', '', 0, '2019-11-29 08:40:52'),
(308, '', '', 0, '2019-11-29 08:40:55'),
(309, '', '', 0, '2019-11-29 08:40:58'),
(310, '', '', 0, '2019-11-29 08:41:00'),
(311, '', '', 0, '2019-11-29 08:41:02'),
(312, '', '', 0, '2019-11-29 08:41:05'),
(313, '', '', 0, '2019-11-29 08:41:06'),
(314, '', '', 0, '2019-11-29 08:43:11'),
(315, '', '', 0, '2019-11-29 08:43:13'),
(316, '', '', 0, '2019-11-29 08:43:15'),
(317, '', '', 0, '2019-11-29 08:43:18'),
(318, '', '', 0, '2019-11-29 08:43:19'),
(319, '', '', 0, '2019-11-29 08:43:21'),
(320, '', '', 0, '2019-11-29 08:43:22'),
(321, '', '', 0, '2019-11-29 08:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `customerassigncounter`
--

CREATE TABLE `customerassigncounter` (
  `customerassigncounter_id` int(11) NOT NULL,
  `counter_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `datetimequeued` datetime NOT NULL DEFAULT current_timestamp(),
  `priority` int(11) NOT NULL DEFAULT 0,
  `queuenumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerassigncounter`
--

INSERT INTO `customerassigncounter` (`customerassigncounter_id`, `counter_id`, `customer_id`, `datetimequeued`, `priority`, `queuenumber`) VALUES
(77, 2, 305, '2019-11-29 08:40:45', 0, 1),
(78, 2, 306, '2019-11-29 08:40:49', 0, 2),
(79, 2, 307, '2019-11-29 08:40:53', 0, 3),
(80, 2, 308, '2019-11-29 08:40:55', 0, 4),
(81, 2, 309, '2019-11-29 08:40:58', 0, 5),
(82, 2, 310, '2019-11-29 08:41:00', 1, 6),
(83, 2, 311, '2019-11-29 08:41:02', 0, 7),
(84, 2, 312, '2019-11-29 08:41:05', 0, 8),
(85, 2, 313, '2019-11-29 08:41:06', 1, 9),
(86, 2, 314, '2019-11-29 08:43:11', 0, 10),
(87, 2, 315, '2019-11-29 08:43:13', 1, 11),
(88, 2, 316, '2019-11-29 08:43:15', 1, 12),
(89, 2, 317, '2019-11-29 08:43:18', 0, 13),
(90, 2, 318, '2019-11-29 08:43:19', 0, 14),
(91, 2, 319, '2019-11-29 08:43:21', 0, 15),
(92, 2, 320, '2019-11-29 08:43:22', 0, 16),
(93, 2, 321, '2019-11-29 08:43:24', 0, 17);

-- --------------------------------------------------------

--
-- Table structure for table `servedcustomer`
--

CREATE TABLE `servedcustomer` (
  `served_id` int(11) NOT NULL,
  `servertransaction_id` int(11) NOT NULL,
  `customerassigncounter_id` int(11) NOT NULL,
  `datetimeservedstart` datetime NOT NULL DEFAULT current_timestamp(),
  `datetimeservedend` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servedcustomer`
--

INSERT INTO `servedcustomer` (`served_id`, `servertransaction_id`, `customerassigncounter_id`, `datetimeservedstart`, `datetimeservedend`) VALUES
(1, 109, 77, '2019-11-29 09:15:03', NULL),
(2, 110, 78, '2019-11-29 09:22:34', '2019-11-29 09:22:51'),
(3, 111, 79, '2019-11-29 09:23:06', NULL),
(4, 112, 80, '2019-11-29 09:27:13', '2019-11-29 09:27:27'),
(5, 113, 81, '2019-11-29 09:27:35', NULL),
(6, 114, 82, '2019-11-29 09:27:59', NULL),
(7, 115, 83, '2019-11-29 09:28:29', '2019-11-29 09:28:43'),
(8, 116, 84, '2019-11-29 10:05:54', '2019-11-29 10:09:14'),
(9, 117, 85, '2019-11-29 10:09:54', NULL),
(10, 118, 86, '2019-11-29 10:15:43', '2019-11-29 10:16:50'),
(11, 119, 87, '2019-11-29 10:35:47', NULL),
(12, 120, 88, '2019-11-29 10:49:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `server`
--

CREATE TABLE `server` (
  `server_id` int(11) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `assigndepartment` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `server`
--

INSERT INTO `server` (`server_id`, `employee_id`, `fullname`, `assigndepartment`, `username`, `password`) VALUES
(1, '102454', 'Jascha B. Mascunana', 'IT Department', '102454', '1');

-- --------------------------------------------------------

--
-- Table structure for table `serverassigncounter`
--

CREATE TABLE `serverassigncounter` (
  `serverassigncounter_ID` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `counter_id` int(11) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `isMain` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `serverassigncounter`
--

INSERT INTO `serverassigncounter` (`serverassigncounter_ID`, `server_id`, `counter_id`, `datecreated`, `isMain`) VALUES
(6, 1, 1, '2019-11-26 15:14:34', 1),
(7, 1, 2, '2019-11-26 15:14:34', 0),
(8, 1, 3, '2019-11-26 15:14:45', 0),
(9, 1, 4, '2019-11-26 15:14:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `servertransaction`
--

CREATE TABLE `servertransaction` (
  `servertransaction_id` int(11) NOT NULL,
  `serverassigncounter_id` int(11) NOT NULL,
  `datetimelogin` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servertransaction`
--

INSERT INTO `servertransaction` (`servertransaction_id`, `serverassigncounter_id`, `datetimelogin`) VALUES
(1, 6, '2019-11-27 15:48:27'),
(2, 8, '2019-11-27 15:48:42'),
(3, 6, '2019-11-27 16:05:12'),
(4, 6, '2019-11-27 16:12:29'),
(5, 6, '2019-11-27 17:01:22'),
(6, 6, '2019-11-28 08:14:10'),
(7, 7, '2019-11-28 08:19:15'),
(8, 8, '2019-11-28 08:23:54'),
(9, 8, '2019-11-28 08:31:34'),
(10, 8, '2019-11-28 08:31:49'),
(11, 8, '2019-11-28 08:34:31'),
(12, 7, '2019-11-28 08:44:22'),
(13, 7, '2019-11-28 08:46:11'),
(14, 7, '2019-11-28 08:48:24'),
(15, 7, '2019-11-28 08:49:45'),
(16, 7, '2019-11-28 08:50:54'),
(17, 8, '2019-11-28 08:52:15'),
(18, 6, '2019-11-28 09:16:09'),
(19, 8, '2019-11-28 09:26:23'),
(20, 8, '2019-11-28 09:27:27'),
(21, 6, '2019-11-28 09:32:01'),
(22, 7, '2019-11-28 11:00:15'),
(23, 7, '2019-11-28 11:26:55'),
(24, 8, '2019-11-28 11:28:22'),
(25, 7, '2019-11-28 11:30:43'),
(26, 7, '2019-11-28 11:31:54'),
(27, 8, '2019-11-28 11:34:49'),
(28, 6, '2019-11-28 11:37:33'),
(29, 7, '2019-11-28 11:37:49'),
(30, 7, '2019-11-28 11:40:57'),
(31, 7, '2019-11-28 11:41:39'),
(32, 7, '2019-11-28 11:45:17'),
(33, 7, '2019-11-28 13:14:09'),
(34, 7, '2019-11-28 13:50:12'),
(35, 8, '2019-11-28 14:13:36'),
(36, 7, '2019-11-28 14:20:07'),
(37, 7, '2019-11-28 14:21:47'),
(38, 8, '2019-11-28 14:22:43'),
(39, 7, '2019-11-28 14:23:28'),
(40, 6, '2019-11-28 14:33:12'),
(41, 7, '2019-11-28 14:33:53'),
(42, 7, '2019-11-28 14:34:16'),
(43, 6, '2019-11-28 14:41:22'),
(44, 7, '2019-11-28 14:41:57'),
(45, 6, '2019-11-28 14:42:24'),
(46, 7, '2019-11-28 14:42:48'),
(47, 8, '2019-11-28 14:55:43'),
(48, 6, '2019-11-28 14:56:14'),
(49, 8, '2019-11-28 14:56:48'),
(50, 6, '2019-11-28 14:57:51'),
(51, 8, '2019-11-28 14:58:10'),
(52, 6, '2019-11-28 14:58:48'),
(53, 6, '2019-11-28 14:59:15'),
(54, 7, '2019-11-28 15:00:33'),
(55, 8, '2019-11-28 15:00:44'),
(56, 6, '2019-11-28 15:00:59'),
(57, 7, '2019-11-28 15:01:24'),
(58, 7, '2019-11-28 15:07:35'),
(59, 7, '2019-11-28 15:14:28'),
(60, 6, '2019-11-28 15:14:56'),
(61, 8, '2019-11-28 15:15:17'),
(62, 6, '2019-11-28 15:16:18'),
(63, 6, '2019-11-28 15:17:53'),
(64, 7, '2019-11-28 15:18:24'),
(65, 6, '2019-11-28 15:19:11'),
(66, 7, '2019-11-28 15:55:38'),
(67, 7, '2019-11-28 15:56:11'),
(68, 7, '2019-11-28 15:57:37'),
(69, 7, '2019-11-28 16:01:15'),
(70, 6, '2019-11-28 16:01:28'),
(71, 7, '2019-11-28 16:01:56'),
(72, 7, '2019-11-28 16:06:08'),
(73, 7, '2019-11-28 16:18:00'),
(74, 6, '2019-11-28 16:18:12'),
(75, 7, '2019-11-28 16:24:56'),
(76, 6, '2019-11-28 16:25:11'),
(77, 7, '2019-11-28 16:25:37'),
(78, 7, '2019-11-28 16:46:00'),
(79, 7, '2019-11-28 16:47:03'),
(80, 7, '2019-11-28 16:54:09'),
(81, 6, '2019-11-28 16:55:30'),
(82, 7, '2019-11-28 16:55:59'),
(83, 7, '2019-11-28 16:58:17'),
(84, 6, '2019-11-29 07:20:09'),
(85, 6, '2019-11-29 07:30:19'),
(86, 7, '2019-11-29 07:37:31'),
(87, 6, '2019-11-29 07:38:18'),
(88, 7, '2019-11-29 07:38:40'),
(89, 7, '2019-11-29 07:40:25'),
(90, 6, '2019-11-29 07:41:59'),
(91, 7, '2019-11-29 07:42:43'),
(92, 7, '2019-11-29 07:44:14'),
(93, 9, '2019-11-29 07:56:26'),
(94, 7, '2019-11-29 08:34:09'),
(95, 7, '2019-11-29 08:34:29'),
(96, 7, '2019-11-29 08:34:48'),
(97, 7, '2019-11-29 08:35:11'),
(98, 7, '2019-11-29 08:36:43'),
(99, 7, '2019-11-29 08:39:28'),
(100, 6, '2019-11-29 08:40:37'),
(101, 7, '2019-11-29 08:41:29'),
(102, 6, '2019-11-29 08:43:07'),
(103, 7, '2019-11-29 08:43:33'),
(104, 6, '2019-11-29 08:49:17'),
(105, 7, '2019-11-29 08:49:40'),
(106, 7, '2019-11-29 08:53:07'),
(107, 7, '2019-11-29 09:01:01'),
(108, 7, '2019-11-29 09:03:49'),
(109, 7, '2019-11-29 09:14:23'),
(110, 7, '2019-11-29 09:22:33'),
(111, 7, '2019-11-29 09:23:02'),
(112, 7, '2019-11-29 09:27:11'),
(113, 7, '2019-11-29 09:27:33'),
(114, 7, '2019-11-29 09:27:57'),
(115, 7, '2019-11-29 09:28:27'),
(116, 7, '2019-11-29 10:05:48'),
(117, 7, '2019-11-29 10:09:21'),
(118, 7, '2019-11-29 10:11:29'),
(119, 7, '2019-11-29 10:35:46'),
(120, 7, '2019-11-29 10:49:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`counter_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customerassigncounter`
--
ALTER TABLE `customerassigncounter`
  ADD PRIMARY KEY (`customerassigncounter_id`),
  ADD KEY `counter_id` (`counter_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `servedcustomer`
--
ALTER TABLE `servedcustomer`
  ADD PRIMARY KEY (`served_id`),
  ADD KEY `servertransaction_id` (`servertransaction_id`),
  ADD KEY `customerassigncounter_id` (`customerassigncounter_id`);

--
-- Indexes for table `server`
--
ALTER TABLE `server`
  ADD PRIMARY KEY (`server_id`);

--
-- Indexes for table `serverassigncounter`
--
ALTER TABLE `serverassigncounter`
  ADD PRIMARY KEY (`serverassigncounter_ID`),
  ADD KEY `server_id` (`server_id`),
  ADD KEY `counter_id` (`counter_id`);

--
-- Indexes for table `servertransaction`
--
ALTER TABLE `servertransaction`
  ADD PRIMARY KEY (`servertransaction_id`),
  ADD KEY `serverassigncounter_id` (`serverassigncounter_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `counter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `customerassigncounter`
--
ALTER TABLE `customerassigncounter`
  MODIFY `customerassigncounter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `servedcustomer`
--
ALTER TABLE `servedcustomer`
  MODIFY `served_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `server`
--
ALTER TABLE `server`
  MODIFY `server_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `serverassigncounter`
--
ALTER TABLE `serverassigncounter`
  MODIFY `serverassigncounter_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `servertransaction`
--
ALTER TABLE `servertransaction`
  MODIFY `servertransaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
