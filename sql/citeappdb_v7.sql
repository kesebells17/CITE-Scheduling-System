-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2026 at 06:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `citeappdb_v7`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_logs`
--

CREATE TABLE `action_logs` (
  `log_id` int(11) NOT NULL,
  `performed_by` int(11) NOT NULL,
  `action_type` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `action_logs`
--

INSERT INTO `action_logs` (`log_id`, `performed_by`, `action_type`, `description`, `created_at`) VALUES
(1, 1, 'Login', 'User logged in successfully', '2026-03-05 13:21:01'),
(2, 1, 'Login', 'User logged in successfully', '2026-03-05 13:21:42'),
(7, 1, 'Login', 'User logged in successfully', '2026-03-05 13:25:37'),
(8, 1, 'Login', 'User logged in successfully', '2026-03-05 13:32:35'),
(9, 1, 'Login', 'User logged in successfully', '2026-03-05 13:43:23'),
(10, 11, 'Login', 'User logged in successfully', '2026-03-05 13:49:42'),
(11, 11, 'Login', 'User logged in successfully', '2026-03-05 14:08:36'),
(12, 11, 'User Creation', 'Created Student account: 02-6112-816368', '2026-03-05 14:13:54'),
(13, 11, 'Login', 'User logged in successfully', '2026-03-05 14:28:42'),
(14, 11, 'User Creation', 'Created Student account: 02-7586-989215', '2026-03-05 14:30:49'),
(17, 11, 'Login', 'User logged in successfully', '2026-03-05 14:35:54'),
(18, 11, 'User Creation', 'Created Instructor account: FAC-2026-0001', '2026-03-05 14:36:46'),
(19, 14, 'Login', 'User logged in successfully', '2026-03-05 14:37:21'),
(20, 11, 'Login', 'User logged in successfully', '2026-03-05 14:41:32'),
(21, 11, 'User Deletion', 'Permanently deleted Student account: 02-7586-989215', '2026-03-05 14:56:37'),
(22, 11, 'User Creation', 'Created Student account: 02-0166-989399', '2026-03-05 14:57:38'),
(23, 11, 'Login', 'User logged in successfully', '2026-03-05 14:59:09'),
(24, 11, 'Login', 'User logged in successfully', '2026-03-05 15:00:20'),
(25, 11, 'Login', 'User logged in successfully', '2026-03-05 15:01:32'),
(26, 11, 'User Deletion', 'Permanently deleted Student account: 02-0166-989399', '2026-03-05 15:01:41'),
(27, 11, 'User Creation', 'Created Student account: 02-5697-884274', '2026-03-05 15:02:28'),
(29, 11, 'Login', 'User logged in successfully', '2026-03-05 15:03:20'),
(31, 11, 'Login', 'User logged in successfully', '2026-03-05 15:07:24'),
(32, 14, 'Login', 'User logged in successfully', '2026-03-05 15:07:44'),
(33, 11, 'Login', 'User logged in successfully', '2026-03-05 15:34:34'),
(34, 11, 'User Creation', 'Created Instructor account: FAC-2026-0002', '2026-03-05 15:43:44'),
(35, 17, 'Login', 'User logged in successfully', '2026-03-05 15:44:36'),
(36, 11, 'Login', 'User logged in successfully', '2026-03-05 15:46:22'),
(37, 1, 'Login', 'User logged in successfully', '2026-03-06 00:37:16'),
(38, 11, 'Login', 'User logged in successfully', '2026-03-06 00:38:11'),
(40, 11, 'Login', 'User logged in successfully', '2026-03-06 00:56:01'),
(41, 11, 'User Deletion', 'Permanently deleted Student account: 02-5697-884274', '2026-03-06 00:58:10'),
(42, 11, 'User Creation', 'Created Student account: 02-5780-655533', '2026-03-06 00:59:00'),
(43, 18, 'Email Verification', 'Completed email verification via link', '2026-03-06 00:59:14'),
(44, 11, 'Login', 'User logged in successfully', '2026-03-06 01:04:51'),
(45, 17, 'Login', 'User logged in successfully', '2026-03-06 01:15:37'),
(46, 11, 'Login', 'User logged in successfully', '2026-03-06 01:16:57'),
(47, 18, 'Login', 'User logged in successfully', '2026-03-06 01:52:22'),
(48, 11, 'Login', 'User logged in successfully', '2026-03-06 02:04:08'),
(49, 11, 'Login', 'User logged in successfully', '2026-03-06 03:32:06'),
(50, 11, 'Login', 'User logged in successfully', '2026-03-06 03:54:57'),
(51, 11, 'Login', 'User logged in successfully', '2026-03-06 04:24:35'),
(52, 11, 'Login', 'User logged in successfully', '2026-03-06 04:52:29'),
(53, 11, 'Login', 'User logged in successfully', '2026-03-06 05:05:44'),
(54, 11, 'Login', 'User logged in successfully', '2026-03-06 05:15:35'),
(55, 11, 'Login', 'User logged in successfully', '2026-03-06 06:19:25'),
(56, 18, 'Login', 'User logged in successfully', '2026-03-06 06:20:39'),
(57, 11, 'Login', 'User logged in successfully', '2026-03-06 06:22:14'),
(58, 11, 'Login', 'User logged in successfully', '2026-03-06 06:25:29'),
(59, 11, 'User Creation', 'Created Instructor account: FAC-2026-0003', '2026-03-06 08:43:50'),
(60, 19, 'Login', 'User logged in successfully', '2026-03-06 08:44:38'),
(61, 11, 'Login', 'User logged in successfully', '2026-03-06 09:08:36'),
(62, 11, 'User Creation', 'Created Student account: 02-0949-683804', '2026-03-06 09:20:47'),
(63, 20, 'Email Verification', 'Completed email verification via link', '2026-03-06 09:21:04'),
(64, 20, 'Login', 'User logged in successfully', '2026-03-06 09:22:32'),
(65, 20, 'Login', 'User logged in successfully', '2026-03-06 09:27:27'),
(66, 20, 'Login', 'User logged in successfully', '2026-03-06 09:29:15'),
(67, 1, 'Login', 'User logged in successfully', '2026-03-06 09:31:12'),
(68, 1, 'Login', 'User logged in successfully', '2026-03-06 09:36:17'),
(69, 1, 'Login', 'User logged in successfully', '2026-03-06 09:36:31'),
(70, 11, 'Login', 'User logged in successfully', '2026-03-06 09:37:51'),
(71, 20, 'Login', 'User logged in successfully', '2026-03-06 09:39:08'),
(72, 11, 'Login', 'User logged in successfully', '2026-03-06 09:40:49'),
(73, 19, 'Login', 'User logged in successfully', '2026-03-06 09:41:35'),
(74, 11, 'Login', 'User logged in successfully', '2026-03-06 09:44:53'),
(75, 17, 'Login', 'User logged in successfully', '2026-03-06 09:47:17'),
(76, 17, 'Login', 'User logged in successfully', '2026-03-06 09:51:25'),
(77, 11, 'Login', 'User logged in successfully', '2026-03-06 09:51:49'),
(78, 17, 'Login', 'User logged in successfully', '2026-03-06 09:53:03'),
(79, 11, 'Login', 'User logged in successfully', '2026-03-06 09:55:59'),
(80, 20, 'Login', 'User logged in successfully', '2026-03-06 10:02:54'),
(81, 20, 'Login', 'User logged in successfully', '2026-03-06 10:41:49'),
(82, 11, 'Login', 'User logged in successfully', '2026-03-06 10:44:53'),
(83, 11, 'User Creation', 'Created Student account: 02-5586-987774', '2026-03-06 10:48:05'),
(84, 21, 'Email Verification', 'Completed email verification via link', '2026-03-06 10:48:16'),
(85, 21, 'Login', 'User logged in successfully', '2026-03-06 10:49:17'),
(86, 11, 'Login', 'User logged in successfully', '2026-03-06 10:50:25'),
(87, 14, 'Login', 'User logged in successfully', '2026-03-06 10:51:09'),
(88, 11, 'Login', 'User logged in successfully', '2026-03-06 10:53:33'),
(89, 21, 'Login', 'User logged in successfully', '2026-03-06 10:53:56'),
(90, 11, 'Login', 'User logged in successfully', '2026-03-06 10:55:02'),
(91, 14, 'Login', 'User logged in successfully', '2026-03-06 10:56:33'),
(92, 11, 'Login', 'User logged in successfully', '2026-03-06 10:59:24'),
(93, 11, 'User Creation', 'Created Instructor account: FAC-2026-0004', '2026-03-06 11:07:55'),
(94, 22, 'Login', 'User logged in successfully', '2026-03-06 11:08:55'),
(95, 11, 'Login', 'User logged in successfully', '2026-03-06 11:15:46'),
(96, 11, 'User Creation', 'Created Student account: 02-4397-558264', '2026-03-06 11:18:59'),
(97, 23, 'Email Verification', 'Completed email verification via link', '2026-03-06 11:19:11'),
(98, 23, 'Login', 'User logged in successfully', '2026-03-06 11:20:07'),
(99, 11, 'Login', 'User logged in successfully', '2026-03-06 11:24:22'),
(100, 11, 'Login', 'User logged in successfully', '2026-03-07 00:51:37'),
(101, 11, 'Login', 'User logged in successfully', '2026-03-07 01:16:44'),
(102, 11, 'Login', 'User logged in successfully', '2026-03-07 02:13:47'),
(103, 11, 'Login', 'User logged in successfully', '2026-03-07 02:20:56'),
(104, 11, 'Login', 'User logged in successfully', '2026-03-07 02:41:10'),
(105, 11, 'Login', 'User logged in successfully', '2026-03-07 02:57:28'),
(106, 20, 'Login', 'User logged in successfully', '2026-03-07 03:01:27'),
(107, 11, 'Login', 'User logged in successfully', '2026-03-07 03:02:19'),
(108, 14, 'Login', 'User logged in successfully', '2026-03-07 03:02:44'),
(109, 11, 'Login', 'User logged in successfully', '2026-03-07 03:04:12'),
(110, 11, 'User Creation', 'Created Instructor account: FAC-2026-0005', '2026-03-07 03:05:50'),
(111, 11, 'Login', 'User logged in successfully', '2026-03-07 05:57:59'),
(112, 11, 'Login', 'User logged in successfully', '2026-03-07 07:14:28'),
(113, 11, 'Login', 'User logged in successfully', '2026-03-07 07:15:05'),
(114, 11, 'Login', 'User logged in successfully', '2026-03-07 07:29:37'),
(115, 21, 'Login', 'User logged in successfully', '2026-03-07 07:30:13'),
(116, 21, 'Login', 'User logged in successfully', '2026-03-07 07:32:01'),
(117, 11, 'Login', 'User logged in successfully', '2026-03-07 07:51:30'),
(118, 21, 'Login', 'User logged in successfully', '2026-03-07 07:52:03'),
(119, 11, 'Login', 'User logged in successfully', '2026-03-07 07:56:00'),
(120, 21, 'Login', 'User logged in successfully', '2026-03-07 07:56:29'),
(121, 11, 'Login', 'User logged in successfully', '2026-03-07 07:57:31'),
(122, 24, 'Login', 'User logged in successfully', '2026-03-07 08:00:01'),
(123, 1, 'Login', 'User logged in successfully', '2026-03-07 08:05:50'),
(124, 1, 'Login', 'User logged in successfully', '2026-03-07 08:06:24'),
(125, 24, 'Login', 'User logged in successfully', '2026-03-07 08:07:12'),
(126, 1, 'Login', 'User logged in successfully', '2026-03-07 08:14:38'),
(127, 24, 'Login', 'User logged in successfully', '2026-03-07 08:15:38'),
(128, 11, 'Login', 'User logged in successfully', '2026-03-07 08:33:16'),
(129, 11, 'Login', 'User logged in successfully', '2026-03-07 08:41:36'),
(130, 24, 'Login', 'User logged in successfully', '2026-03-07 08:43:00'),
(131, 11, 'Login', 'User logged in successfully', '2026-03-07 08:43:40'),
(132, 17, 'Login', 'User logged in successfully', '2026-03-07 08:44:05'),
(133, 11, 'Login', 'User logged in successfully', '2026-03-07 08:46:15'),
(134, 11, 'User Creation', 'Created Instructor account: FAC-2026-0006', '2026-03-07 08:47:45'),
(135, 25, 'Login', 'User logged in successfully', '2026-03-07 08:48:17'),
(136, 11, 'Login', 'User logged in successfully', '2026-03-07 08:51:26'),
(137, 11, 'User Creation', 'Created Student account: 02-3533-398951', '2026-03-07 08:52:32'),
(138, 26, 'Email Verification', 'Completed email verification via link', '2026-03-07 08:52:40'),
(139, 26, 'Login', 'User logged in successfully', '2026-03-07 08:53:34'),
(140, 11, 'Login', 'User logged in successfully', '2026-03-07 09:00:01'),
(141, 21, 'Login', 'User logged in successfully', '2026-03-07 09:00:41'),
(142, 11, 'Login', 'User logged in successfully', '2026-03-07 09:01:24'),
(143, 1, 'Login', 'User logged in successfully', '2026-03-07 09:34:27'),
(144, 11, 'Login', 'User logged in successfully', '2026-03-07 09:47:20'),
(145, 26, 'Login', 'User logged in successfully', '2026-03-07 09:47:43'),
(146, 1, 'Login', 'User logged in successfully', '2026-03-07 09:48:29'),
(147, 11, 'Login', 'User logged in successfully', '2026-03-08 10:20:45'),
(148, 1, 'Login', 'User logged in successfully', '2026-03-08 11:03:58'),
(149, 1, 'Login', 'User logged in successfully', '2026-03-08 11:06:33'),
(150, 11, 'Login', 'User logged in successfully', '2026-03-08 11:09:45'),
(151, 11, 'Login', 'User logged in successfully', '2026-03-09 06:04:15'),
(152, 11, 'Login', 'User logged in successfully', '2026-03-09 06:08:56'),
(153, 11, 'Login', 'User logged in successfully', '2026-03-09 07:07:43'),
(154, 11, 'Login', 'User logged in successfully', '2026-03-09 07:11:12'),
(155, 11, 'Login', 'User logged in successfully', '2026-03-09 07:13:56'),
(156, 26, 'Login', 'User logged in successfully', '2026-03-09 07:14:28'),
(157, 11, 'Login', 'User logged in successfully', '2026-03-09 07:14:51'),
(158, 19, 'Login', 'User logged in successfully', '2026-03-09 07:15:11'),
(159, 11, 'Login', 'User logged in successfully', '2026-03-09 12:07:53'),
(160, 11, 'Login', 'User logged in successfully', '2026-03-09 12:18:34'),
(161, 11, 'Login', 'User logged in successfully', '2026-03-09 13:28:38'),
(162, 11, 'Login', 'User logged in successfully', '2026-03-09 13:30:19'),
(163, 1, 'Login', 'User logged in successfully', '2026-03-09 14:28:10'),
(164, 1, 'Login', 'User logged in successfully', '2026-03-09 14:30:25'),
(165, 1, 'Login', 'User logged in successfully', '2026-03-09 14:33:25'),
(166, 1, 'Login', 'User logged in successfully', '2026-03-09 14:37:20'),
(167, 1, 'Login', 'User logged in successfully', '2026-03-09 14:45:37'),
(168, 1, 'Login', 'User logged in successfully', '2026-03-09 14:52:49'),
(169, 11, 'Login', 'User logged in successfully', '2026-03-09 14:54:01'),
(170, 24, 'Login', 'User logged in successfully', '2026-03-09 15:31:37'),
(171, 11, 'Login', 'User logged in successfully', '2026-03-09 15:32:09'),
(172, 23, 'Login', 'User logged in successfully', '2026-03-09 15:54:21'),
(173, 11, 'Login', 'User logged in successfully', '2026-03-09 16:01:33'),
(174, 23, 'Login', 'User logged in successfully', '2026-03-09 16:04:58'),
(175, 11, 'Login', 'User logged in successfully', '2026-03-09 16:06:42'),
(176, 22, 'Login', 'User logged in successfully', '2026-03-09 16:19:25'),
(177, 11, 'Login', 'User logged in successfully', '2026-03-09 16:20:49'),
(178, 23, 'Login', 'User logged in successfully', '2026-03-09 16:33:36'),
(179, 11, 'Login', 'User logged in successfully', '2026-03-09 16:34:53'),
(180, 17, 'Login', 'User logged in successfully', '2026-03-09 16:35:13'),
(181, 11, 'Login', 'User logged in successfully', '2026-03-09 16:46:59'),
(182, 22, 'Login', 'User logged in successfully', '2026-03-09 16:50:08'),
(183, 11, 'Login', 'User logged in successfully', '2026-03-11 10:04:06'),
(184, 11, 'Login', 'User logged in successfully', '2026-03-11 17:33:24'),
(185, 22, 'Login', 'User logged in successfully', '2026-03-11 17:33:57'),
(186, 11, 'Login', 'User logged in successfully', '2026-03-11 17:53:55'),
(187, 20, 'Login', 'User logged in successfully', '2026-03-11 18:00:33'),
(188, 1, 'Login', 'User logged in successfully', '2026-03-11 18:04:23'),
(189, 1, 'Login', 'User logged in successfully', '2026-03-11 18:21:42'),
(190, 1, 'Login', 'User logged in successfully', '2026-03-11 18:42:49'),
(191, 1, 'Login', 'User logged in successfully', '2026-03-11 19:48:51'),
(192, 27, 'Login', 'User logged in successfully', '2026-03-11 19:56:26'),
(193, 1, 'Login', 'User logged in successfully', '2026-03-11 19:57:00'),
(194, 11, 'Login', 'User logged in successfully', '2026-03-13 04:38:18'),
(195, 11, 'Login', 'User logged in successfully', '2026-03-13 12:31:22'),
(196, 26, 'Login', 'User logged in successfully', '2026-03-13 13:47:19'),
(197, 11, 'Login', 'User logged in successfully', '2026-03-13 13:49:07'),
(198, 26, 'Login', 'User logged in successfully', '2026-03-13 13:53:12'),
(199, 11, 'Login', 'User logged in successfully', '2026-03-13 15:05:19'),
(200, 25, 'Login', 'User logged in successfully', '2026-03-13 15:05:46'),
(201, 1, 'Login', 'User logged in successfully', '2026-03-13 15:24:27'),
(202, 11, 'Login', 'User logged in successfully', '2026-03-13 15:25:37'),
(203, 14, 'Login', 'User logged in successfully', '2026-03-13 15:28:21'),
(204, 11, 'Login', 'User logged in successfully', '2026-03-13 15:33:17'),
(205, 20, 'Login', 'User logged in successfully', '2026-03-13 15:34:15'),
(206, 11, 'Login', 'User logged in successfully', '2026-03-15 13:52:16'),
(207, 11, 'Login', 'User logged in successfully', '2026-03-15 14:57:50'),
(208, 11, 'Login', 'User logged in successfully', '2026-03-15 14:59:32'),
(209, 11, 'Login', 'User logged in successfully', '2026-03-15 15:11:58'),
(210, 27, 'Login', 'User logged in successfully', '2026-03-15 16:07:33'),
(211, 11, 'Login', 'User logged in successfully', '2026-03-17 12:41:50'),
(212, 1, 'Login', 'User logged in successfully', '2026-03-17 12:49:10'),
(213, 11, 'Login', 'User logged in successfully', '2026-03-17 13:17:47'),
(214, 1, 'Login', 'User logged in successfully', '2026-03-17 13:23:27'),
(215, 1, 'Login', 'User logged in successfully', '2026-03-17 13:25:26'),
(216, 11, 'Login', 'User logged in successfully', '2026-03-18 21:10:54'),
(217, 11, 'Bulk User Creation', 'Bulk created student account: 02-2101-00001 via CSV (Row 2)', '2026-03-18 21:29:08'),
(218, 11, 'Bulk User Creation', 'Bulk created student account: 02-2101-00002 via CSV (Row 3)', '2026-03-18 21:29:08'),
(219, 11, 'Bulk User Creation', 'Bulk created student account: 02-2101-00003 via CSV (Row 4)', '2026-03-18 21:29:08'),
(220, 11, 'User Deletion', 'Permanently deleted Student account: bwhite03', '2026-03-18 21:32:48'),
(221, 11, 'User Deletion', 'Permanently deleted Student account: asmith02', '2026-03-18 21:32:52'),
(222, 11, 'User Deletion', 'Permanently deleted Student account: jdoe01', '2026-03-18 21:32:57'),
(223, 11, 'Bulk User Creation', 'Bulk created student account: 02-2101-00001 via CSV (Row 2)', '2026-03-18 21:38:56'),
(224, 11, 'Bulk User Creation', 'Bulk created student account: 02-2101-00002 via CSV (Row 3)', '2026-03-18 21:38:56'),
(225, 11, 'Bulk User Creation', 'Bulk created student account: 02-2101-00003 via CSV (Row 4)', '2026-03-18 21:38:56'),
(227, 11, 'Login', 'User logged in successfully', '2026-03-18 21:39:45'),
(228, 11, 'User Deletion', 'Permanently deleted Student account: 02-2101-00002', '2026-03-18 21:50:47'),
(229, 11, 'User Deletion', 'Permanently deleted Student account: 02-2101-00003', '2026-03-18 21:50:50'),
(230, 11, 'User Deletion', 'Permanently deleted Student account: 02-2101-00001', '2026-03-18 21:50:56'),
(231, 11, 'Bulk User Creation', 'Bulk created instructor account: FAC-2026-0501 via CSV (Row 2)', '2026-03-18 21:51:52'),
(232, 11, 'Bulk User Creation', 'Bulk created instructor account: FAC-2026-0502 via CSV (Row 3)', '2026-03-18 21:51:52'),
(233, 11, 'Bulk User Creation', 'Bulk created instructor account: FAC-2026-0503 via CSV (Row 4)', '2026-03-18 21:51:52'),
(234, 22, 'Login', 'User logged in successfully', '2026-03-18 22:48:12'),
(235, 11, 'Login', 'User logged in successfully', '2026-03-19 00:34:19'),
(236, 17, 'Login', 'User logged in successfully', '2026-03-19 00:35:24'),
(237, 11, 'Login', 'User logged in successfully', '2026-03-19 00:53:25'),
(238, 11, 'Login', 'User logged in successfully', '2026-03-19 05:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `is_pinned` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image_path` text DEFAULT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Approved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcement_id`, `title`, `content`, `author_id`, `is_pinned`, `is_active`, `created_at`, `image_path`, `status`) VALUES
(1, 'System Update!', 'citeappdb_v7 beta test', 1, 0, 1, '2026-03-05 13:35:21', NULL, 'Approved'),
(4, 'SUCCESS CHUNKS CEREMONY', 'Theme: \"Building Momentum for Success: Leveling Up Towards Professional Excellence\"\nAttention 2nd Year Students!', 11, 0, 1, '2026-03-05 15:42:04', NULL, 'Approved'),
(5, 'CALL FOR IT ROBLOX DEVELOPERS, BUILDERS & DESIGNERS', 'We’re looking for creative and dedicated IT students to join our Roblox project! If you love building immersive worlds, designing, or coding in Roblox Studio, we want you!\nQualifications:\n-PHINMA BSIT Student\n-Skilled in Roblox Studio building & design\n-Creative and detail-oriented\n-Responsible and deadline-driven\n-Owns a laptop/PC that can run Roblox Studio\n-Lua knowledge is a plus\n-Open to all year levels\nIf you’re interested, please bring a sample of your Roblox build or design when you apply ,this will help us see your skills and creativity.', 22, 0, 1, '2026-03-06 11:15:01', NULL, 'Approved'),
(6, 'test', 'IT nganee', 11, 0, 1, '2026-03-13 13:07:31', NULL, 'Approved'),
(7, 'CALL FOR IT ROBLOX DEVELOPERS, BUILDERS & DESIGNERS', 'We’re looking for creative and dedicated IT students to join our Roblox project! If you love building immersive worlds, designing, or coding in Roblox Studio, we want you!\nQualifications:\n-PHINMA BSIT Student\n-Skilled in Roblox Studio building & design\n-Creative and detail-oriented\n-Responsible and deadline-driven\n-Owns a laptop/PC that can run Roblox Studio\n-Lua knowledge is a plus\n-Open to all year levels\nIf you’re interested, please bring a sample of your Roblox build or design when you apply ,this will help us see your skills and creativity.', 11, 0, 1, '2026-03-13 13:29:30', NULL, 'Approved'),
(8, 'CALL FOR IT ROBLOX DEVELOPERS, BUILDERS & DESIGNERS', 'repost test. ..\n\n---\nReposted from Angel Lampitao:\nWe’re looking for creative and dedicated IT students to join our Roblox project! If you love building immersive worlds, designing, or coding in Roblox Studio, we want you!\nQualifications:\n-PHINMA BSIT Student\n-Skilled in Roblox Studio building & design\n-Creative and detail-oriented\n-Responsible and deadline-driven\n-Owns a laptop/PC that can run Roblox Studio\n-Lua knowledge is a plus\n-Open to all year levels\nIf you’re interested, please bring a sample of your Roblox build or design when you apply ,this will help us see your skills and creativity.', 11, 0, 1, '2026-03-13 13:35:19', NULL, 'Approved'),
(9, 'repost test', 'Originally: System Update!\n\nciteappdb_v7 beta test\n\n---\nReposted from Darwin Galudo', 11, 0, 1, '2026-03-13 13:46:09', NULL, 'Approved'),
(10, 'DTL', 'laay kaau, ta!', 26, 0, 1, '2026-03-13 13:48:33', NULL, 'Approved'),
(11, 'UPDATE!', 'Still 2 groups pa ang na clear ug na recommend for defense..', 14, 0, 1, '2026-03-13 15:32:16', NULL, 'Approved'),
(15, 'System Checking', 'Good morning @everyone !\nReminder lang that today is your checking.\nMake sure sa gawas ra maghulat.\n\nONE GROUP AT A TIME lang pwede makasulod .\nAyha na musulod ang isa ka group if ang isa ka grupo naka gawas na.\nI will stop my checking once I will saw a group not following instructions. Ug please lang, WALAY MAG ATANG SA PURTAHAN.', 19, 0, 1, '2026-03-15 16:54:43', NULL, 'Approved'),
(16, 'hello', 'uwu', 28, 0, 1, '2026-03-15 17:15:58', NULL, 'Approved'),
(17, 'Graduating Students', '1. Aspiras ,Patricia Patty Aspiras\n2. Gregorio, Sofia Sofia Gwyn Gregorio\n3. Rudinas, Ela Ela Rudinas\n\nPls Visit sir JP (Registrar\'s Office) for your TOR for COC and including PSA for Ms Rudinas.', 1, 1, 1, '2026-03-17 13:03:10', NULL, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `announcement_comments`
--

CREATE TABLE `announcement_comments` (
  `comment_id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement_comments`
--

INSERT INTO `announcement_comments` (`comment_id`, `announcement_id`, `user_id`, `comment_text`, `parent_id`, `created_at`) VALUES
(1, 1, 11, 'bugs is life!', NULL, '2026-03-06 05:55:46'),
(2, 5, 11, '@everyone', NULL, '2026-03-13 13:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `announcement_likes`
--

CREATE TABLE `announcement_likes` (
  `like_id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement_likes`
--

INSERT INTO `announcement_likes` (`like_id`, `announcement_id`, `user_id`, `created_at`) VALUES
(1, 5, 11, '2026-03-13 13:00:50'),
(2, 4, 1, '2026-03-13 13:06:11'),
(5, 1, 11, '2026-03-15 16:44:59'),
(7, 11, 19, '2026-03-15 16:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `announcement_shares`
--

CREATE TABLE `announcement_shares` (
  `share_id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement_shares`
--

INSERT INTO `announcement_shares` (`share_id`, `announcement_id`, `user_id`, `created_at`) VALUES
(1, 1, 11, '2026-03-13 13:18:06'),
(2, 5, 11, '2026-03-13 13:29:30'),
(3, 5, 11, '2026-03-13 13:35:19'),
(4, 1, 11, '2026-03-13 13:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT 'Others',
  `status` enum('Pending','Approved','Declined','Completed','Cancelled','Missed','Expired') NOT NULL DEFAULT 'Pending',
  `notes` text DEFAULT NULL,
  `consultation_type` enum('Face-to-Face','Online') DEFAULT 'Face-to-Face',
  `concern` text DEFAULT NULL,
  `reschedule_reason` text DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `request_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `completed_at` timestamp NULL DEFAULT NULL,
  `duration_minutes` int(11) DEFAULT NULL,
  `is_archived` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `student_id`, `instructor_id`, `slot_id`, `type`, `status`, `notes`, `consultation_type`, `concern`, `reschedule_reason`, `approved_by`, `approved_at`, `request_time`, `updated_at`, `completed_at`, `duration_minutes`, `is_archived`) VALUES
(2, 18, 17, 7, 'Others', 'Completed', NULL, 'Online', NULL, 'mao ray vacant', 11, '2026-03-06 01:37:48', '2026-03-06 01:37:48', '2026-03-06 09:54:40', '2026-03-06 09:54:40', 120, 0),
(3, 20, 19, 6, 'Others', 'Completed', NULL, 'Face-to-Face', NULL, NULL, NULL, NULL, '2026-03-06 09:24:15', '2026-03-06 09:43:50', '2026-03-06 09:43:50', 30, 0),
(4, 21, 14, 8, 'Others', 'Completed', NULL, 'Face-to-Face', NULL, NULL, 11, '2026-03-06 10:55:17', '2026-03-06 10:54:36', '2026-03-06 10:57:50', '2026-03-06 10:57:50', 60, 0),
(5, 23, 22, 9, 'Others', 'Expired', NULL, 'Face-to-Face', NULL, NULL, NULL, NULL, '2026-03-06 11:21:26', '2026-03-07 09:34:43', NULL, NULL, 0),
(6, 18, 22, 9, 'Others', 'Declined', 'time sa', 'Face-to-Face', NULL, NULL, 11, '2026-03-07 02:42:03', '2026-03-07 02:42:03', '2026-03-07 03:04:29', NULL, NULL, 0),
(7, 26, 25, 11, 'Others', 'Completed', NULL, 'Face-to-Face', NULL, NULL, 11, '2026-03-09 15:18:13', '2026-03-07 08:54:45', '2026-03-09 15:18:42', NULL, NULL, 0),
(8, 21, 24, 10, 'Others', 'Completed', NULL, 'Face-to-Face', NULL, NULL, NULL, NULL, '2026-03-07 09:01:04', '2026-03-09 15:22:57', NULL, NULL, 0),
(9, 18, 25, 11, 'Others', 'Completed', NULL, 'Face-to-Face', NULL, NULL, 11, '2026-03-07 09:15:12', '2026-03-07 09:15:12', '2026-03-09 15:16:31', NULL, NULL, 0),
(10, 23, 24, 10, 'Others', 'Completed', NULL, 'Face-to-Face', NULL, NULL, 11, '2026-03-09 15:33:54', '2026-03-09 15:33:54', '2026-03-09 15:36:44', '2026-03-09 15:36:44', 90, 0),
(11, 26, 22, 15, 'Others', 'Completed', NULL, 'Face-to-Face', NULL, NULL, 11, '2026-03-09 16:21:20', '2026-03-09 16:21:20', '2026-03-09 16:23:50', NULL, NULL, 0),
(12, 18, 22, 15, 'Others', 'Completed', NULL, 'Online', NULL, NULL, 11, '2026-03-09 16:22:27', '2026-03-09 16:22:27', '2026-03-09 16:48:56', '2026-03-09 16:48:56', 120, 0),
(13, 20, 22, 15, 'Others', 'Completed', NULL, 'Online', NULL, NULL, 11, '2026-03-09 16:22:40', '2026-03-09 16:22:40', '2026-03-13 04:08:49', '2026-03-09 16:31:46', 120, 1),
(14, 23, 17, 16, 'Others', 'Completed', NULL, 'Online', NULL, 'busy', NULL, NULL, '2026-03-09 16:34:17', '2026-03-09 16:45:18', '2026-03-09 16:45:18', 180, 0),
(15, 26, 24, 10, 'Others', 'Pending', NULL, 'Face-to-Face', NULL, NULL, NULL, NULL, '2026-03-13 13:59:27', '2026-03-13 13:59:27', NULL, NULL, 0),
(16, 28, 14, 20, 'Academic', 'Completed', 'tidkgdydhff', 'Face-to-Face', '', NULL, 11, '2026-03-15 17:00:26', '2026-03-15 13:59:46', '2026-03-15 17:04:25', '2026-03-15 17:03:32', NULL, 1),
(17, 18, 25, 24, 'Academic', 'Completed', 'tidigyodyd', 'Face-to-Face', '', '', 11, '2026-03-15 17:23:11', '2026-03-15 14:26:04', '2026-03-15 17:23:33', '2026-03-15 17:23:33', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `available_slots`
--

CREATE TABLE `available_slots` (
  `slot_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `slot_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `capacity` int(11) NOT NULL DEFAULT 1,
  `status` enum('Available','Booked','Cancelled') NOT NULL DEFAULT 'Available',
  `duration_minutes` int(11) GENERATED ALWAYS AS (timestampdiff(MINUTE,`start_time`,`end_time`)) STORED,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `available_slots`
--

INSERT INTO `available_slots` (`slot_id`, `instructor_id`, `slot_date`, `start_time`, `end_time`, `capacity`, `status`, `created_at`) VALUES
(1, 14, '2026-03-07', '07:30:00', '08:00:00', 1, 'Cancelled', '2026-03-05 14:39:40'),
(2, 17, '2026-03-08', '10:30:00', '12:00:00', 1, 'Cancelled', '2026-03-05 15:46:05'),
(3, 19, '2026-03-06', '07:30:00', '08:00:00', 1, 'Cancelled', '2026-03-06 08:48:04'),
(4, 19, '2026-03-06', '07:00:00', '07:30:00', 1, 'Cancelled', '2026-03-06 08:49:30'),
(5, 19, '2026-03-06', '09:00:00', '10:00:00', 1, 'Cancelled', '2026-03-06 08:58:45'),
(6, 19, '2026-03-06', '17:30:00', '18:00:00', 1, 'Cancelled', '2026-03-06 09:03:06'),
(7, 17, '2026-03-06', '18:00:00', '20:00:00', 1, 'Cancelled', '2026-03-06 09:48:01'),
(8, 14, '2026-03-06', '19:00:00', '20:00:00', 1, 'Cancelled', '2026-03-06 10:53:12'),
(9, 22, '2026-03-07', '07:00:00', '09:00:00', 3, 'Cancelled', '2026-03-06 11:10:11'),
(10, 24, '2026-03-31', '09:00:00', '10:30:00', 4, 'Available', '2026-03-07 08:32:40'),
(11, 25, '2026-03-07', '17:30:00', '18:30:00', 3, 'Cancelled', '2026-03-07 08:50:01'),
(12, 17, '2026-03-10', '13:00:00', '14:30:00', 5, 'Cancelled', '2026-03-09 16:03:22'),
(13, 19, '2026-03-10', '13:00:00', '14:30:00', 5, 'Cancelled', '2026-03-09 16:04:09'),
(14, 25, '2026-03-10', '13:00:00', '14:30:00', 5, 'Cancelled', '2026-03-09 16:04:18'),
(15, 22, '2026-03-10', '09:00:00', '11:00:00', 3, 'Booked', '2026-03-09 16:20:03'),
(16, 17, '2026-03-11', '09:00:00', '12:00:00', 4, 'Cancelled', '2026-03-09 16:37:01'),
(17, 22, '2026-03-29', '15:00:00', '18:00:00', 7, 'Available', '2026-03-13 04:49:30'),
(18, 25, '2026-03-28', '09:00:00', '10:30:00', 1, 'Available', '2026-03-13 15:06:57'),
(19, 25, '2026-03-28', '11:00:00', '12:30:00', 5, 'Available', '2026-03-13 15:07:20'),
(20, 14, '2026-03-27', '10:30:00', '12:00:00', 6, 'Available', '2026-03-13 15:29:22'),
(22, 19, '2026-03-31', '09:00:00', '10:00:00', 5, 'Available', '2026-03-15 16:57:35'),
(23, 25, '2026-03-17', '09:00:00', '10:00:00', 1, 'Available', '2026-03-15 17:02:32'),
(24, 25, '2026-03-17', '00:00:00', '03:00:00', 1, 'Available', '2026-03-15 17:04:01'),
(25, 14, '2026-03-31', '09:00:00', '10:00:00', 10, 'Available', '2026-03-15 17:07:18'),
(26, 22, '2026-03-25', '08:00:00', '09:00:00', 5, 'Available', '2026-03-18 22:53:15'),
(27, 22, '2026-03-27', '08:00:00', '09:00:00', 5, 'Available', '2026-03-18 22:53:15'),
(28, 22, '2026-03-30', '08:00:00', '09:00:00', 5, 'Available', '2026-03-18 22:53:15'),
(29, 17, '2026-03-23', '09:00:00', '10:00:00', 5, 'Cancelled', '2026-03-19 00:48:12'),
(30, 17, '2026-03-23', '10:00:00', '11:00:00', 5, 'Cancelled', '2026-03-19 00:48:12'),
(31, 17, '2026-03-23', '11:00:00', '12:00:00', 5, 'Cancelled', '2026-03-19 00:48:12'),
(32, 17, '2026-03-25', '09:00:00', '10:00:00', 5, 'Cancelled', '2026-03-19 00:48:12'),
(33, 17, '2026-03-25', '10:00:00', '11:00:00', 5, 'Cancelled', '2026-03-19 00:48:12'),
(34, 17, '2026-03-25', '11:00:00', '12:00:00', 5, 'Cancelled', '2026-03-19 00:48:12'),
(35, 17, '2026-03-27', '09:00:00', '10:00:00', 5, 'Cancelled', '2026-03-19 00:48:12'),
(36, 17, '2026-03-27', '10:00:00', '11:00:00', 5, 'Cancelled', '2026-03-19 00:48:12'),
(37, 17, '2026-03-27', '11:00:00', '12:00:00', 5, 'Cancelled', '2026-03-19 00:48:12'),
(38, 17, '2026-03-23', '09:00:00', '10:00:00', 6, 'Available', '2026-03-19 00:53:04'),
(39, 17, '2026-03-23', '10:00:00', '11:00:00', 6, 'Available', '2026-03-19 00:53:04'),
(40, 17, '2026-03-23', '11:00:00', '12:00:00', 6, 'Available', '2026-03-19 00:53:04'),
(41, 17, '2026-03-25', '09:00:00', '10:00:00', 6, 'Available', '2026-03-19 00:53:04'),
(42, 17, '2026-03-25', '10:00:00', '11:00:00', 6, 'Available', '2026-03-19 00:53:04'),
(43, 17, '2026-03-25', '11:00:00', '12:00:00', 6, 'Available', '2026-03-19 00:53:04'),
(44, 17, '2026-03-27', '09:00:00', '10:00:00', 6, 'Available', '2026-03-19 00:53:04'),
(45, 17, '2026-03-27', '10:00:00', '11:00:00', 6, 'Available', '2026-03-19 00:53:04'),
(46, 17, '2026-03-27', '11:00:00', '12:00:00', 6, 'Available', '2026-03-19 00:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

CREATE TABLE `calendar_events` (
  `event_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `event_date` date NOT NULL,
  `event_time` time DEFAULT NULL,
  `event_type` varchar(50) NOT NULL DEFAULT 'general',
  `is_visible` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calendar_events`
--

INSERT INTO `calendar_events` (`event_id`, `title`, `description`, `event_date`, `event_time`, `event_type`, `is_visible`, `created_by`, `created_at`) VALUES
(1, 'DEFENSE', 'Goodluck and have fun', '2026-03-18', '09:00:00', 'general', 1, 1, '2026-03-17 14:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `comment_likes`
--

CREATE TABLE `comment_likes` (
  `like_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consultation_records`
--

CREATE TABLE `consultation_records` (
  `record_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `summary_of_discussion` text NOT NULL,
  `action_taken` text NOT NULL,
  `recommendations` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `consultation_type` enum('Face-to-Face','Online') NOT NULL DEFAULT 'Face-to-Face',
  `duration_minutes` int(11) DEFAULT 0,
  `outcome_status` enum('Completed','Needs Follow-Up') NOT NULL DEFAULT 'Completed',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consultation_records`
--

INSERT INTO `consultation_records` (`record_id`, `appointment_id`, `instructor_id`, `student_id`, `summary_of_discussion`, `action_taken`, `recommendations`, `notes`, `consultation_type`, `duration_minutes`, `outcome_status`, `created_at`, `updated_at`) VALUES
(2, 3, 19, 20, 'The student presented the progress of their web system and discussed its features and functionality.', 'The system was reviewed and feedback was provided to improve its design and performance.', 'The student is advised to continue testing the system and improve its user interface.', 'The student is making satisfactory progress in the development of the system.', 'Face-to-Face', 30, 'Completed', '2026-03-06 09:43:50', '2026-03-06 09:43:50'),
(3, 2, 17, 18, 'The student presented the progress of their app development and explained its main features.', 'The app was reviewed and feedback was given to improve functionality and interface.', 'The student is advised to continue testing the app and fix any detected issues.', 'The student is progressing well in developing the application.', 'Online', 120, 'Completed', '2026-03-06 09:54:40', '2026-03-06 09:54:40'),
(4, 4, 14, 21, 'The consultation discussed the student\'s SIA swimlane diagram and the system process flow.', 'The swimlane diagram was reviewed and corrections were suggested for clearer process flow.', 'The student is advised to refine the swimlane diagram and ensure all system actors and processes are included.', 'The student showed understanding of the system workflow and diagram structure.', 'Face-to-Face', 60, 'Completed', '2026-03-06 10:57:50', '2026-03-06 10:57:50'),
(5, 10, 24, 23, 'Discussed web app development, frontend/backend options, and user authentication issues.', 'Reviewed code, created login form with validation, and connected to test backend.', 'Login prototype working; roadmap set for next steps.', '', 'Face-to-Face', 90, 'Completed', '2026-03-09 15:36:44', '2026-03-09 15:36:44'),
(6, 13, 22, 20, 'Reviewed key DSA topics: arrays, linked lists, trees, and sorting algorithms. Discussed problem-solving approaches and complexity analysis.', 'Solved practice problems, analyzed algorithm efficiency, and clarified concepts.', 'Practice more coding problems daily; focus on optimizing time and space complexity.', '', 'Online', 120, 'Completed', '2026-03-09 16:31:46', '2026-03-09 16:31:46'),
(7, 14, 17, 23, 'Reviewed Flutter app development, widgets, state management, and UI design principles.', 'Created a sample app, implemented basic widgets, and tested navigation between screens.', 'Practice building more screens and learn advanced state management (Provider/Bloc).', '', 'Online', 180, 'Completed', '2026-03-09 16:45:18', '2026-03-09 16:45:18'),
(8, 12, 22, 18, 'Discussed FIFO concept, queue data structure, and its applications in programming and memory management.', 'Solved example problems using queues and implemented basic FIFO logic in code.', 'Practice more queue-based problems and explore circular queue implementation.', '', 'Online', 120, 'Needs Follow-Up', '2026-03-09 16:48:56', '2026-03-09 16:48:56'),
(9, 16, 14, 28, 'tidkgdydhff', '9679uutul', '96r97ruprut', '', 'Face-to-Face', 30, 'Needs Follow-Up', '2026-03-15 17:03:32', '2026-03-15 17:03:32'),
(10, 17, 25, 18, 'tidigyodyd', 'igxidtdy8r', 'gkdid', '', 'Face-to-Face', 30, 'Completed', '2026-03-15 17:23:33', '2026-03-15 17:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `verification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_verifications`
--

INSERT INTO `email_verifications` (`verification_id`, `user_id`, `verification_code`, `is_verified`, `created_at`) VALUES
(5, 18, 'e8eba1d81691fc8725792042ab4641cf', 1, '2026-03-06 00:59:00'),
(6, 20, '1d6b40ad9c02fb9f97dbdaa89d19e117', 1, '2026-03-06 09:20:47'),
(7, 21, 'cf84282863ba412ff47f1df18460148e', 1, '2026-03-06 10:48:05'),
(8, 23, 'cc308304132ee680a4d81d1ccfde86d1', 1, '2026-03-06 11:18:59'),
(9, 26, 'b438a068f313972d2a3c8d21eff9c9da', 1, '2026-03-07 08:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `follow_up_links`
--

CREATE TABLE `follow_up_links` (
  `link_id` int(11) NOT NULL,
  `parent_record_id` int(11) NOT NULL,
  `follow_up_appointment_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_profiles`
--

CREATE TABLE `instructor_profiles` (
  `user_id` int(11) NOT NULL,
  `faculty_id` varchar(50) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `default_preset_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor_profiles`
--

INSERT INTO `instructor_profiles` (`user_id`, `faculty_id`, `department`, `specialization`, `position`, `default_preset_id`) VALUES
(14, 'FAC-2026-0001', 'CITE', NULL, 'SIA Instructor', NULL),
(17, 'FAC-2026-0002', 'CITE', NULL, 'App Development Instructor', NULL),
(19, 'FAC-2026-0003', 'CITE', '', 'Web System Instructor', NULL),
(22, 'FAC-2026-0004', 'CITE', '', 'Data Structures & Algorithms', NULL),
(24, 'FAC-2026-0005', 'CITE', 'Web Development', 'Web System Ins.', NULL),
(25, 'FAC-2026-0006', 'CITE', '', 'IT Era Ins.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message_text` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `appointment_id`, `sender_id`, `receiver_id`, `message_text`, `is_read`, `deleted_at`, `created_at`) VALUES
(2, NULL, 11, 18, 'hi', 1, NULL, '2026-03-06 01:51:32'),
(3, NULL, 18, 11, 'hello', 1, NULL, '2026-03-06 01:52:37'),
(4, NULL, 11, 20, 'ta matilde', 1, NULL, '2026-03-06 10:02:25'),
(5, NULL, 20, 11, 'j', 1, NULL, '2026-03-06 10:03:06'),
(6, NULL, 21, 14, 'sir', 1, NULL, '2026-03-07 07:30:28'),
(7, NULL, 11, 21, 'lourd', 1, NULL, '2026-03-07 07:56:16'),
(8, NULL, 21, 11, 'yes maam?', 1, NULL, '2026-03-07 07:56:44'),
(9, NULL, 11, 21, 'patawad', 0, NULL, '2026-03-07 07:58:24'),
(10, NULL, 26, 25, 'maam asa ko nag kulang?', 1, NULL, '2026-03-07 08:58:38'),
(11, NULL, 26, 22, 'maam', 1, NULL, '2026-03-07 08:59:31'),
(12, NULL, 26, 1, 'sir?', 1, NULL, '2026-03-07 09:48:13'),
(13, NULL, 11, 23, 'dzai', 1, '2026-03-13 15:27:15', '2026-03-09 15:43:07'),
(14, NULL, 23, 11, 'yez mem?', 1, NULL, '2026-03-09 15:54:37'),
(15, NULL, 23, 24, 'maam', 0, NULL, '2026-03-09 16:00:40'),
(16, NULL, 1, 26, 'dzong?', 1, NULL, '2026-03-11 18:41:28'),
(17, NULL, 1, 27, 'pre?', 1, NULL, '2026-03-11 19:11:55'),
(18, NULL, 1, 27, 'ui', 1, NULL, '2026-03-11 19:23:05'),
(19, NULL, 27, 1, 'sman', 1, NULL, '2026-03-11 19:56:35'),
(20, NULL, 11, 20, 'dwbe?', 0, NULL, '2026-03-13 04:17:01'),
(21, NULL, 22, 26, 'balilgig 30 ka balik, flutter run!', 1, NULL, '2026-03-13 04:51:09'),
(22, NULL, 26, 22, 'yes maam', 0, NULL, '2026-03-13 13:57:15'),
(23, NULL, 26, 1, 'yes sir?', 1, NULL, '2026-03-13 13:57:36'),
(24, NULL, 25, 26, 'sa all', 0, NULL, '2026-03-13 15:08:02'),
(25, NULL, 11, 23, 'kuan', 0, NULL, '2026-03-13 15:27:05'),
(26, NULL, 14, 21, 'sman?', 0, NULL, '2026-03-13 15:30:11'),
(27, NULL, 11, 1, 'sirz?', 1, NULL, '2026-03-15 15:25:53'),
(28, NULL, 11, 21, 'lourd', 0, NULL, '2026-03-15 16:45:53'),
(29, NULL, 28, 26, 'pogs', 0, NULL, '2026-03-15 16:48:22'),
(30, NULL, 19, 14, 'besh', 1, NULL, '2026-03-15 16:55:45'),
(31, NULL, 14, 19, 'yes besh', 0, NULL, '2026-03-15 17:06:40'),
(32, NULL, 11, 18, 'hi', 0, '2026-03-17 12:45:19', '2026-03-15 17:31:07'),
(33, NULL, 1, 11, 'yes?', 1, NULL, '2026-03-17 12:49:28'),
(34, NULL, 1, 11, 'sa messages ang nanay delete button?', 1, NULL, '2026-03-17 13:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `notification_type` varchar(50) NOT NULL DEFAULT 'general',
  `related_id` int(11) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `user_id`, `sender_id`, `message`, `notification_type`, `related_id`, `action_url`, `is_read`, `created_at`) VALUES
(4, 18, 11, 'An appointment has been booked for you by the admin.', 'appointment_approved', 2, NULL, 0, '2026-03-06 01:37:48'),
(5, 17, 11, 'A new walk-in appointment has been booked on your slot.', 'new_appointment', 2, NULL, 1, '2026-03-06 01:37:48'),
(6, 18, NULL, 'New message from Admin', 'new_message', 2, NULL, 1, '2026-03-06 01:51:32'),
(8, 1, 11, 'Angeline Rolola commented on \"System Update!\"', 'announcement_comment', 1, NULL, 1, '2026-03-06 05:55:46'),
(9, 20, NULL, 'Your appointment request has been approved!', 'appointment_approved', 3, NULL, 1, '2026-03-06 09:41:43'),
(10, 20, 19, 'Your consultation has been marked as completed. View the session report for details.', 'appointment_completed', 3, NULL, 1, '2026-03-06 09:43:50'),
(11, 18, NULL, 'Your appointment has been rescheduled. Reason: mao ray vacant', 'appointment_rescheduled', 2, NULL, 0, '2026-03-06 09:48:21'),
(12, 18, 17, 'Your consultation has been marked as completed. View the session report for details.', 'appointment_completed', 2, NULL, 0, '2026-03-06 09:54:40'),
(13, 20, NULL, 'New message from Admin', 'new_message', 4, NULL, 1, '2026-03-06 10:02:25'),
(15, 21, NULL, 'Your appointment request has been approved!', 'appointment_approved', 4, NULL, 1, '2026-03-06 10:55:17'),
(16, 21, 14, 'Your consultation has been marked as completed. View the session report for details.', 'appointment_completed', 4, NULL, 1, '2026-03-06 10:57:50'),
(17, 18, 11, 'An appointment has been booked for you by the admin.', 'appointment_approved', 6, NULL, 0, '2026-03-07 02:42:03'),
(18, 22, 11, 'A new walk-in appointment has been booked on your slot.', 'new_appointment', 6, NULL, 0, '2026-03-07 02:42:03'),
(19, 18, NULL, 'Your appointment request was declined. Reason: time sa', 'appointment_declined', 6, NULL, 0, '2026-03-07 03:04:29'),
(20, 14, NULL, 'New message from Student', 'new_message', 6, NULL, 1, '2026-03-07 07:30:28'),
(21, 21, NULL, 'New message from Admin', 'new_message', 7, NULL, 1, '2026-03-07 07:56:16'),
(23, 21, NULL, 'New message from Admin', 'new_message', 9, NULL, 0, '2026-03-07 07:58:24'),
(24, 25, NULL, 'New message from Student', 'new_message', 10, NULL, 1, '2026-03-07 08:58:38'),
(25, 22, NULL, 'New message from Student', 'new_message', 11, NULL, 0, '2026-03-07 08:59:31'),
(26, 18, 11, 'An appointment has been booked for you by the admin.', 'appointment_approved', 9, NULL, 0, '2026-03-07 09:15:12'),
(27, 25, 11, 'A new walk-in appointment has been booked on your slot.', 'new_appointment', 9, NULL, 1, '2026-03-07 09:15:12'),
(28, 23, NULL, 'Your appointment on 2026-03-07 has been marked as Expired.', 'expired', 5, NULL, 1, '2026-03-07 09:34:43'),
(29, 22, NULL, 'Appointment with student ID 23 on 2026-03-07 was marked as Expired.', 'expired', 5, NULL, 0, '2026-03-07 09:34:43'),
(30, 1, NULL, 'New message from Student', 'new_message', 12, NULL, 1, '2026-03-07 09:48:13'),
(31, 18, NULL, 'Your appointment has been marked as completed.', 'appointment_completed', 9, NULL, 0, '2026-03-09 15:16:31'),
(32, 26, NULL, 'Your appointment request has been approved!', 'appointment_approved', 7, NULL, 1, '2026-03-09 15:18:13'),
(33, 26, NULL, 'Your appointment has been marked as completed.', 'appointment_completed', 7, NULL, 1, '2026-03-09 15:18:42'),
(34, 21, NULL, 'Your appointment has been marked as completed.', 'appointment_completed', 8, NULL, 0, '2026-03-09 15:22:57'),
(35, 23, 11, 'An appointment has been booked for you by the admin.', 'appointment_approved', 10, NULL, 1, '2026-03-09 15:33:54'),
(36, 24, 11, 'A new walk-in appointment has been booked on your slot.', 'new_appointment', 10, NULL, 0, '2026-03-09 15:33:54'),
(37, 23, 24, 'Your consultation has been marked as completed. View the session report for details.', 'appointment_completed', 10, NULL, 1, '2026-03-09 15:36:44'),
(38, 23, NULL, 'New message from Admin', 'new_message', 13, NULL, 1, '2026-03-09 15:43:07'),
(40, 24, NULL, 'New message from Student', 'new_message', 15, NULL, 0, '2026-03-09 16:00:40'),
(41, 26, 11, 'An appointment has been booked for you by the admin.', 'appointment_approved', 11, NULL, 1, '2026-03-09 16:21:20'),
(42, 22, 11, 'A new walk-in appointment has been booked on your slot.', 'new_appointment', 11, NULL, 0, '2026-03-09 16:21:20'),
(43, 18, 11, 'An appointment has been booked for you by the admin.', 'appointment_approved', 12, NULL, 0, '2026-03-09 16:22:27'),
(44, 22, 11, 'A new walk-in appointment has been booked on your slot.', 'new_appointment', 12, NULL, 1, '2026-03-09 16:22:27'),
(45, 20, 11, 'An appointment has been booked for you by the admin.', 'appointment_approved', 13, NULL, 0, '2026-03-09 16:22:40'),
(46, 22, 11, 'A new walk-in appointment has been booked on your slot.', 'new_appointment', 13, NULL, 1, '2026-03-09 16:22:40'),
(47, 26, NULL, 'Your appointment has been marked as completed.', 'appointment_completed', 11, NULL, 1, '2026-03-09 16:23:50'),
(48, 20, 22, 'Your consultation has been marked as completed. View the session report for details.', 'appointment_completed', 13, NULL, 0, '2026-03-09 16:31:46'),
(49, 23, NULL, 'Your appointment has been rescheduled. Reason: busy', 'appointment_rescheduled', 14, NULL, 0, '2026-03-09 16:37:17'),
(50, 23, 17, 'Your consultation has been marked as completed. View the session report for details.', 'appointment_completed', 14, NULL, 0, '2026-03-09 16:45:18'),
(51, 18, 22, 'Your consultation has been marked as completed. View the session report for details.', 'appointment_completed', 12, NULL, 0, '2026-03-09 16:48:56'),
(52, 26, NULL, 'New message from Super_admin', 'new_message', 16, NULL, 1, '2026-03-11 18:41:28'),
(53, 27, NULL, 'New message from Super_admin', 'new_message', 17, NULL, 0, '2026-03-11 19:11:55'),
(54, 27, NULL, 'New message from Super_admin', 'new_message', 18, NULL, 0, '2026-03-11 19:23:05'),
(55, 1, NULL, 'New message from Admin', 'new_message', 19, NULL, 1, '2026-03-11 19:56:35'),
(56, 20, 11, 'New message from Angeline Rolola', 'new_message', 20, NULL, 0, '2026-03-13 04:17:01'),
(57, 26, 22, 'New message from Angel Lampitao', 'new_message', 21, NULL, 1, '2026-03-13 04:51:09'),
(58, 22, 11, 'Angeline Rolola liked \"CALL FOR IT ROBLOX DEVELOPERS, BUILDERS & DESIGNERS\"', 'announcement_like', 5, NULL, 0, '2026-03-13 13:00:50'),
(60, 22, 11, 'Angeline Rolola commented on \"CALL FOR IT ROBLOX DEVELOPERS, BUILDERS & DESIGNERS\"', 'announcement_comment', 5, NULL, 0, '2026-03-13 13:11:07'),
(61, 1, 11, 'Angeline Rolola shared \"System Update!\"', 'announcement_share', 1, NULL, 1, '2026-03-13 13:18:06'),
(62, 22, 11, 'Angeline Rolola reposted your announcement', 'announcement_share', 7, NULL, 0, '2026-03-13 13:29:30'),
(63, 22, 11, 'Angeline Rolola reposted your announcement', 'announcement_share', 8, NULL, 0, '2026-03-13 13:35:19'),
(64, 1, 11, 'Angeline Rolola reposted your announcement', 'announcement_share', 9, NULL, 1, '2026-03-13 13:46:09'),
(65, 22, NULL, 'New message from Student', 'new_message', 22, NULL, 0, '2026-03-13 13:57:15'),
(66, 1, NULL, 'New message from Student', 'new_message', 23, NULL, 0, '2026-03-13 13:57:36'),
(67, 26, NULL, 'New message from Instructor', 'new_message', 24, NULL, 0, '2026-03-13 15:08:02'),
(68, 23, NULL, 'New message from Admin', 'new_message', 25, NULL, 0, '2026-03-13 15:27:05'),
(69, 21, NULL, 'New message from Instructor', 'new_message', 26, NULL, 0, '2026-03-13 15:30:11'),
(70, 14, NULL, 'You have a new appointment request', 'appointment', 16, NULL, 0, '2026-03-15 13:59:46'),
(71, 25, NULL, 'You have a new appointment request', 'appointment', 17, NULL, 0, '2026-03-15 14:26:04'),
(72, 1, 11, 'New message from Angeline Rolola', 'new_message', 27, NULL, 1, '2026-03-15 15:25:53'),
(73, 28, 11, 'Angeline liked your announcement', 'reaction', 12, NULL, 1, '2026-03-15 16:13:21'),
(74, 28, 11, 'Angeline liked your announcement', 'reaction', 12, NULL, 1, '2026-03-15 16:13:23'),
(75, 28, 11, 'Angeline commented on your announcement', 'comment', 12, NULL, 1, '2026-03-15 16:13:30'),
(76, 28, 11, 'Angeline commented on your announcement', 'comment', 12, NULL, 1, '2026-03-15 16:13:30'),
(77, 28, 11, 'Angeline shared your announcement', 'share', 12, NULL, 1, '2026-03-15 16:14:44'),
(78, 1, 11, 'Angeline liked your announcement', 'reaction', 1, NULL, 1, '2026-03-15 16:44:59'),
(79, 21, 11, 'New message from Angeline Rolola', 'new_message', 28, NULL, 0, '2026-03-15 16:45:53'),
(80, 26, 28, 'New message from Gabby Magusara', 'new_message', 29, NULL, 0, '2026-03-15 16:48:22'),
(81, 14, 19, 'Joannie Mae liked your announcement', 'reaction', 11, NULL, 1, '2026-03-15 16:55:15'),
(82, 14, 19, 'Joannie Mae liked your announcement', 'reaction', 11, NULL, 0, '2026-03-15 16:55:19'),
(83, 14, 19, 'New message from Joannie Mae Taypin', 'new_message', 30, NULL, 1, '2026-03-15 16:55:45'),
(84, 28, 11, 'Your appointment has been approved!', 'appointment_approved', 16, NULL, 1, '2026-03-15 17:00:26'),
(85, 18, 11, 'Your appointment has been rescheduled to 2026-03-17 at 09:00:00. Reason: conflict', 'appointment_rescheduled', 17, NULL, 0, '2026-03-15 17:02:32'),
(86, 28, 11, 'Your consultation has been marked as completed. You can now view the summary.', 'appointment_completed', 16, NULL, 1, '2026-03-15 17:03:32'),
(87, 18, 11, 'Your appointment has been rescheduled to 2026-03-17 at 00:00:00. Reason: ', 'appointment_rescheduled', 17, NULL, 0, '2026-03-15 17:04:01'),
(88, 19, 14, 'New message from Riel Jun Cainglet', 'new_message', 31, NULL, 0, '2026-03-15 17:06:40'),
(89, 18, 11, 'Your appointment has been approved!', 'appointment_approved', 17, NULL, 0, '2026-03-15 17:23:11'),
(90, 18, 11, 'Your consultation has been marked as completed. You can now view the summary.', 'appointment_completed', 17, NULL, 0, '2026-03-15 17:23:33'),
(91, 18, 11, 'New message from Angeline Rolola', 'new_message', 32, NULL, 0, '2026-03-15 17:31:07'),
(92, 19, NULL, 'Your post has been approved and published! ✨', 'post_approved', 15, NULL, 0, '2026-03-15 17:39:55'),
(93, 28, NULL, 'Your post has been approved and published! ✨', 'post_approved', 16, NULL, 0, '2026-03-15 17:40:06'),
(94, 11, NULL, 'New message from Super_admin', 'new_message', 33, NULL, 1, '2026-03-17 12:49:28'),
(95, 11, NULL, 'New message from Super_admin', 'new_message', 34, NULL, 1, '2026-03-17 13:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_presets`
--

CREATE TABLE `schedule_presets` (
  `preset_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `preset_name` varchar(100) NOT NULL,
  `days` varchar(50) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `slot_interval` int(11) NOT NULL,
  `capacity` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_presets`
--

INSERT INTO `schedule_presets` (`preset_id`, `user_id`, `preset_name`, `days`, `start_time`, `end_time`, `slot_interval`, `capacity`, `created_at`) VALUES
(1, 17, 'MWF', '1,3,5', '09:00:00', '12:00:00', 60, 6, '2026-03-19 00:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `student_profiles`
--

CREATE TABLE `student_profiles` (
  `user_id` int(11) NOT NULL,
  `school_id` varchar(20) NOT NULL,
  `course` varchar(100) DEFAULT NULL,
  `year_level` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_profiles`
--

INSERT INTO `student_profiles` (`user_id`, `school_id`, `course`, `year_level`) VALUES
(18, '02-5780-655533', 'BSIT', '2nd Year'),
(20, '02-0949-683804', 'BSIT', '2nd Year'),
(21, '02-5586-987774', 'BSIT', '2nd Year'),
(23, '02-4397-558264', 'BSIT', '2nd Year'),
(26, '02-3533-398951', 'BSIT', '2nd Year'),
(28, '02-2425-098775', 'BSIT', '2nd Year');

-- --------------------------------------------------------

--
-- Table structure for table `typing_status`
--

CREATE TABLE `typing_status` (
  `user_id` int(11) NOT NULL,
  `typing_to` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('super_admin','admin','instructor','student') NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `contact_number` varchar(20) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `first_login` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `account_status` enum('Active','Inactive','Suspended') DEFAULT 'Active',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`, `firstname`, `lastname`, `middlename`, `email`, `contact_number`, `profile_picture`, `is_active`, `first_login`, `email_verified`, `account_status`, `created_by`, `created_at`, `updated_at`, `last_login`) VALUES
(1, 'superadmin', '$2y$10$Tiy8gtrzarjJwIRI08as5OQhZnXb17n1jfHCfuMzylGYaAdSAshUK', 'super_admin', 'Darwin', 'Galudo', 'X', 'superadmin@cite.edu', '12345678901', '../uploadsAdminProfilePic/super_admin_1_1773252533.jpg', 1, 0, 1, 'Active', NULL, '2026-03-05 13:16:57', '2026-03-17 13:25:26', '2026-03-17 13:25:26'),
(11, 'angeline', '$2y$10$dyAc/p4yR873KzthjD1ON.UEmQ175TD24zNIX.I2nBuGG/NmQeZpm', 'admin', 'Angeline', 'Rolola', '', 'angeline.rolola.coc@phinmaed.com', NULL, '../uploadsAdminProfilePic/admin_11_1772718620.jpg', 1, 1, 0, 'Active', 1, '2026-03-05 13:42:38', '2026-03-19 05:33:01', '2026-03-19 05:33:01'),
(14, 'FAC-2026-0001', '$2y$10$U01AsSvh8uGDPc8nOzB5HOifMS6s7DehcsmVNwgajdjCoZbsLinq6', 'instructor', 'Riel Jun', 'Cainglet', 'E', 'rj.cainglet.coc@phinmaed.com', NULL, '../uploadsInstructorProfilePic/instructor_14_1772721515.jpg', 1, 1, 1, 'Active', 11, '2026-03-05 14:36:46', '2026-03-13 15:28:21', '2026-03-13 15:28:21'),
(17, 'FAC-2026-0002', '$2y$10$Cti0M2KfmGANUMZqlpWa2.iRDyN.l0shdZ9DzD6EfbgHQDZ2Xamka', 'instructor', 'Jayson', 'Belmes', '', 'jayson.belmes.coc@phinmaed.com', '', '../uploadsInstructorProfilePic/instructor_17_1772725519.jpg', 1, 1, 1, 'Active', 11, '2026-03-05 15:43:44', '2026-03-19 00:35:24', '2026-03-19 00:35:24'),
(18, '02-5780-655533', '$2y$10$pgRbuyv3NimsE7ww0zrP..tFBMzKPWw3dG3QrlGQjiDOzDl5HKg3C', 'student', 'Ronald Ryan', 'Intud', 'Sabas', 'rosa.intud.coc@phinmaed.com', '+639051694920', '../uploadsStudentProfilePic/student_18_1772778101.jpg', 1, 1, 1, 'Active', 11, '2026-03-06 00:59:00', '2026-03-06 06:21:41', '2026-03-06 06:20:39'),
(19, 'FAC-2026-0003', '$2y$10$uF/JCMcektFXeHdg01RNXOrn3rp9Ho.DvZHnuiPwjJbzoVH4lvgje', 'instructor', 'Joannie Mae', 'Taypin', '', 'joannie.taypin.coc@phinmaed.com', '+6399946732341', '../uploadsInstructorProfilePic/instructor_19_1772786746.jpg', 1, 1, 1, 'Active', 11, '2026-03-06 08:43:50', '2026-03-09 07:15:11', '2026-03-09 07:15:11'),
(20, '02-0949-683804', '$2y$10$VslVzLhMdcOazztSyXuIFO2ON3l0lbRSxNSFT9NlQ0BhgHes7Nnnm', 'student', 'Hannah', 'Tillano', '', 'haar.tillano.coc@phinmaed.com', '+639183567453', '../uploadsStudentProfilePic/student_20_1772789000.jpg', 1, 1, 1, 'Active', 11, '2026-03-06 09:20:47', '2026-03-13 15:34:15', '2026-03-13 15:34:15'),
(21, '02-5586-987774', '$2y$10$2yXIWAXsQNdZ2DKVy2xT2eSciZ.eUEBqO99f7fKh2YEJO.o4Uc17O', 'student', 'Lourd', 'Christian Andig', '', 'lc.andig.coc@phinmaed.com', '+639456754322', '../uploadsStudentProfilePic/student_21_1772794181.png', 1, 1, 1, 'Active', 11, '2026-03-06 10:48:05', '2026-03-09 15:44:25', '2026-03-07 09:00:41'),
(22, 'FAC-2026-0004', '$2y$10$ckRK66UeA2mthRQN/tCIX.aeP/IZ4p5Gi3CDkEk60gkSglEX3M/gW', 'instructor', 'Angel', 'Lampitao', '', 'angel.lampitao.coc@phinmaed.com', '+639156483985', '../uploadsInstructorProfilePic/instructor_22_1772795357.jpg', 1, 1, 1, 'Active', 11, '2026-03-06 11:07:55', '2026-03-18 22:48:12', '2026-03-18 22:48:12'),
(23, '02-4397-558264', '$2y$10$uJDUOTiAkcHZtoaCRscqWOkCauU.qItminwXxfYCoBft8ussvYvKm', 'student', 'Krisha Cheska', 'Bajo', '', 'kree.bajo.coc@phinmaed.com', '+639123487964', '../uploadsStudentProfilePic/student_23_1772796030.jpg', 1, 1, 1, 'Active', 11, '2026-03-06 11:18:59', '2026-03-09 16:33:36', '2026-03-09 16:33:36'),
(24, 'FAC-2026-0005', '$2y$10$mdselW8N7NVVnMEdnwwT0.9T/qTKp0fiZHIYFjCIL3Y3L6OWzLRsi', 'instructor', 'Claire', 'Dragon', '', 'claire.dragon.coc@phinmaed.com', '+639783487560', '../uploadsInstructorProfilePic/instructor_24_1772872161.jpg', 1, 1, 1, 'Active', 11, '2026-03-07 03:05:50', '2026-03-09 15:31:37', '2026-03-09 15:31:37'),
(25, 'FAC-2026-0006', '$2y$10$I7IDt9FKMifhHq0p44lzyeAqNLl96D24g3zmnv4isjSLjjbi4XuLe', 'instructor', 'Irish', 'Opiso', '', 'irish.opiso.coc@gmail.com', '+639075438761', '../uploadsInstructorProfilePic/instructor_25_1772873329.jpg', 1, 1, 1, 'Active', 11, '2026-03-07 08:47:45', '2026-03-13 15:05:46', '2026-03-13 15:05:46'),
(26, '02-3533-398951', '$2y$10$y9DOUPivF9lrl8kwSr9zceg3xEF26Ve5O5su.jqVcn/fJzu23AoUG', 'student', 'Earl', 'Dampal', '', 'earl.dampal.coc@phinmaed.com', '+639653412430', '../uploadsStudentProfilePic/student_26_1772873640.jpg', 1, 1, 1, 'Active', 11, '2026-03-07 08:52:32', '2026-03-13 13:53:12', '2026-03-13 13:53:12'),
(27, 'linus', '$2y$10$ZeJyUMAmfRa15QozDYGOW.vZliOn01B3tXryDhD51PTtezyYK8vn2', 'admin', 'Linus', 'Torvalds', 'X', 'linux.torvals.coc@phinmaed.com', '+639000000001', '../uploadsAdminProfilePic/admin_27_1773590886.png', 1, 1, 0, 'Active', 1, '2026-03-11 18:26:02', '2026-03-15 16:08:06', '2026-03-15 16:07:33'),
(28, 'gabby', '$2y$10$S4uE9.AZrs6zazLFkSWqCuQp57.DCGgzfGKmJTQq7AXtqEkuVxrn.', 'student', 'Gabby', 'Magusara', 'G', 'gabby.magusara.coc@phinmaed.com', '+639875673823', 'uploadsStudentProfilePic/student_28_1773586882.jpg', 1, 1, 0, 'Active', NULL, '2026-03-15 13:54:28', '2026-03-15 15:01:22', NULL),
(29, 'mark', '$2y$10$18lhp//nKlFSvV8ICOb6aeLT5UjbrBoqCI4erPGVhUfbcb1poR8ai', 'admin', 'Mark', 'Zuckerberg', 'X', 'mark.zukerberg.coc@phinmaed.com', '+639763485974', NULL, 1, 1, 0, 'Active', 1, '2026-03-17 13:00:24', '2026-03-17 13:00:24', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_weekly_hours`
-- (See below for the actual view)
--
CREATE TABLE `vw_weekly_hours` (
`instructor_id` int(11)
,`instructor_name` varchar(101)
,`profile_picture` varchar(255)
,`year_week` int(6)
,`week_start` date
,`week_end` date
,`completed_count` bigint(21)
,`followup_count` bigint(21)
,`total_minutes` decimal(42,0)
,`total_hours` decimal(45,2)
,`f2f_count` bigint(21)
,`online_count` bigint(21)
,`total_records` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `weekly_hours`
--

CREATE TABLE `weekly_hours` (
  `id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `week_start_date` date NOT NULL,
  `total_minutes_rendered` int(11) NOT NULL DEFAULT 0,
  `carry_over_minutes` int(11) NOT NULL DEFAULT 0,
  `credit_minutes` int(11) NOT NULL DEFAULT 0,
  `status` enum('Below Requirement','Near Completion','Completed','Exceeded') NOT NULL DEFAULT 'Below Requirement',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure for view `vw_weekly_hours`
--
DROP TABLE IF EXISTS `vw_weekly_hours`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_weekly_hours`  AS SELECT `cr`.`instructor_id` AS `instructor_id`, concat(`u`.`firstname`,' ',`u`.`lastname`) AS `instructor_name`, `u`.`profile_picture` AS `profile_picture`, yearweek(`cr`.`created_at`,1) AS `year_week`, cast(`cr`.`created_at` - interval weekday(`cr`.`created_at`) day as date) AS `week_start`, cast(`cr`.`created_at` - interval weekday(`cr`.`created_at`) day + interval 6 day as date) AS `week_end`, count(case when `cr`.`outcome_status` = 'Completed' then 1 end) AS `completed_count`, count(case when `cr`.`outcome_status` = 'Needs Follow-Up' then 1 end) AS `followup_count`, sum(case when `cr`.`outcome_status` = 'Completed' then coalesce(`a`.`duration_minutes`,timestampdiff(MINUTE,`av`.`start_time`,`av`.`end_time`)) else 0 end) AS `total_minutes`, round(sum(case when `cr`.`outcome_status` = 'Completed' then coalesce(`a`.`duration_minutes`,timestampdiff(MINUTE,`av`.`start_time`,`av`.`end_time`)) else 0 end) / 60,2) AS `total_hours`, count(case when `cr`.`consultation_type` = 'Face-to-Face' then 1 end) AS `f2f_count`, count(case when `cr`.`consultation_type` = 'Online' then 1 end) AS `online_count`, count(0) AS `total_records` FROM (((`consultation_records` `cr` join `users` `u` on(`cr`.`instructor_id` = `u`.`user_id`)) join `appointments` `a` on(`cr`.`appointment_id` = `a`.`appointment_id`)) join `available_slots` `av` on(`a`.`slot_id` = `av`.`slot_id`)) GROUP BY `cr`.`instructor_id`, yearweek(`cr`.`created_at`,1) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_logs`
--
ALTER TABLE `action_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `idx_log_performed_by` (`performed_by`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`),
  ADD KEY `idx_ann_author` (`author_id`),
  ADD KEY `idx_ann_pinned_active` (`is_pinned`,`is_active`);

--
-- Indexes for table `announcement_comments`
--
ALTER TABLE `announcement_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `idx_ac_announcement` (`announcement_id`),
  ADD KEY `idx_ac_user` (`user_id`);

--
-- Indexes for table `announcement_likes`
--
ALTER TABLE `announcement_likes`
  ADD PRIMARY KEY (`like_id`),
  ADD UNIQUE KEY `uq_like_user_announcement` (`announcement_id`,`user_id`),
  ADD KEY `idx_al_user` (`user_id`);

--
-- Indexes for table `announcement_shares`
--
ALTER TABLE `announcement_shares`
  ADD PRIMARY KEY (`share_id`),
  ADD KEY `idx_as_announcement` (`announcement_id`),
  ADD KEY `idx_as_user` (`user_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `idx_appt_student` (`student_id`),
  ADD KEY `idx_appt_instructor` (`instructor_id`),
  ADD KEY `idx_appt_slot` (`slot_id`),
  ADD KEY `idx_appt_status` (`status`),
  ADD KEY `idx_appt_approved_by` (`approved_by`);

--
-- Indexes for table `available_slots`
--
ALTER TABLE `available_slots`
  ADD PRIMARY KEY (`slot_id`),
  ADD KEY `idx_slot_instructor` (`instructor_id`),
  ADD KEY `idx_slot_date_status` (`slot_date`,`status`);

--
-- Indexes for table `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `idx_ce_date` (`event_date`),
  ADD KEY `idx_ce_created_by` (`created_by`);

--
-- Indexes for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD PRIMARY KEY (`like_id`),
  ADD UNIQUE KEY `uq_cl_user_comment` (`comment_id`,`user_id`),
  ADD KEY `idx_cl_user` (`user_id`);

--
-- Indexes for table `consultation_records`
--
ALTER TABLE `consultation_records`
  ADD PRIMARY KEY (`record_id`),
  ADD UNIQUE KEY `uq_cr_appointment` (`appointment_id`),
  ADD KEY `idx_cr_instructor` (`instructor_id`),
  ADD KEY `idx_cr_student` (`student_id`),
  ADD KEY `idx_cr_outcome` (`outcome_status`),
  ADD KEY `idx_cr_type` (`consultation_type`),
  ADD KEY `idx_cr_created` (`created_at`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`verification_id`),
  ADD KEY `idx_ev_user` (`user_id`);

--
-- Indexes for table `follow_up_links`
--
ALTER TABLE `follow_up_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_fl_parent` (`parent_record_id`),
  ADD KEY `idx_fl_followup` (`follow_up_appointment_id`);

--
-- Indexes for table `instructor_profiles`
--
ALTER TABLE `instructor_profiles`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `uq_faculty_id` (`faculty_id`),
  ADD KEY `default_preset_id` (`default_preset_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `idx_msg_sender` (`sender_id`),
  ADD KEY `idx_msg_receiver` (`receiver_id`),
  ADD KEY `idx_msg_appointment` (`appointment_id`),
  ADD KEY `idx_msg_created_at` (`created_at`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `idx_notif_user_read` (`user_id`,`is_read`),
  ADD KEY `idx_notif_type` (`notification_type`),
  ADD KEY `idx_notif_sender` (`sender_id`);

--
-- Indexes for table `schedule_presets`
--
ALTER TABLE `schedule_presets`
  ADD PRIMARY KEY (`preset_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `uq_school_id` (`school_id`);

--
-- Indexes for table `typing_status`
--
ALTER TABLE `typing_status`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_ts_typing_to` (`typing_to`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `uq_username` (`username`),
  ADD KEY `idx_role` (`role`),
  ADD KEY `idx_is_active` (`is_active`),
  ADD KEY `fk_users_created_by` (`created_by`);

--
-- Indexes for table `weekly_hours`
--
ALTER TABLE `weekly_hours`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_instructor_week` (`instructor_id`,`week_start_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_logs`
--
ALTER TABLE `action_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `announcement_comments`
--
ALTER TABLE `announcement_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `announcement_likes`
--
ALTER TABLE `announcement_likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `announcement_shares`
--
ALTER TABLE `announcement_shares`
  MODIFY `share_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `available_slots`
--
ALTER TABLE `available_slots`
  MODIFY `slot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `calendar_events`
--
ALTER TABLE `calendar_events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment_likes`
--
ALTER TABLE `comment_likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consultation_records`
--
ALTER TABLE `consultation_records`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `verification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `follow_up_links`
--
ALTER TABLE `follow_up_links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `schedule_presets`
--
ALTER TABLE `schedule_presets`
  MODIFY `preset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `weekly_hours`
--
ALTER TABLE `weekly_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `action_logs`
--
ALTER TABLE `action_logs`
  ADD CONSTRAINT `fk_log_user` FOREIGN KEY (`performed_by`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `fk_ann_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `announcement_comments`
--
ALTER TABLE `announcement_comments`
  ADD CONSTRAINT `fk_ac_announcement` FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`announcement_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ac_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `announcement_likes`
--
ALTER TABLE `announcement_likes`
  ADD CONSTRAINT `fk_al_announcement` FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`announcement_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_al_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `announcement_shares`
--
ALTER TABLE `announcement_shares`
  ADD CONSTRAINT `fk_as_announcement` FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`announcement_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_as_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `fk_appt_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_appt_instructor` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_appt_slot` FOREIGN KEY (`slot_id`) REFERENCES `available_slots` (`slot_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_appt_student` FOREIGN KEY (`student_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `available_slots`
--
ALTER TABLE `available_slots`
  ADD CONSTRAINT `fk_slot_instructor` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD CONSTRAINT `fk_ce_creator` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD CONSTRAINT `fk_cl_comment` FOREIGN KEY (`comment_id`) REFERENCES `announcement_comments` (`comment_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cl_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `consultation_records`
--
ALTER TABLE `consultation_records`
  ADD CONSTRAINT `fk_cr_appointment` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cr_instructor` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cr_student` FOREIGN KEY (`student_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD CONSTRAINT `fk_ev_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `follow_up_links`
--
ALTER TABLE `follow_up_links`
  ADD CONSTRAINT `fk_fl_followup` FOREIGN KEY (`follow_up_appointment_id`) REFERENCES `appointments` (`appointment_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_fl_parent` FOREIGN KEY (`parent_record_id`) REFERENCES `consultation_records` (`record_id`) ON DELETE CASCADE;

--
-- Constraints for table `instructor_profiles`
--
ALTER TABLE `instructor_profiles`
  ADD CONSTRAINT `fk_ip_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `instructor_profiles_ibfk_1` FOREIGN KEY (`default_preset_id`) REFERENCES `schedule_presets` (`preset_id`) ON DELETE SET NULL;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `fk_msg_appointment` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_msg_receiver` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_msg_sender` FOREIGN KEY (`sender_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notif_sender` FOREIGN KEY (`sender_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_notif_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `schedule_presets`
--
ALTER TABLE `schedule_presets`
  ADD CONSTRAINT `schedule_presets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD CONSTRAINT `fk_sp_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `typing_status`
--
ALTER TABLE `typing_status`
  ADD CONSTRAINT `fk_ts_typing_to` FOREIGN KEY (`typing_to`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ts_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `weekly_hours`
--
ALTER TABLE `weekly_hours`
  ADD CONSTRAINT `fk_wh_instructor` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
