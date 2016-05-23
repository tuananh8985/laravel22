-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2016 at 03:53 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'a22222222222224', 'aaaaaaaaaaaaa', '2016-02-21 23:08:59', '2016-02-27 02:06:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_02_03_034124_create_workers_table', 1),
('2016_02_03_074217_create_phones_table', 1),
('2016_02_03_100816_create_skills_table', 1),
('2016_02_03_101411_create_skill_worker_pivot_table', 1),
('2016_02_15_022832_create_articles_table', 1),
('2016_02_17_081322_entrust_setup_tables', 1),
('2016_02_18_061317_create_thanh_viens_table', 2),
('2016_02_22_090533_create_a_b_c_ds_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'view_workers', 'View Workers', 'Read only Workers info', '2016-02-17 01:56:10', '2016-02-17 01:56:10'),
(2, 'edit_workers', 'Edit Workers', 'Create, Update and Delete Workers info', '2016-02-17 01:56:10', '2016-02-17 01:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` int(10) UNSIGNED NOT NULL,
  `worker_id` int(10) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `worker_id`, `number`, `main`, `created_at`, `updated_at`) VALUES
(43, 20, '0982123124', 1, '2016-02-17 01:56:03', '2016-03-08 01:40:12'),
(55, 25, '091123123', 0, '2016-02-17 01:56:03', '2016-03-07 00:40:31'),
(56, 26, '0943121212', 1, '2016-02-17 01:56:03', '2016-03-07 00:40:56'),
(57, 26, '0941118332', 0, '2016-02-17 01:56:03', '2016-03-07 00:41:14'),
(58, 27, '0900111333', 0, '2016-02-17 01:56:03', '2016-03-07 00:41:31'),
(59, 27, '269-598-2457x432', 1, '2016-02-17 01:56:03', '2016-02-17 01:56:03'),
(60, 27, '807-229-0395x4703', 1, '2016-02-17 01:56:03', '2016-02-17 01:56:03'),
(61, 29, '1-232-986-5294x28492', 1, '2016-02-17 01:56:03', '2016-02-17 01:56:03'),
(62, 29, '113.543.7007', 0, '2016-02-17 01:56:03', '2016-02-17 01:56:03'),
(63, 29, '584.301.3300x95753', 0, '2016-02-17 01:56:03', '2016-02-17 01:56:03'),
(64, 30, '1-223-049-1384', 1, '2016-02-17 01:56:03', '2016-02-17 01:56:03'),
(65, 31, '890.144.4833x682', 0, '2016-02-17 01:56:03', '2016-02-17 01:56:03'),
(66, 32, '344-673-6239x1122', 1, '2016-02-17 01:56:03', '2016-02-17 01:56:03'),
(67, 33, '675.935.6568x3569', 0, '2016-02-17 01:56:03', '2016-02-17 01:56:03'),
(68, 33, '(108)496-0294', 0, '2016-02-17 01:56:03', '2016-02-17 01:56:03'),
(69, 34, '(869)265-1605', 1, '2016-02-17 01:56:03', '2016-02-17 01:56:03'),
(70, 34, '160-575-1598x3232', 0, '2016-02-17 01:56:03', '2016-02-17 01:56:03'),
(71, 35, '08377625003', 0, '2016-02-17 01:56:03', '2016-02-17 01:56:03'),
(72, 35, '(239)091-7039', 1, '2016-02-17 01:56:03', '2016-02-17 01:56:03'),
(73, 36, '09678152923', 0, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(74, 36, '216-575-7043', 0, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(75, 38, '593-374-3380', 1, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(76, 38, '1-043-315-7048x6719', 0, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(77, 39, '337-561-4395x691', 0, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(78, 40, '1-228-816-9457x5750', 0, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(79, 40, '957.502.8686x99645', 1, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(80, 41, '09813580337', 1, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(81, 42, '670-716-3730x857', 0, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(82, 42, '(995)652-9843', 0, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(83, 45, '139-556-3238x3517', 1, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(84, 45, '05615860442', 1, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(85, 45, '624-411-3141x0071', 0, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(86, 46, '643-772-2070x75595', 1, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(87, 46, '1-670-004-4665x58740', 1, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(88, 46, '+96(7)6644416906', 1, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(89, 48, '1-811-152-0449x222', 0, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(90, 48, '712-933-3113x8278', 1, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(91, 48, '(890)648-4864x8960', 1, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(92, 49, '246-945-8286x541', 0, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(93, 49, '(840)551-7706', 0, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(94, 49, '1-395-108-7723x262', 0, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(95, 49, '1-863-777-1817x0163', 1, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(96, 50, '699.433.3497', 1, '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(138, 75, '1212121', 0, '2016-03-03 02:41:04', '2016-03-03 02:41:04'),
(139, 76, '12121212', 0, '2016-03-03 02:41:57', '2016-03-03 02:41:57'),
(140, 77, '2121212', 0, '2016-03-03 03:25:45', '2016-03-03 03:25:45'),
(141, 78, '2121212', 0, '2016-03-03 03:27:19', '2016-03-03 03:27:19'),
(142, 79, '2121212', 0, '2016-03-03 03:27:32', '2016-03-03 03:27:32'),
(143, 80, '12121212', 0, '2016-03-03 03:34:43', '2016-03-03 03:34:43'),
(144, 81, '12121212', 0, '2016-03-03 03:35:08', '2016-03-03 03:35:08'),
(145, 82, '123456', 0, '2016-03-03 19:28:03', '2016-03-03 19:28:03'),
(146, 83, '123456', 0, '2016-03-03 19:28:29', '2016-03-03 19:28:29'),
(147, 84, '12345766', 0, '2016-03-03 19:55:34', '2016-03-03 19:55:34'),
(151, 87, '122444', 0, '2016-03-03 20:59:23', '2016-03-03 20:59:23'),
(152, 88, '121212', 0, '2016-03-03 21:23:17', '2016-03-03 21:23:17'),
(153, 89, '123321', 0, '2016-03-03 21:27:13', '2016-03-03 21:27:13'),
(154, 90, '11111111', 0, '2016-03-04 02:11:17', '2016-03-04 02:11:17'),
(164, 28, '0933123321', 0, '2016-03-07 00:41:57', '2016-03-07 00:41:57'),
(165, 92, '12121213', 0, '2016-03-10 09:48:51', '2016-03-10 09:48:51');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'Supper Administrator', 'The Super Administrator', '2016-02-17 01:56:10', '2016-02-17 01:56:10'),
(2, 'manager', 'Manager', 'Manager somethings', '2016-02-17 01:56:10', '2016-02-17 01:56:10'),
(3, 'guest', 'Guest', 'Guest less authorize', '2016-02-17 01:56:10', '2016-02-17 01:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('enable','disabled') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'vitae', '', 'enable', '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(2, 'similique', '', 'enable', '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(3, 'quibusdam', '', 'enable', '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(4, 'commodi', '', 'enable', '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(5, 'quaerat', '', 'enable', '2016-02-17 01:56:04', '2016-02-17 01:56:04'),
(6, 'aut', '', 'enable', '2016-02-17 01:56:05', '2016-02-17 01:56:05'),
(7, 'illo', '', 'enable', '2016-02-17 01:56:05', '2016-02-17 01:56:05'),
(8, 'sunt', '', 'enable', '2016-02-17 01:56:05', '2016-02-17 01:56:05'),
(9, 'harum', '', 'enable', '2016-02-17 01:56:05', '2016-02-17 01:56:05'),
(10, 'quasi', '', 'enable', '2016-02-17 01:56:05', '2016-02-17 01:56:05'),
(11, 'quidem', '', 'enable', '2016-02-17 01:56:05', '2016-02-17 01:56:05'),
(12, 'corporis', '', 'enable', '2016-02-17 01:56:05', '2016-02-17 01:56:05'),
(13, 'est', '', 'enable', '2016-02-17 01:56:05', '2016-02-17 01:56:05'),
(14, 'aperiam', '', 'enable', '2016-02-17 01:56:05', '2016-02-17 01:56:05'),
(15, 'aspernatur', '', 'enable', '2016-02-17 01:56:05', '2016-02-17 01:56:05'),
(16, 'eos', '', 'enable', '2016-02-17 01:56:05', '2016-02-17 01:56:05'),
(17, 'ab', '', 'enable', '2016-02-17 01:56:05', '2016-02-17 01:56:05'),
(18, 'est', '', 'enable', '2016-02-17 01:56:05', '2016-02-17 01:56:05'),
(19, 'et', '', 'enable', '2016-02-17 01:56:05', '2016-02-17 01:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `skill_worker`
--

CREATE TABLE `skill_worker` (
  `skill_id` int(10) UNSIGNED NOT NULL,
  `worker_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skill_worker`
--

INSERT INTO `skill_worker` (`skill_id`, `worker_id`) VALUES
(1, 25),
(1, 29),
(1, 42),
(1, 49),
(2, 26),
(2, 28),
(2, 29),
(2, 33),
(2, 34),
(2, 44),
(3, 33),
(3, 38),
(3, 41),
(3, 49),
(4, 27),
(4, 44),
(4, 46),
(5, 20),
(5, 26),
(5, 42),
(6, 20),
(6, 32),
(6, 41),
(6, 48),
(7, 32),
(7, 42),
(8, 33),
(8, 49),
(9, 29),
(9, 34),
(9, 41),
(9, 46),
(10, 28),
(10, 44),
(11, 20),
(11, 26),
(11, 33),
(11, 38),
(12, 26),
(12, 27),
(12, 29),
(12, 32),
(12, 33),
(12, 34),
(13, 32),
(13, 44),
(14, 27),
(14, 36),
(14, 45),
(15, 20),
(15, 27),
(15, 36),
(16, 28),
(16, 38),
(17, 20),
(17, 25),
(17, 36),
(17, 38),
(17, 49),
(18, 26),
(18, 44);

-- --------------------------------------------------------

--
-- Table structure for table `tanh`
--

CREATE TABLE `tanh` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` time NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thanh_viens`
--

CREATE TABLE `thanh_viens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanh_viens`
--

INSERT INTO `thanh_viens` (`id`, `user`, `pass`, `level`) VALUES
(1, 'teo', '$2y$10$NmAQdBzoo3fpBo8.ciCU4OoNfyoqxBywuJUGnQpM91DMCHV4SuJCe', 1),
(2, 'tun', '$2y$10$Qs/RENrBMlAvcVfF9qaI8.sEMt91B432ydXTiHPpUYn5matnpLwQm', 2),
(3, 'tuan', '$2y$10$aYB59xzLEuvbD3N8sPBo5OqtexZrNPMidaB1a4ce1U5NpMKYinNOG', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$63pQH8pDXIaMds4gKdB8q.0vLWgDhaD/tZZiwmHWcpzkRl.Mh8QoO', 'cyCbhDOcrRCxmG4VIlafcGzQNpbFLXKijLj6M7H7RO1Uf5KGkqgayCUpqzS2', '2016-02-17 01:55:59', '2016-03-09 07:21:53'),
(2, 'User', 'user@gmail.com', '', NULL, '2016-02-17 01:55:59', '2016-02-17 01:55:59'),
(12, 'aq1', 'aq1@gmail.com', '$2y$10$pwkoPTVYpdCI7QZc3T28Nes/Bxwm8b0sptgCUh7Z0xq6ul13F0e5i', 'RFmelXKu8Fr6b6C1Cq6uKt74DeaTwz5EKhgLnqxhsRmL8UigxThfW9g6MxEk', '2016-02-19 02:02:30', '2016-02-19 02:03:16'),
(13, 'aq2', 'aq2@gmail.com', '$2y$10$K25dMmxBIRabs1kJ6eWv2.GX4qmwyNglJbP76Wrdg8T9ryUbDgVPS', 'w6LUEvbi4VSXwWQLZPS47SkCkqybkXqOVryZ3Tgk3CvSfJkZ05r1UqbbLaqv', '2016-02-19 02:05:07', '2016-02-19 02:07:15'),
(14, '', '', '', NULL, '2016-02-25 20:24:21', '2016-02-25 20:24:21'),
(15, 'aaaaa', 'zzz@gmail.com', '123', NULL, '2016-02-25 20:33:54', '2016-02-25 20:33:54'),
(16, 'aaaaac', 'zzzc@gmail.com', '1234', NULL, '2016-02-25 20:37:25', '2016-02-25 20:37:25'),
(17, 'qqqqqq', 'qq@gmail.com', '1234', NULL, '2016-02-25 20:38:04', '2016-02-25 20:38:04'),
(18, 'ccccccc', 'cc@gmail.com', '123', NULL, '2016-02-25 20:45:39', '2016-02-25 20:45:39'),
(19, 'anhb', 'anhb@gmail.com', '$2y$10$b8u6fqTiHIfOD/4CHdt.quXIraQrkCf8EidzSwNSVMp450YdX7.PW', 'kA6xVwjzxAbVsR43FPGK4ZZJJLMRM3zY15AxJpMInuQlhMsqDB73HAxSELk3', '2016-02-25 21:17:07', '2016-02-25 21:21:36'),
(20, 'avc', 'avc@gmail.com', '$2y$10$HNOb7jQ0w2rIYi1lfsNRT.PerjC6ceBPpoqPng0g9I.UUmTxoouSa', 'XVDyB792UlMpJWWsWmCw65poEsXbQFVWuc6bLctDT2LYPkF9seBNbYpraxai', '2016-02-26 00:59:55', '2016-02-26 01:00:00'),
(21, 'anhcccc', 'anhcc@gmail.com', '$2y$10$UXOTk8Ii/lrDy8hAGGYAUuzJNCYYIvWmfOaKuIXXj6jmkbOy8yQhS', 'srZWVJ0qsgR89iutrL69oScFCtSixfzLdAOdoXBuJ32kgwoTbfj1bNyt29Qq', '2016-03-09 07:34:49', '2016-03-09 07:35:55'),
(22, 'anhbb', 'anhbbb@gmail.com', '$2y$10$pT0cTeN2buyYRzo6b0IRS.tnEziTB6fn8tJe8oucrpzUJJJZxVEzm', '89uPl5uQSTv8QTbte2psKhZmXJuyMSIEyvTadKYbOBRsLgSvIhaSF9FRvmmY', '2016-03-09 07:39:56', '2016-03-09 07:40:03'),
(23, 'avccccc', 'avccc@gmail.com', '$2y$10$b8j1EvCmeYeR/Vx.WdgWqumeJ5KoBsaRPoME41BAJad.Oq4240.P6', 'xHWFRQ7pDgNwMuQIhamEj8yNC5bsapEjgqPPiGc1mTJuTHehsPiXHJsMVgiS', '2016-03-09 07:45:24', '2016-03-09 07:47:23'),
(24, 'ccvcvc', 'dcdc@gmail.com', '$2y$10$DB1tNwpn/TjxRMVTbuPHPOlv.7Ul4Z.oWTqqkCD0FzFONWQ/emS7S', 'eDTlSIA69PbOCrllPAgewT0XxbngyDpmZ0es8r0oI9Zc51FWx23PxcczrgNA', '2016-03-09 07:47:59', '2016-03-09 07:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `workers`
--

INSERT INTO `workers` (`id`, `name`, `birth_date`, `gender`, `description`, `created_at`, `updated_at`) VALUES
(20, 'ChiêmLancc', '1984-11-18', 'male', '   Et maxime sapiente rerum assumenda molestias mollitia sit. Et pariatur consequatur aspernatur rerum numquam voluptatem aut. Alias illo modi labore delectus dignissimos non dolorem occaecati.   ', '2016-02-17 01:56:00', '2016-03-06 20:59:39'),
(25, 'Em. Bùi Hán Uy', '2002-04-12', 'female', 'Ad aut dolorem non et. Dolorem provident ut facere eum. Eos sint ut sunt facilis.', '2016-02-17 01:56:00', '2016-02-17 01:56:00'),
(26, 'Hy Cơ', '1996-11-10', 'male', 'Aut et totam aliquid facere. Pariatur rerum nisi ea non maxime assumenda commodi. Provident sunt cumque consequatur natus molestias iste provident. Quidem et unde commodi delectus illum.', '2016-02-17 01:56:00', '2016-02-17 01:56:00'),
(27, 'Ông. Quách Bạch', '1977-06-02', 'female', 'Sunt voluptatem sit quidem nam possimus quos. Dolorem omnis consectetur velit. Aut rerum praesentium aspernatur voluptas nihil ab.', '2016-02-17 01:56:00', '2016-02-17 01:56:00'),
(28, 'Danh Khê', '1996-09-19', 'female', 'Nihil commodi distinctio ut quaerat. Cum explicabo exercitationem aliquid voluptatem. Qui voluptas vero esse alias.', '2016-02-17 01:56:00', '2016-02-17 01:56:00'),
(29, 'Hoàng Hiệp', '1998-06-25', 'male', 'Ducimus consequatur sed et quo. Impedit et quibusdam sit consequatur voluptatum aliquid voluptatum.', '2016-02-17 01:56:00', '2016-02-17 01:56:00'),
(30, 'Bác. Dã Ánh Đường', '1976-05-27', 'female', 'Exercitationem iusto eaque eveniet vitae. Sapiente id error non ut ea veritatis asperiores. Recusandae eum aut quis magni et nisi. Facilis repellendus quia consectetur aperiam.', '2016-02-17 01:56:00', '2016-02-17 01:56:00'),
(31, 'Hùng Thanh Trung', '1995-12-01', 'male', 'Enim corrupti necessitatibus qui eum. Iste et et non voluptas. Amet nihil voluptas impedit. Possimus praesentium sunt atque amet debitis dolore dolorem.', '2016-02-17 01:56:00', '2016-02-17 01:56:00'),
(32, 'Em. Phùng Sương Mai', '2008-12-12', 'female', 'Occaecati et commodi iste quas. Et modi rerum distinctio eligendi veritatis. Provident dolorem dolor recusandae non inventore adipisci dolor porro.', '2016-02-17 01:56:00', '2016-02-17 01:56:00'),
(33, 'Nghị Ngôn', '2003-08-14', 'female', 'Modi sint recusandae pariatur delectus occaecati quae. Impedit omnis occaecati qui libero. Eius sint debitis nesciunt occaecati sit.', '2016-02-17 01:56:00', '2016-02-17 01:56:00'),
(34, 'Ông. Lê Tụ', '2013-11-19', 'male', 'Inventore non debitis dolores ipsa minima nihil. Et quam asperiores iure. Minima officiis aut repellendus officia. Aut aut deserunt sed delectus.', '2016-02-17 01:56:01', '2016-02-17 01:56:01'),
(35, 'Doãn Khê', '1981-11-16', 'female', 'Est modi voluptas enim blanditiis sequi. Hic minus id ullam ut quae vitae rerum. Ut corrupti nihil vero nemo ut provident facere. Et aut dolorem labore labore doloremque pariatur.', '2016-02-17 01:56:01', '2016-02-17 01:56:01'),
(36, 'Bác. Khưu Đình Duệ', '1986-03-21', 'female', 'Eveniet quam veniam dolorem veritatis assumenda laboriosam est ratione. Deleniti provident quos consequuntur hic. Incidunt doloremque laborum qui aut occaecati voluptates.', '2016-02-17 01:56:01', '2016-02-17 01:56:01'),
(38, 'Sơn Độ', '2008-01-07', 'male', 'Asperiores reprehenderit inventore nihil perferendis optio. Sapiente ut voluptatem eligendi. Ut quidem rerum cupiditate quas iusto unde.', '2016-02-17 01:56:01', '2016-02-17 01:56:01'),
(39, 'Cung Chiêu', '1997-12-04', 'male', 'Excepturi ipsam adipisci quidem eligendi. Autem quia nihil ut ullam laborum qui. Eveniet ut quae minima tenetur ex reiciendis et. Consectetur libero et voluptatem.', '2016-02-17 01:56:01', '2016-02-17 01:56:01'),
(40, 'Doãn Thiện', '2004-04-09', 'female', 'Maxime commodi aliquam recusandae et molestiae laudantium. Id doloribus est rerum asperiores est. At quis minus doloribus nobis.', '2016-02-17 01:56:01', '2016-02-17 01:56:01'),
(41, 'Bác. Trần Trà Thục', '2006-02-03', 'female', 'Voluptatem et dolores sit at cumque. Maiores non consequatur labore quae repellendus totam consequatur. Nulla sit possimus impedit culpa. Vel rerum incidunt reiciendis minus autem perferendis.', '2016-02-17 01:56:01', '2016-02-17 01:56:01'),
(42, 'Hạ Khê', '2006-11-06', 'male', 'Et velit velit similique. Aut provident veritatis molestiae libero. Ipsum eaque sit atque similique magnam magni. Enim quaerat similique rerum quas.', '2016-02-17 01:56:01', '2016-02-17 01:56:01'),
(44, 'Cô. Đậu Nguyết Ngôn', '1985-10-30', 'male', 'Iste iure recusandae assumenda culpa ea. Velit voluptas nihil aut quia in. Vel et illum ut. Dolor repudiandae voluptatibus deserunt sed unde est ratione.', '2016-02-17 01:56:01', '2016-02-17 01:56:01'),
(45, 'Anh. Lữ Đinh Khiêm', '1994-11-13', 'male', 'Cum tenetur dolorem reiciendis perferendis voluptas velit. Et sint non aut libero deleniti eius sunt dignissimos. Fugit aliquid quo aut veritatis est et dolores.', '2016-02-17 01:56:01', '2016-02-17 01:56:01'),
(46, 'Uông Bảo Khương', '1998-09-18', 'male', 'Molestiae est rerum magni iusto qui. Cum assumenda et enim explicabo. Totam aliquid nemo doloremque. Unde saepe labore dolorem expedita et eum ut.', '2016-02-17 01:56:01', '2016-02-17 01:56:01'),
(47, 'Em. Trình Trung', '1990-08-11', 'male', 'Culpa doloremque assumenda doloribus quis aliquid perferendis. Deserunt quia optio aperiam veniam ad est sit. Nisi repudiandae tempore et ipsum.', '2016-02-17 01:56:01', '2016-02-17 01:56:01'),
(48, 'Đới Giang Danh', '2011-10-26', 'female', 'Consequatur est magni quos perspiciatis et nostrum qui. Aut maiores incidunt sed qui est distinctio dolores. Illo accusamus laboriosam quis libero fuga.', '2016-02-17 01:56:01', '2016-02-17 01:56:01'),
(49, 'Diệp Hiệp Án', '1991-06-08', 'female', 'Sit repellat reiciendis quae vero voluptatem sapiente ab. Et nihil dignissimos dolores perspiciatis. Harum qui qui perferendis in. Molestiae eius odit omnis eos quis autem.', '2016-02-17 01:56:01', '2016-02-17 01:56:01'),
(50, 'Cự Nguyết Sương', '2008-02-29', 'male', 'Assumenda qui dolores voluptatum nostrum modi non quisquam. Non qui odio eligendi aut non animi. Eveniet et ipsa aut in.', '2016-02-17 01:56:01', '2016-02-17 01:56:01'),
(52, 'aaaaaaaa', '2016-02-03', 'male', 'aaaaaaaaa', '2016-02-21 18:54:43', '2016-02-21 18:54:43'),
(53, 'axx', '2016-02-04', 'male', 'aaaaaa', '2016-02-21 19:02:00', '2016-02-21 19:02:00'),
(54, 'cccccc', '2016-02-03', 'female', 'cccccccccc', '2016-02-21 19:38:36', '2016-02-21 19:38:36'),
(55, 'cccccccccc', '2016-02-03', 'male', 'ccccccccccc', '2016-02-21 19:39:06', '2016-02-21 19:39:06'),
(56, 'Lương Hạ Huyền', '1981-08-28', 'male', ' Et vel in culpa voluptatum. Ut id quas sit et dolor voluptas. Qui possimus delectus ut aut. ', '2016-02-29 01:43:09', '2016-02-29 01:43:09'),
(57, 'Lã Trâm', '1988-06-06', 'male', ' Aspernatur tempore eos voluptatem cumque eveniet provident ut. Dolore tenetur esse a est ut est. Quas vitae et vero ea dolorem aliquam aperiam nisi. Consequatur est qui iure aperiam itaque inventore. ', '2016-02-29 01:43:51', '2016-02-29 01:43:51'),
(58, 'Ông. Ca Kim', '1993-11-08', 'male', ' Ut quos voluptates et ex nemo quos. Quo laborum recusandae occaecati suscipit at. Inventore numquam amet culpa dolores ipsum ad. ', '2016-02-29 01:45:56', '2016-02-29 01:45:56'),
(59, 'Lã Trâm', '1988-06-06', 'male', ' Aspernatur tempore eos voluptatem cumque eveniet provident ut. Dolore tenetur esse a est ut est. Quas vitae et vero ea dolorem aliquam aperiam nisi. Consequatur est qui iure aperiam itaque inventore. ', '2016-02-29 01:48:37', '2016-02-29 01:48:37'),
(60, 'Cô. Khu Phong', '1987-12-10', 'female', ' Qui in ut ad cumque veniam dolor et. Ab ratione quo aliquam numquam sit.\r\nDolor accusantium eius ratione et dolorem. Nam sint iste adipisci ut itaque ratione. Pariatur aperiam enim incidunt. ', '2016-02-29 02:03:06', '2016-02-29 02:03:06'),
(61, 'Cô. Khu Phong', '1987-12-10', 'male', ' Qui in ut ad cumque veniam dolor et. Ab ratione quo aliquam numquam sit.\r\nDolor accusantium eius ratione et dolorem. Nam sint iste adipisci ut itaque ratione. Pariatur aperiam enim incidunt. ', '2016-02-29 02:03:27', '2016-02-29 02:03:27'),
(62, 'Cô. Khu Phong', '1987-12-10', 'male', ' Qui in ut ad cumque veniam dolor et. Ab ratione quo aliquam numquam sit.\r\nDolor accusantium eius ratione et dolorem. Nam sint iste adipisci ut itaque ratione. Pariatur aperiam enim incidunt. a', '2016-02-29 02:04:33', '2016-02-29 02:04:33'),
(63, 'Lương Hạ Huyền', '1981-08-04', 'male', ' Et vel in culpa voluptatum. Ut id quas sit et dolor voluptas. Qui possimus delectus ut aut. ', '2016-02-29 02:13:58', '2016-02-29 02:13:58'),
(64, 'Lương Hạ Huyền', '1981-08-04', 'female', ' Et vel in culpa voluptatum. Ut id quas sit et dolor voluptas. Qui possimus delectus ut aut. ', '2016-02-29 02:14:16', '2016-02-29 02:14:16'),
(65, 'Cô. Khu Phong1', '1987-12-13', 'female', ' Qui in ut ad cumque veniam dolor et. Ab ratione quo aliquam numquam sit.\r\nDolor accusantium eius ratione et dolorem. Nam sint iste adipisci ut itaque ratione. Pariatur aperiam enim incidunt. ', '2016-02-29 02:15:19', '2016-02-29 02:15:19'),
(66, 'Cô. Khu Phongghj', '1987-12-13', 'female', ' Qui in ut ad cumque veniam dolor et. Ab ratione quo aliquam numquam sit.\r\nDolor accusantium eius ratione et dolorem. Nam sint iste adipisci ut itaque ratione. Pariatur aperiam enim incidunt. ', '2016-02-29 02:16:41', '2016-02-29 02:16:41'),
(67, 'Tuananh', '2016-03-04', 'male', 'aaaaaaaaaaaaa', '2016-03-01 19:29:30', '2016-03-01 19:29:30'),
(68, 'tuananhaa', '2016-03-04', 'male', 'aaaaaaazzzzzzzzzzzz', '2016-03-02 23:19:52', '2016-03-02 23:19:52'),
(69, 'zzzzzzzaaaaaaa', '2016-03-04', 'male', 'zzzzzzzzzzzz', '2016-03-02 23:29:23', '2016-03-02 23:29:23'),
(70, 'aaa', '2016-03-10', 'male', 'ccccccccc', '2016-03-03 02:25:23', '2016-03-03 02:25:23'),
(71, 'zzzzzz', '2016-03-17', 'male', 'vvvvvvvvvv', '2016-03-03 02:30:56', '2016-03-03 02:30:56'),
(72, 'cccc', '2016-03-19', 'male', 'vvvvvv', '2016-03-03 02:35:07', '2016-03-03 02:35:07'),
(73, 'cccc', '2016-03-19', 'male', 'vvvvvv', '2016-03-03 02:35:47', '2016-03-03 02:35:47'),
(74, 'aaaaaaaaa', '2016-03-11', 'male', '12121212', '2016-03-03 02:37:32', '2016-03-03 02:37:32'),
(75, 'qqqqqqqq', '2016-03-16', 'male', 'vvvvvvvvv', '2016-03-03 02:41:04', '2016-03-03 02:41:04'),
(76, 'qqqq', '2016-03-12', 'male', 'vvvvvvvvvv', '2016-03-03 02:41:57', '2016-03-03 02:41:57'),
(77, 'xxxx', '2016-03-12', 'male', 'cccccccccccccccc', '2016-03-03 03:25:45', '2016-03-03 03:25:45'),
(78, 'xxxx', '2016-03-12', 'male', 'cccccccccccccccc', '2016-03-03 03:27:19', '2016-03-03 03:27:19'),
(79, 'xxxx', '2016-03-12', 'male', 'cccccccccccccccc', '2016-03-03 03:27:32', '2016-03-03 03:27:32'),
(80, 'aaaaaaaaaa', '2016-03-11', 'male', 'vvvvvvvvvvvv', '2016-03-03 03:34:43', '2016-03-03 03:34:43'),
(81, 'aaaaaaaaaa', '2016-03-11', 'male', 'vvvvvvvvvvvv', '2016-03-03 03:35:08', '2016-03-03 03:35:08'),
(82, 'New1', '2016-03-26', 'male', 'vvvvvvvvvvvv', '2016-03-03 19:28:03', '2016-03-03 19:28:03'),
(83, 'New1', '2016-03-26', 'male', 'vvvvvvvvvvvv', '2016-03-03 19:28:29', '2016-03-03 19:28:29'),
(84, 'New2', '2016-03-11', 'male', 'xxxxxxxxxxx', '2016-03-03 19:55:33', '2016-03-03 19:55:33'),
(87, 'aaaaa', '2016-03-19', 'male', 'vvvvvv', '2016-03-03 20:59:23', '2016-03-03 20:59:23'),
(88, 'aaaaaaa', '2016-03-18', 'male', 'ccccccccc', '2016-03-03 21:23:16', '2016-03-03 21:23:16'),
(89, 'cccc', '2016-03-19', 'male', 'vvvvvvvvvv', '2016-03-03 21:27:13', '2016-03-03 21:27:13'),
(90, 'cccc', '2016-03-30', 'male', 'cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc', '2016-03-04 02:11:17', '2016-03-04 02:11:17'),
(91, 'vcvcvcvcv', '2016-03-10', 'female', 'vvvvvvvvvvvvv', '2016-03-04 03:18:14', '2016-03-04 03:18:14'),
(92, 'ccxxx', '2016-03-06', 'male', 'vvvvvvvvvv', '2016-03-10 09:48:50', '2016-03-10 09:48:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phones_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_worker`
--
ALTER TABLE `skill_worker`
  ADD PRIMARY KEY (`skill_id`,`worker_id`),
  ADD KEY `skill_worker_skill_id_index` (`skill_id`),
  ADD KEY `skill_worker_worker_id_index` (`worker_id`);

--
-- Indexes for table `tanh`
--
ALTER TABLE `tanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thanh_viens`
--
ALTER TABLE `thanh_viens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tanh`
--
ALTER TABLE `tanh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thanh_viens`
--
ALTER TABLE `thanh_viens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phones`
--
ALTER TABLE `phones`
  ADD CONSTRAINT `phones_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skill_worker`
--
ALTER TABLE `skill_worker`
  ADD CONSTRAINT `skill_worker_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `skill_worker_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
