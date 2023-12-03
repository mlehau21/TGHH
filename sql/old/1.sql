-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 03, 2023 at 06:02 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_spaces`
--

CREATE TABLE `ad_spaces` (
  `id` bigint UNSIGNED NOT NULL,
  `ad_spaces` int NOT NULL,
  `ad_view` int NOT NULL,
  `ad_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_spaces`
--

INSERT INTO `ad_spaces` (`id`, `ad_spaces`, `ad_view`, `ad_url`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 12:55:37'),
(2, 2, 0, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:01:22'),
(3, 2, 1, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:01:22'),
(4, 3, 0, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:04:04'),
(5, 3, 1, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:04:04'),
(6, 4, 0, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:12:05'),
(7, 4, 1, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:12:05'),
(8, 5, 1, 'h', NULL, '2023-03-23 08:22:10', '2023-09-19 13:14:55'),
(9, 6, 0, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:16:51'),
(10, 6, 1, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:16:51'),
(11, 7, 0, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:18:20'),
(12, 7, 1, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:18:20'),
(13, 8, 0, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:21:28'),
(14, 8, 1, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:21:28'),
(15, 9, 0, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:22:41'),
(16, 9, 1, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:22:41'),
(17, 10, 0, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:23:13'),
(18, 10, 1, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:23:13'),
(19, 11, 0, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:31:31'),
(20, 11, 1, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 13:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint UNSIGNED NOT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `lang_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nguyen Thi Loan', '2023-08-11 21:04:23', '2023-08-11 21:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `album_categories`
--

CREATE TABLE `album_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `album_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `album_categories`
--

INSERT INTO `album_categories` (`id`, `lang_id`, `album_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'hau', '2023-08-11 21:05:46', '2023-08-11 21:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `analytics`
--

CREATE TABLE `analytics` (
  `id` bigint UNSIGNED NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `analytics`
--

INSERT INTO `analytics` (`id`, `uri`, `session`, `country`, `ip`, `post_id`, `user_id`, `meta`, `created_at`, `updated_at`) VALUES
(2, '/abc555', '0d5uUo9SqVk5B9aGPf40FsQKIuNNbNwxjmffo07R', '', '127.0.0.1', '23', '1', 'false', '2023-08-11 20:48:31', '2023-08-11 20:48:31'),
(3, '/yyyy', '0d5uUo9SqVk5B9aGPf40FsQKIuNNbNwxjmffo07R', '', '127.0.0.1', '24', '1', 'false', '2023-08-11 20:54:24', '2023-08-11 20:54:24'),
(4, '/ffff', '0d5uUo9SqVk5B9aGPf40FsQKIuNNbNwxjmffo07R', '', '127.0.0.1', '25', '1', 'false', '2023-08-11 20:55:54', '2023-08-11 20:55:54'),
(5, '/abcdee', '0d5uUo9SqVk5B9aGPf40FsQKIuNNbNwxjmffo07R', '', '127.0.0.1', '26', '1', 'false', '2023-08-11 20:57:36', '2023-08-11 20:57:36'),
(9, '/yyyy', 'TpfyCvZFERhSnz288GLxyhqoPpv6mZsdFYZDv9Jr', '', '127.0.0.1', '24', '1', 'false', '2023-08-12 00:03:50', '2023-08-12 00:03:50'),
(10, '/abcdee', 'TpfyCvZFERhSnz288GLxyhqoPpv6mZsdFYZDv9Jr', '', '127.0.0.1', '26', '1', 'false', '2023-08-12 00:05:40', '2023-08-12 00:05:40'),
(12, '/yyyy', '9rkjCT3onWLjSyFyrzUmr8oRnIVHBu0Q7GBW0FZw', '', '127.0.0.1', '24', NULL, 'false', '2023-08-13 22:53:43', '2023-08-13 22:53:43'),
(14, '/abcdee', 'pYTi9Q0JrrPMJWnzID8WcYUAVZwRYv5K9gzwl6NB', '', '127.0.0.1', '26', NULL, 'false', '2023-08-18 06:22:30', '2023-08-18 06:22:30'),
(15, '/abc555', 'pYTi9Q0JrrPMJWnzID8WcYUAVZwRYv5K9gzwl6NB', '', '127.0.0.1', '23', NULL, 'false', '2023-08-18 06:26:22', '2023-08-18 06:26:22'),
(16, '/abcdee', '24IkdfomK1wDhUlX4Y9maN1wQgzHNfo3S7p9xNxW', '', '127.0.0.1', '26', NULL, 'false', '2023-08-29 23:39:47', '2023-08-29 23:39:47'),
(17, '/through-weakness-of-will-which-is-the-same-as-saying-through', 'eqgxUIosfu0XAN6JIuQECEMCNWOrBUiC6d9jEvc7', '', '127.0.0.1', '16', '1', 'false', '2023-08-30 01:34:38', '2023-08-30 01:34:38'),
(18, '/abcdee', 'dky45xkNhsvphnbNFwC0a9yvuuEQP8GUIbtgka0H', '', '127.0.0.1', '26', '2', 'false', '2023-09-02 13:07:20', '2023-09-02 13:07:20'),
(19, '/final-hot-picks-miss-world-2022-du-doan-ket-qua-miss-world-2022', 'wrkmslcUEehuopuw9SGWWFksIvVePVj9sKe9CpWD', '', '127.0.0.1', '30', '1', 'false', '2023-09-03 04:09:42', '2023-09-03 04:09:42'),
(20, '/miss-universe-2022-den-viet-nam', '0jk07fCi46eMrVw8THuXiysCP278ION2GPVpzbOQ', '', '127.0.0.1', '36', '1', 'false', '2023-09-03 07:58:37', '2023-09-03 07:58:37'),
(21, '/final-hot-picks-miss-world-2022-du-doan-ket-qua-miss-world-2022', 'kCpCZm8gu67pmHpFufxC0s54fMura5PfwWzNT3Q9', '', '127.0.0.1', '30', NULL, 'false', '2023-09-10 06:08:07', '2023-09-10 06:08:07'),
(22, '/a-hau-le-thao-nhi-mat-suat-thi-miss-universe-2023', 'VW2kWIMPb1lTJp3J4US1tXRMsfvnga8EooSByuF8', '', '127.0.0.1', '37', '1', 'false', '2023-09-11 13:00:29', '2023-09-11 13:00:29'),
(23, '/miss-universe-2022-den-viet-nam', 'PhalEM0p7NYH9sP9VAZKoBul4kkbMVV3YnmmJYCY', '', '127.0.0.1', '36', '1', 'false', '2023-09-15 13:22:43', '2023-09-15 13:22:43'),
(24, '/miss-universe-2022-den-viet-nam', '1c7BE7lbNe74wvJDgbvNV6HEx75LFO1UB3FKbnIy', '', '127.0.0.1', '36', '1', 'false', '2023-09-18 13:51:17', '2023-09-18 13:51:17'),
(25, '/miss-universe-2022-den-viet-nam', '4lUZSUcMVsD2tyUjOANeWNHndy044o6YRZ9GAciV', '', '127.0.0.1', '36', '1', 'false', '2023-09-19 13:12:12', '2023-09-19 13:12:12'),
(26, '/a-hau-le-thao-nhi-mat-suat-thi-miss-universe-2023', '4lUZSUcMVsD2tyUjOANeWNHndy044o6YRZ9GAciV', '', '127.0.0.1', '37', '1', 'false', '2023-09-19 13:15:02', '2023-09-19 13:15:02'),
(27, '/5-guong-mat-dien-ao-tam-dep-nhat-miss-universe-vietnam-2023', 'YTYo5gELQPcIkHNwaCP1jtW3zuJD62s7ogLNkKvg', '', '127.0.0.1', '38', '1', 'false', '2023-09-24 06:32:47', '2023-09-24 06:32:47'),
(28, '/a-hau-le-thao-nhi-mat-suat-thi-miss-universe-2023', 'YTYo5gELQPcIkHNwaCP1jtW3zuJD62s7ogLNkKvg', '', '127.0.0.1', '37', '1', 'false', '2023-09-24 06:54:10', '2023-09-24 06:54:10'),
(29, '/nguoi-dep-my-dang-quang-miss-universe-2022', 'Ri76bJ8ca5mHPMoeKEe5ZB6fxAujyKUZj1IxLvvJ', '', '127.0.0.1', '35', '1', 'false', '2023-10-10 14:19:15', '2023-10-10 14:19:15'),
(30, '/duong-kim-hoa-hau-the-gioi-karolina-bielawska-toi-viet-nam', 'Ri76bJ8ca5mHPMoeKEe5ZB6fxAujyKUZj1IxLvvJ', '', '127.0.0.1', '32', '1', 'false', '2023-10-10 14:19:50', '2023-10-10 14:19:50'),
(31, '/my-nhan-ba-lan-dang-quang-miss-world-do-thi-ha-dung-chan-top-13', 'Ri76bJ8ca5mHPMoeKEe5ZB6fxAujyKUZj1IxLvvJ', '', '127.0.0.1', '31', '1', 'false', '2023-10-10 14:21:12', '2023-10-10 14:21:12'),
(32, '/hotpick-final-miss-universe-2022-by-the-gioi-hoa-hau', 'Ri76bJ8ca5mHPMoeKEe5ZB6fxAujyKUZj1IxLvvJ', '', '127.0.0.1', '34', '1', 'false', '2023-10-10 14:21:37', '2023-10-10 14:21:37'),
(33, '/a-hau-le-thao-nhi-mat-suat-thi-miss-universe-2023', 'Ri76bJ8ca5mHPMoeKEe5ZB6fxAujyKUZj1IxLvvJ', '', '127.0.0.1', '37', '1', 'false', '2023-10-10 14:22:43', '2023-10-10 14:22:43'),
(34, '/final-hot-picks-miss-world-2022-du-doan-ket-qua-miss-world-2022', 'Ri76bJ8ca5mHPMoeKEe5ZB6fxAujyKUZj1IxLvvJ', '', '127.0.0.1', '30', '1', 'false', '2023-10-10 14:23:16', '2023-10-10 14:23:16'),
(35, '/miss-universe-2022-den-viet-nam', 'Ri76bJ8ca5mHPMoeKEe5ZB6fxAujyKUZj1IxLvvJ', '', '127.0.0.1', '36', '1', 'false', '2023-10-10 14:24:12', '2023-10-10 14:24:12'),
(36, '/miss-world-2023-se-dien-ra-tai-an-do', 'Ri76bJ8ca5mHPMoeKEe5ZB6fxAujyKUZj1IxLvvJ', '', '127.0.0.1', '33', '1', 'false', '2023-10-10 14:29:44', '2023-10-10 14:29:44'),
(37, '/my-nhan-ba-lan-dang-quang-miss-world-do-thi-ha-dung-chan-top-13', 'QFgjJc6nSFxhA9FWTKtBBMWihe7TSJb5uTvhWfBI', '', '127.0.0.1', '31', '4', 'false', '2023-10-10 14:35:23', '2023-10-10 14:35:23'),
(38, '/a-hau-le-thao-nhi-mat-suat-thi-miss-universe-2023', 'QFgjJc6nSFxhA9FWTKtBBMWihe7TSJb5uTvhWfBI', '', '127.0.0.1', '37', '4', 'false', '2023-10-10 14:36:15', '2023-10-10 14:36:15'),
(39, '/a-hau-le-thao-nhi-mat-suat-thi-miss-universe-2023', 'mOuhP8v29f97KMVTHPdbE25VYqIJTzvAFHH76KeL', '', '127.0.0.1', '37', '5', 'false', '2023-10-10 14:37:21', '2023-10-10 14:37:21'),
(40, '/final-hot-picks-miss-world-2022-du-doan-ket-qua-miss-world-2022', '7mp9pYe2YepBUx3wrBou9Nf9FjaUuP4O6K7F2ssj', '', '127.0.0.1', '30', NULL, 'false', '2023-10-10 14:45:12', '2023-10-10 14:45:12'),
(41, '/final-hot-picks-miss-world-2022-du-doan-ket-qua-miss-world-2022', 'mOuhP8v29f97KMVTHPdbE25VYqIJTzvAFHH76KeL', '', '127.0.0.1', '30', '5', 'false', '2023-10-10 14:45:36', '2023-10-10 14:45:36'),
(42, '/nguoi-dep-my-dang-quang-miss-universe-2022', 'mOuhP8v29f97KMVTHPdbE25VYqIJTzvAFHH76KeL', '', '127.0.0.1', '35', '5', 'false', '2023-10-10 14:46:02', '2023-10-10 14:46:02'),
(43, '/my-nhan-ba-lan-dang-quang-miss-world-do-thi-ha-dung-chan-top-13', 'mOuhP8v29f97KMVTHPdbE25VYqIJTzvAFHH76KeL', '', '127.0.0.1', '31', '5', 'false', '2023-10-10 14:46:11', '2023-10-10 14:46:11'),
(44, '/miss-world-2023-se-dien-ra-tai-an-do', 'mOuhP8v29f97KMVTHPdbE25VYqIJTzvAFHH76KeL', '', '127.0.0.1', '33', '5', 'false', '2023-10-10 14:46:40', '2023-10-10 14:46:40'),
(45, '/duong-kim-hoa-hau-the-gioi-karolina-bielawska-toi-viet-nam', 'mOuhP8v29f97KMVTHPdbE25VYqIJTzvAFHH76KeL', '', '127.0.0.1', '32', '5', 'false', '2023-10-10 14:47:52', '2023-10-10 14:47:52'),
(46, '/nguoi-dep-my-dang-quang-miss-universe-2022', 'BeJE8M5hHudhx4deVMp02f7ZWhhUMkoNYJRQhXsG', '', '127.0.0.1', '35', NULL, 'false', '2023-10-11 02:46:03', '2023-10-11 02:46:03'),
(47, '/nguoi-dep-my-dang-quang-miss-universe-2022', 'W0leOZObUR62SApKWgVToEVdm0Fg1qJKTy104KxI', '', '127.0.0.1', '35', '5', 'false', '2023-10-11 15:20:22', '2023-10-11 15:20:22'),
(48, '/a-hau-le-thao-nhi-mat-suat-thi-miss-universe-2023', 'K9yT1hxj3oWSerG9fSGv0adYEyHUvkPPHGt9JkbW', '', '127.0.0.1', '37', '4', 'false', '2023-10-14 15:26:22', '2023-10-14 15:26:22'),
(49, '/a-hau-le-thao-nhi-mat-suat-thi-miss-universe-2023', 'rPOTVYbjfRNs29tFLpvVxhc5TNhBztLt0Ja1m28w', '', '127.0.0.1', '37', '5', 'false', '2023-10-14 15:27:06', '2023-10-14 15:27:06'),
(50, '/a-hau-le-thao-nhi-mat-suat-thi-miss-universe-2023', '3xMYGoG8SBbbNtWqVKlHA7jMVq6Cswxqqqs3Sm55', '', '127.0.0.1', '37', '1', 'false', '2023-10-14 15:28:07', '2023-10-14 15:28:07'),
(51, '/hotpick-final-miss-universe-2022-by-the-gioi-hoa-hau', 'iBwS470gyYj7J4v0Bs0c1bgcYSO7EE1oSI5JfOhr', '', '127.0.0.1', '34', '4', 'false', '2023-10-14 15:29:20', '2023-10-14 15:29:20'),
(52, '/nguoi-dep-my-dang-quang-miss-universe-2022', 'iBwS470gyYj7J4v0Bs0c1bgcYSO7EE1oSI5JfOhr', '', '127.0.0.1', '35', '4', 'false', '2023-10-14 15:29:30', '2023-10-14 15:29:30'),
(53, '/nguoi-dep-my-dang-quang-miss-universe-2022', 'opIDAZ2CySzsoqpYxFZ2QWiqJBdkaNKt6p8QE3pk', '', '127.0.0.1', '35', '5', 'false', '2023-10-14 15:30:22', '2023-10-14 15:30:22'),
(54, '/nguoi-dep-my-dang-quang-miss-universe-2022', 'GfBfYcxjUcIFtTwiJKWmyh7GgcZwFZ5iKkIXKK0B', '', '127.0.0.1', '35', '4', 'false', '2023-10-14 15:31:23', '2023-10-14 15:31:23'),
(55, '/miss-universe-2022-den-viet-nam', 'GfBfYcxjUcIFtTwiJKWmyh7GgcZwFZ5iKkIXKK0B', '', '127.0.0.1', '36', '4', 'false', '2023-10-14 15:33:03', '2023-10-14 15:33:03'),
(56, '/miss-universe-2022-den-viet-nam', 'cQEN0WcEzq0MFEHmfqJSH4u9rPHw0QjC9WZ9zTVi', '', '127.0.0.1', '36', '1', 'false', '2023-10-14 15:34:04', '2023-10-14 15:34:04'),
(57, '/nguoi-dep-my-dang-quang-miss-universe-2022', 'cQEN0WcEzq0MFEHmfqJSH4u9rPHw0QjC9WZ9zTVi', '', '127.0.0.1', '35', '1', 'false', '2023-10-14 15:34:46', '2023-10-14 15:34:46'),
(58, '/nguoi-dep-my-dang-quang-miss-universe-2022', 'A5ATXjXzXV1VlR2wZC3Ti1hsMQSdzvDiS9jDIqnc', '', '127.0.0.1', '35', NULL, 'false', '2023-10-17 13:24:48', '2023-10-17 13:24:48'),
(59, '/miss-world-2023-se-dien-ra-tai-an-do', 'A5ATXjXzXV1VlR2wZC3Ti1hsMQSdzvDiS9jDIqnc', '', '127.0.0.1', '33', NULL, 'false', '2023-10-17 13:25:00', '2023-10-17 13:25:00'),
(60, '/duong-kim-hoa-hau-the-gioi-karolina-bielawska-toi-viet-nam', 'A5ATXjXzXV1VlR2wZC3Ti1hsMQSdzvDiS9jDIqnc', '', '127.0.0.1', '32', NULL, 'false', '2023-10-17 13:25:06', '2023-10-17 13:25:06'),
(61, '/final-hot-picks-miss-world-2022-du-doan-ket-qua-miss-world-2022', 'oXZb3olneXi8mAcV74HiRZ7wtbp0aPMRKl4cdkCK', '', '127.0.0.1', '30', '1', 'false', '2023-10-30 08:09:06', '2023-10-30 08:09:06'),
(62, '/ggggg-hdhhdhd', 'oXZb3olneXi8mAcV74HiRZ7wtbp0aPMRKl4cdkCK', '', '127.0.0.1', '39', '1', 'false', '2023-10-30 13:18:18', '2023-10-30 13:18:18'),
(63, '/sao-duong-ba-ho-diem-thu-huong-tiet-lo-thu-nhap-tu-livestream', 'oXZb3olneXi8mAcV74HiRZ7wtbp0aPMRKl4cdkCK', '', '127.0.0.1', '45', '1', 'false', '2023-10-30 13:19:02', '2023-10-30 13:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `article_post`
--

CREATE TABLE `article_post` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `article_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_post`
--

INSERT INTO `article_post` (`id`, `post_id`, `article_content`, `created_at`, `updated_at`) VALUES
(19, 30, '<p>Hoa hậu Thế giới c&oacute; thể kh&ocirc;ng &ldquo;hấp dẫn &rdquo; như c&aacute;c cuộc thi kh&aacute;c &ndash; v&igrave; n&oacute; kh&ocirc;ng c&oacute; những m&agrave;n tr&igrave;nh diễn sơ bộ rực rỡ &ndash; nhưng n&oacute; vẫn c&oacute; &yacute; nghĩa v&agrave; ph&ugrave; hợp v&igrave; sứ mệnh cao cả l&agrave; phục vụ những người k&eacute;m may mắn th&ocirc;ng qua dự &aacute;n Vẻ đẹp c&oacute; mục đ&iacute;ch. nhưng việc tổ chức cuộc thi ở Puerto Rico đang chứng tỏ l&agrave; một sự kiện đầy hứa hẹn bất chấp những mối đe dọa của đại dịch.</p>\r\n<p>Từ rất nhiều th&iacute; sinh được chọn, ch&uacute;ng t&ocirc;i đ&atilde; tổng hợp những người c&oacute; tiềm năng &ldquo;đi đầu&rdquo; trong cuộc thi.</p>\r\n<p>&nbsp;</p>\r\n<p><img class=\"images\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://127.0.0.1:8000/uploads/news-image\\22\\273704315_5567727746576777_8234382907137681774_n.jpg\" width=\"623\" height=\"751\" /></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: left;\"><strong>Hoa hậu Venezuela - Alejandra Conde</strong> vẫn chiếm vị tr&iacute; dẫn đầu v&agrave; củng cố vị thế của m&igrave;nh. Tuy nhi&ecirc;n, đất nước của c&ocirc; l&agrave; một si&ecirc;u cường sắc đẹp, đ&atilde; hơn một thập kỷ kể từ khi một người Venezuela gi&agrave;nh được vương miện Hoa hậu Thế giới. Đất nước n&agrave;y đ&atilde; c&oacute; th&agrave;nh t&iacute;ch kh&aacute; tốt tại cuộc thi n&agrave;y kể từ năm 2017 v&agrave; c&oacute; vẻ như giờ l&agrave; l&uacute;c đất nước n&agrave;y đ&ograve;i lại vinh quang.</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p><strong>Olivia Yac&eacute; của Hoa hậu Bờ Biển Ng&agrave;</strong> l&agrave; người dẫn đầu khi thực hiện c&aacute;c thử th&aacute;ch đường chạy nhanh. Chiến thắng của c&ocirc; ở thử th&aacute;ch Top Model lẽ ra đ&atilde; đủ để khẳng định c&ocirc; l&agrave; Hoa hậu Thế giới tiếp theo. Nhưng ng&agrave;y nay, trở th&agrave;nh người chiến thắng Top Model kh&ocirc;ng nhất thiết c&oacute; nghĩa l&agrave; bạn sẽ đạt thứ hạng cao trong v&ograve;ng chung kết. Tuy nhi&ecirc;n, m&agrave;n tr&igrave;nh diễn của c&ocirc; ấy tại Thử th&aacute;ch đối đầu đ&atilde; khiến c&aacute;c chuy&ecirc;n gia sắc đẹp của ch&uacute;ng t&ocirc;i tin rằng c&ocirc; ấy l&agrave; ứng cử vi&ecirc;n nặng k&yacute; cho chiếc vương miện.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Hoa hậu Cameroon Audrey Monkam</strong> l&agrave; một th&iacute; sinh ch&acirc;u Phi kh&aacute;c đang l&agrave;m dậy s&oacute;ng tại Hoa hậu Thế giới lần thứ 70. C&ocirc; l&agrave; một trong những người chiến thắng thử th&aacute;ch Head to Head v&agrave; đứng thứ hai tại cuộc thi Top Model. Về cơ bản, điều n&agrave;y khiến c&ocirc; phải cạnh tranh với Hoa hậu Bờ Biển Ng&agrave; để gi&agrave;nh danh hiệu Nữ ho&agrave;ng sắc đẹp lục địa ch&acirc;u Phi.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ho&agrave;n th&agrave;nh danh s&aacute;ch n&agrave;y l&agrave; c&aacute;c th&iacute; sinh sau:</strong></p>\r\n<p>1. Miss Venezuela Alejandra Conde&nbsp;</p>\r\n<p>2. Miss Philippines Tracy Maureen Perez</p>\r\n<p>3. Miss Cote d&rsquo;Ivoire&rsquo;s Olivia Yac&eacute;&nbsp;</p>\r\n<p>4. Miss Cameroon Audrey Monkam&nbsp;</p>\r\n<p>5. Miss Puerto Rico Aryam Diaz&nbsp;</p>\r\n<p>6. Miss India Manasa Varanasi&nbsp;</p>\r\n<p>7. Miss Poland Karolina Bielawska&nbsp;</p>\r\n<p>8. Miss Mexico Karolina Vidales</p>\r\n<p>9. Miss Czech Republic Karol&iacute;na Kop&iacute;ncov&aacute;&nbsp;</p>\r\n<p>10. Miss South Africa Shudufhadzo Musida&nbsp;</p>\r\n<p>11. Miss Paraguay Bethania Borba&nbsp;</p>\r\n<p>12. Miss Vietnam Đỗ Thị H&agrave;</p>\r\n<p>13. Miss England Rehema Muthamia&nbsp;</p>\r\n<p>14. Miss Indonesia Carla Yules</p>\r\n<p>15. Miss Bahamas Sienna Evans</p>', '2023-09-03 03:49:36', '2023-09-03 03:49:36'),
(20, 31, '<p>&nbsp;Người đẹp Ba Lan Karolina Bielawska đ&atilde; đăng quang Miss World lần thứ 70 trong chung kết được tổ chức s&aacute;ng nay 17-3 (theo giờ Việt Nam)</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://phapluatxahoi.kinhtedothi.vn/stores/news_dataimages/vigiangpxlh/032022/17/13/66a8f2d61fb960e6cdd044d628659e1f.jpg?rt=20220317132112\" alt=\"Người đẹp Ba Lan đăng quang Miss World, Đỗ Thị H&agrave; dừng ch&acirc;n Top 13\" /></p>\r\n<p style=\"text-align: center;\"><em>T&acirc;n Hoa hậu Thế giới 2021 Karolina Bielawska</em></p>\r\n<p>&nbsp;</p>\r\n<p>Được đ&aacute;nh gi&aacute; l&agrave; th&iacute; sinh &ldquo;nặng k&yacute;&rdquo; trong cuộc đua sắc đẹp, tuy nhi&ecirc;n Đỗ Thị H&agrave; dừng ch&acirc;n với vị tr&iacute; top 13 th&iacute; sinh xuất sắc.</p>\r\n<p><em><img class=\"images\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://127.0.0.1:8000/uploads/news-image\\24\\7f2e26403e8643800a452686a55c46f2.jpg\" /></em></p>\r\n<p style=\"text-align: center;\"><em>Đại diện Việt Nam Đỗ Thị H&agrave; lọt top 13 th&iacute; sinh xuất sắc nhất</em></p>\r\n<p>Top 6 gồm c&aacute;c đại diện đến từ Bờ Biển Ng&agrave;, Ba Lan, Mexico, Indonesia, Bắc Ireland v&agrave; Mỹ. Trong đ&oacute;, người đẹp nước Mỹ được v&eacute; v&agrave;o thẳng top 6 nhờ chiến thắng phần thi \"Người đẹp nh&acirc;n &aacute;i\".</p>\r\n<p>Danh s&aacute;ch Top 13 gồm: Đỗ Thị H&agrave; (Việt Nam), Karolina Vidales (Mexico), Anna Leitch (Bắc Ireland), Tracy Perez (Philippines), Karolina Bielawska (Ba Lan), Khadija Omar (Somalia), Shree Saini (Mỹ), Andrea Aguilera (Colombia), Karolina Kopincova (Cộng h&ograve;a Czech), April Benayoum (Ph&aacute;p), Manasa Varanasi (Ấn Độ), Carla Yules (Indonesia) v&agrave; Olivia Yace (Bờ Biển Ng&agrave;).</p>\r\n<p>&nbsp;</p>', '2023-09-03 04:08:29', '2023-09-03 04:08:29'),
(21, 32, '<p>Đương kim Hoa hậu Thế giới (Miss World) Karolina Bielawska - 24 tuổi, người Ba Lan, vừa c&oacute; mặt tại s&acirc;n bay T&acirc;n Sơn Nhất (TP.HCM) s&aacute;ng 20.7 theo lời mời của Ban tổ chức để l&agrave;m gi&aacute;m khảo kh&aacute;ch mời trong đ&ecirc;m chung kết Miss World Vietnam 2023 diễn ra v&agrave;o tối 22.7 tại Quy Nhơn.</p>\r\n<p>&nbsp;</p>\r\n<p>S&aacute;ng 20.7, Miss World 2022 Karolina Bielawska đ&atilde; c&oacute; mặt ở TP.HCM v&agrave; sẽ đ&aacute;p chuyến bay đến s&acirc;n bay Ph&ugrave; C&aacute;t (B&igrave;nh Định) v&agrave;o 19 giờ 40 tối c&ugrave;ng ng&agrave;y. Tiếp theo, c&ocirc; sẽ c&ugrave;ng đo&agrave;n Miss World đến kh&aacute;ch sạn Fleur de Lys (16 Nguyễn Huệ, P.L&ecirc; Lợi, TP.Quy Nhơn) để chuẩn bị cho c&aacute;c lịch tr&igrave;nh sắp tới, h&ograve;a v&agrave;o kh&ocirc;ng kh&iacute; luyện tập, r&aacute;p s&acirc;n khấu của Top 40 th&iacute; sinh cuộc thi Hoa hậu Thế giới Việt Nam - Miss World Vietnam 2023.</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><em><strong><img class=\"images\" src=\"http://127.0.0.1:8000/uploads/news-image\\26\\3619086358720240009593994114997542873627088n-1689838525983587194744.jpg\" /></strong></em></p>\r\n<p style=\"text-align: center;\"><em><strong><img class=\"images\" src=\"http://127.0.0.1:8000/uploads/news-image\\27\\3600970348720239842927342287225594727268340n-16898382491072029624358.jpg\" /></strong></em></p>\r\n<p style=\"text-align: center;\"><em>Đương kim Hoa hậu thế giới Karolina Bielawska (v&aacute;y ngắn) tới Việt Nam dự chung kết Miss World Vietnam 2023, chụp ảnh c&ugrave;ng b&agrave; Phạm Kim Dung - Trưởng Ban tổ chức (thứ hai từ phải qua) v&agrave; Hoa hậu Mai Phương, &Aacute; hậu Bảo Ngọc, Phương Nhi</em></p>\r\n<p>Hiện tại, sau hơn 4 th&aacute;ng với c&aacute;c v&ograve;ng sơ tuyển, chung khảo v&agrave; nhiều phần thi phụ, 40 th&iacute; sinh bước v&agrave;o v&ograve;ng chung kết Miss World Vietnam 2023 đ&atilde; đi đến chặng cuối để t&igrave;m ra chủ nh&acirc;n của chiếc vương miện trị gi&aacute; h&agrave;ng tỉ đồng.&nbsp;</p>', '2023-09-03 04:18:47', '2023-09-03 04:18:47'),
(22, 33, '<p>Ấn Độ sẽ l&agrave; chủ nh&agrave; của cuộc thi Hoa hậu Thế giới lần thứ 71- Miss World 2023 v&agrave;o cuối năm nay. Đ&acirc;y l&agrave; th&ocirc;ng b&aacute;o của Tổ chức Hoa hậu Thế giới ng&agrave;y 8/6 trong buổi họp b&aacute;o tại thủ đ&ocirc; New Delhi.</p>\r\n<p>Lễ c&ocirc;ng bố quyết định c&oacute; sự tham dự của Đương kim Hoa hậu Thế giới Karolina Bielawska v&agrave; b&agrave; Julia Morley, Chủ tịch ki&ecirc;m Gi&aacute;m đốc điều h&agrave;nh của Tổ chức Hoa hậu Thế giới.</p>\r\n<p>&nbsp;</p>\r\n<p><img class=\"images\" src=\"http://127.0.0.1:8000/uploads/news-image\\29\\20230608055l.jpg\" width=\"619\" height=\"390\" /></p>\r\n<p>Hoa hậu Thế giới 2022 Karolina Bielawska and Hoa hậu Thế giới Ấn Độ 2022 Sini Shetty tại lễ c&ocirc;ng bố đăng cai Miss World 2023 của Ấn Độ (Ảnh: ANI)</p>\r\n<p>Trong khoảng 1 th&aacute;ng, c&aacute;c th&iacute; sinh từ hơn 130 quốc gia sẽ tập trung tại Ấn Độ để thể hiện t&agrave;i năng, tr&iacute; th&ocirc;ng minh v&agrave; l&ograve;ng trắc ẩn độc đ&aacute;o của họ. Theo Tổ chức Hoa hậu Thế giới, những người đẹp sẽ tham gia v&agrave;o một loạt c&aacute;c cuộc thi nghi&ecirc;m ngặt, bao gồm thể hiện t&agrave;i năng, thử th&aacute;ch thể thao v&agrave; s&aacute;ng kiến từ thiện.</p>\r\n<p>Tất cả đều nhằm n&ecirc;u bật những phẩm chất khiến họ trở th&agrave;nh đại sứ cho những thay đổi đặc biệt. Đ&ecirc;m chung kết dự kiến sẽ diễn ra v&agrave;o th&aacute;ng 11 hoặc th&aacute;ng 12 năm nay. Sau 27 năm, cuộc thi sắc đẹp quốc tế danh gi&aacute; n&agrave;y mới trở lại Ấn Độ. Lần gần đ&acirc;y nhất Ấn Độ đăng cai Miss World l&agrave; v&agrave;o năm 1996. Trong lịch sử 70 lần tổ chức của Miss World, c&aacute;c ứng vi&ecirc;n sắc đẹp của Ấn Độ từng 6 lần đăng quang. Người đẹp Ấn Độ gi&agrave;nh vương miện Miss World gần nhất l&agrave; Hoa hậu Manushi Chhillar năm 2017.</p>\r\n<p>&nbsp;</p>', '2023-09-03 04:24:50', '2023-09-03 04:24:50'),
(23, 34, '<p>Kết quả cuộc thi Hoa Hậu Ho&agrave;n Vũ lần thứ 71 sẽ lộ diện v&agrave;o 8:00 s&aacute;ng ng&agrave;y 15/01/2022 (giờ Việt Nam). Cuộc thi năm nay quả thật thu h&uacute;t truyền th&ocirc;ng hơn mọi năm, th&iacute; sinh đầu tư rất lớn từ ekip- v&aacute;y &aacute;o lẫn skill tr&igrave;nh diễn khiến cho kh&aacute;n giả h&aacute;o hức theo d&otilde;i mỗi ng&agrave;y.</p>\r\n<p>Format lần đầu ti&ecirc;n trong lịch sử c&ocirc;ng bố top khốc liệt, từ top 16 bay thẳng đến top 5. Thế Giới Hoa Hậu đưa ra bảng xếp hạng chung kết như sau:</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p><img class=\"images\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://127.0.0.1:8000/uploads/news-image\\31\\325658218_593090119317786_4291906235879484321_n.jpg\" /></p>\r\n<p>Hoa Hậu: Colombia</p>\r\n<p>&Aacute; Hậu 1: Curacao</p>\r\n<p>&Aacute; Hậu 2: Venezuela</p>\r\n<p>&Aacute; Hậu 3: Vietnam 🇻🇳</p>\r\n<p>&Aacute; Hậu 4: Thailand</p>\r\n<p>&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;</p>\r\n<p>Top 10: Philippines- USA- Mexico- South Africa- Puerto Rico</p>\r\n<p>Top 16: Spain- Brazil - Panama- Dominican Repbulic- France - Jamaica</p>\r\n<p>Very Close: Peru - Indonesia- Ecuador - Australia- Guatemala</p>', '2023-09-03 04:40:50', '2023-09-03 04:40:50'),
(24, 35, '<p>R\'Bonney Gabriel, 28 tuổi, th&iacute; sinh nước chủ nh&agrave; Mỹ, đăng quang Hoa hậu Ho&agrave;n vũ 2022, ở chung kết s&aacute;ng 15/1 (giờ H&agrave; Nội).</p>\r\n<p>R\'Bonney Gabriel sinh năm 1994, cao 1,7 m, l&agrave; người Mỹ gốc Philippines. Hoa hậu từng tốt nghiệp ng&agrave;nh thiết kế thời trang v&agrave; hiện l&agrave;m người mẫu. C&ocirc; trở th&agrave;nh người đẹp thứ ch&iacute;n của Mỹ đoạt vương miện v&agrave; cũng l&agrave; hoa hậu lớn tuổi nhất lịch sử cuộc thi.</p>\r\n<p>Tại v&ograve;ng chung kết Miss Universe 2022, Gabriel g&acirc;y ấn tượng v&agrave; lu&ocirc;n được c&aacute;c trang nhan sắc xếp v&agrave;o nh&oacute;m th&iacute; sinh tiềm năng h&agrave;ng đầu. Trong chung kết, c&ocirc; nổi bật ở c&aacute;c phần tr&igrave;nh diễn &aacute;o tắm, v&aacute;y dạ hội. Khi v&agrave;o top 3, c&ocirc; được hỏi: \"Hoa hậu Ho&agrave;n vũ năm nay đ&atilde; cho những người mẹ đơn th&acirc;n hoặc đ&atilde; lập gia đ&igrave;nh tham gia. Bạn nghĩ sao?\". Gabriel đ&aacute;p: \"\'T&ocirc;i nghĩ ch&uacute;ng ta cần nới rộng độ tuổi của c&aacute;c th&iacute; sinh. Năm nay, t&ocirc;i 28 tuổi v&agrave; l&agrave; lứa tuổi lớn nhất được tham gia. T&ocirc;i muốn nhắc lại c&acirc;u n&oacute;i: \'Nếu kh&ocirc;ng phải b&acirc;y giờ th&igrave; l&agrave; khi n&agrave;o. Hiện tại l&agrave; thời điểm th&iacute;ch hợp, kh&ocirc;ng phải h&ocirc;m qua, cũng kh&ocirc;ng phải ng&agrave;y mai\"\'.</p>\r\n<p>Tại v&ograve;ng chung kết Miss Universe 2022, Gabriel g&acirc;y ấn tượng v&agrave; lu&ocirc;n được c&aacute;c trang nhan sắc xếp v&agrave;o nh&oacute;m th&iacute; sinh tiềm năng h&agrave;ng đầu. Trong chung kết, c&ocirc; nổi bật ở c&aacute;c phần tr&igrave;nh diễn &aacute;o tắm, v&aacute;y dạ hội. Khi v&agrave;o top 3, c&ocirc; được hỏi: \"Hoa hậu Ho&agrave;n vũ năm nay đ&atilde; cho những người mẹ đơn th&acirc;n hoặc đ&atilde; lập gia đ&igrave;nh tham gia. Bạn nghĩ sao?\". Gabriel đ&aacute;p: \"\'T&ocirc;i nghĩ ch&uacute;ng ta cần nới rộng độ tuổi của c&aacute;c th&iacute; sinh. Năm nay, t&ocirc;i 28 tuổi v&agrave; l&agrave; lứa tuổi lớn nhất được tham gia. T&ocirc;i muốn nhắc lại c&acirc;u n&oacute;i: \'Nếu kh&ocirc;ng phải b&acirc;y giờ th&igrave; l&agrave; khi n&agrave;o. Hiện tại l&agrave; thời điểm th&iacute;ch hợp, kh&ocirc;ng phải h&ocirc;m qua, cũng kh&ocirc;ng phải ng&agrave;y mai\"\'.</p>\r\n<p><img class=\"images\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://127.0.0.1:8000/uploads/news-image\\33\\Miss-Universe-2022-top-2553-1673760978-(1).jpg\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #222222; font-family: arial; font-size: 14px; background-color: #fcfaf6;\">Nhan sắc Hoa hậu Ho&agrave;n vũ 2022.</span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p><span style=\"color: #222222; font-family: arial;\"><span style=\"font-size: 14px;\">Người đẹp từng đại diện bang Texas thi Miss USA v&agrave; đăng quang hồi th&aacute;ng 10/2022. Sau chiến thắng, người đẹp từng bị một số bạn thi nghi ngờ mua giải, được ban tổ chức thi&ecirc;n vị. Tuy nhi&ecirc;n, Gabriel phủ nhận c&aacute;c tin đồn, cho biết ch&uacute;ng chỉ dựa tr&ecirc;n &yacute; kiến chủ quan, kh&ocirc;ng phải sự thật.</span></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #222222; font-family: arial;\"><span style=\"font-size: 14px;\">Amanda Dudamel của Venezuela nhận danh hiệu &Aacute; hậu 1. Andre&iacute;na Mart&iacute;nez của Cộng h&ograve;a Dominica l&agrave; &Aacute; hậu 2. Hai người đẹp c&ograve;n lại trong top 5 gồm Gabri&euml;la Dos Santos của Curacao v&agrave; Ashley Cari&ntilde;o đến từ Puerto Rico. C&aacute;c th&iacute; sinh thuộc top 16 l&agrave; Nam Phi, Bồ Đ&agrave;o Nha, Canada, Peru, Trinidad &amp; Tobago, Ấn Độ, T&acirc;y Ban Nha, Haiti, Australia, L&agrave;o, Colombia.</span></span></p>', '2023-09-03 04:56:50', '2023-09-03 04:56:50'),
(25, 36, '<p>R\'Bonney Gabriel - Miss Universe 2022 - được fan ch&agrave;o đ&oacute;n khi đến Việt Nam c&ocirc;ng t&aacute;c, chiều 23/2.</p>\r\n<p>Mỹ nh&acirc;n đến s&acirc;n bay T&acirc;n Sơn Nhất l&uacute;c 17h, sau chuyến c&ocirc;ng t&aacute;c tại Malaysia. C&ocirc; diện trang phục theo phong c&aacute;ch năng động, xuất hiện cạnh &Aacute; hậu Andre&iacute;na Mart&iacute;nez. Người mẫu Lan Khu&ecirc; - đại diện ban tổ chức - đ&oacute;n hai người đẹp.</p>\r\n<p><em><img class=\"images\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://127.0.0.1:8000/uploads/news-image\\35\\Miss-Universe-2022-den-Viet-Na-1941-8074-1677162910.jpg\" /></em></p>\r\n<p style=\"text-align: center;\"><em>Từ tr&aacute;i qua: R\'Bonney Gabriel, Lan Khu&ecirc; v&agrave; Andre&iacute;na Mart&iacute;nez - &aacute; hậu 2 của cuộc thi. Ảnh: Nguyễn H&agrave;</em></p>\r\n<p>Nhiều fan c&oacute; mặt từ sớm, mang theo poster ch&agrave;o đ&oacute;n. Khi c&aacute;c người đẹp bước ra cửa ga đến, nhiều người h&ograve; reo gọi t&ecirc;n. Đ&aacute;p lại, họ li&ecirc;n tục n&oacute;i c&acirc;u \"Xin ch&agrave;o Việt Nam\" v&agrave; \"Cảm ơn\". Gabriel v&agrave; Mart&iacute;nez n&aacute;n lại chụp ảnh, k&yacute; tặng fan trước khi ra xe về kh&aacute;ch sạn ở quận 1 nghỉ ngơi.</p>\r\n<p>&nbsp;</p>\r\n<p><em><img class=\"images\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://127.0.0.1:8000/uploads/news-image\\36\\Miss-Universe-2022-den-Viet-Na-3500-9847-1677162910.jpg\" /></em></p>\r\n<p style=\"text-align: center;\"><em>Fan Việt v&acirc;y quanh chụp ảnh, xin chữ k&yacute; của c&aacute;c người đẹp. Ảnh: Nguyễn H&agrave;</em></p>\r\n<p>Mỹ nh&acirc;n sinh năm 1994, cao 1,7 m, l&agrave; người Mỹ gốc Philippines. C&ocirc; trở th&agrave;nh người đẹp thứ ch&iacute;n của Mỹ đoạt vương miện v&agrave; cũng l&agrave; hoa hậu lớn tuổi nhất lịch sử Miss Universe. R\'Bonney Gabriel từng tốt nghiệp ng&agrave;nh thiết kế, hiện điều h&agrave;nh một h&atilde;ng thời trang bền vững, hướng dẫn may ch&iacute;nh cho những người sống s&oacute;t sau bạo lực gia đ&igrave;nh tại xưởng may phi lợi nhuận ở East Downtown, Houston.</p>', '2023-09-03 05:02:09', '2023-09-03 05:02:09'),
(26, 37, '<p>Miss Universe Vietnam v&agrave; Unicorp kh&ocirc;ng đạt được thỏa thuận về việc chuyển quyền quản l&yacute; &Aacute; hậu Thảo Nhi, đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n khiến người đẹp kh&ocirc;ng thể dự thi quốc tế.</p>\r\n<p>H&ocirc;m nay 29/3, đơn vị giữ quyền cử th&iacute; sinh Việt Nam dự thi Miss Universe ch&iacute;nh thức x&aacute;c nhận &Aacute; hậu Thảo L&ecirc; sẽ kh&ocirc;ng tham gia Miss Universe 2023.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img class=\"images\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://127.0.0.1:8000/uploads/news-image\\38\\large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg\" width=\"693\" height=\"462\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Theo điều lệ mới của Tổ chức Miss Universe, để tham gia Miss Universe 2023, cuộc thi quốc gia phải được tổ chức hằng năm v&agrave; chỉ c&oacute; người thắng cuộc mới được đại diện quốc gia tham gia Miss Universe 2023 ở El Salvador.&nbsp;</p>\r\n<p>Theo Miss Universe Vietnam, ph&iacute;a họ đ&atilde; xin đặc c&aacute;ch từ tổ chức quốc tế cho &Aacute; hậu Thảo Nhi L&ecirc; được đại diện Việt Nam đến với cuộc thi năm nay. Tuy nhi&ecirc;n, Tổ chức Miss Universe Vietnam v&agrave; c&ocirc;ng ty quản l&yacute; của &Aacute; hậu Thảo Nhi L&ecirc; (Unicorp) lại kh&ocirc;ng đạt được thỏa thuận về việc chuyển quyền quản l&yacute; của c&ocirc; cho Miss Universe Vietnam.&nbsp;</p>\r\n<p>Việc k&yacute; hợp đồng hợp t&aacute;c với c&ocirc;ng ty sở hữu bản quyền Miss Universe Vietnam l&agrave; y&ecirc;u cầu cơ bản để Thảo Nhi L&ecirc; được dự thi quốc tế. Song, v&igrave; đ&ocirc;i b&ecirc;n thỏa thuận kh&ocirc;ng th&agrave;nh c&ocirc;ng n&ecirc;n Thảo Nhi L&ecirc; buộc phải mất quyền đến Miss Universe 2023.&nbsp;</p>\r\n<p>Chia sẻ với D&acirc;n tr&iacute;, &ocirc;ng Trần Việt Bảo Ho&agrave;ng - đại diện Unicorp - cho biết &ocirc;ng bất ngờ khi đọc th&ocirc;ng tin m&agrave; tổ chức Miss Universe Vietnam ph&aacute;t đi th&ocirc;ng qua truyền th&ocirc;ng, thay v&igrave; một th&ocirc;ng b&aacute;o gửi cho đối t&aacute;c về kết quả l&agrave;m việc trước ti&ecirc;n.</p>\r\n<p>&Ocirc;ng cho biết gần một th&aacute;ng qua kể từ khi nhận được thư mời hợp t&aacute;c hồi đầu th&aacute;ng, trong việc cử Thảo Nhi L&ecirc; dự thi Miss Universe 2023, hai tổ chức chỉ l&agrave;m việc qua lại th&ocirc;ng qua email, chưa c&oacute; cuộc gặp gỡ, thương thảo trực tiếp n&agrave;o.</p>\r\n<p>\"Ch&uacute;ng t&ocirc;i kh&ocirc;ng nhận được ph&uacute;c đ&aacute;p cuối c&ugrave;ng để chốt lại vấn đề. Mọi việc khởi đầu bằng một th&ocirc;ng b&aacute;o của tổ chức Miss Universe Vietnam tr&ecirc;n truyền th&ocirc;ng v&agrave; kết th&uacute;c cũng như thế. Ch&uacute;ng t&ocirc;i c&oacute; mong muốn gặp gỡ để thảo luận chốt lại về việc hợp t&aacute;c, nhưng chưa nhận được ph&uacute;c đ&aacute;p về lịch gặp th&igrave; đ&atilde; nhận được th&ocirc;ng b&aacute;o n&agrave;y. Từ g&oacute;c độ c&aacute; nh&acirc;n, t&ocirc;i rất ngạc nhi&ecirc;n\", &ocirc;ng chia sẻ.</p>\r\n<p>Đại diện Unicorp nhấn mạnh từ đầu đơn vị lu&ocirc;n giữ th&aacute;i độ cầu thị, sẵn s&agrave;ng thảo luận về việc hợp t&aacute;c với Miss Universe Vietnam v&igrave; hiểu tiềm năng của Thảo Nhi L&ecirc; cũng như mong mỏi lớn của fan. Theo &ocirc;ng Ho&agrave;ng, chi tiết về c&aacute;c điều khoản hợp đồng cần được ngồi xuống một c&aacute;ch trực tiếp để thảo luận, tuy nhi&ecirc;n đến nay đơn vị vẫn chưa nhận được một y&ecirc;u cầu hay th&ocirc;ng b&aacute;o n&agrave;o của đối t&aacute;c về sự việc.</p>\r\n<p>\"Ch&uacute;ng t&ocirc;i rất lấy l&agrave;m tiếc, biết rằng Thảo Nhi L&ecirc; cũng như fan c&ocirc; ấy sẽ buồn v&igrave; giấc mơ đến với Miss Universe sẽ kh&eacute;p lại. Tuy nhi&ecirc;n, ch&uacute;ng t&ocirc;i tin với bản lĩnh, t&agrave;i năng của m&igrave;nh, c&ocirc; sẽ c&oacute; định hướng ph&aacute;t triển, khẳng định dấu ấn r&otilde; n&eacute;t trong c&ocirc;ng việc theo đuổi. Ban Tổ chức Hoa hậu Ho&agrave;n vũ Việt Nam sẽ lu&ocirc;n đồng h&agrave;nh, hỗ trợ Thảo Nhi L&ecirc; bất cứ l&uacute;c n&agrave;o. Ch&uacute;ng t&ocirc;i cũng t&ocirc;n trọng quyết định của tổ chức Miss Universe Vietnam v&agrave; ch&uacute;c đơn vị mới sẽ t&igrave;m được đại diện xứng đ&aacute;ng để đại diện Việt Nam năm nay\" - Trần Việt Bảo Ho&agrave;ng n&oacute;i.</p>\r\n<p>&nbsp;</p>', '2023-09-03 05:08:05', '2023-09-03 05:08:05'),
(27, 39, '<p>ddddddd</p>', '2023-10-14 15:49:47', '2023-10-14 15:49:47'),
(28, 42, 'Israel has pledged to continue its \"large scale, significant strikes\" in pursuit of Hamas militants responsible for the Oct. 7 carnage.', '2023-10-30 12:08:45', '2023-10-30 12:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `audio_post`
--

CREATE TABLE `audio_post` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `audio_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_in_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_in_home_page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `show_in_menu`, `show_in_home_page`, `color`, `lang_id`, `created_at`, `updated_at`) VALUES
(1, 'Việt Nam', 'animal', '1', '1', '#b51cb2', 1, '2023-03-23 08:22:10', '2023-09-03 02:42:45'),
(2, 'Miss World', 'gaming', '1', '1', '#2bc3a9', 1, '2023-03-23 08:22:10', '2023-10-10 12:54:11'),
(6, 'Miss Universe', 'miss-universe', '1', '1', NULL, 1, '2023-09-03 02:44:22', '2023-09-03 02:44:22'),
(7, 'Miss International', 'miss-international', '1', '1', NULL, 1, '2023-09-03 02:44:40', '2023-09-03 02:44:40'),
(8, 'Miss Supranational', 'miss-supranational', '1', '1', NULL, 1, '2023-09-03 02:44:58', '2023-09-03 02:44:58'),
(9, 'Miss Grand', 'miss-grand', '1', '1', NULL, 1, '2023-09-03 02:45:10', '2023-09-03 02:45:10'),
(10, 'Miss Earth', 'miss-earth', '1', '1', NULL, 1, '2023-09-03 02:45:27', '2023-09-03 02:45:27'),
(11, 'Nam Vương', 'nam-v-ng', '1', '1', NULL, 1, '2023-10-27 06:48:32', '2023-10-27 06:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `status`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Super Admin', 'admin@tghh.com', 'abc', 1, 32, 1, '2023-10-10 14:20:00', '2023-10-10 14:20:00'),
(3, 'Super Admin', 'admin@tghh.com', 'abhhc', 1, 32, 1, '2023-10-10 14:20:04', '2023-10-10 14:20:04'),
(4, 'Super Admin', 'admin@tghh.com', 'abdgga', 1, 35, 1, '2023-10-10 14:20:25', '2023-10-10 14:20:25'),
(5, 'Super Admin', 'admin@tghh.com', 'adbhyc', 1, 35, 1, '2023-10-10 14:20:28', '2023-10-10 14:20:28'),
(6, 'Super Admin', 'admin@tghh.com', 'ahsyysyd', 1, 35, 1, '2023-10-10 14:20:32', '2023-10-10 14:20:32'),
(7, 'Super Admin', 'admin@tghh.com', 'dscbhhc', 1, 35, 1, '2023-10-10 14:20:35', '2023-10-10 14:20:35'),
(8, 'Super Admin', 'admin@tghh.com', 'dcnjjc', 1, 35, 1, '2023-10-10 14:20:39', '2023-10-10 14:20:39'),
(9, 'Super Admin', 'admin@tghh.com', 'bdhcb', 1, 37, 1, '2023-10-10 14:22:57', '2023-10-10 14:22:57'),
(10, 'Super Admin', 'admin@tghh.com', 'dfff', 1, 37, 1, '2023-10-10 14:23:00', '2023-10-10 14:23:00'),
(11, 'Super Admin', 'admin@tghh.com', 'ffff', 1, 37, 1, '2023-10-10 14:23:01', '2023-10-10 14:23:01'),
(12, 'Super Admin', 'admin@tghh.com', 'sabdfhc', 1, 36, 1, '2023-10-10 14:25:03', '2023-10-10 14:25:03'),
(13, 'Super Admin', 'admin@tghh.com', 'fggg', 1, 37, 1, '2023-10-10 14:26:52', '2023-10-10 14:26:52'),
(14, 'Super Admin', 'admin@tghh.com', 'bhasdhch', 1, 32, 1, '2023-10-10 14:33:52', '2023-10-10 14:33:52'),
(15, 'Super Admin', 'admin@tghh.com', 'sdfvff', 1, 32, 1, '2023-10-10 14:33:56', '2023-10-10 14:33:56'),
(16, 'Super Admin', 'admin@tghh.com', 'ffff', 1, 32, 1, '2023-10-10 14:33:59', '2023-10-10 14:33:59'),
(17, 'Hau Lê', 'hau@gmail.com', 'ffff', 1, 31, 4, '2023-10-10 14:35:49', '2023-10-10 14:35:49'),
(18, 'Hau Lê', 'hau@gmail.com', 'rggg', 1, 37, 4, '2023-10-10 14:36:28', '2023-10-10 14:36:28'),
(19, 'Hau Lê', 'hau1@gmail.com', 'ádbchjhd', 1, 31, 5, '2023-10-10 14:46:17', '2023-10-10 14:46:17'),
(20, 'Hau Lê', 'hau1@gmail.com', 'dđ', 1, 31, 5, '2023-10-10 14:46:19', '2023-10-10 14:46:19'),
(21, 'Hau Lê', 'hau1@gmail.com', 'dđ', 1, 31, 5, '2023-10-10 14:46:21', '2023-10-10 14:46:21'),
(22, 'Hau Lê', 'hau1@gmail.com', 'dd', 1, 31, 5, '2023-10-10 14:46:23', '2023-10-10 14:46:23'),
(23, 'Hau Lê', 'hau1@gmail.com', 'dd', 1, 31, 5, '2023-10-10 14:46:25', '2023-10-10 14:46:25'),
(24, 'Hau Lê', 'hau1@gmail.com', 'sss', 1, 33, 5, '2023-10-10 14:46:50', '2023-10-10 14:46:50'),
(25, 'Hau Lê', 'hau1@gmail.com', 'sss', 1, 33, 5, '2023-10-10 14:46:52', '2023-10-10 14:46:52'),
(26, 'Hau Lê', 'hau1@gmail.com', 'sss', 1, 33, 5, '2023-10-10 14:46:54', '2023-10-10 14:46:54'),
(27, 'Hau Lê', 'hau1@gmail.com', 'sss', 1, 33, 5, '2023-10-10 14:46:56', '2023-10-10 14:46:56'),
(28, 'Hau Lê', 'hau1@gmail.com', 'sss', 1, 33, 5, '2023-10-10 14:46:58', '2023-10-10 14:46:58'),
(29, 'Hau Lê', 'hau1@gmail.com', 'ssss', 1, 33, 5, '2023-10-10 14:47:00', '2023-10-10 14:47:00'),
(30, 'Hau Lê', 'hau1@gmail.com', 'sss', 1, 33, 5, '2023-10-10 14:47:02', '2023-10-10 14:47:02'),
(31, 'Hau Lê', 'hau1@gmail.com', 'sss', 1, 33, 5, '2023-10-10 14:47:03', '2023-10-10 14:47:03'),
(32, 'Hau Lê', 'hau1@gmail.com', 'rrr', 1, 33, 5, '2023-10-10 14:47:23', '2023-10-10 14:47:23'),
(33, 'Hau Lê', 'hau1@gmail.com', 'rrr', 1, 33, 5, '2023-10-10 14:47:25', '2023-10-10 14:47:25'),
(34, 'Hau Lê', 'hau1@gmail.com', 'dd', 1, 32, 5, '2023-10-10 14:48:02', '2023-10-10 14:48:02'),
(35, 'Hau Lê', 'hau1@gmail.com', 'dd', 1, 32, 5, '2023-10-10 14:48:04', '2023-10-10 14:48:04'),
(36, 'Hau Lê', 'hau1@gmail.com', 'đ', 1, 32, 5, '2023-10-10 14:48:05', '2023-10-10 14:48:05'),
(37, 'Hau Lê', 'hau1@gmail.com', 'âs', 1, 30, 5, '2023-10-10 14:51:00', '2023-10-10 14:51:00'),
(38, 'Hau Lê', 'hau1@gmail.com', 'dd', 1, 30, 5, '2023-10-10 14:51:02', '2023-10-10 14:51:02'),
(39, 'Hau Lê', 'hau1@gmail.com', 'dd', 1, 30, 5, '2023-10-10 14:51:04', '2023-10-10 14:51:04'),
(40, 'Hau Lê', 'hau1@gmail.com', 'hhhh', 1, 35, 5, '2023-10-10 14:51:49', '2023-10-10 14:51:49'),
(41, 'Hau Lê', 'hau1@gmail.com', 'ffff', 1, 35, 5, '2023-10-10 14:51:52', '2023-10-10 14:51:52'),
(42, 'Hau Lê', 'hau1@gmail.com', 'fff', 1, 35, 5, '2023-10-10 14:51:54', '2023-10-10 14:51:54'),
(43, 'Hau Lê', 'hau1@gmail.com', 'fff', 1, 35, 5, '2023-10-10 14:51:56', '2023-10-10 14:51:56'),
(44, 'Hau Lê', 'hau1@gmail.com', 'fff', 1, 35, 5, '2023-10-10 14:51:58', '2023-10-10 14:51:58'),
(45, 'ssss', 'mle.hau21@gmail.com', 'ssss', 1, 35, NULL, '2023-10-11 02:46:21', '2023-10-11 02:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emoji`
--

CREATE TABLE `emoji` (
  `id` bigint UNSIGNED NOT NULL,
  `emoji` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emoji`
--

INSERT INTO `emoji` (`id`, `emoji`, `name`, `status`, `created_at`, `updated_at`) VALUES
(8, '&#128077;', 'like', 1, '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(9, '&#128078;', 'dislike', 1, '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(10, '&#128525;', 'love', 1, '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(11, '&#128545;', 'angry', 1, '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(12, '&#128557;', 'sad', 1, '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(13, '&#128514;', 'funny', 1, '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(14, '&#128561;', 'wow', 1, '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(15, '&#128591;', 'pray', 0, '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(16, '&#128076;', 'super', 0, '2023-03-23 08:22:10', '2023-03-23 08:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` bigint UNSIGNED NOT NULL,
  `following` bigint UNSIGNED NOT NULL,
  `followers` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `following`, `followers`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2023-09-24 06:55:00', '2023-09-24 06:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `forum_comments`
--

CREATE TABLE `forum_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `message` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_comments`
--

INSERT INTO `forum_comments` (`id`, `user_id`, `post_id`, `message`, `photo`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(11, 15, 1, NULL, 'comment/8QVKo5TtgggFDj9dpc4MnbyX97tFpxWEyZBq8rtT.png', 15, NULL, NULL, '2023-11-02 13:06:30', '2023-11-02 13:06:30'),
(12, 15, 6, NULL, 'comment/0lC2nF4zSXP45A694J9L66p9vUd6mIeaj31ujOiI.jpg', 15, NULL, NULL, '2023-11-02 20:05:25', '2023-11-02 20:05:25'),
(13, 15, 4, 'hello\n', NULL, 15, NULL, NULL, '2023-11-02 20:16:56', '2023-11-02 20:16:56'),
(14, 15, 5, 'comment here', 'comment/TrxYSQFC5ESUNwmaGusn7wqp9XFBRBHaLGcXCUYO.jpg', 15, NULL, NULL, '2023-11-02 20:37:11', '2023-11-02 20:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `forum_comment_likes`
--

CREATE TABLE `forum_comment_likes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL,
  `like_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unlike; 1=like',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_comment_likes`
--

INSERT INTO `forum_comment_likes` (`id`, `user_id`, `comment_id`, `like_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 15, 12, 1, 15, NULL, NULL, '2023-11-02 20:40:02', '2023-11-02 20:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `forum_files`
--

CREATE TABLE `forum_files` (
  `id` bigint UNSIGNED NOT NULL,
  `forum_post_id` bigint UNSIGNED NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` tinyint NOT NULL DEFAULT '0' COMMENT '0=no-file; 1=image; 2=video',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_files`
--

INSERT INTO `forum_files` (`id`, `forum_post_id`, `file`, `file_type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'forum/1698821045_large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg', 1, NULL, '2023-11-01 07:44:05', '2023-11-01 07:44:05'),
(3, 1, 'forum/1698821045_large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg', 1, NULL, '2023-11-01 07:02:22', NULL),
(4, 2, 'forum/1698822318_PvaShop.png', 1, NULL, '2023-11-01 08:05:18', '2023-11-01 08:05:18'),
(5, 3, 'forum/1698822361_00. Introduction of Spatie role and permission laravel.png', 1, NULL, '2023-11-01 08:06:01', '2023-11-01 08:06:01'),
(6, 3, 'forum/1698822361_01. Install Laravel Project, Install Fortify, and Admin Lte For Laravel Role and Permission.png', 1, NULL, '2023-11-01 08:06:01', '2023-11-01 08:06:01'),
(7, 3, 'forum/1698822361_02. Laravel Admin Lte Full Mastering For Role and Permission.png', 1, NULL, '2023-11-01 08:06:01', '2023-11-01 08:06:01'),
(8, 3, 'forum/1698822361_03. Login And Register By Fortify Packege For Role and Permission.png', 1, NULL, '2023-11-01 08:06:01', '2023-11-01 08:06:01'),
(9, 4, 'forum/1698822416_00. Introduction of Spatie role and permission laravel.png', 1, NULL, '2023-11-01 08:06:56', '2023-11-01 08:06:56'),
(10, 4, 'forum/1698822416_01. Install Laravel Project, Install Fortify, and Admin Lte For Laravel Role and Permission.png', 1, NULL, '2023-11-01 08:06:56', '2023-11-01 08:06:56'),
(11, 5, 'forum/1698823349_00. Introduction of Spatie role and permission laravel.png', 1, NULL, '2023-11-01 08:22:29', '2023-11-01 08:22:29'),
(12, 5, 'forum/1698823349_01. Install Laravel Project, Install Fortify, and Admin Lte For Laravel Role and Permission.png', 1, NULL, '2023-11-01 08:22:29', '2023-11-01 08:22:29'),
(13, 5, 'forum/1698823349_result downloader.mp4', 2, NULL, '2023-11-01 08:22:29', '2023-11-01 08:22:29'),
(14, 6, 'forum/1698825001_00. Introduction of Spatie role and permission laravel.png', 1, NULL, '2023-11-01 08:50:01', '2023-11-01 08:50:01'),
(15, 6, 'forum/1698825001_01. Install Laravel Project, Install Fortify, and Admin Lte For Laravel Role and Permission.png', 1, NULL, '2023-11-01 08:50:01', '2023-11-01 08:50:01'),
(16, 6, 'forum/1698825001_02. Laravel Admin Lte Full Mastering For Role and Permission.png', 1, NULL, '2023-11-01 08:50:01', '2023-11-01 08:50:01'),
(17, 6, 'forum/1698825001_03. Login And Register By Fortify Packege For Role and Permission.png', 1, NULL, '2023-11-01 08:50:01', '2023-11-01 08:50:01'),
(18, 6, 'forum/1698825001_04. Read Users In a Table, Redirect to Dashbord, And Install Role And Permission Packege.png', 1, NULL, '2023-11-01 08:50:01', '2023-11-01 08:50:01'),
(19, 6, 'forum/1698825001_05. Role Read, Use the Trait On the User Model, And Basic Uses Of Role And Permission.png', 1, NULL, '2023-11-01 08:50:01', '2023-11-01 08:50:01'),
(20, 6, 'forum/1698825001_Store Role To The Database By Ajax.png', 1, NULL, '2023-11-01 08:50:01', '2023-11-01 08:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `forum_likes`
--

CREATE TABLE `forum_likes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `like_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unlike; 1=like',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_likes`
--

INSERT INTO `forum_likes` (`id`, `user_id`, `post_id`, `like_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 15, 6, 1, 15, NULL, NULL, '2023-11-02 20:39:59', '2023-11-02 20:39:59'),
(2, 15, 5, 1, 15, NULL, NULL, '2023-11-02 20:40:13', '2023-11-02 20:40:13'),
(3, 15, 4, 1, 15, NULL, NULL, '2023-11-02 20:40:16', '2023-11-02 20:40:16'),
(4, 15, 3, 1, 15, NULL, '2023-11-02 20:40:22', '2023-11-02 20:40:19', '2023-11-02 20:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

CREATE TABLE `forum_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_posts`
--

INSERT INTO `forum_posts` (`id`, `user_id`, `title`, `description`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'New Forum', 'new forum description', 1, 1, NULL, NULL, '2023-11-01 07:44:05', '2023-11-01 07:44:05'),
(2, 1, '2nd', '2nd description', 1, 1, NULL, NULL, '2023-11-01 08:05:18', '2023-11-01 08:05:23'),
(3, 1, '3nd post', '3nd post', 1, 1, NULL, NULL, '2023-11-01 08:06:01', '2023-11-01 08:06:05'),
(4, 1, '2 photo', '2 photo', 1, 1, NULL, NULL, '2023-11-01 08:06:56', '2023-11-01 08:07:00'),
(5, 1, 'sdfs', 'fsdf', 1, 1, NULL, NULL, '2023-11-01 08:22:29', '2023-11-01 08:22:33'),
(6, 1, 'dddddddd', 'dddddddddd', 1, 1, NULL, NULL, '2023-11-01 08:50:01', '2023-11-01 08:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `f_b_posts`
--

CREATE TABLE `f_b_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` int DEFAULT NULL,
  `width` int DEFAULT NULL,
  `post_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_b_posts`
--

INSERT INTO `f_b_posts` (`id`, `message`, `created_time`, `link`, `image`, `height`, `width`, `post_id`, `active_status`, `created_at`, `updated_at`) VALUES
(1, 'Còn 10 ngày nữa là chung kết nhưng vé MGI 2023 vẫn còn trống rất nhiều, riêng khu A và khu CC đã full đỏ không phải do bán hết mà là BTC chừa riêng không bán', '2023-10-15 01:27:24', 'https://www.facebook.com/photo.php?fbid=2056563764686478&set=gm.1029947104900328&type=3', 'https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/391718672_2056563761353145_2379385803927800805_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_ohc=hqeBaAs5_-YAX8tVvs6&_nc_ht=scontent.fsgn2-5.fna&edm=AFuVL-cEAAAA&oh=00_AfCD2EPNxeZxUDJ2FbUN-V1yFsnjwEzWdq-2wfKNB12rsw&oe=6531A1E5', 439, 607, '223637925531254_1029947104900328', 1, '2023-10-16 09:59:27', '2023-10-16 13:48:44'),
(2, '\"Vía Hoa hậu\"\nTân Miss Earth Vietnam 2023 là thí sinh của team Nguyên tố Lửa do Hoa Hậu Khánh Vân làm mentor', '2023-10-14 19:48:29', 'https://www.facebook.com/photo.php?fbid=2056414818034706&set=gm.1029777034917335&type=3', 'https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/392819851_2056414861368035_114306542492606306_n.jpg?stp=dst-jpg_p720x720&_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_ohc=kLv1aUWTyk8AX98F1mK&_nc_ht=scontent.fsgn2-5.fna&edm=AFuVL-cEAAAA&oh=00_AfBJhWLN-pwLHoeA_7SBo8eAKMhxSwXK81idvT364QtGUg&oe=6532E8C7', 720, 720, '223637925531254_1029777034917335', 1, '2023-10-16 09:59:27', '2023-10-16 13:48:44'),
(3, 'Bài viết của Anntonia đạt tương tác khủng nhất tại TGHH với hơn 13.000 lượt reaction, 73 lượt share và tiếp cận hơn 800.000 người người, có thể là bài viết tương tác cao nhất group thời gian gần đây\nMột cô gái Thái nhưng nhận được sự quan tâm lớn của khán giả Việt 🔥', '2023-10-12 21:45:35', 'https://www.facebook.com/photo.php?fbid=2055122381497283&set=gm.1028443771717328&type=3', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/387820011_2055122378163950_8225557849863790710_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_ohc=wT6zLgaAB1cAX-yN9o3&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfASdHWWOefVRhfjBXtaUtmly-nDjiY59iz0feCD4H41wA&oe=6531D2ED', 691, 571, '223637925531254_1028443771717328', 1, '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(4, 'Chứ Khoa muốn thế nào ⁉', '2023-10-12 01:37:00', 'https://www.facebook.com/photo.php?fbid=2054616118214576&set=gm.1027929248435447&type=3', 'https://scontent.fsgn2-9.fna.fbcdn.net/v/t39.30808-6/387787815_2054616114881243_1663285756518791999_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=6kCqsKH60gsAX9_X6r7&_nc_ht=scontent.fsgn2-9.fna&edm=AFuVL-cEAAAA&oh=00_AfAR22Mo6al_ic0NZVjApWIdGmzUgEClGg3Tpqh-sBsKXg&oe=65312670', 348, 1080, '223637925531254_1027929248435447', 1, '2023-10-16 09:59:27', '2023-10-16 12:26:10'),
(5, 'Miss Universe ra thông báo đang xem xét kết quả cuộc thi Miss Universe Vietnam 2023', '2023-10-03 00:04:56', 'https://www.facebook.com/photo.php?fbid=2049158518760336&set=gm.1022315875663451&type=3', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/386055164_2049158552093666_6770426914204001209_n.jpg?stp=dst-jpg_p720x720&_nc_cat=105&ccb=1-7&_nc_sid=5f2048&_nc_ohc=27yBiLFlWqUAX86YCJU&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfAqPaQXZq3T7KT438kL743l9hsURFrVF2CWMSXXmwe90g&oe=65317C81', 720, 720, '223637925531254_1022315875663451', 1, '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(6, 'Mentor Hà Thu lộng lẩy tại chung kết Miss Earth Vietnam 2023', '2023-10-14 06:08:32', 'https://www.facebook.com/photo.php?fbid=2056027928073395&set=gm.1029386668289705&type=3', 'https://scontent.fsgn2-9.fna.fbcdn.net/v/t39.30808-6/392784831_2056027974740057_6312066402092662841_n.jpg?stp=dst-jpg_p720x720&_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=FGRMvJmeD7wAX9IPsIC&_nc_ht=scontent.fsgn2-9.fna&edm=AFuVL-cEAAAA&oh=00_AfAIV1UTGMrIFmnMDBmjGozJqNU4OK6U5JT3qOtU_jx_ig&oe=6531251A', 720, 720, '223637925531254_1029386668289705', 1, '2023-10-16 09:59:27', '2023-10-16 12:26:10'),
(7, 'Anntonia quay video cảm ơn các khán giả đã vote cho cô tại Miss Universe 2023, mấy hôm trước cũng làm hẳn video cám ơn fan Việt Nam.\nLịch sự quá ❤', '2023-10-14 00:57:46', 'https://www.facebook.com/groups/thegioihoahauofficial/permalink/1029230581638647/', 'https://scontent.fsgn2-3.fna.fbcdn.net/v/t15.5256-10/366295792_1012730233264223_4103780453033268033_n.jpg?stp=dst-jpg_s720x720&_nc_cat=107&ccb=1-7&_nc_sid=1a7029&_nc_ohc=z4QcMp42v6wAX8WBc9C&_nc_ht=scontent.fsgn2-3.fna&edm=AFuVL-cEAAAA&oh=00_AfDqoolI0muxpTsx3cPI0AFpEAhAam90KH2lH8qq-vtWvQ&oe=65329C6E', 720, 405, '223637925531254_1029230581638647', 1, '2023-10-16 09:59:27', '2023-10-16 13:22:13'),
(8, 'Dự đoán Miss Universe 2023 của trang crownpulse vắng mặt đại diện của chúng ta', '2023-10-13 08:13:11', 'https://www.facebook.com/photo.php?fbid=2055447414798113&set=gm.1028794585015580&type=3', 'https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/392738572_2055447458131442_247901765816184608_n.jpg?stp=dst-jpg_p720x720&_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_ohc=aXs8UHWMwCAAX__DFjw&_nc_ht=scontent.fsgn2-5.fna&edm=AFuVL-cEAAAA&oh=00_AfBIVq_5sPgUBRJcMgwbYiXMJqgt5K7A5FCJP5bGGJzuVQ&oe=6532C363', 877, 720, '223637925531254_1028794585015580', 1, '2023-10-16 09:59:27', '2023-10-16 12:26:10'),
(9, 'Những chiếc sash cho Miss Universe 2023 đã sẵn sàn và khả năng cao hoa hậu cũng sẽ nằm trong nhóm này', '2023-10-13 21:19:43', 'https://www.facebook.com/photo.php?fbid=2055784558097732&set=gm.1029125564982482&type=3', 'https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/392766580_2055784611431060_7083917570966564990_n.jpg?stp=dst-jpg_p720x720&_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_ohc=pTgUhlcRjKsAX_5TaRg&_nc_oc=AQmv8tJHfKYgTCi53b9OPahPZV9LVfw9vOne9i5G60CSBv4ix7tb0Ni1bK2J-bNWFmN4BHjIxcNUSsXWYrGJHr7N&_nc_ht=scontent.fsgn2-5.fna&edm=AFuVL-cEAAAA&oh=00_AfDQrvIpz3hLplhJ6uTywdF7BpvO-yfQRSZZn29zR8pLHw&oe=6532F873', 1028, 720, '223637925531254_1029125564982482', 1, '2023-10-16 09:59:27', '2023-10-16 12:26:10'),
(10, 'Á hậu Thạch Thu Thảo tại Chung kết Miss Earth Vietnam 2023\n\nẢnh tác nghiệp bởi TGHH', '2023-10-14 05:29:35', 'https://www.facebook.com/photo.php?fbid=2056004441409077&set=gm.1029363908291981&type=3', 'https://scontent.fsgn2-9.fna.fbcdn.net/v/t39.30808-6/392807991_2056004501409071_4077127215735201117_n.jpg?stp=dst-jpg_p720x720&_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=MhZnVsU9JHoAX-REkHW&_nc_ht=scontent.fsgn2-9.fna&edm=AFuVL-cEAAAA&oh=00_AfDxvv1xJoTzkHMp1izwr8sVU0KbCYTgN46rT8WCxFZXyQ&oe=6531810C', 720, 720, '223637925531254_1029363908291981', 1, '2023-10-16 09:59:27', '2023-10-16 12:18:22'),
(11, 'Thành tích nào cho Việt Nam tại Miss Earth 2023?', '2023-10-16 05:06:49', 'https://www.facebook.com/photo.php?fbid=2057320314610823&set=gm.1030690731492632&type=3', 'https://scontent.fsgn2-7.fna.fbcdn.net/v/t39.30808-6/392791173_2057320377944150_727319465986546298_n.jpg?stp=dst-jpg_p720x720&_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_ohc=XFjGXAy6GysAX_K3sZ7&_nc_ht=scontent.fsgn2-7.fna&edm=AFuVL-cEAAAA&oh=00_AfCuR9JLcAdrn7IrBawBQFATZQM5_SK7x9IHMCNF0pIBTw&oe=653439DC', 1079, 720, '223637925531254_1030690731492632', 1, '2023-10-16 12:18:22', '2023-10-17 13:00:49'),
(12, 'Giám khảo đầu tiên của Miss Earth 2023 tổ chức tại Việt Nam đã lộ diện', '2023-10-16 03:13:56', 'https://www.facebook.com/photo.php?fbid=2057268557949332&set=gm.1030639294831109&type=3', 'https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/392787078_2057268587949329_746655928275566526_n.jpg?stp=dst-jpg_p720x720&_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_ohc=ksMTM9Oc0qEAX8JuKVM&_nc_ht=scontent.fsgn2-4.fna&edm=AFuVL-cEAAAA&oh=00_AfCjZ33DQyiVfY4iPYbgEUfJOPVpUwhsR_MWAzYCk6Dr4g&oe=6532B870', 720, 822, '223637925531254_1030639294831109', 1, '2023-10-16 12:18:22', '2023-10-16 13:48:44'),
(13, 'Phần thi Grand Voice không chỉ là về giọng hát mà còn về bản lĩnh sân khấu, ngoài Việt Nam thì còn nhiều nước khác có giọng hát không xuất sắc nhưng vẫn vào Top 18. Mong mọi người ủng hộ tinh thần cho Lê Hoàng Phương cho phần thi Grand Voice sắp tới vì dù không sở hữu chất giọng tốt nhưng cô ấy vẫn đang cố gắng để đại diện chủ nhà có một phần thi tròn trịa.', '2023-10-16 06:16:53', 'https://www.facebook.com/photo.php?fbid=2057355601273961&set=gm.1030732568155115&type=3', 'https://scontent.fsgn2-9.fna.fbcdn.net/v/t39.30808-6/392805124_2057355704607284_51640660429946050_n.jpg?stp=dst-jpg_p720x720&_nc_cat=105&ccb=1-7&_nc_sid=5f2048&_nc_ohc=4ronvVjl7NYAX8DQ8Y2&_nc_ht=scontent.fsgn2-9.fna&edm=AFuVL-cEAAAA&oh=00_AfAzuqvam3x8l6DaylDphcmUzDckjMzNANDNreCXuVfp5g&oe=653143B7', 1079, 720, '223637925531254_1030732564821782', 1, '2023-10-16 13:22:13', '2023-10-16 13:48:43'),
(14, 'Buổi họp báo công bố Miss Earth 2023 được tổ chức tại Việt Nam do công ty TNHH TNA Entertainment đăng cai vừa diễn vừa chiều nay tại Gem Center TP Hồ Chí Minh.\n\nTheo kế hoạch, Miss Earth 2023 diễn ra từ ngày 01 - 22/12/2023 tại TP.HCM. Miss Earth 2023 sẽ có rất nhiều vòng thi phụ trước khi đi đến Đêm chung kết vào ngày 22/12/2023, trong đó có những phần thi rất quan trọng như: Thi Trang phục Quốc gia bằng chất liệu tái chế và thân thiện với môi trường; Trình diễn trang phục áo tắm; Phần thi Tài năng…\n\nCũng trong buổi họp báo, bà Lorraine Schuck – Phó chủ tịch Miss Earth và Chủ tịch Miss Earth Việt Nam Trương Ngọc Ánh đã cùng trao sash cho tân Miss Earth Việt Nam 2023 Đỗ Thị Lan Anh - đại diện Việt Nam tham dự Miss Earth 2023 vào tháng 12/2023 tại TP Hồ Chí Minh.', '2023-10-16 06:44:08', 'https://www.facebook.com/photo.php?fbid=2057368804605974&set=gm.1030746408153731&type=3', 'https://scontent.fsgn2-8.fna.fbcdn.net/v/t39.30808-6/391640266_2057368801272641_1720238329076144160_n.jpg?stp=dst-jpg_p720x720&_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_ohc=eD8ganYLNvYAX8m0lCs&_nc_ht=scontent.fsgn2-8.fna&edm=AFuVL-cEAAAA&oh=00_AfA6NusP3wToOEBF92GI--6lNy1oq74BBlJrJBOKr0iBWw&oe=6531D780', 720, 1080, '223637925531254_1030746421487063', 1, '2023-10-16 13:48:43', '2023-10-16 13:48:43'),
(15, 'Tạm biệt chiếc Vương miện đầy ấn tượng của Miss Earth', '2023-10-16 08:25:50', 'https://www.facebook.com/photo.php?fbid=2057421784600676&set=gm.1030798518148520&type=3', 'https://scontent.fsgn2-7.fna.fbcdn.net/v/t39.30808-6/392947344_2057421867934001_3996406481362793416_n.jpg?stp=dst-jpg_p720x720&_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_ohc=_5uEXELx8a8AX_lKG9H&_nc_ht=scontent.fsgn2-7.fna&edm=AFuVL-cEAAAA&oh=00_AfDLmceUNVqbk_0drUldNxkt_wh6YeaqCQnMFNmoOGURzQ&oe=6532D554', 720, 720, '223637925531254_1030798521481853', 1, '2023-10-17 12:59:23', '2023-10-17 13:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `f_b_post_commands`
--

CREATE TABLE `f_b_post_commands` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_b_post_commands`
--

INSERT INTO `f_b_post_commands` (`id`, `post_id`, `comment`, `created_time`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Để đó dì Dung chơi mini game 🛠', '2023-10-15 01:32:36', '1029949281566777', '2023-10-16 09:59:27', '2023-10-16 13:48:44'),
(2, 1, 'Bữa màu xám là ghế không bán sau đó chuyển qua màu đỏ cho xom :)))))', '2023-10-15 01:32:37', '1029949308233441', '2023-10-16 09:59:27', '2023-10-16 13:48:44'),
(3, 1, 'sau bán kết là bán hết vé chứ gì', '2023-10-15 01:34:32', '1029950354900003', '2023-10-16 09:59:27', '2023-10-16 13:48:44'),
(4, 2, 'vía hoa hậu còn lại hông linh lắm', '2023-10-14 19:49:28', '1029777464917292', '2023-10-16 09:59:27', '2023-10-16 13:48:44'),
(5, 2, 'Top 2 team chịiiiiiii💕💐💐', '2023-10-14 19:49:48', '1029777608250611', '2023-10-16 09:59:27', '2023-10-16 13:48:44'),
(6, 2, '🔥🔥🔥🔥', '2023-10-14 19:50:36', '1029778088250563', '2023-10-16 09:59:27', '2023-10-16 13:48:44'),
(7, 3, 'Lỗi tại ai? Do chuỵ đúng hem', '2023-10-12 21:46:40', '1028444398383932', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(8, 3, 'Đỉnh ghê', '2023-10-12 21:46:57', '1028444488383923', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(9, 3, 'Nhờ 1 cô gái Việt mà Anntonia đã nhận được sự ủng hộ từ fan Việt Nam', '2023-10-12 21:47:36', '1028444791717226', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(10, 4, 'Khoa muốn đi = đầu, lết bằng L', '2023-10-12 01:37:55', '1027929615102077', '2023-10-16 09:59:27', '2023-10-16 12:26:10'),
(11, 4, 'Chủ nhà= làm chủ định luật vật lí🤣', '2023-10-12 01:38:20', '1027929785102060', '2023-10-16 09:59:27', '2023-10-16 12:26:10'),
(12, 5, 'ơ kìa 🙄', '2023-10-03 00:05:25', '1022316082330097', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(13, 5, 'Ảduu', '2023-10-03 00:05:25', '1022316085663430', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(14, 5, 'Kkk', '2023-10-03 00:05:28', '1022316112330094', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(15, 6, 'Bqh ra chưa mn em nhớ c ấy quá', '2023-10-14 06:10:00', '1029387561622949', '2023-10-16 09:59:27', '2023-10-16 12:26:10'),
(16, 6, 'E nhớ chị Hoa quá', '2023-10-14 06:10:16', '1029387728289599', '2023-10-16 09:59:27', '2023-10-16 12:26:10'),
(17, 7, '\"Các em đừng vội mừng, đêm CK mới biết ai hơn ai\" 💣💥', '2023-10-14 01:06:11', '1029234224971616', '2023-10-16 09:59:27', '2023-10-16 13:22:13'),
(18, 7, 'hay quá chị iu ❤', '2023-10-14 01:07:31', '1029234871638218', '2023-10-16 09:59:27', '2023-10-16 13:22:13'),
(19, 8, 'Chứ zô người nhục là em nha', '2023-10-13 08:13:38', '1028794845015554', '2023-10-16 09:59:27', '2023-10-16 12:26:10'),
(20, 8, 'đừng làm c ấy quê mà', '2023-10-13 08:13:50', '1028794921682213', '2023-10-16 09:59:27', '2023-10-16 12:26:10'),
(21, 8, 'Peru, USA cười khà khà', '2023-10-13 08:14:02', '1028795025015536', '2023-10-16 09:59:27', '2023-10-16 12:26:10'),
(22, 9, 'Hoa hậu MU nằm đầu tiên luôn 🫶', '2023-10-13 21:21:12', '1029126274982411', '2023-10-16 09:59:27', '2023-10-16 12:26:10'),
(23, 9, 'font chữ quê mùa', '2023-10-13 21:21:22', '1029126338315738', '2023-10-16 09:59:27', '2023-10-16 12:26:10'),
(24, 9, 'Nằm đầu tiên luôn', '2023-10-13 21:22:45', '1029126874982351', '2023-10-16 09:59:27', '2023-10-16 12:26:10'),
(25, 10, 'Nhìn bộ đồ chán quê thiệt chứ', '2023-10-14 05:29:56', '1029364088291963', '2023-10-16 09:59:27', '2023-10-16 12:18:22'),
(26, 10, 'Ai hại chị', '2023-10-14 05:30:13', '1029364181625287', '2023-10-16 09:59:27', '2023-10-16 12:18:22'),
(27, 10, 'Xu ghê', '2023-10-14 05:31:05', '1029364571625248', '2023-10-16 09:59:27', '2023-10-16 12:18:22'),
(28, 11, 'Lớ ngớ đội VM :)))', '2023-10-16 05:07:22', '1030691124825926', '2023-10-16 12:18:22', '2023-10-17 13:00:49'),
(29, 11, 'Khi nào LH mới hết damdang thì lúc đó VN mới có vương miện😌', '2023-10-16 05:07:47', '1030691364825902', '2023-10-16 12:18:22', '2023-10-17 13:00:49'),
(30, 11, 'Thấy cx đỉnh chắc intop', '2023-10-16 05:07:49', '1030691381492567', '2023-10-16 12:18:22', '2023-10-17 13:00:49'),
(31, 12, 'Bả làm gk lần nào chưa mọi người và kết quả ra sao Á', '2023-10-16 03:17:17', '1030640548164317', '2023-10-16 12:18:22', '2023-10-16 13:48:44'),
(32, 12, 'Mấy nhỏ cao dưới 1m75 rớt vòng gửi xe chứ sao', '2023-10-16 03:18:10', '1030640871497618', '2023-10-16 12:18:22', '2023-10-16 13:48:44'),
(33, 12, 'Năm ngoái mời chấm National Coustume MGVN và sau đó ….', '2023-10-16 03:20:28', '1030641661497539', '2023-10-16 12:18:22', '2023-10-16 13:48:44'),
(34, 13, 'Ehehe LHP win giải ca hát hứa để avt Lệ Hằng 🔥🔥🔥', '2023-10-16 06:18:38', '1030733734821665', '2023-10-16 13:22:13', '2023-10-16 13:48:43'),
(35, 13, '❣️', '2023-10-16 06:20:18', '1030734611488244', '2023-10-16 13:22:13', '2023-10-16 13:48:43'),
(36, 13, 'Tự dưng cuộc thi bắt thi xong cho chị dô top chứ chị có xin đâu vs ai ko bt bả hát không hay mà nặng lời quá', '2023-10-16 06:24:25', '1030736504821388', '2023-10-16 13:48:43', '2023-10-16 13:48:43'),
(37, 15, 'Cho nó nghỉ hưu đc rồi, xuống cấp quá', '2023-10-16 08:26:29', '1030798871481818', '2023-10-17 12:59:23', '2023-10-17 13:00:49'),
(38, 15, 'Ns tht thì nhìn nó rất là rối mắt lun á', '2023-10-16 08:26:56', '1030799071481798', '2023-10-17 12:59:23', '2023-10-17 13:00:49'),
(39, 15, 'Chiếc vương miện nhìn u ám :)) Phong thủy ko tốt nên đổi biết đâu cuộc thi khởi sắc hơn', '2023-10-16 08:27:06', '1030799184815120', '2023-10-17 12:59:23', '2023-10-17 13:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `album_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `title` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `lang_id`, `album_id`, `category_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'qaaaa', '2023-08-11 21:06:11', '2023-08-11 21:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_post`
--

CREATE TABLE `gallery_post` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `gallery_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gallery_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `front_language_status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `iso_code`, `is_default`, `created_at`, `updated_at`, `front_language_status`) VALUES
(1, 'English', 'en', 1, '2023-03-23 08:22:10', '2023-09-16 03:14:14', 1),
(6, 'Vietnamese', 'vi', 0, '2023-09-03 08:49:43', '2023-09-03 08:49:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mail_settings`
--

CREATE TABLE `mail_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `mail_protocol` int NOT NULL,
  `mail_library` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_port` int NOT NULL,
  `mail_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verification` int NOT NULL,
  `contact_messages` int DEFAULT NULL,
  `contact_mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_settings`
--

INSERT INTO `mail_settings` (`id`, `mail_protocol`, `mail_library`, `encryption`, `mail_port`, `mail_host`, `mail_username`, `mail_password`, `mail_title`, `reply_to`, `email_verification`, `contact_messages`, `contact_mail`, `send_mail`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', 587, 'mail@codingest.com', 'info@codingest.com', 'mail@123', 'Varient', 'info2@codingest.com', 1, 1, 'info3@codingest.com', 'info4@codingest.com', '2023-03-23 08:22:10', '2023-03-23 08:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(170) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(170) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(170) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(170) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(170) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\Post', 22, '8eb3e59b-1425-472e-8322-443ee9bd8083', 'post image', 'tuyen-quang-5823-1691494205', 'tuyen-quang-5823-1691494205.jpg', 'image/jpeg', 'public', 'public', 161996, '[]', '[]', '[]', '[]', 1, '2023-08-10 05:51:29', '2023-08-10 05:51:29'),
(3, 'App\\Models\\User', 1, '48ffe2d9-7a2b-4829-a915-23074683d05b', 'profile', 'IMG_20230801_171949', 'IMG_20230801_171949.png', 'image/png', 'public', 'public', 8773941, '[]', '[]', '[]', '[]', 1, '2023-08-11 20:35:37', '2023-08-11 20:35:37'),
(4, 'App\\Models\\Post', 23, 'dd9bbb10-1813-4901-82ca-aeb444f05b11', 'post image', 'smartmockups_lkngf63x', 'smartmockups_lkngf63x.jpg', 'image/jpeg', 'public', 'public', 112349, '[]', '[]', '[]', '[]', 1, '2023-08-11 20:48:17', '2023-08-11 20:48:17'),
(5, 'App\\Models\\PostSortList', 5, '8046c9a7-5d35-4b0d-b6c7-ba22d3ebb16c', 'post_sort_list_images', 'smartmockups_lknggay9', 'smartmockups_lknggay9.jpg', 'image/jpeg', 'public', 'public', 111252, '[]', '[]', '[]', '[]', 1, '2023-08-11 20:48:17', '2023-08-11 20:48:17'),
(6, 'App\\Models\\PostSortList', 6, 'd110496f-ca49-4fa8-84cd-3af74dcfee18', 'post_sort_list_images', 'IMG_20230801_171949', 'IMG_20230801_171949.png', 'image/png', 'public', 'public', 8773941, '[]', '[]', '[]', '[]', 1, '2023-08-11 20:48:17', '2023-08-11 20:48:17'),
(7, 'App\\Models\\User', 1, '9c4a6485-eac4-4f1a-af29-561b191f94be', 'news-image', 'IMG_20230801_171949', 'IMG_20230801_171949.png', 'image/png', 'public', 'public', 8773941, '[]', '[]', '[]', '[]', 2, '2023-08-11 20:53:00', '2023-08-11 20:53:00'),
(8, 'App\\Models\\User', 1, '121ac286-e8d6-4409-b85e-13fc830e3df5', 'news-image', 'le-hang-1-1484884867337__2_-removebg-preview', 'le-hang-1-1484884867337__2_-removebg-preview.png', 'image/png', 'public', 'public', 165974, '[]', '[]', '[]', '[]', 3, '2023-08-11 20:53:24', '2023-08-11 20:53:24'),
(9, 'App\\Models\\Post', 24, 'b66dff6a-aef8-4b81-9bce-2fb196dd7079', 'post image', '5205dac7e172b28b1d7d1ad10f1b1674', '5205dac7e172b28b1d7d1ad10f1b1674.jpg', 'image/jpeg', 'public', 'public', 51547, '[]', '[]', '[]', '[]', 1, '2023-08-11 20:54:13', '2023-08-11 20:54:13'),
(10, 'App\\Models\\PostGallery', 9, '48e8c81e-31de-4972-b99d-9fdc2145738b', 'post_gallery_images', 'smartmockups_lknggay9', 'smartmockups_lknggay9.jpg', 'image/jpeg', 'public', 'public', 111252, '[]', '[]', '[]', '[]', 1, '2023-08-11 20:54:13', '2023-08-11 20:54:13'),
(11, 'App\\Models\\PostGallery', 10, '5912074b-38b5-4af9-8fed-6cfc20fef299', 'post_gallery_images', 'smartmockups_lknggay9', 'smartmockups_lknggay9.jpg', 'image/jpeg', 'public', 'public', 111252, '[]', '[]', '[]', '[]', 1, '2023-08-11 20:54:13', '2023-08-11 20:54:13'),
(12, 'App\\Models\\Post', 25, '05a0605e-48e8-4372-8bbd-62d128e3a3ea', 'post image', '365755335-3801162053444981-416-9122-5965-1691489826', '365755335-3801162053444981-416-9122-5965-1691489826.jpg', 'image/jpeg', 'public', 'public', 199541, '[]', '[]', '[]', '[]', 1, '2023-08-11 20:55:41', '2023-08-11 20:55:41'),
(13, 'App\\Models\\PostAudio', 1, '9b7e675a-f941-444a-be10-c43900924cb5', 'post_audios', 'y2mate.com - Lana Del Rey  Candy Necklace feat Jon Batiste Audio_320kbps', 'y2mate.com---Lana-Del-Rey--Candy-Necklace-feat-Jon-Batiste-Audio_320kbps.mp3', 'audio/mpeg', 'public', 'public', 12584888, '[]', '[]', '[]', '[]', 1, '2023-08-11 20:55:41', '2023-08-11 20:55:41'),
(14, 'App\\Models\\PostVideo', 1, '683f9853-2833-4791-b577-ca4ddaa47f1a', 'post_video_thumb', 'tuyen-quang-5823-1691494205', 'tuyen-quang-5823-1691494205.jpg', 'image/jpeg', 'public', 'public', 161996, '[]', '[]', '[]', '[]', 1, '2023-08-11 20:57:21', '2023-08-11 20:57:21'),
(15, 'App\\Models\\PostVideo', 1, '31c16fe2-5435-4260-bd39-b38d8e1e1248', 'post_video', '1', '1.mp4', 'video/quicktime', 'public', 'public', 30668279, '[]', '[]', '[]', '[]', 2, '2023-08-11 20:57:21', '2023-08-11 20:57:21'),
(16, 'App\\Models\\Gallery', 1, '0a5728e2-aa56-4419-82ac-0b629fc5ded2', 'gallery_images', 'smartmockups_lknggay9', 'smartmockups_lknggay9.jpg', 'image/jpeg', 'public', 'public', 111252, '[]', '[]', '[]', '[]', 1, '2023-08-11 21:06:11', '2023-08-11 21:06:11'),
(17, 'App\\Models\\Gallery', 1, '0cf5659d-3ff0-4870-ba4f-bec21c9080bb', 'gallery_images', 'smartmockups_lkngf63x', 'smartmockups_lkngf63x.jpg', 'image/jpeg', 'public', 'public', 112349, '[]', '[]', '[]', '[]', 2, '2023-08-11 21:06:11', '2023-08-11 21:06:11'),
(18, 'App\\Models\\Gallery', 1, '3e184e36-1fcb-455c-9ead-cad420d3f274', 'gallery_images', 'smartmockups_lkngcrr3', 'smartmockups_lkngcrr3.jpg', 'image/jpeg', 'public', 'public', 239374, '[]', '[]', '[]', '[]', 3, '2023-08-11 21:06:11', '2023-08-11 21:06:11'),
(19, 'App\\Models\\Gallery', 1, '42a5a732-293a-42e0-9efb-d14b88dc55e0', 'gallery_images', '5205dac7e172b28b1d7d1ad10f1b1674', '5205dac7e172b28b1d7d1ad10f1b1674.jpg', 'image/jpeg', 'public', 'public', 51547, '[]', '[]', '[]', '[]', 4, '2023-08-11 21:06:11', '2023-08-11 21:06:11'),
(20, 'App\\Models\\Post', 28, 'e5ade6b8-068c-42f2-838b-47c4ee75ee20', 'post image', '365755335-3801162053444981-416-9122-5965-1691489826', '365755335-3801162053444981-416-9122-5965-1691489826.jpg', 'image/jpeg', 'public', 'public', 199541, '[]', '[]', '[]', '[]', 1, '2023-08-11 23:58:47', '2023-08-11 23:58:47'),
(21, 'App\\Models\\User', 1, 'beb8b9f3-bdb2-47b3-bc75-5ce27b7e5c1d', 'news-image', '27315_5567727746576777_8234382907137681774_n', '27315_5567727746576777_8234382907137681774_n.jpg', 'image/jpeg', 'public', 'public', 200769, '[]', '[]', '[]', '[]', 4, '2023-09-03 03:38:53', '2023-09-03 03:38:53'),
(22, 'App\\Models\\User', 1, '58dbd0e7-7c1d-4b85-9cc4-93acdcfba852', 'news-image', '273704315_5567727746576777_8234382907137681774_n', '273704315_5567727746576777_8234382907137681774_n.jpg', 'image/jpeg', 'public', 'public', 514068, '[]', '[]', '[]', '[]', 5, '2023-09-03 03:45:22', '2023-09-03 03:45:22'),
(23, 'App\\Models\\Post', 30, 'a5c6352f-9b60-4193-89fc-e49b27c48d07', 'post image', '27315_5567727746576777_8234382907137681774_n', '27315_5567727746576777_8234382907137681774_n.jpg', 'image/jpeg', 'public', 'public', 200769, '[]', '[]', '[]', '[]', 1, '2023-09-03 03:49:36', '2023-09-03 03:49:36'),
(24, 'App\\Models\\User', 1, '8760c9e1-24ef-4853-9b67-065329914740', 'news-image', '7f2e26403e8643800a452686a55c46f2', '7f2e26403e8643800a452686a55c46f2.jpg', 'image/jpeg', 'public', 'public', 120689, '[]', '[]', '[]', '[]', 6, '2023-09-03 04:05:38', '2023-09-03 04:05:38'),
(25, 'App\\Models\\Post', 31, '285daf46-0fa9-427e-9ee4-0b0dcbbcf720', 'post image', '66a8f2d61fb960e6cdd044d628659e1f', '66a8f2d61fb960e6cdd044d628659e1f.jpg', 'image/jpeg', 'public', 'public', 118544, '[]', '[]', '[]', '[]', 1, '2023-09-03 04:08:29', '2023-09-03 04:08:29'),
(26, 'App\\Models\\User', 1, '12e779da-9226-4d09-93d5-73f7bbbacc13', 'news-image', '3619086358720240009593994114997542873627088n-1689838525983587194744', '3619086358720240009593994114997542873627088n-1689838525983587194744.jpg', 'image/jpeg', 'public', 'public', 192939, '[]', '[]', '[]', '[]', 7, '2023-09-03 04:16:37', '2023-09-03 04:16:37'),
(27, 'App\\Models\\User', 1, '784bcfab-2020-4159-b660-87d6c3d1e25d', 'news-image', '3600970348720239842927342287225594727268340n-16898382491072029624358', '3600970348720239842927342287225594727268340n-16898382491072029624358.jpg', 'image/jpeg', 'public', 'public', 180686, '[]', '[]', '[]', '[]', 8, '2023-09-03 04:17:09', '2023-09-03 04:17:09'),
(28, 'App\\Models\\Post', 32, '95a3648b-7455-4cab-b505-7314ffff047d', 'post image', '3600970348720239842927342287225594727268340n-16898382491072029624358', '3600970348720239842927342287225594727268340n-16898382491072029624358.jpg', 'image/jpeg', 'public', 'public', 180686, '[]', '[]', '[]', '[]', 1, '2023-09-03 04:18:47', '2023-09-03 04:18:47'),
(29, 'App\\Models\\User', 1, '34f1f3b7-72ba-4000-8a9f-e12786d560cf', 'news-image', '20230608055l', '20230608055l.jpg', 'image/jpeg', 'public', 'public', 384515, '[]', '[]', '[]', '[]', 9, '2023-09-03 04:23:35', '2023-09-03 04:23:35'),
(30, 'App\\Models\\Post', 33, '3045b217-2f61-4eda-8903-1ddb0a9a5cf0', 'post image', '20230608055l', '20230608055l.jpg', 'image/jpeg', 'public', 'public', 384515, '[]', '[]', '[]', '[]', 1, '2023-09-03 04:24:50', '2023-09-03 04:24:50'),
(31, 'App\\Models\\User', 1, 'ab6fcf14-6296-4553-8f91-04123b1b1a0f', 'news-image', '325658218_593090119317786_4291906235879484321_n', '325658218_593090119317786_4291906235879484321_n.jpg', 'image/jpeg', 'public', 'public', 107534, '[]', '[]', '[]', '[]', 10, '2023-09-03 04:39:34', '2023-09-03 04:39:34'),
(32, 'App\\Models\\Post', 34, '6c0f3960-4cd3-4355-a50a-231d1fce9b06', 'post image', '325658218_593090119317786_429190sss6235879484321_n', '325658218_593090119317786_429190sss6235879484321_n.jpg', 'image/jpeg', 'public', 'public', 59471, '[]', '[]', '[]', '[]', 1, '2023-09-03 04:40:50', '2023-09-03 04:40:50'),
(33, 'App\\Models\\User', 1, 'c7086d3c-99c3-4e98-a48d-272b766a8f56', 'news-image', 'Miss-Universe-2022-top-2553-1673760978 (1)', 'Miss-Universe-2022-top-2553-1673760978-(1).jpg', 'image/jpeg', 'public', 'public', 599178, '[]', '[]', '[]', '[]', 11, '2023-09-03 04:54:49', '2023-09-03 04:54:49'),
(34, 'App\\Models\\Post', 35, '41f71279-e078-4903-adf8-4a658841eb11', 'post image', '230115-miss-universe-usa-cc-1247a-37ef65', '230115-miss-universe-usa-cc-1247a-37ef65.jpg', 'image/jpeg', 'public', 'public', 5374046, '[]', '[]', '[]', '[]', 1, '2023-09-03 04:56:50', '2023-09-03 04:56:50'),
(35, 'App\\Models\\User', 1, 'f2308ab8-4255-4b41-a6f3-0584e6c83335', 'news-image', 'Miss-Universe-2022-den-Viet-Na-1941-8074-1677162910', 'Miss-Universe-2022-den-Viet-Na-1941-8074-1677162910.jpg', 'image/jpeg', 'public', 'public', 94784, '[]', '[]', '[]', '[]', 12, '2023-09-03 04:59:56', '2023-09-03 04:59:56'),
(36, 'App\\Models\\User', 1, 'b9b654c8-8901-4c37-a0d7-4746f0774c92', 'news-image', 'Miss-Universe-2022-den-Viet-Na-3500-9847-1677162910', 'Miss-Universe-2022-den-Viet-Na-3500-9847-1677162910.jpg', 'image/jpeg', 'public', 'public', 98249, '[]', '[]', '[]', '[]', 13, '2023-09-03 05:00:56', '2023-09-03 05:00:56'),
(37, 'App\\Models\\Post', 36, 'e11239ea-a3d1-4c6a-8d0b-1c38b64fbf2c', 'post image', 'Miss-Universe-2022-den-Viet-Na-1941-8074-1677162910', 'Miss-Universe-2022-den-Viet-Na-1941-8074-1677162910.jpg', 'image/jpeg', 'public', 'public', 94784, '[]', '[]', '[]', '[]', 1, '2023-09-03 05:02:09', '2023-09-03 05:02:09'),
(38, 'App\\Models\\User', 1, '86e5cf2d-4c09-4a7c-86d2-d611a97d06e8', 'news-image', 'large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d', 'large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg', 'image/jpeg', 'public', 'public', 103280, '[]', '[]', '[]', '[]', 14, '2023-09-03 05:06:22', '2023-09-03 05:06:22'),
(39, 'App\\Models\\Post', 37, '9d826581-ace1-4207-8ea0-992d07244697', 'post image', 'large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d', 'large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg', 'image/jpeg', 'public', 'public', 103280, '[]', '[]', '[]', '[]', 1, '2023-09-03 05:08:05', '2023-09-03 05:08:05'),
(43, 'App\\Models\\AdSpaces', 3, 'ba7b273e-e0c7-4802-b196-48ea840e88e9', 'post image', 'cover 4mobiintop', 'cover-4mobiintop.png', 'image/png', 'public', 'public', 163622, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:01:22', '2023-09-19 13:01:22'),
(44, 'App\\Models\\AdSpaces', 4, '90df8960-17fe-4951-999d-2d6c71c50a1e', 'post image', 'bottom', 'bottom.png', 'image/png', 'public', 'public', 164191, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:04:04', '2023-09-19 13:04:04'),
(45, 'App\\Models\\AdSpaces', 5, '4ff5e92e-6afc-419d-bb90-96da75bfdb4a', 'post image', 'cover inbot)', 'cover-inbot).png', 'image/png', 'public', 'public', 157333, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:04:04', '2023-09-19 13:04:04'),
(46, 'App\\Models\\AdSpaces', 6, '25413dea-9528-424f-8a09-548b402997eb', 'post image', 'pdetail', 'pdetail.png', 'image/png', 'public', 'public', 171308, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:12:05', '2023-09-19 13:12:05'),
(47, 'App\\Models\\AdSpaces', 7, '50da1ce7-d70e-4966-a583-92bfa25f452e', 'post image', 'cover 4detailp', 'cover-4detailp.png', 'image/png', 'public', 'public', 166129, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:12:05', '2023-09-19 13:12:05'),
(48, 'App\\Models\\AdSpaces', 8, '875f2e72-87ca-49d0-8141-f5c51fa1c02b', 'post image', 'pdetail', 'pdetail.png', 'image/png', 'public', 'public', 171308, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:14:55', '2023-09-19 13:14:55'),
(49, 'App\\Models\\AdSpaces', 9, 'e0206318-bea2-4fc6-a90d-732d75fccde2', 'post image', 'danhmuc2', 'danhmuc2.png', 'image/png', 'public', 'public', 170574, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:16:51', '2023-09-19 13:16:51'),
(50, 'App\\Models\\AdSpaces', 10, '537cf16d-fb61-4bd8-aafe-92773aeb8364', 'post image', 'danhmuc', 'danhmuc.png', 'image/png', 'public', 'public', 165424, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:16:51', '2023-09-19 13:16:51'),
(51, 'App\\Models\\AdSpaces', 11, '2ae41ca1-af3b-4505-94ce-498b97682482', 'post image', 'trend', 'trend.png', 'image/png', 'public', 'public', 167948, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:18:20', '2023-09-19 13:18:20'),
(52, 'App\\Models\\AdSpaces', 12, '0b61f56b-2b7b-44b4-9437-f6f8143bdc33', 'post image', 'tren', 'tren.png', 'image/png', 'public', 'public', 165071, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:18:21', '2023-09-19 13:18:21'),
(53, 'App\\Models\\AdSpaces', 13, 'da48e13a-8dd9-4cad-9999-60b2f73e0792', 'post image', 'pop', 'pop.png', 'image/png', 'public', 'public', 170200, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:21:28', '2023-09-19 13:21:28'),
(54, 'App\\Models\\AdSpaces', 14, 'fd35309a-8345-4593-a327-40894cf360e1', 'post image', 'popu', 'popu.png', 'image/png', 'public', 'public', 162743, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:21:28', '2023-09-19 13:21:28'),
(55, 'App\\Models\\AdSpaces', 15, '54018e39-c6db-4ddd-92d7-89a2f6f58e7d', 'post image', 'trend', 'trend.png', 'image/png', 'public', 'public', 167948, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:22:41', '2023-09-19 13:22:41'),
(56, 'App\\Models\\AdSpaces', 16, 'e2cc46fb-e718-4b6c-9405-dcf5cd6afae3', 'post image', 'tren', 'tren.png', 'image/png', 'public', 'public', 165071, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:22:41', '2023-09-19 13:22:41'),
(57, 'App\\Models\\AdSpaces', 17, '684713dd-66d4-4d40-8bdc-0c8ff833661a', 'post image', 'pop', 'pop.png', 'image/png', 'public', 'public', 170200, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:23:13', '2023-09-19 13:23:13'),
(58, 'App\\Models\\AdSpaces', 18, '341d7895-191c-4722-97e8-467d9b12eaf8', 'post image', 'popu', 'popu.png', 'image/png', 'public', 'public', 162743, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:23:13', '2023-09-19 13:23:13'),
(59, 'App\\Models\\AdSpaces', 19, '6fed7fb5-f8b2-453d-bdbb-07c75d3c99a0', 'post image', 'recom', 'recom.png', 'image/png', 'public', 'public', 165850, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:31:31', '2023-09-19 13:31:31'),
(60, 'App\\Models\\AdSpaces', 20, 'e56568d2-ce05-4325-9318-ac9d572be4a5', 'post image', 're', 're.png', 'image/png', 'public', 'public', 163681, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:31:31', '2023-09-19 13:31:31'),
(61, 'App\\Models\\Post', 39, 'f5b7f1c8-e76e-4a62-81e9-8c44c9cbc89e', 'post image', 'heranswerjpg', 'heranswerjpg.jpg', 'image/jpeg', 'public', 'public', 232963, '[]', '[]', '[]', '[]', 1, '2023-10-14 15:49:47', '2023-10-14 15:49:47'),
(62, 'App\\Models\\AdSpaces', 1, 'e5c4fc26-f3eb-4ed3-b069-d29fcbf58c57', 'post image', 'IMG_20231029_064316 (1)', 'IMG_20231029_064316-(1).jpg', 'image/jpeg', 'public', 'public', 187005, '[]', '[]', '[]', '[]', 1, '2023-10-29 06:08:08', '2023-10-29 06:08:08'),
(63, 'App\\Models\\AdSpaces', 2, '9fbf780b-b968-44d5-8f7b-c6bb02635fce', 'post image', 'IMG_20231029_064316 (1)', 'IMG_20231029_064316-(1).jpg', 'image/jpeg', 'public', 'public', 187005, '[]', '[]', '[]', '[]', 1, '2023-10-29 06:08:33', '2023-10-29 06:08:33'),
(64, 'App\\Models\\User', 1, '8d1599cf-512a-4f0d-9575-2604be3b6f1f', 'news-image', 'image_2023_10_05T09_48_07_624Z', 'image_2023_10_05T09_48_07_624Z.png', 'image/png', 'public', 'public', 66573, '[]', '[]', '[]', '[]', 15, '2023-10-31 06:01:01', '2023-10-31 06:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_menu_id` bigint UNSIGNED DEFAULT NULL,
  `order` int DEFAULT NULL,
  `show_in_menu` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_26_044558_create_media_table', 1),
(5, '2021_07_28_114939_create_settings_table', 1),
(6, '2021_08_05_085326_create_permission_tables', 1),
(7, '2022_03_09_073651_creat_languages_table', 1),
(8, '2022_03_09_090704_create_categories_table', 1),
(9, '2022_03_09_120141_create_albums_table', 1),
(10, '2022_03_09_120142_create_album_categories_table', 1),
(11, '2022_03_10_054126_create_sub_categories_table', 1),
(12, '2022_03_10_055607_create_menus_table', 1),
(13, '2022_03_10_105057_create_polls_table', 1),
(14, '2022_03_11_054720_create_pages_table', 1),
(15, '2022_03_11_105713_create_navigation_table', 1),
(16, '2022_03_11_121526_create_mail_settings_table', 1),
(17, '2022_03_12_062921_create_seo_tools_table', 1),
(18, '2022_03_14_060718_create_galleries_table', 1),
(19, '2022_03_15_060007_create_posts_table', 1),
(20, '2022_03_17_122201_create_gallery_post', 1),
(21, '2022_03_19_050520_create_article_post', 1),
(22, '2022_03_21_065053_create_sort_list_post', 1),
(23, '2022_03_24_043738_add_parent_menu_id_to_menus_table', 1),
(24, '2022_03_24_111534_change_column_to_article_post_table', 1),
(25, '2022_03_24_123132_create_subscribers', 1),
(26, '2022_03_30_043655_create_analytics_table', 1),
(27, '2022_03_30_085103_create_poll_result_table', 1),
(28, '2022_04_01_062431_create_comments_table', 1),
(29, '2022_04_09_062145_create_contacts_table', 1),
(30, '2022_05_18_103900_change_media_table', 1),
(31, '2022_06_06_075009_add_slug_sub_categories_table', 1),
(32, '2022_07_08_074541_add_dark_mode_field_to_users_table', 1),
(33, '2022_08_24_085555_update_field_type_in_article_post_table', 1),
(34, '2022_12_05_053847_create_video_post', 1),
(35, '2022_12_05_092203_create_rss_feeds_table', 1),
(36, '2022_12_06_064321_create_audio_post', 1),
(37, '2022_12_06_072438_add_rss_feed_to_posts_table', 1),
(38, '2022_12_08_085841_create_ad_spaces_table', 1),
(39, '2022_12_10_052005_add_rss_feed_seeder_to_setting_table', 1),
(40, '2022_12_12_120235_add_ad_spaces_seeder_to_setting_table', 1),
(41, '2022_12_13_043816_add_default_ad_seeder_to_ad_spaces_table', 1),
(42, '2022_12_14_042144_add_default_ad_permission_to_ad_spaces_table', 1),
(43, '2022_12_30_043615_create_currencies_table', 1),
(44, '2022_12_30_044834_create_plans_table', 1),
(45, '2022_12_31_094536_add_customer_role_permission_table', 1),
(46, '2023_01_02_055032_create_transactions_table', 1),
(47, '2023_01_02_055033_create_subscriptions_table', 1),
(48, '2023_01_03_095117_create_post_reactions_table', 1),
(49, '2023_01_04_070136_create_social_accounts_table', 1),
(50, '2023_01_05_051819_add_payment_guide_setting_seeder_table', 1),
(51, '2023_01_16_062238_create_payment_gateways_table', 1),
(52, '2023_01_17_105551_add_payment_rejected_notes_to_subscriptions_table', 1),
(53, '2023_01_18_065211_add_code_in_ad_spaces_table', 1),
(54, '2023_01_24_073135_create_emoji_table', 1),
(55, '2023_01_26_041021_add_default_emojis_on_emoji_table', 1),
(56, '2023_02_08_123737_add_front_language_status_to_languages_table', 1),
(57, '2023_02_16_041456_add_default_emaji_seeder_to_emoji_table', 1),
(58, '2023_02_17_060213_add_emoji_permission_to_emoji_table', 1),
(59, '2023_03_03_043038_create_followers_table', 1),
(60, '2023_03_03_063723_add_about_us_to_users_table', 1),
(61, '2023_03_04_040933_add_social_media_sharing_to_settings_table', 1),
(62, '2023_10_16_015024_create_f_b_posts_table', 2),
(63, '2023_10_16_020417_create_f_b_post_commands_table', 2),
(73, '2023_10_18_124746_create_forum_posts_table', 3),
(74, '2023_10_18_125437_create_forum_likes_table', 3),
(77, '2023_11_01_130532_create_forum_files_table', 3),
(78, '2023_10_18_125509_create_forum_comments_table', 4),
(79, '2023_10_18_125811_create_forum_comment_likes_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 6),
(5, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(6, 'App\\Models\\User', 13),
(6, 'App\\Models\\User', 14),
(6, 'App\\Models\\User', 15);

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `id` bigint UNSIGNED NOT NULL,
  `navigationable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navigationable_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`id`, `navigationable_type`, `navigationable_id`, `order_id`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Category', 1, 1, NULL, '2023-03-23 08:22:10', '2023-10-10 12:50:30'),
(2, 'App\\Models\\Category', 2, 2, NULL, '2023-03-23 08:22:10', '2023-10-10 12:50:30'),
(11, 'App\\Models\\Menu', 1, 8, NULL, '2023-03-23 08:22:10', '2023-10-10 12:50:30'),
(12, 'App\\Models\\Menu', 2, 2, 1, '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(13, 'App\\Models\\Menu', 3, 3, 1, '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(14, 'App\\Models\\Menu', 4, 9, NULL, '2023-08-10 06:04:59', '2023-10-10 12:50:30'),
(15, 'App\\Models\\Category', 6, 3, NULL, '2023-09-03 02:44:22', '2023-10-10 12:50:30'),
(16, 'App\\Models\\Category', 7, 6, NULL, '2023-09-03 02:44:40', '2023-10-10 12:50:30'),
(17, 'App\\Models\\Category', 8, 5, NULL, '2023-09-03 02:44:58', '2023-10-10 12:50:30'),
(18, 'App\\Models\\Category', 9, 7, NULL, '2023-09-03 02:45:10', '2023-10-10 12:50:30'),
(19, 'App\\Models\\Category', 10, 4, NULL, '2023-09-03 02:45:27', '2023-10-10 12:50:30'),
(20, 'App\\Models\\SubCategory', 6, 1, 1, '2023-09-03 02:59:24', '2023-09-03 02:59:24'),
(21, 'App\\Models\\SubCategory', 7, 2, 1, '2023-09-03 02:59:53', '2023-09-03 02:59:53'),
(22, 'App\\Models\\SubCategory', 8, 4, 1, '2023-09-03 03:00:27', '2023-09-03 03:01:02'),
(23, 'App\\Models\\SubCategory', 9, 3, 1, '2023-09-03 03:00:47', '2023-09-03 03:00:47'),
(24, 'App\\Models\\SubCategory', 10, 1, 2, '2023-09-03 03:07:44', '2023-09-03 03:07:44'),
(25, 'App\\Models\\SubCategory', 11, 2, 2, '2023-09-03 03:08:09', '2023-09-03 03:08:09'),
(26, 'App\\Models\\SubCategory', 12, 3, 2, '2023-09-03 03:08:20', '2023-09-03 03:08:20'),
(27, 'App\\Models\\SubCategory', 13, 1, 6, '2023-09-03 03:11:02', '2023-09-03 03:11:02'),
(28, 'App\\Models\\SubCategory', 14, 2, 6, '2023-09-03 03:11:16', '2023-09-03 03:11:16'),
(29, 'App\\Models\\SubCategory', 15, 3, 6, '2023-09-03 03:11:28', '2023-09-03 03:11:28'),
(30, 'App\\Models\\SubCategory', 16, 1, 10, '2023-09-03 03:12:15', '2023-09-03 03:12:15'),
(31, 'App\\Models\\SubCategory', 17, 2, 10, '2023-09-03 03:12:28', '2023-09-03 03:12:28'),
(32, 'App\\Models\\SubCategory', 18, 3, 10, '2023-09-03 03:13:02', '2023-09-03 03:13:02'),
(33, 'App\\Models\\SubCategory', 19, 1, 7, '2023-09-03 03:13:57', '2023-09-03 03:13:57'),
(34, 'App\\Models\\SubCategory', 20, 2, 7, '2023-09-03 03:14:20', '2023-09-03 03:14:20'),
(35, 'App\\Models\\SubCategory', 21, 3, 7, '2023-09-03 03:14:34', '2023-09-03 03:14:34'),
(36, 'App\\Models\\SubCategory', 22, 1, 8, '2023-09-03 03:16:23', '2023-09-03 03:16:23'),
(37, 'App\\Models\\SubCategory', 23, 2, 8, '2023-09-03 03:16:34', '2023-09-03 03:16:34'),
(38, 'App\\Models\\SubCategory', 24, 3, 8, '2023-09-03 03:16:45', '2023-09-03 03:16:45'),
(39, 'App\\Models\\SubCategory', 25, 1, 9, '2023-09-03 03:24:54', '2023-09-03 03:24:54'),
(40, 'App\\Models\\SubCategory', 26, 2, 9, '2023-09-03 03:25:11', '2023-09-03 03:25:11'),
(41, 'App\\Models\\SubCategory', 27, 3, 9, '2023-09-03 03:25:26', '2023-09-03 03:25:26'),
(42, 'App\\Models\\Category', 11, 10, NULL, '2023-10-27 06:48:32', '2023-10-27 06:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` int NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `show_title` tinyint(1) NOT NULL,
  `show_right_column` tinyint(1) NOT NULL,
  `show_breadcrumb` tinyint(1) NOT NULL,
  `permission` tinyint(1) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_menu_link` bigint UNSIGNED DEFAULT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage_ad', 'Manage Ad', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(2, 'manage_plans', 'Manage Plans', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(3, 'cash_payment', 'Cash Payment', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(4, 'manage_menu', 'Manage Menu', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(5, 'manage_categories', 'Manage Categories', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(6, 'manage_sub_categories', 'Manage Sub Categories', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(7, 'manage_albums', 'Manage Albums', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(8, 'manage_albums_category', 'Manage Albums Category', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(9, 'manage_gallery', 'Manage Gallery', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(10, 'manage_pages', 'Manage Pages', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(11, 'manage_settings', 'Manage Settings', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(12, 'manage_staff', 'Manage Staff', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(13, 'manage_roles_permission', 'Manage Roles Permission', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(14, 'manage_add_post', 'Manage Add Post ', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(15, 'manage_all_post', 'Manage All Post', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(16, 'manage_rss_feeds', 'Manage Rss Feeds', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(17, 'manage_mail_setting', 'Manage Mail Setting', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(18, 'manage_polls', 'Manage polls', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(19, 'manage_all_user_can_vote', 'Manage All User Can Vote', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(20, 'manage_only_register_user_vote', 'Manage Only Register User Vote', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(21, 'manage_gallery_image', 'Manage Gallery Image', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(22, 'manage_language', 'Manage Language', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(23, 'manage_navigation', 'Manage Navigation', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(24, 'manage_seo_tools', 'Manage SEO Tools', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(25, 'manage_news_letter', 'Manage News Letter', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(26, 'manage_comment', 'Manage Comment', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(27, 'manage_contacts', 'Manage Contacts', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(28, 'manage_forum', 'Manage Forum', 'web', '2023-10-20 01:05:13', '2023-10-20 01:05:13'),
(29, 'dashboard', 'Dashboard', 'web', '2023-10-29 12:57:09', '2023-10-29 12:57:09'),
(30, 'manage_post', 'Manage Post', 'web', '2023-10-29 12:57:09', '2023-10-29 12:57:09'),
(31, 'post_comments', 'Manage Post Comments', 'web', '2023-10-29 13:03:59', '2023-10-29 13:03:59'),
(32, 'fb_posts', 'Fb Post', 'web', '2023-10-29 13:09:49', '2023-10-29 13:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` bigint UNSIGNED NOT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `question` varchar(181) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option1` varchar(181) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option2` varchar(181) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option3` varchar(181) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option4` varchar(181) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option5` varchar(181) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option6` varchar(181) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option7` varchar(181) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option8` varchar(181) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option9` varchar(181) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option10` varchar(181) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `vote_permission` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`id`, `lang_id`, `question`, `option1`, `option2`, `option3`, `option4`, `option5`, `option6`, `option7`, `option8`, `option9`, `option10`, `status`, `vote_permission`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ai sẽ đăng quang Miss Universe 2023', 'Vietnam', 'Thailand', 'Philippines', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-09-02 12:35:21', '2023-09-02 12:35:21'),
(2, 1, 'Ai sẽ đăng quang Miss Universe 2024', 'abc', '123', 'aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-09-02 12:36:07', '2023-09-02 12:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `poll_result`
--

CREATE TABLE `poll_result` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poll_id` bigint UNSIGNED NOT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `poll_result`
--

INSERT INTO `poll_result` (`id`, `user_id`, `ip_address`, `poll_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, NULL, '127.0.0.1', 1, 'Thailand', '2023-09-02 12:37:12', '2023-09-02 12:37:12'),
(2, NULL, '127.0.0.1', 2, '123', '2023-09-02 12:37:20', '2023-09-02 12:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `breaking` tinyint(1) NOT NULL,
  `slider` tinyint(1) NOT NULL,
  `recommended` tinyint(1) NOT NULL,
  `show_on_headline` tinyint(1) NOT NULL,
  `show_registered_user` tinyint(1) NOT NULL,
  `optional_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_types` int NOT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `sub_category_id` bigint UNSIGNED DEFAULT NULL,
  `scheduled_post` int NOT NULL DEFAULT '0',
  `scheduled_post_time` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `rss_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_rss` tinyint(1) NOT NULL DEFAULT '0',
  `rss_id` bigint UNSIGNED DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `keywords`, `visibility`, `featured`, `breaking`, `slider`, `recommended`, `show_on_headline`, `show_registered_user`, `optional_url`, `tags`, `post_types`, `lang_id`, `category_id`, `sub_category_id`, `scheduled_post`, `scheduled_post_time`, `status`, `rss_link`, `is_rss`, `rss_id`, `created_by`, `created_at`, `updated_at`) VALUES
(30, 'Final Hot Picks Miss World 2022: Dự đoán kết quả Miss World 2022', 'final-hot-picks-miss-world-2022-du-doan-ket-qua-miss-world-2022', 'Dự đoán kết quả Miss World 2022', 'Miss World, Miss World 2022', 1, 0, 1, 1, 1, 1, 0, NULL, 'Miss World,Hot Picks Miss World', 1, 1, 2, 10, 0, NULL, 1, NULL, 0, NULL, 4, '2023-09-03 03:49:36', '2023-09-03 08:06:43'),
(31, 'Mỹ nhân Ba Lan đăng quang Miss World, Đỗ Thị Hà dừng chân top 13', 'my-nhan-ba-lan-dang-quang-miss-world-do-thi-ha-dung-chan-top-13', 'Người đẹp Ba Lan Karolina Bielawska đã đăng quang Miss World lần thứ 70 trong chung kết được tổ chức sáng nay 17-3 (theo giờ Việt Nam)', 'Miss World', 1, 1, 1, 1, 1, 0, 0, NULL, 'Miss World,Miss World 2022', 1, 1, 2, 12, 0, NULL, 1, NULL, 0, NULL, 4, '2023-09-03 04:08:29', '2023-09-03 08:06:20'),
(32, 'Đương kim Hoa hậu thế giới Karolina Bielawska tới Việt Nam', 'duong-kim-hoa-hau-the-gioi-karolina-bielawska-toi-viet-nam', 'Đương kim Hoa hậu Thế giới (Miss World) Karolina Bielawska - 24 tuổi, người Ba Lan, vừa có mặt tại sân bay Tân Sơn Nhất (TP.HCM) sáng 20.7', 'Miss World 2020', 1, 0, 1, 1, 1, 0, 0, NULL, 'Miss World,Karolina Bielawska', 1, 1, 2, 12, 0, NULL, 1, NULL, 0, NULL, 4, '2023-09-03 04:18:47', '2023-09-03 08:00:29'),
(33, 'Miss World 2023 sẽ diễn ra tại Ấn Độ', 'miss-world-2023-se-dien-ra-tai-an-do', 'Ấn Độ sẽ là chủ nhà của cuộc thi Hoa hậu Thế giới lần thứ 71- Miss World 2023 vào cuối năm nay.', 'Miss World 2023', 1, 1, 1, 1, 1, 0, 0, NULL, 'Miss World,Miss World 2023', 1, 1, 2, 11, 0, NULL, 1, NULL, 0, NULL, 4, '2023-09-03 04:24:50', '2023-09-03 08:06:22'),
(34, 'HOTPICK FINAL MISS UNIVERSE 2022 By Thế Giới Hoa Hậu', 'hotpick-final-miss-universe-2022-by-the-gioi-hoa-hau', 'Kết quả cuộc thi Hoa Hậu Hoàn Vũ lần thứ 71 sẽ lộ diện vào 8:00 sáng ngày 15/01/2022 (giờ Việt Nam)', 'Miss Universe 2022', 1, 1, 1, 1, 1, 1, 0, NULL, 'Miss Universe,Miss Universe 2022,Hotpicks Miss Universe', 1, 1, 6, 13, 0, NULL, 1, NULL, 0, NULL, 4, '2023-09-03 04:40:50', '2023-09-03 08:03:35'),
(35, 'Người đẹp Mỹ đăng quang Miss Universe 2022', 'nguoi-dep-my-dang-quang-miss-universe-2022', 'R\'Bonney Gabriel, 28 tuổi, thí sinh nước chủ nhà Mỹ, đăng quang Hoa hậu Hoàn vũ 2022, ở chung kết sáng 15/1 (giờ Hà Nội).', 'Miss Universe', 1, 0, 1, 1, 0, 1, 0, NULL, 'Miss Universe,Miss Universe 2022,Miss Usa', 1, 1, 6, 15, 0, NULL, 1, NULL, 0, NULL, 4, '2023-09-03 04:56:50', '2023-09-03 08:03:35'),
(36, 'Miss Universe 2022 đến Việt Nam', 'miss-universe-2022-den-viet-nam', 'R\'Bonney Gabriel - Miss Universe 2022 - được fan chào đón khi đến Việt Nam công tác, chiều 23/2.', 'Miss Universe 2022', 1, 1, 1, 1, 1, 1, 0, NULL, 'Miss Universe 2022,Miss Universe,R\'Bonney Gabriel', 1, 1, 6, 15, 0, NULL, 1, NULL, 0, NULL, 4, '2023-09-03 05:02:09', '2023-09-03 08:03:34'),
(37, 'Á hậu Lê Thảo Nhi mất suất thi Miss Universe 2023', 'a-hau-le-thao-nhi-mat-suat-thi-miss-universe-2023', 'Á hậu Lê Thảo Nhi sẽ không đại diện Việt Nam dự thi Miss Universe 2023 tại El Salvador trong thời gian tới.', 'Thảo Nhi Lê', 1, 1, 0, 1, 0, 1, 0, NULL, 'TNL,Miss Universe 2023,Thảo Nhi Lê', 1, 1, 6, 14, 0, NULL, 1, NULL, 0, NULL, 4, '2023-09-03 05:08:05', '2023-09-03 07:51:06'),
(38, '5 gương mặt diễn áo tắm đẹp nhất Miss Universe Vietnam 2023', '5-guong-mat-dien-ao-tam-dep-nhat-miss-universe-vietnam-2023', '<a href=\"https://vnexpress.net/5-guong-mat-dien-ao-tam-dep-nhat-miss-universe-vietnam-2023-4656722.html\"><img src=\"https://i1-giaitri.vnecdn.net/2023/09/24/huong-ly-11-1695521584-5809-1695524507.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=bGHPePr2OmGxlvKQhrod-w\"></a>Hương Ly, Bùi Quỳnh Hoa, Lydie Vũ, Hồng Đăng, Phạm Anh Thư vào top 5 \"Người đẹp biển\" Miss Universe Vietnam 2023.', '5 gương mặt diễn áo tắm đẹp nhất Miss Universe Vietnam 2023', 0, 0, 0, 0, 0, 0, 0, NULL, '', 1, 1, 1, NULL, 0, NULL, 1, 'https://vnexpress.net/5-guong-mat-dien-ao-tam-dep-nhat-miss-universe-vietnam-2023-4656722.html', 1, 1, 1, '2023-09-24 06:30:27', '2023-09-24 06:39:53'),
(39, 'ggggg hdhhdhd', 'ggggg-hdhhdhd', 'ssssss', 'sss', 1, 1, 0, 1, 0, 0, 0, NULL, 'sss', 1, 1, 1, 6, 0, NULL, 1, NULL, 0, NULL, 1, '2023-10-14 15:49:47', '2023-10-14 15:49:47'),
(40, 'Chàng trai Bến Tre ký hợp đồng với công ty thần tượng Hàn', 'chang-trai-ben-tre-ky-hop-dong-voi-cong-ty-than-tuong-han', '<a href=\"https://vnexpress.net/chang-trai-ben-tre-ky-hop-dong-voi-cong-ty-than-tuong-han-4669813.html\"><img src=\"https://i1-giaitri.vnecdn.net/2023/10/27/dang-hong-hai-1698383715-8744-1698383861.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=HHpLHdPEm7SY25Ojz42uJA\"></a>Đặng Hồng Hải, 20 tuổi, quê Bến Tre, trở thành nghệ sĩ độc quyền của công ty quản lý thần tượng ở Gangnam, Seoul.', 'Chàng trai Bến Tre ký hợp đồng với công ty thần tượng Hàn', 0, 0, 0, 0, 0, 0, 0, NULL, '', 1, 1, 1, NULL, 0, NULL, 1, 'https://vnexpress.net/chang-trai-ben-tre-ky-hop-dong-voi-cong-ty-than-tuong-han-4669813.html', 1, 1, 1, '2023-10-27 07:31:29', '2023-10-27 07:33:13'),
(41, 'Hữu Bằng, Lâm Tâm Như gợi kỷ niệm \'Tân dòng sông ly biệt\'', 'huu-bang-lam-tam-nhu-goi-ky-niem-tan-dong-song-ly-biet', '<a href=\"https://vnexpress.net/huu-bang-lam-tam-nhu-goi-ky-niem-tan-dong-song-ly-biet-4669808.html\"><img src=\"https://i1-giaitri.vnecdn.net/2023/10/27/top4-1698379527-5119-1698379836.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=KRVzVJqEIU8Z8-_Sh7UlUg\"></a>Lâm Tâm Như gọi Tô Hữu Bằng là Đỗ Phi - nhân vật tài tử đóng trong \"Tân dòng sông ly biệt\".', 'Hữu Bằng, Lâm Tâm Như gợi kỷ niệm \'Tân dòng sông ly biệt\'', 0, 0, 0, 0, 0, 0, 0, NULL, '', 1, 1, 1, NULL, 0, NULL, 1, 'https://vnexpress.net/huu-bang-lam-tam-nhu-goi-ky-niem-tan-dong-song-ly-biet-4669808.html', 1, 1, 1, '2023-10-27 07:32:55', '2023-10-29 01:41:28'),
(42, 'Israel-Hamas war live updates: Israeli defense forces expand Gaza ground incursion; thousands break into UN warehouses', 'israel-hamas-war-live-updates-israeli-defense-forces-expand-gaza-ground-incursion-thousands-break-into-un-warehouses', 'Israel has pledged to continue its \"large scale, significant strikes\" in pursuit of Hamas militants responsible for the Oct. 7 carnage.', 'Israel-Hamas war live updates: Israeli defense forces expand Gaza ground incursion; thousands break into UN warehouses', 1, 0, 0, 0, 0, 0, 0, NULL, '', 1, 1, 2, 11, 0, NULL, 0, 'https://www.cnbc.com/2023/10/30/israel-hamas-war-live-updates-latest-news-on-gaza-conflict.html', 1, 4, 1, '2023-10-30 12:08:45', '2023-10-30 12:11:51'),
(43, 'Stock futures rebound to start a big week with the S&amp;P 500 mired in a correction: Live updates', 'stock-futures-rebound-to-start-a-big-week-with-the-sampp-500-mired-in-a-correction-live-updates', 'The S&amp;P 500 fell into correction territory last week.', 'Stock futures rebound to start a big week with the S&amp;P 500 mired in a correction: Live updates', 1, 0, 0, 0, 0, 0, 0, NULL, '', 1, 1, 1, 7, 0, NULL, 0, 'https://www.cnbc.com/2023/10/29/stock-market-today-live-updates.html', 1, 3, 1, '2023-10-30 12:10:03', '2023-10-30 12:10:03'),
(44, 'McDonald’s revenue climbs 14% as price hikes boost U.S. sales', 'mcdonalds-revenue-climbs-14-as-price-hikes-boost-us-sales', 'Shares of McDonald\'s have fallen about 3% this year, dragging its market value down to $186 billion.', 'McDonald’s revenue climbs 14% as price hikes boost U.S. sales', 1, 0, 0, 0, 0, 0, 0, NULL, '', 1, 1, 1, 7, 0, NULL, 0, 'https://www.cnbc.com/2023/10/30/mcdonalds-mcd-q3-2023-earnings.html', 1, 3, 1, '2023-10-30 12:10:04', '2023-10-30 12:10:04'),
(45, 'Sao \'Đường Bá Hổ điểm Thu Hương\' tiết lộ thu nhập từ livestream', 'sao-duong-ba-ho-diem-thu-huong-tiet-lo-thu-nhap-tu-livestream', '<a href=\"https://vnexpress.net/sao-duong-ba-ho-diem-thu-huong-tiet-lo-thu-nhap-tu-livestream-4670817.html\"><img src=\"https://vcdn1-giaitri.vnecdn.net/2023/10/30/topdan1-1698653388-3429-1698653604.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=8A-Vlg4jW4TQqzsZxUV11A\"></a>Uyển Quỳnh Đan, \"gái xấu\" trong các phim Châu Tinh Trì, cho biết dừng đóng phim để livestream bán hàng, do thu nhập hấp dẫn.', 'Sao \'Đường Bá Hổ điểm Thu Hương\' tiết lộ thu nhập từ livestream', 1, 0, 0, 0, 0, 0, 0, NULL, '', 1, 1, 1, NULL, 0, NULL, 1, 'https://vnexpress.net/sao-duong-ba-ho-diem-thu-huong-tiet-lo-thu-nhap-tu-livestream-4670817.html', 1, 1, 1, '2023-10-30 12:11:54', '2023-10-30 12:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `post_reactions`
--

CREATE TABLE `post_reactions` (
  `id` bigint UNSIGNED NOT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emoji_id` int NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_reactions`
--

INSERT INTO `post_reactions` (`id`, `ip_address`, `emoji_id`, `post_id`, `created_at`, `updated_at`) VALUES
(7, '127.0.0.1', 8, 32, '2023-10-10 14:19:54', '2023-10-10 14:19:54'),
(9, '127.0.0.1', 8, 34, '2023-10-10 14:21:41', '2023-10-10 14:21:41'),
(13, '127.0.0.1', 9, 31, '2023-10-10 14:35:33', '2023-10-10 14:35:33'),
(20, '127.0.0.1', 8, 33, '2023-10-10 14:46:48', '2023-10-10 14:46:48'),
(26, '127.0.0.1', 10, 37, '2023-10-14 15:28:14', '2023-10-14 15:28:14'),
(33, '127.0.0.1', 8, 35, '2023-10-14 15:31:43', '2023-10-14 15:31:43'),
(37, '127.0.0.1', 8, 36, '2023-10-14 15:34:19', '2023-10-14 15:34:19');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `guard_name` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `is_default`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'Admin', 1, 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(3, 'staff', 'Staff', 1, 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(4, 'moderator', 'Moderator', 1, 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(5, 'author', 'Author', 1, 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(6, 'user', 'User', 1, 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(7, 'abc', 'abc', 0, 'web', '2023-10-27 06:51:15', '2023-10-27 06:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(15, 3),
(18, 3),
(21, 3),
(5, 4),
(8, 4),
(9, 4),
(10, 4),
(15, 4),
(16, 5),
(28, 5),
(1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `rss_feeds`
--

CREATE TABLE `rss_feeds` (
  `id` bigint UNSIGNED NOT NULL,
  `feed_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `feed_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_post` int NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `subcategory_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `auto_update` tinyint(1) NOT NULL DEFAULT '1',
  `show_btn` tinyint(1) NOT NULL DEFAULT '1',
  `post_draft` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rss_feeds`
--

INSERT INTO `rss_feeds` (`id`, `feed_name`, `feed_url`, `no_post`, `language_id`, `category_id`, `subcategory_id`, `user_id`, `auto_update`, `show_btn`, `post_draft`, `created_at`, `updated_at`) VALUES
(1, 'vnxpress', 'https://vnexpress.net/rss/giai-tri.rss', 1000, 1, 1, NULL, 1, 0, 1, 1, '2023-08-11 23:52:03', '2023-08-11 23:52:03'),
(2, 'vnxpress', 'https://news.zing.vn/rss/giai-tri.rss', 100, 1, 2, 10, 1, 0, 1, 1, '2023-08-11 23:56:50', '2023-09-24 06:30:17'),
(3, 'Ariful', 'https://search.cnbc.com/rs/search/combinedcms/view.xml?partnerId=wrss01&id=100003114', 2, 1, 1, 7, 1, 1, 1, 0, '2023-10-30 12:06:57', '2023-10-30 12:06:57'),
(4, 'Ariful', 'https://search.cnbc.com/rs/search/combinedcms/view.xml?partnerId=wrss01&id=100727362', 1, 1, 2, 11, 1, 1, 1, 0, '2023-10-30 12:08:44', '2023-10-30 12:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `seo_tools`
--

CREATE TABLE `seo_tools` (
  `id` bigint UNSIGNED NOT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `site_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_tools`
--

INSERT INTO `seo_tools` (`id`, `lang_id`, `site_title`, `home_title`, `site_description`, `keyword`, `google_analytics`, `created_at`, `updated_at`) VALUES
(1, 1, 'InfyNews', 'Home', 'Get Latest News', 'world news website', '', '2023-03-23 08:22:10', '2023-03-23 08:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'rss_feed_update_time', '3', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(2, 'header', '1', '2023-03-23 08:22:10', '2023-09-01 20:43:00'),
(3, 'index_top', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(4, 'index_bottom', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(5, 'post_details', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(6, 'details_side', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(7, 'categories', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(8, 'trending_post', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(9, 'popular_news', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(10, 'trending_post_index_page', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(11, 'popular_news_index_page', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(12, 'recommended_post_index_page', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(13, 'manual_payment_guide', '', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(14, 'facebook', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(15, 'twitter', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(16, 'linkedin', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(17, 'reddit', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(18, 'whatsapp', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(19, 'application_name', 'TheGioiHoaHau', '2023-03-23 08:22:10', '2023-09-01 21:07:38'),
(20, 'contact_no', '0941600887', '2023-03-23 08:22:10', '2023-09-01 21:07:38'),
(21, 'email', 'test@email.com', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(22, 'copy_right_text', 'All Rights Reserved ©2023', '2023-03-23 08:22:10', '2023-09-01 21:07:38'),
(23, 'site_key', ' ', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(24, 'secret_key', ' ', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(25, 'show_captcha', '0', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(26, 'facebook_url', 'https://www.facebook.com/infyom/', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(27, 'twitter_url', 'https://twitter.com/infyom?lang=en', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(28, 'instagram_url', 'https://www.instagram.com/?hl=en', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(29, 'pinterest_url', 'https://www.pinterest.com/', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(30, 'linkedin_url', 'https://www.linkedin.com/organization-guest/company/infyom-technologies?challengeId=AQFgQaMxwSxCdAAAAXOA_wosiB2vYdQEoITs6w676AzV8cu8OzhnWEBNUQ7LCG4vds5-A12UIQk1M4aWfKmn6iM58OFJbpoRiA&submissionId=0088318b-13b3-2416-9933-b463017e531e', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(31, 'vk_url', 'https://vk.com/?lang=en', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(32, 'telegram_url', 'https://www.telegram.org/k/', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(33, 'youtube_url', 'https://www.youtube.com/', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(34, 'show_cookie', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(35, 'cookie_warning', 'Your experience on this site will be improved by allowing cookies.', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(36, 'logo', '/assets/image/infyom-logo.png', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(37, 'favicon', '/assets/image/favicon-infyom.png', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(38, 'contact_address', '192 Hàm Tử', '2023-03-23 08:22:10', '2023-09-01 20:44:26'),
(39, 'about_text', 'Thế Giới Hoa Hậu là cộng đồng người hâm mộ sắc đẹp lớn nhất Việt Nam được thành lập từ năm 2014', '2023-03-23 08:22:10', '2023-09-01 20:44:26'),
(40, 'terms&conditions', '', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(41, 'privacy', '', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(42, 'support', '', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(43, 'comment_approved', '1', '2023-03-23 08:22:10', '2023-09-03 08:18:27'),
(44, 'front_language', '1', '2023-03-23 08:22:10', '2023-03-23 08:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sort_list_post`
--

CREATE TABLE `sort_list_post` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `sort_list_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sort_list_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_in_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `parent_category_id` bigint UNSIGNED NOT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `show_in_menu`, `parent_category_id`, `lang_id`, `created_at`, `updated_at`) VALUES
(6, 'Hoa Hậu Việt Nam', 'hoa-h-u-vi-t-nam', '1', 1, 1, '2023-09-03 02:59:24', '2023-09-03 02:59:24'),
(7, 'Miss World Vietnam', 'miss-world-vietnam', '1', 1, 1, '2023-09-03 02:59:53', '2023-09-03 02:59:53'),
(8, 'Miss Universe Vietnam', 'miss-universe-vietnam', '1', 1, 1, '2023-09-03 03:00:27', '2023-09-03 03:01:02'),
(9, 'Miss Grand Vietnam', 'miss-grand-vietnam', '1', 1, 1, '2023-09-03 03:00:47', '2023-09-03 03:00:47'),
(10, 'Prediction Miss World', 'prediction-miss-world', '1', 2, 1, '2023-09-03 03:07:43', '2023-09-03 03:10:12'),
(11, 'MW 2023', 'mw-2023', '1', 2, 1, '2023-09-03 03:08:09', '2023-09-03 03:10:32'),
(12, 'MW 2022', 'mw-2022', '1', 2, 1, '2023-09-03 03:08:20', '2023-09-03 03:10:22'),
(13, 'Prediction Miss Universe', 'prediction-miss-universe', '1', 6, 1, '2023-09-03 03:11:02', '2023-09-03 03:11:02'),
(14, 'MU 2023', 'mu-2023', '1', 6, 1, '2023-09-03 03:11:16', '2023-09-03 03:11:16'),
(15, 'MU 2022', 'mu-2022', '1', 6, 1, '2023-09-03 03:11:28', '2023-09-03 03:11:28'),
(16, 'Prediction Miss Earth', 'prediction-miss-earth', '1', 10, 1, '2023-09-03 03:12:15', '2023-09-03 03:12:15'),
(17, 'ME 2023', 'me-2023', '1', 10, 1, '2023-09-03 03:12:28', '2023-09-03 03:13:36'),
(18, 'ME 2022', 'me-2022', '1', 10, 1, '2023-09-03 03:13:02', '2023-09-03 03:13:29'),
(19, 'Prediction Miss International', 'prediction-miss-international', '1', 7, 1, '2023-09-03 03:13:57', '2023-09-03 03:13:57'),
(20, 'MI 2023', 'mi-2023', '1', 7, 1, '2023-09-03 03:14:20', '2023-09-03 03:14:20'),
(21, 'MI 2022', 'mi-2022', '1', 7, 1, '2023-09-03 03:14:34', '2023-09-03 03:14:34'),
(22, 'Prediction Miss Supranational', 'prediction-miss-supranational', '1', 8, 1, '2023-09-03 03:16:23', '2023-09-03 03:16:23'),
(23, 'MS 2023', 'ms-2023', '1', 8, 1, '2023-09-03 03:16:34', '2023-09-03 03:16:34'),
(24, 'MS 2022', 'ms-2022', '1', 8, 1, '2023-09-03 03:16:45', '2023-09-03 03:16:45'),
(25, 'Prediction Miss Grand', 'prediction-miss-grand', '1', 9, 1, '2023-09-03 03:24:54', '2023-09-03 03:24:54'),
(26, 'MGI 2023', 'mgi-2023', '1', 9, 1, '2023-09-03 03:25:11', '2023-09-03 03:25:11'),
(27, 'MGI 2022', 'mgi-2022', '1', 9, 1, '2023-09-03 03:25:26', '2023-09-03 03:25:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int DEFAULT NULL,
  `blood_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `about_us` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `contact`, `dob`, `gender`, `status`, `language`, `dark_mode`, `email_verified_at`, `password`, `type`, `blood_group`, `remember_token`, `created_at`, `updated_at`, `about_us`) VALUES
(1, 'Super', 'Admin', 'admin@tghh.com', '1234567890', NULL, 1, 1, 'en', 0, '2023-03-23 08:22:10', '$2y$10$lFOWKa0Yp5VKaODtSTDsPu3Hf0AFEwFDdv4yDQG0a4CFHWGZx7meG', 1, NULL, NULL, '2023-03-23 08:22:10', '2023-09-15 13:14:16', NULL),
(2, 'Loan', 'Nguyen', 'mle.hau21@gmail.com', '', NULL, 0, 1, 'en', 0, '2023-09-02 13:04:11', '$2y$10$AUx2ToMDTS7kvmEKBuWKn.ANiypBF9CcZwdixFjSBdtKqLBi7ygx2', 2, NULL, NULL, '2023-09-02 12:43:32', '2023-09-02 13:08:55', NULL),
(4, 'Hau', 'Lê', 'hau@gmail.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$jxLlZkvMs3GX5C8W8Iw.QO5dkyZFQUN5KQIzTl3RJEwvV5LBPBud6', 2, NULL, NULL, '2023-09-02 13:48:12', '2023-09-02 13:48:12', NULL),
(5, 'Hau', 'Lê', 'hau1@gmail.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$yNbdcPSWzd3iIbcko5j2V.XIH9ER3p4UbnQ1REOAvXu4VVlIkl0LG', 2, NULL, NULL, '2023-09-06 11:06:59', '2023-09-06 11:06:59', NULL),
(6, 'test', '1', 'tess@gmail.com', '1', NULL, 1, 1, 'en', 0, NULL, '$2y$10$ij1svOQunlUnwL7WjUuatu/wOioACrwAPUMlwvu3Sc4CFdtbGW5nG', 2, NULL, NULL, '2023-10-20 12:04:40', '2023-10-20 13:23:17', NULL),
(7, 'test', '2', 'test2@gmail.com', '1', NULL, 1, 1, 'en', 0, NULL, '$2y$10$5PWVXoYLh.yyIT3hqss2bO.1zPD15x2.N23I0R8FXBhLv/2P3CZBC', 2, NULL, NULL, '2023-10-20 12:09:18', '2023-10-20 12:09:18', NULL),
(8, 'test', 'ba', 'test3@gmail.com', '123', NULL, 1, 0, 'en', 0, NULL, '$2y$10$BjZNixrtnf9HjEoFstvCYePao7iyDla2a89K7uAcBDm3TAeg6kyN6', 2, NULL, NULL, '2023-10-27 06:51:51', '2023-10-29 09:30:21', 'ssss'),
(9, 'kim', 'dung', 'dung@gmail.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$OUFuXxmaYJpa8NkSDWmNHuy4XxVw1PoFQ0DZdcRpZK6goRHIvnXhC', 2, NULL, NULL, '2023-10-27 06:54:46', '2023-10-27 06:54:46', NULL),
(10, 'Theodore', 'Avila', 'zyquladil@mailinator.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$..Fx.wgNH99vq3DopR3sYePkeGTS8Y92fr9p0ysfKoim551U48oE2', 2, NULL, NULL, '2023-10-29 13:43:18', '2023-10-29 13:43:18', NULL),
(11, 'Tanek', 'Hicks', 'zysohomu@mailinator.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$a8fofuvV9KKYmgB8UEMKheEQzCshjsn/IJ6m1fWOqxP4j9f0JuxQS', 2, NULL, NULL, '2023-10-29 13:44:47', '2023-10-29 13:44:47', NULL),
(12, 'Nehru', 'Daniels', 'foweb@mailinator.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$tjBuVwoqagRHlBladID0w.oHljE0v0YVuGzCfNwRpYKJC2Zm/tBm.', 2, NULL, NULL, '2023-10-29 13:45:32', '2023-10-29 13:45:32', NULL),
(13, 'Anjolie', 'Fitzgerald', 'nylumuve@mailinator.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$ddcirGwVV2z.4w7/a9Yoq.aU5Z35LzWDlYZUB4kaylINtzX7j7MyO', 2, NULL, NULL, '2023-10-29 13:49:05', '2023-10-29 13:49:05', NULL),
(14, 'Beatrice', 'Cline', 'supihi@mailinator.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$5JNQFQ/KyfRhSOuA1beRnecwjAthAfVrDrSzpEKuT4wmBB9QTvdPG', 2, NULL, NULL, '2023-10-29 13:50:17', '2023-10-29 13:50:17', NULL),
(15, 'Ariful', 'Sikder', 'arif@gmail.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$d1lb55WpiUZ2i88qhdwy.OzCTVhBJBEvTs.PPYUmflmC/7zqb1.4O', 2, NULL, NULL, '2023-10-30 06:26:46', '2023-10-30 06:26:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video_post`
--

CREATE TABLE `video_post` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `video_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_embed_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad_spaces`
--
ALTER TABLE `ad_spaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `album_categories`
--
ALTER TABLE `album_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_categories_album_id_foreign` (`album_id`),
  ADD KEY `album_categories_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `analytics`
--
ALTER TABLE `analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_post`
--
ALTER TABLE `article_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_post_post_id_foreign` (`post_id`);

--
-- Indexes for table `audio_post`
--
ALTER TABLE `audio_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audio_post_post_id_foreign` (`post_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emoji`
--
ALTER TABLE `emoji`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emoji_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followers_following_foreign` (`following`),
  ADD KEY `followers_followers_foreign` (`followers`);

--
-- Indexes for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_comment_likes`
--
ALTER TABLE `forum_comment_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_files`
--
ALTER TABLE `forum_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_likes`
--
ALTER TABLE `forum_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_b_posts`
--
ALTER TABLE `f_b_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_b_post_commands`
--
ALTER TABLE `f_b_post_commands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `galleries_title_unique` (`title`),
  ADD KEY `galleries_lang_id_foreign` (`lang_id`),
  ADD KEY `galleries_album_id_foreign` (`album_id`),
  ADD KEY `galleries_category_id_foreign` (`category_id`);

--
-- Indexes for table `gallery_post`
--
ALTER TABLE `gallery_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_post_post_id_foreign` (`post_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_iso_code_unique` (`iso_code`);

--
-- Indexes for table `mail_settings`
--
ALTER TABLE `mail_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_parent_menu_id_foreign` (`parent_menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_parent_menu_link_foreign` (`parent_menu_link`),
  ADD KEY `pages_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `polls_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `poll_result`
--
ALTER TABLE `poll_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_result_user_id_foreign` (`user_id`),
  ADD KEY `poll_result_poll_id_foreign` (`poll_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_created_by_foreign` (`created_by`),
  ADD KEY `posts_lang_id_foreign` (`lang_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `posts_rss_id_foreign` (`rss_id`);

--
-- Indexes for table `post_reactions`
--
ALTER TABLE `post_reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_reactions_post_id_foreign` (`post_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rss_feeds_feed_url_unique` (`feed_url`),
  ADD KEY `rss_feeds_language_id_foreign` (`language_id`),
  ADD KEY `rss_feeds_user_id_foreign` (`user_id`),
  ADD KEY `rss_feeds_category_id_foreign` (`category_id`),
  ADD KEY `rss_feeds_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `seo_tools`
--
ALTER TABLE `seo_tools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_tools_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_id_unique` (`provider_id`),
  ADD KEY `social_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `sort_list_post`
--
ALTER TABLE `sort_list_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sort_list_post_post_id_foreign` (`post_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_parent_category_id_foreign` (`parent_category_id`),
  ADD KEY `sub_categories_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_post`
--
ALTER TABLE `video_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_post_post_id_foreign` (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad_spaces`
--
ALTER TABLE `ad_spaces`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `album_categories`
--
ALTER TABLE `album_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `analytics`
--
ALTER TABLE `analytics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `article_post`
--
ALTER TABLE `article_post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `audio_post`
--
ALTER TABLE `audio_post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emoji`
--
ALTER TABLE `emoji`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `forum_comment_likes`
--
ALTER TABLE `forum_comment_likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forum_files`
--
ALTER TABLE `forum_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `forum_likes`
--
ALTER TABLE `forum_likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `f_b_posts`
--
ALTER TABLE `f_b_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `f_b_post_commands`
--
ALTER TABLE `f_b_post_commands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery_post`
--
ALTER TABLE `gallery_post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mail_settings`
--
ALTER TABLE `mail_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `poll_result`
--
ALTER TABLE `poll_result`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `post_reactions`
--
ALTER TABLE `post_reactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seo_tools`
--
ALTER TABLE `seo_tools`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sort_list_post`
--
ALTER TABLE `sort_list_post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `video_post`
--
ALTER TABLE `video_post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `album_categories`
--
ALTER TABLE `album_categories`
  ADD CONSTRAINT `album_categories_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_categories_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `article_post`
--
ALTER TABLE `article_post`
  ADD CONSTRAINT `article_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `audio_post`
--
ALTER TABLE `audio_post`
  ADD CONSTRAINT `audio_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_followers_foreign` FOREIGN KEY (`followers`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `followers_following_foreign` FOREIGN KEY (`following`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `galleries_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `album_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `galleries_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gallery_post`
--
ALTER TABLE `gallery_post`
  ADD CONSTRAINT `gallery_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_parent_menu_id_foreign` FOREIGN KEY (`parent_menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pages_parent_menu_link_foreign` FOREIGN KEY (`parent_menu_link`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `polls`
--
ALTER TABLE `polls`
  ADD CONSTRAINT `polls_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poll_result`
--
ALTER TABLE `poll_result`
  ADD CONSTRAINT `poll_result_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `poll_result_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_rss_id_foreign` FOREIGN KEY (`rss_id`) REFERENCES `rss_feeds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_reactions`
--
ALTER TABLE `post_reactions`
  ADD CONSTRAINT `post_reactions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD CONSTRAINT `rss_feeds_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rss_feeds_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rss_feeds_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rss_feeds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seo_tools`
--
ALTER TABLE `seo_tools`
  ADD CONSTRAINT `seo_tools_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sort_list_post`
--
ALTER TABLE `sort_list_post`
  ADD CONSTRAINT `sort_list_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sub_categories_parent_category_id_foreign` FOREIGN KEY (`parent_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `video_post`
--
ALTER TABLE `video_post`
  ADD CONSTRAINT `video_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
