-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 04, 2023 at 01:03 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

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
  `ad_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_spaces`
--

INSERT INTO `ad_spaces` (`id`, `ad_spaces`, `ad_view`, `ad_url`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'http://127.0.0.1:8000/', NULL, '2023-03-23 08:22:10', '2023-09-19 12:55:37'),
(2, 2, 0, 'https://www.facebook.com/watch/live/?ref=watch_permalink&v=1029804294394541', NULL, '2023-03-23 08:22:10', '2023-11-09 07:02:18'),
(3, 2, 1, 'https://www.facebook.com/watch/live/?ref=watch_permalink&v=1029804294394541', NULL, '2023-03-23 08:22:10', '2023-11-09 07:02:18'),
(4, 3, 0, 'https://benhvienthammynaman.com/', NULL, '2023-03-23 08:22:10', '2023-11-09 06:39:20'),
(5, 3, 1, 'https://benhvienthammynaman.com/', NULL, '2023-03-23 08:22:10', '2023-11-09 06:39:20'),
(6, 4, 0, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fm.youtube.com%2Fwatch%3Fv%3D0LvXD3c8pVY&psig=AOvVaw2LYp16M23pOE2BtED4RRn-&ust=1699596847372000&source=images&cd=vfe&opi=89978449&ved=0CBQQjhxqFwoTCOjAhsGitoIDFQAAAAAdAAAAABAE', NULL, '2023-03-23 08:22:10', '2023-11-09 06:57:21'),
(7, 4, 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fm.youtube.com%2Fwatch%3Fv%3D0LvXD3c8pVY&psig=AOvVaw2LYp16M23pOE2BtED4RRn-&ust=1699596847372000&source=images&cd=vfe&opi=89978449&ved=0CBQQjhxqFwoTCOjAhsGitoIDFQAAAAAdAAAAABAE', NULL, '2023-03-23 08:22:10', '2023-11-09 06:57:21'),
(8, 5, 1, 'h', NULL, '2023-03-23 08:22:10', '2023-09-19 13:14:55'),
(9, 6, 0, 'https://benhvienthammynaman.com/', NULL, '2023-03-23 08:22:10', '2023-11-09 07:05:53'),
(10, 6, 1, 'https://benhvienthammynaman.com/', NULL, '2023-03-23 08:22:10', '2023-11-09 07:05:53'),
(11, 7, 0, 'https://missuniverse.com', NULL, '2023-03-23 08:22:10', '2023-11-09 07:21:10'),
(12, 7, 1, 'https://missuniverse.com', NULL, '2023-03-23 08:22:10', '2023-11-09 07:21:10'),
(13, 8, 0, 'https://missuniverse.com', NULL, '2023-03-23 08:22:10', '2023-11-09 07:24:36'),
(14, 8, 1, 'https://missuniverse.com', NULL, '2023-03-23 08:22:10', '2023-11-09 07:24:36'),
(15, 9, 0, 'https://missuniverse.com', NULL, '2023-03-23 08:22:10', '2023-11-09 07:20:42'),
(16, 9, 1, 'https://missuniverse.com', NULL, '2023-03-23 08:22:10', '2023-11-09 07:20:42'),
(17, 10, 0, 'https://missuniverse.com', NULL, '2023-03-23 08:22:10', '2023-11-09 07:24:13'),
(18, 10, 1, 'https://missuniverse.com', NULL, '2023-03-23 08:22:10', '2023-11-09 07:24:13'),
(19, 11, 0, 'https://missuniverse.com', NULL, '2023-03-23 08:22:10', '2023-11-09 07:28:11'),
(20, 11, 1, 'https://missuniverse.com', NULL, '2023-03-23 08:22:10', '2023-11-09 07:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint UNSIGNED NOT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `lang_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nguyen Thi Loan', '2023-08-11 21:04:23', '2023-08-11 21:04:23'),
(2, 1, 'ffff', '2023-11-20 04:21:28', '2023-11-20 04:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `album_categories`
--

CREATE TABLE `album_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `album_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `album_categories`
--

INSERT INTO `album_categories` (`id`, `lang_id`, `album_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'hau', '2023-08-11 21:05:46', '2023-08-11 21:05:46'),
(2, 1, 2, 'ggg', '2023-11-20 04:21:48', '2023-11-20 04:21:48');

-- --------------------------------------------------------

--
-- Table structure for table `analytics`
--

CREATE TABLE `analytics` (
  `id` bigint UNSIGNED NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` longtext COLLATE utf8mb4_unicode_ci,
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
(63, '/sao-duong-ba-ho-diem-thu-huong-tiet-lo-thu-nhap-tu-livestream', 'oXZb3olneXi8mAcV74HiRZ7wtbp0aPMRKl4cdkCK', '', '127.0.0.1', '45', '1', 'false', '2023-10-30 13:19:02', '2023-10-30 13:19:02'),
(65, '/ddd', 'j8JNZVxhiFpVB3g7HYhVmVb5gOFO8t9SCbUL55us', '', '127.0.0.1', '47', '1', 'false', '2023-11-07 12:33:50', '2023-11-07 12:33:50'),
(66, '/a-hau-le-thao-nhi-mat-suat-thi-miss-universe-2023', 'gLPMIoDzIXoLwpzIc6B4XP3LYAEBBfpj3UpTbE90', '', '127.0.0.1', '37', '1', 'false', '2023-11-08 13:09:03', '2023-11-08 13:09:03'),
(67, '/ggggg-hdhhdhd', 'xNLtirUFbW8fH6M25LZLaI3tY75Y3NLZ2iDH2vZo', '', '127.0.0.1', '39', '1', 'false', '2023-11-09 06:55:26', '2023-11-09 06:55:26'),
(68, '/nguoi-dep-my-dang-quang-miss-universe-2022', 'xNLtirUFbW8fH6M25LZLaI3tY75Y3NLZ2iDH2vZo', '', '127.0.0.1', '35', '1', 'false', '2023-11-09 07:29:12', '2023-11-09 07:29:12'),
(69, '/hotpick-final-miss-universe-2022-by-the-gioi-hoa-hau', 'eRdu1O6pBBWmihd56b9LmJFLXcHgoLZizKjk8tDY', '', '127.0.0.1', '34', NULL, 'false', '2023-11-10 03:51:05', '2023-11-10 03:51:05'),
(70, '/miss-universe-2022-den-viet-nam', 'cQkmRXT6leocPO0bikywsUDGZPxgpQ5wQT2aejI2', '', '127.0.0.1', '36', NULL, 'false', '2023-11-10 12:42:51', '2023-11-10 12:42:51'),
(71, '/miss-world-2022-is-karolina-bielawska-from-poland', 'rAthMw2db7oLXo4xayGLWMhiEZPj6L7LuihHOzeQ', '', '127.0.0.1', '48', '1', 'false', '2023-11-11 13:21:41', '2023-11-11 13:21:41'),
(72, '/exclusive-interview-with-miss-universe-thailand-2023', 'XamFjSdyO7wQqIXAl7fOTMioo9RkwcFonxO1hhjW', '', '127.0.0.1', '49', '1', 'false', '2023-11-12 06:30:26', '2023-11-12 06:30:26'),
(73, '/miss-world-america-2023-is-victoria-disorbo-of-tennessee', 'XamFjSdyO7wQqIXAl7fOTMioo9RkwcFonxO1hhjW', '', '127.0.0.1', '50', '1', 'false', '2023-11-12 06:37:30', '2023-11-12 06:37:30'),
(74, '/miss-world-myanmar-2023-is-yoon-theint-theint-nway', 'Wc1T7P05UwjAdaIqgOu2ceRASLVPles5wBsn96jF', '', '127.0.0.1', '51', NULL, 'false', '2023-11-17 09:34:45', '2023-11-17 09:34:45'),
(75, '/johanne-grundt-hansen-is-miss-world-danmark-2023', 'cg87QxqFpPScLvAUCDn3dfO3PynQXKHRGWIDC0FA', '', '127.0.0.1', '52', '1', 'false', '2023-11-21 07:57:36', '2023-11-21 07:57:36'),
(76, '/miss-world-2022-is-karolina-bielawska-from-poland', 'cg87QxqFpPScLvAUCDn3dfO3PynQXKHRGWIDC0FA', '', '127.0.0.1', '48', '1', 'false', '2023-11-21 07:57:46', '2023-11-21 07:57:46'),
(77, '/exclusive-interview-with-miss-universe-thailand-2023', 'cg87QxqFpPScLvAUCDn3dfO3PynQXKHRGWIDC0FA', '', '127.0.0.1', '49', '1', 'false', '2023-11-21 07:58:00', '2023-11-21 07:58:00'),
(78, '/miss-world-myanmar-2023-is-yoon-theint-theint-nway', 'V4LcQmdxD0ubz9PcYutkXhZJaE2fmj7n57rzdc0r', '', '127.0.0.1', '51', '1', 'false', '2023-11-21 12:28:12', '2023-11-21 12:28:12'),
(79, '/miss-universe-2023-is-sheynnis-palacios-of-nicaragua', 'V4LcQmdxD0ubz9PcYutkXhZJaE2fmj7n57rzdc0r', '', '127.0.0.1', '53', '1', 'false', '2023-11-21 12:31:18', '2023-11-21 12:31:18'),
(80, '/exclusive-interview-with-miss-universe-thailand-2023', 'V4LcQmdxD0ubz9PcYutkXhZJaE2fmj7n57rzdc0r', '', '127.0.0.1', '49', '1', 'false', '2023-11-21 12:33:51', '2023-11-21 12:33:51'),
(82, '/top-10-evening-gown-miss-universe-2023', 'V4LcQmdxD0ubz9PcYutkXhZJaE2fmj7n57rzdc0r', '', '127.0.0.1', '55', '1', 'false', '2023-11-21 13:00:39', '2023-11-21 13:00:39'),
(83, '/final-question-miss-universe-2023', 'V4LcQmdxD0ubz9PcYutkXhZJaE2fmj7n57rzdc0r', '', '127.0.0.1', '56', '1', 'false', '2023-11-21 13:40:19', '2023-11-21 13:40:19'),
(84, '/final-question-miss-universe-2023', 'CaZxdLHpaBeFyB1HVAjPGboXwwPjA2zvXl1Q6oOm', '', '127.0.0.1', '56', NULL, 'false', '2023-11-22 03:22:06', '2023-11-22 03:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `article_post`
--

CREATE TABLE `article_post` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `article_content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_post`
--

INSERT INTO `article_post` (`id`, `post_id`, `article_content`, `created_at`, `updated_at`) VALUES
(29, 48, '<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">The best thing about the telecast of the 70th Miss World contest was the winner&acute;s announcement, by Julia Morley: Poland!&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\"><img class=\"images\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://127.0.0.1:8000/uploads/news-image\\96\\deccanhe.png\" width=\"535\" height=\"301\" /></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">Stunning Karolina Bielawska, 23, started her modeling career at the age of 14 when she placed second in the Elite Model Look competition. In her late teenage years, she signed with several different high-profile modeling agencies and walked in fashion weeks in Poland and in other countries. Aside from modeling, Bielawska holds a bachelor&rsquo;s degree in management and is currently pursuing a master&rsquo;s degree in business.</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">She describes herself as an adrenalin junkie and says traveling is among her biggest passions in life.</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">&ldquo;Enjoying the world and its beauty brings me a lot of joy. Discovering new places, meeting new people, and learning about their culture makes my life fuller,&rdquo; she wrote in a Miss World blog post.</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">&ldquo;Hans Christian Andersen said that &lsquo;To travel is to live&acute; and I completely relate to that. Trying new things, enjoying the wilderness of nature, and learning from people with different views is what makes me feel alive,&rdquo; she said.</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">During the pageant, she spoke of her hopes to become a television presenter and actress, describing Australian Oscar-nominated actress Margot Robbie as her dream co-star.</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">&ldquo;I heard many times that I look like her. It would be amazing to meet and learn from this wonderful actress,&rdquo; she said.</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">Bielawska&rsquo;s charity work has seen her support and volunteer for a number of organizations since she was crowned Miss Polonia in 2019, including the Zupa na Pietrynie group, which provides support for homeless people in her country.</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">One piece of curiosity is that Karolina flew to London in 2019, already as Miss Polonia, to attend the 69th Miss World competition and support that year&acute;s Polish representative.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\"><img src=\"https://images.squarespace-cdn.com/content/v1/58f5f6862994ca075dfc6b6f/6d4a7b9c-14a6-4b6a-84ed-d53c157dd905/Top+3+c.jpg\" width=\"435\" height=\"359\" /></span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">The Top 3, from left to right: Olivia Yac&eacute; of C&ocirc;te d&acute;Ivoire won three fast-track events, started the night as &ldquo;the one to beat&rdquo;, and ended it in 3rd place, a historical accomplishment for her country; Karolina Bielawska of Poland grew in the final event to the point of being deservingly elected the new Miss World; Shree Saini of the USA won the BWP award, and beat all the odds to reach a very surprising 2nd place.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\"><strong><span style=\"font-family: times new roman, times, serif;\">Miss World 2021:&nbsp;</span></strong><span style=\"font-family: times new roman, times, serif;\">Poland &ndash; Karolina Bielawska</span></span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\"><span style=\"font-family: times new roman, times, serif;\"><strong>1st Runner-Up:</strong>&nbsp;</span><span style=\"font-family: times new roman, times, serif;\">United States &ndash; Shree Saini</span></span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\"><span style=\"font-family: times new roman, times, serif;\"><strong>2nd Runner-Up</strong>:&nbsp;</span><span style=\"font-family: times new roman, times, serif;\">Cote D\'Ivoire &ndash; Olivia Yac&eacute;</span></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\"><strong><span style=\"font-family: times new roman, times, serif;\">Top 6</span></strong></span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\"><span style=\"font-family: times new roman, times, serif;\">Indonesia &ndash; Pricilia Carla Yules</span></span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\"><span style=\"font-family: times new roman, times, serif;\">Mexico &ndash; Karolina Vidales</span></span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\"><span style=\"font-family: times new roman, times, serif;\">Northern Ireland &ndash; Anna Leitch</span></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\"><strong>Top 13</strong></span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">Colombia &ndash; Andrea Aguilera</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">Czech Republic &ndash; Karol&iacute;na Kop&iacute;ncov&aacute;</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">France &ndash; April Benayoum</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">India &ndash; Manasa Varanasi</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">Philippines &ndash; Tracy Perez</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">Somalia &ndash; Khadija Omar</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 18pt;\">Vietnam &ndash; Đỗ Thị H&agrave; (Digital Challenge Winner)</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p class=\"\" style=\"margin-top: 0px; overflow-wrap: break-word; background-color: #fcfcfc;\">&nbsp;</p>', '2023-11-11 13:21:32', '2023-11-11 13:22:11'),
(30, 50, '<p><span style=\"color: #222222; font-family: Verdana, Geneva, sans-serif; font-size: 15px; background-color: #ffffff;\">Victoria DiSorbo will represent the United States in the upcoming Miss World 2023 pageant which will be held in New Delhi, India. The 25-year-old beauty who stands 5&rsquo;9&Prime; is a highly experienced beauty queen. She was Miss Teen Florida 2017 and is one of the contestants of the Miss Florida USA 2023 pageant.</span></p>\r\n<p>&nbsp;</p>\r\n<p><img class=\"images\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://127.0.0.1:8000/uploads/news-image\\100\\mw23usa1.jpeg\" width=\"410\" height=\"570\" /></p>\r\n<p><span style=\"color: #222222; font-family: Verdana, Geneva, sans-serif; font-size: 15px; background-color: #ffffff;\">Victoria DiSorbo describes herself as an entreneur, coffee lover, a dog mom and she is a proud Italian American. She is an advocate of the non-profit organization called Cystic Fibrosis Foundation. She hopes to become the 4</span><span style=\"box-sizing: border-box; font-size: 11.25px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; color: #222222; font-family: Verdana, Geneva, sans-serif; background-color: #ffffff;\">th</span><span style=\"color: #222222; font-family: Verdana, Geneva, sans-serif; font-size: 15px; background-color: #ffffff;\">&nbsp;Miss World from her country. The United States boasts three Miss World titleholders &ndash; Marjorie Wallace (1973), Gina Tolleson (1990) and Alexandria Mills (2010).</span></p>\r\n<p>&nbsp;</p>', '2023-11-12 06:37:14', '2023-11-12 06:37:14'),
(31, 51, '<p style=\"box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; color: #222222; background-color: #ffffff;\">Yoon Theint Theint Nway is 19 years of age and is from Pindaya. She will represent Myanmar at the Miss World 2023 pageant which will be held in New Delhi, India this December. She was crowned in a pageant held at Hexagon Complex in Yangon.</p>\r\n<div class=\"td-a-rec td-a-rec-id-content_inline \" style=\"box-sizing: border-box; color: #222222; font-family: Verdana, Geneva, sans-serif; font-size: 15px; background-color: #ffffff;\">\r\n<div class=\"td-all-devices\" style=\"box-sizing: border-box; display: table; margin-left: auto; margin-right: auto;\">\r\n<div id=\"2304x728x90x446x_ADSLOT1\" style=\"box-sizing: border-box;\"></div>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; color: #222222; background-color: #ffffff;\">The first runner-up is Thandar Soe while Zan Htate Htar was named as the second runner-up. May Mon and Thet Htar Khin completed the Top 5.</p>\r\n<p style=\"box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; color: #222222; background-color: #ffffff;\">&nbsp;</p>\r\n<p><img class=\"images\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://127.0.0.1:8000/uploads/news-image\\102\\mw23myanmar2.jpeg\" width=\"456\" height=\"684\" /></p>', '2023-11-12 06:40:23', '2023-11-12 06:40:23'),
(32, 52, '<p><span style=\"color: #222222; font-family: Verdana, Geneva, sans-serif; font-size: 15px; background-color: #ffffff;\">Nikoline Uhrenholt was crowned Sunday night, August 27</span><span style=\"box-sizing: border-box; font-size: 11.25px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; color: #222222; font-family: Verdana, Geneva, sans-serif; background-color: #ffffff;\">th</span><span style=\"color: #222222; font-family: Verdana, Geneva, sans-serif; font-size: 15px; background-color: #ffffff;\">, at Cirkusbygningen in Copenhagen. It was mentioned by the Danish press that she will represent Denmark at Miss World pageant most probably in 2024 while some claim she will compete at Miss Universe 2023. Still, a confirmation is needed as the Miss Danmark organization also holds the Danish license for Miss Universe, Miss International and Miss Supranational.</span></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://eu-central.storage.cloudconvert.com/tasks/5aa677dc-6a5a-4373-b0d7-d9844365c8e6/20230828-001304-l-1920x1280we-1024x683.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&amp;X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&amp;X-Amz-Credential=cloudconvert-production%2F20231112%2Ffra%2Fs3%2Faws4_request&amp;X-Amz-Date=20231112T064301Z&amp;X-Amz-Expires=86400&amp;X-Amz-Signature=cee87a1e1a32d9595eddd2055c8c9dd9f3b9d12f19f3e90f37674d45b142125e&amp;X-Amz-SignedHeaders=host&amp;response-content-disposition=inline%3B%20filename%3D%2220230828-001304-l-1920x1280we-1024x683.png%22&amp;response-content-type=image%2Fpng&amp;x-id=GetObject\" width=\"567\" height=\"378\" /></p>\r\n<p style=\"box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; color: #222222; background-color: #ffffff;\">Nikoline Uhrenholt Hansen is a student at Copenhagen Business Academy taking up Marketing Economics. She is 20 years of age and she is from Valby.</p>\r\n<div class=\"wp-block-image\" style=\"box-sizing: border-box; color: #222222; font-family: Verdana, Geneva, sans-serif; font-size: 15px; background-color: #ffffff;\">&nbsp;</div>\r\n<p style=\"box-sizing: border-box; font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-top: 0px; margin-bottom: 26px; color: #222222; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">A total of 30 contestants vied for this year&rsquo;s Miss Danmark contest. The first runner-up was Fatmag&uuml;l Karabacak while the second runner-up was Naja Mathilde Rosing.</p>', '2023-11-12 06:43:46', '2023-11-21 07:58:30'),
(33, 53, '<p><span style=\"color: #222222; font-family: Verdana, Geneva, sans-serif; font-size: 15px; background-color: #ffffff;\">Sheynnis Palacios, a 23-year-old 5&rsquo;11&rdquo; tall, mass communication student and volleyball player from Managua, became her country&rsquo;s first-ever Miss Universe winner at the conclusion of a spectacular pageant held in El Salvador. She was crowned by the outgoing Miss Universe, R&rsquo;bonney Gabriel of the United States, after defeating 83 other contestants.</span></p>\r\n<p>&nbsp;</p>\r\n<p><img class=\"images\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://127.0.0.1:8000/uploads/news-image\\105\\missuniverse.jpeg\" width=\"622\" height=\"350\" /></p>\r\n<p style=\"text-align: center;\"><em>Miss Universe 2023 from Nicaragua</em></p>\r\n<p><span style=\"color: #222222; font-family: Verdana, Geneva, sans-serif; font-size: 15px; background-color: #ffffff;\">The Miss Universe 2023 pageant is for the history books as married women and women with children are allowed to compete for the first time. Furthermore, Erica Robin of Pakistan is the first Miss Universe contestant from her country and she became one of the 20 semifinalists. Meanwhile, Marina Machete of Portugal is the first transgender to make it to the semis of Miss Universe.</span></p>\r\n<p><span style=\"color: #222222; font-family: Verdana, Geneva, sans-serif; font-size: 15px; background-color: #ffffff;\">Anntonia Porsild of Thailand was named as the first runner-up while Moraya Wilson of Australia was the second runner-up. Camila Avella of Colombia and Karla Guilf&uacute; of Puerto Rico made it to the Top 5. Miss El Salvador Isabella Garcia-Manzo, Miss Peru Camila Escribens, Miss Philippines Michelle Dee, Miss Spain Athenea Perez and Miss Venezuela Diana Silva made it to the Top 10 before being eliminated.</span></p>', '2023-11-21 12:31:08', '2023-11-21 12:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `audio_post`
--

CREATE TABLE `audio_post` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `audio_content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_in_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_in_home_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `show_in_menu`, `show_in_home_page`, `color`, `lang_id`, `created_at`, `updated_at`) VALUES
(2, 'Miss World', 'gaming', '1', '1', '#2bc3a9', 1, '2023-03-23 08:22:10', '2023-10-10 12:54:11'),
(6, 'Miss Universe', 'miss-universe', '1', '0', NULL, 1, '2023-09-03 02:44:22', '2023-11-21 08:53:46'),
(7, 'Miss International', 'miss-international', '1', '1', NULL, 1, '2023-09-03 02:44:40', '2023-09-03 02:44:40'),
(8, 'Miss Supranational', 'miss-supranational', '1', '1', NULL, 1, '2023-09-03 02:44:58', '2023-09-03 02:44:58'),
(9, 'Miss Grand', 'miss-grand', '1', '1', NULL, 1, '2023-09-03 02:45:10', '2023-09-03 02:45:10'),
(10, 'Miss Earth', 'miss-earth', '1', '1', NULL, 1, '2023-09-03 02:45:27', '2023-09-03 02:45:27'),
(11, 'Nam Vương', 'nam-v-ng', '1', '1', NULL, 6, '2023-10-27 06:48:32', '2023-11-11 12:40:39'),
(12, 'Vietnam', 'vietnam', '1', '1', NULL, 1, '2023-11-11 12:42:38', '2023-11-11 12:42:38'),
(13, 'Mister', 'mister', '1', '1', NULL, 1, '2023-11-11 12:42:54', '2023-11-11 12:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(46, 'Loan', 'nj@gmail.com', 'Thaland nailed it', 1, 56, NULL, '2023-11-22 03:22:32', '2023-11-22 03:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `emoji`
--

CREATE TABLE `emoji` (
  `id` bigint UNSIGNED NOT NULL,
  `emoji` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `uuid` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `message` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(12, 1, 6, NULL, 'comment/ZpAQz1gj5nbcEm8rwK9nRtOCyVHzoih4hcfLgwKp.jpg', 1, NULL, NULL, '2023-11-02 12:24:49', '2023-11-02 12:24:49'),
(13, 1, 6, 'Hello', 'comment/R34t1nrL2fpNaZjb4joz7vCPFoH07UBGqu9jITfi.jpg', 1, NULL, NULL, '2023-11-02 12:25:09', '2023-11-02 12:25:09'),
(14, 16, 8, 'abc', NULL, 16, NULL, NULL, '2023-11-03 00:37:59', '2023-11-03 00:37:59'),
(15, 16, 9, 'Cũng tiếc nhưng top 3 xứng đáng quá', 'comment/mVXaAm4gCROQF2TxrdW3VdwogGrXeu3rMmKOJmCJ.jpg', 16, NULL, NULL, '2023-11-21 13:56:24', '2023-11-21 13:56:24');

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
(1, 1, 14, 1, 1, NULL, NULL, '2023-11-03 00:38:13', '2023-11-03 00:38:13'),
(2, 17, 15, 1, 17, NULL, '2023-12-02 04:09:16', '2023-12-02 04:09:03', '2023-12-02 04:09:16'),
(3, 17, 15, 1, 17, NULL, NULL, '2023-12-02 04:09:17', '2023-12-02 04:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `forum_files`
--

CREATE TABLE `forum_files` (
  `id` bigint UNSIGNED NOT NULL,
  `forum_post_id` bigint UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(20, 6, 'forum/1698825001_Store Role To The Database By Ajax.png', 1, NULL, '2023-11-01 08:50:01', '2023-11-01 08:50:01'),
(21, 7, 'forum/1698928349_386516184_727318805852924_8400596946855720025_n.mp4', 2, NULL, '2023-11-02 12:32:29', '2023-11-02 12:32:29'),
(22, 8, 'forum/1698928423_1697803674_MargaritaGolubeva.jpg', 1, NULL, '2023-11-02 12:33:43', '2023-11-02 12:33:43'),
(23, 8, 'forum/1698928423_unnamed (5).png', 1, NULL, '2023-11-02 12:33:43', '2023-11-02 12:33:43'),
(24, 8, 'forum/1698928423_IMG_20231029_064316 (1).jpg', 1, NULL, '2023-11-02 12:33:43', '2023-11-02 12:33:43'),
(25, 8, 'forum/1698928423_395409287_2065140467162141_2102502962073184365_n.jpg', 1, NULL, '2023-11-02 12:33:43', '2023-11-02 12:33:43'),
(26, 8, 'forum/1698928423_386516184_727318805852924_8400596946855720025_n.mp4', 2, NULL, '2023-11-02 12:33:43', '2023-11-02 12:33:43'),
(27, 9, 'forum/1700574654_quynh-hoa-1700357519676141841849.jpg', 1, NULL, '2023-11-21 13:50:54', '2023-11-21 13:50:54');

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
(1, 16, 8, 1, 16, NULL, NULL, '2023-11-03 00:38:00', '2023-11-03 00:38:00'),
(2, 1, 8, 1, 1, NULL, '2023-11-07 12:11:15', '2023-11-03 00:38:10', '2023-11-07 12:11:15'),
(3, 16, 9, 1, 16, NULL, NULL, '2023-11-21 13:56:13', '2023-11-21 13:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

CREATE TABLE `forum_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, 1, 'New Forum', 'new forum description', 1, 1, NULL, '2023-11-21 13:48:54', '2023-11-01 07:44:05', '2023-11-21 13:48:54'),
(2, 1, '2nd', '2nd description', 1, 1, NULL, '2023-11-21 13:48:48', '2023-11-01 08:05:18', '2023-11-21 13:48:48'),
(3, 1, '3nd post', '3nd post', 1, 1, NULL, '2023-11-21 13:48:52', '2023-11-01 08:06:01', '2023-11-21 13:48:52'),
(4, 1, '2 photo', '2 photo', 1, 1, NULL, '2023-11-21 13:48:41', '2023-11-01 08:06:56', '2023-11-21 13:48:41'),
(5, 1, 'sdfs', 'fsdf', 1, 1, NULL, '2023-11-21 13:48:37', '2023-11-01 08:22:29', '2023-11-21 13:48:37'),
(6, 1, 'dddddddd', 'dddddddddd', 1, 1, NULL, '2023-11-21 13:48:32', '2023-11-01 08:50:01', '2023-11-21 13:48:32'),
(7, 1, 'anc', 'aaa', 1, 1, NULL, '2023-11-21 13:48:30', '2023-11-02 12:32:29', '2023-11-21 13:48:30'),
(8, 1, 'tesst', 'abc', 1, 1, NULL, '2023-11-21 13:48:27', '2023-11-02 12:33:43', '2023-11-21 13:48:27'),
(9, 1, 'Bùi Quỳnh Hoa out top', 'Bùi Quỳnh Hoa out top 20 MU 2023 rồi cả nhà ơi', 1, 1, NULL, NULL, '2023-11-21 13:50:54', '2023-11-21 13:50:58'),
(10, 16, 'Test forum', 'abc', 0, 16, NULL, NULL, '2023-11-22 03:29:18', '2023-11-22 03:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `f_b_posts`
--

CREATE TABLE `f_b_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` int DEFAULT NULL,
  `width` int DEFAULT NULL,
  `post_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_b_posts`
--

INSERT INTO `f_b_posts` (`id`, `message`, `created_time`, `link`, `image`, `height`, `width`, `post_id`, `active_status`, `created_at`, `updated_at`) VALUES
(1, 'Hoa hậu Bella Vũ trong buổi họp báo Hoa hậu Lụa Di Sản Việt Nam 2024 tổ chức vào hôm nay', '2023-12-04 03:38:07', 'https://www.facebook.com/photo.php?fbid=2078549969154524&set=gm.1052876325940739&type=3', 'https://scontent.fsgn2-11.fna.fbcdn.net/v/t39.30808-6/403195863_2078550009154520_6540210377702161392_n.jpg?stp=dst-jpg_p720x720&_nc_cat=105&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGQeXUmrVURAK8IYQUP63MzXDqIDvE_hGxcOogO8T-EbBSajX_DT3kzZGHyDppZ5ySwcSos3X8M4Z8NbzJNuLAP&_nc_ohc=JkeWyh1oTiYAX-P1SzS&_nc_ht=scontent.fsgn2-11.fna&edm=AFuVL-cEAAAA&oh=00_AfBwN2RP_VVgD0IPVyYFemfzcLNJxSoyGvIir_5AkvCUsA&oe=6560F992', 720, 720, '223637925531254_1052876325940739', 0, '2023-11-21 14:03:39', '2023-12-04 04:38:07'),
(2, 'Chúng mình cùng xem cao thủ Tarot dự đoán kết quả của Bùi Quỳnh Hoa cho chung kết Miss Universe 2023 vào sáng mai nhé. Top 20 không khó đâu nè ❤', '2023-12-04 03:38:08', 'https://www.facebook.com/photo.php?fbid=2077642979245223&set=gm.1051942712700767&type=3', 'https://scontent.fsgn2-7.fna.fbcdn.net/v/t39.30808-6/404028135_2077643025911885_381940921458035282_n.jpg?stp=dst-jpg_p720x720&_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHsO5Gi-zVz-hXbyq2iknPZyF9bXYBKuVnIX1tdgEq5WRXNm0qIAFRGbyDCWyJ_WXQlVULZaHhkj6gPB3CVcyzJ&_nc_ohc=haw8bGUwlc4AX9IDFVy&_nc_ht=scontent.fsgn2-7.fna&edm=AFuVL-cEAAAA&oh=00_AfCy8UEen8aqBpwftUvgdEa3lzL-pXmGZ7t4fLfMohg9VQ&oe=6562A5A9', 1083, 720, '223637925531254_1051942712700767', 0, '2023-11-21 14:03:39', '2023-12-04 04:38:08'),
(3, 'Bạn chấm Bùi Quỳnh Hoa được mấy điểm trình diễn Swimsuit?', '2023-12-04 03:38:10', 'https://www.facebook.com/photo.php?fbid=2075583162784538&set=gm.1049845349577170&type=3', 'https://scontent.fsgn2-3.fna.fbcdn.net/v/t39.30808-6/400921937_2075583196117868_4597814900790222778_n.jpg?stp=dst-jpg_p720x720&_nc_cat=107&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFr82N3JIGgV8Wab89qjM5NtXz584z5Wo61fPnzjPlajpkLW7PjYjmKjefvKXDKf2Qe9yTykeNzXmsKzLRIWtBV&_nc_ohc=tboBsqGoJqcAX-SCPkl&_nc_ht=scontent.fsgn2-3.fna&edm=AFuVL-cEAAAA&oh=00_AfC5hK-DOrXWgLIQkkBZNGGgOJxBIFuMMxiL4fn_37wf9w&oe=6562075B', 720, 720, '223637925531254_1049845349577170', 0, '2023-11-21 14:03:39', '2023-12-04 04:38:10'),
(4, 'Dì Pui - giám đốc quốc gia Miss Universe Thailand bình luận năn nỉ fan đừng đi so sánh Anntonia Porsild với đương kim Miss Universe nữa', '2023-12-04 03:37:50', 'https://www.facebook.com/photo.php?fbid=2084704871872367&set=gm.1058733985354973&type=3', 'https://scontent.fsgn2-8.fna.fbcdn.net/v/t39.30808-6/406922799_2084704928539028_5875892026144475261_n.jpg?stp=dst-jpg_p720x720&_nc_cat=102&ccb=1-7&_nc_sid=c42490&_nc_eui2=AeEWFiyG8VpQj5v495XXh3zyhqiJshiAF4-GqImyGIAXj4uXTKuLvZcYtXQpQEJ_N2smeicJp6BY0tywsnYO6wiZ&_nc_ohc=C4MDGw3RnV4AX98u_TR&_nc_ht=scontent.fsgn2-8.fna&edm=AFuVL-cEAAAA&oh=00_AfB_Hmf9m7SOUAOkSjAVNpNYv_8TttN0hTTOvJFZA3mGEw&oe=656F5600', 877, 720, '223637925531254_1058733985354973', 0, '2023-12-02 04:32:19', '2023-12-04 04:37:50'),
(5, '***KẾT QUẢ CHÍNH THỨC MISS UNIVERSE 2023***\n\n**👑 Miss Universe**: Nicaragua \n\n**First Runner-up**: Thailand \n\n**Second Runner-up**: Australia \n\n**Top 5:**\n\nColombia \n\nPuerto Rico \n\n**Top 10:**\n\nPhilippines \n\nEl Salvador \n\nVenezuela \n\nSpain \n\nPeru \n\n**Top 20:**\n\nCameroon\n\nChile\n\nIndia \n\nJamaica\n\nNamibia \n\nNepal \n\nPakistan \n\nPortugal \n\nSouth Africa \n\nUSA \n\n**✨ Best National Costume** — Philippines\n\n**✨ Miss Congeniality** — Spain\n\n**✨ Spirit of Carnival Award** — Philippines\n\n**✨ Popular Vote**  — Philippines \n\n**✨ Voice of Change — Gold Finalists**: Angola, Philippines, Puerto Rico\n\n**✨ Voice of Change — Silver Finalists**: Brazil, Chile, Lebano, Singapore, South Africa, Ukraine, Zimbabwe \n\n**Vietnam: unplace at all**', '2023-12-04 03:37:58', 'https://www.facebook.com/photo.php?fbid=2083538351989019&set=gm.1057655328796172&type=3', 'https://scontent.fsgn2-9.fna.fbcdn.net/v/t39.30808-6/405226068_2083538348655686_1897236885920536602_n.jpg?stp=dst-jpg_p720x720&_nc_cat=106&ccb=1-7&_nc_sid=c42490&_nc_eui2=AeGLP0yXU9uLOVlCJlCPm3-tnNbme6v7pGmc1uZ7q_ukabYt91cmpmtJYg4GkrWrLsB4bIySCI03c1jk_r77i9Cl&_nc_ohc=0U0Os4Mc8kAAX81qtO8&_nc_ht=scontent.fsgn2-9.fna&edm=AFuVL-cEAAAA&oh=00_AfCIvUtnFZYcDm7S5RGL0oLqGBV7AOkLEr7CUSdrVwKBOA&oe=656FFE1E', 720, 1082, '223637925531254_1057655328796172', 0, '2023-12-02 04:32:19', '2023-12-04 04:37:58'),
(6, 'Uống nước cùng Anntonia Porsild, cơ mà cái chai hình dáng quen quen 🤗', '2023-12-04 03:38:05', 'https://www.facebook.com/photo.php?fbid=2084155488593972&set=gm.1058214475406924&type=3', 'https://scontent.fsgn2-9.fna.fbcdn.net/v/t39.30808-6/406894274_2084155511927303_1555386449183479701_n.jpg?stp=dst-jpg_p720x720&_nc_cat=103&ccb=1-7&_nc_sid=c42490&_nc_eui2=AeFSQfiGdmZfDp6GmVpIRxadQ3wAi-NBW-ZDfACL40Fb5rSrhDeKVRLx90qgS7NwTR7YK9VwOG-hrC4w7-0_AZ3q&_nc_ohc=2rL2LV0aKS8AX_xAZMU&_nc_ht=scontent.fsgn2-9.fna&edm=AFuVL-cEAAAA&oh=00_AfDp2v19WfF7XLKkJgtXjzFiknSnVDy4NkS_97qqI-4zIA&oe=656F3C12', 908, 720, '223637925531254_1058214475406924', 0, '2023-12-02 04:32:19', '2023-12-04 04:38:05'),
(7, '', '2023-12-03 00:57:34', 'https://www.facebook.com/photo.php?fbid=1811102352684238&set=gm.2228802380785130&type=3', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/405417778_1811102349350905_8154861347636335226_n.jpg?stp=dst-jpg_p720x720&_nc_cat=108&ccb=1-7&_nc_sid=c42490&_nc_eui2=AeHZIGSkutL_W-SrcL3zWFtq5UxEdeRJ4TzlTER15EnhPLTiBPenPeQaSWK-E9Xjw7p_H33s5YNmH1hBsVI2Iy2k&_nc_ohc=crVV4RHGsD8AX-yYpoT&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfA-GoYJb-AdU4EBo1H6pdbWEQOlTDNUQ2SmFeeCNULDUQ&oe=65729176', 720, 959, '2199166670415368_2228802380785130', 0, '2023-12-04 04:47:28', '2023-12-04 04:48:18'),
(8, 'Nature short video', '2023-10-15 23:29:56', 'https://www.facebook.com/groups/2199166670415368/permalink/2199673093698059/', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t15.5256-10/393258371_988138075808167_7588848946976330951_n.jpg?stp=dst-jpg_s720x720&_nc_cat=111&ccb=1-7&_nc_sid=1a7029&_nc_eui2=AeHz73SXg2pvoNExN52zzNtSOzgpNCz9YDU7OCk0LP1gNbWfyMpmP0DssJ3A5BkBVITvem604Xd1ywiz18qoTpjN&_nc_ohc=j4iaPSIGnYwAX918h4b&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfASoPs9WKJLjBwMtnPK4pW23PtFFuLy8VpYrFoXe8wrGw&oe=6572809C', 405, 720, '2199166670415368_2199673093698059', 1, '2023-12-04 04:47:28', '2023-12-04 04:48:18'),
(9, 'A wonderful flower :)', '2023-10-15 11:03:23', 'https://www.facebook.com/photo.php?fbid=1783329682128172&set=gm.2199337503731618&type=3', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/391563888_1783329662128174_3032407312012374847_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=c42490&_nc_eui2=AeFM7xULgo9KCNVomTyqUGg3O6Ydh9TvJY07ph2H1O8ljakuuZe0SQUAaDE6QQsmNbcgZY69GcpSSFdDV5Xzpf5_&_nc_ohc=pJ86joX6TxQAX8GEkl9&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfCn3NDOC3RRvFodWZRS54kSu3AXf29dvgpX8BFSyMteIg&oe=65719B2F', 400, 400, '2199166670415368_2199337503731618', 1, '2023-12-04 04:47:28', '2023-12-04 04:48:18'),
(10, 'Opps', '2023-10-15 05:31:38', 'https://www.facebook.com/photo.php?fbid=1783130438814763&set=gm.2199166983748670&type=3', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/391565361_1783130428814764_3913798935915535593_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=c42490&_nc_eui2=AeHAcdCEhcIXcElQrlqxnRhxT5kjQVkRWn1PmSNBWRFafdjSSBgOvuHMyv5_rJYxtHSC1ElUZyOcT1ABXTe0SZT0&_nc_ohc=ccJjDWnOSmcAX9ixsZi&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfBqG6uwGHrWsNoTHHz8UKmv8Us-4BcTPxFmvhvSrltXLg&oe=657324B6', 300, 300, '2199166670415368_2199166983748670', 1, '2023-12-04 04:47:28', '2023-12-04 04:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `f_b_post_commands`
--

CREATE TABLE `f_b_post_commands` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_b_post_commands`
--

INSERT INTO `f_b_post_commands` (`id`, `post_id`, `comment`, `created_time`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dì Beo', '2023-11-21 01:44:33', '1052876815940690', '2023-11-21 14:03:39', '2023-11-21 14:09:59'),
(2, 1, 'Sến', '2023-11-21 01:44:46', '1052877039274001', '2023-11-21 14:03:39', '2023-11-21 14:09:59'),
(3, 1, 'Dì beo đoán Hoa zô top5 \nRồi top5 dữ chưa', '2023-11-21 01:45:15', '1052877612607277', '2023-11-21 14:03:39', '2023-11-21 14:09:59'),
(4, 2, 'Cao thủ này quá dữ, lên ☝️', '2023-11-19 09:31:02', '1051943076034064', '2023-11-21 14:03:39', '2023-11-21 14:09:59'),
(5, 2, '“Top 20 không khó” 🥲', '2023-11-19 09:31:05', '1051943102700728', '2023-11-21 14:03:39', '2023-11-21 14:09:59'),
(6, 2, 'top20 k khó nha', '2023-11-19 09:31:22', '1051943216034050', '2023-11-21 14:03:39', '2023-11-21 14:09:59'),
(7, 3, 'mất nết rê', '2023-11-16 02:09:31', '1049845542910484', '2023-11-21 14:03:39', '2023-11-21 14:09:59'),
(8, 3, 'Sao không có 1₫', '2023-11-16 02:09:33', '1049845569577148', '2023-11-21 14:03:39', '2023-11-21 14:09:59'),
(9, 3, 'Hoa xứng đáng dc 9 điểm. 9/100', '2023-11-16 02:10:03', '1049845789577126', '2023-11-21 14:03:39', '2023-11-21 14:09:59'),
(10, 4, 'Bởi ta nói fan nước nào cũng có mấy thành phần toxic như nhau, mấy má Thái cũng vậy, đại diện nước mấy má hông đăng quang MU xong chê Nicaragua như gì, ủng hộ thì ủng hộ nhưng cái gì cũng phải văn minh. T có theo dõi anh kia trên instagram xong đăng story chê nhan sắc Nicaragua t unfollow liền, cái nết gì mà ngộ L. Tự để Ann tỏa sáng và thành công tự khắc trong lòng mỗi người sẽ có câu trả lời. Còn chị Nicaragua cho dù có bị thất sủng thì chức vụ vẫn cao hơn ngươi', '2023-12-01 20:07:05', '1058735358688169', '2023-12-02 04:32:19', '2023-12-02 04:32:19'),
(11, 4, 'Klq nhưng mà ko biết cuộc thi Miss Nicaragua có mùa sau ko vì bà ND bị trục xuất rồi hôm thứ 5 chính quyền còn tới lục xét nhà bả nữa', '2023-12-01 20:10:06', '1058736472021391', '2023-12-02 04:32:19', '2023-12-02 04:32:19'),
(12, 4, 'Đúng là như vậy đó, tự nhiên ss chi z, tới giờ vẫn còn so khi mà ct và kq đã hạ màn từ lâu, cả 2 miss đều xuất chúng và xứng đáng, danh hiệu chỉ là 1 phần nhỏ thôi, thích cả2 miss này top2 năm nay cực kì tuyệt vời, iu cả 2 vì tất cả họ đều là chiến binh vì sự cố gắng từ lúc chuẩn bị cho đến sự hoàn thành để cuộc thi trọn vẹn', '2023-12-01 20:11:23', '1058736935354678', '2023-12-02 04:32:19', '2023-12-02 04:32:19'),
(13, 5, 'Philippines giải dữ', '2023-11-29 21:19:40', '1057655595462812', '2023-12-02 04:32:19', '2023-12-02 04:32:19'),
(14, 5, 'Sao VN kh vớt được cái chi lun zị…', '2023-11-29 21:19:44', '1057655648796140', '2023-12-02 04:32:19', '2023-12-02 04:32:19'),
(15, 5, 'Tại sao lại tàn ác với quỳnh bông quá z?😂', '2023-11-29 21:20:39', '1057655945462777', '2023-12-02 04:32:19', '2023-12-02 04:32:19'),
(16, 6, 'Hình thù ngộ nghĩnh nhỉ🥰', '2023-11-30 21:56:21', '1058214668740238', '2023-12-02 04:32:19', '2023-12-02 04:32:19'),
(17, 6, ':)))', '2023-11-30 21:56:30', '1058214752073563', '2023-12-02 04:32:19', '2023-12-02 04:32:19'),
(18, 6, 'Anntonia Porsild cầm cái mà chị em gr này gất iu', '2023-11-30 21:56:41', '1058214818740223', '2023-12-02 04:32:19', '2023-12-02 04:32:19'),
(19, 8, 'Test post for facebook graph api', '2023-10-15 23:31:12', '2199673457031356', '2023-12-04 04:47:28', '2023-12-04 04:48:18'),
(20, 8, 'A wonderful nature', '2023-10-15 23:31:51', '2199673740364661', '2023-12-04 04:47:28', '2023-12-04 04:48:18'),
(21, 8, 'nice nature', '2023-10-15 23:32:38', '2199674240364611', '2023-12-04 04:47:28', '2023-12-04 04:48:18'),
(22, 10, 'Test group for data test', '2023-10-15 08:23:52', '2199254543739914', '2023-12-04 04:47:28', '2023-12-04 04:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_post`
--

CREATE TABLE `gallery_post` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `gallery_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_description` text COLLATE utf8mb4_unicode_ci,
  `gallery_content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_post`
--

INSERT INTO `gallery_post` (`id`, `post_id`, `gallery_title`, `image_description`, `gallery_content`, `created_at`, `updated_at`) VALUES
(15, 55, 'Thailand', NULL, '<p>Thailand is the first</p>\r\n<p>She wears a beautiful gown</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img class=\"images\" src=\"http://127.0.0.1:8000/uploads/news-image\\121\\Thailand-05-min.jpg\" /></p>', '2023-11-21 13:00:27', '2023-11-21 13:20:09'),
(16, 55, 'Australia', NULL, '<p>Australia is the second</p>\r\n<p><img class=\"images\" src=\"http://127.0.0.1:8000/uploads/news-image\\122\\Australia-02-min.jpg\" /></p>', '2023-11-21 13:00:27', '2023-11-21 13:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `mail_library` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_port` int NOT NULL,
  `mail_host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verification` int NOT NULL,
  `contact_messages` int DEFAULT NULL,
  `contact_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `model_type` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `generated_conversions` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
(23, 'App\\Models\\Post', 30, 'a5c6352f-9b60-4193-89fc-e49b27c48d07', 'post image', '27315_5567727746576777_8234382907137681774_n', '27315_5567727746576777_8234382907137681774_n.jpg', 'image/jpeg', 'public', 'public', 200769, '[]', '[]', '[]', '[]', 1, '2023-09-03 03:49:36', '2023-09-03 03:49:36'),
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
(48, 'App\\Models\\AdSpaces', 8, '875f2e72-87ca-49d0-8141-f5c51fa1c02b', 'post image', 'pdetail', 'pdetail.png', 'image/png', 'public', 'public', 171308, '[]', '[]', '[]', '[]', 1, '2023-09-19 13:14:55', '2023-09-19 13:14:55'),
(61, 'App\\Models\\Post', 39, 'f5b7f1c8-e76e-4a62-81e9-8c44c9cbc89e', 'post image', 'heranswerjpg', 'heranswerjpg.jpg', 'image/jpeg', 'public', 'public', 232963, '[]', '[]', '[]', '[]', 1, '2023-10-14 15:49:47', '2023-10-14 15:49:47'),
(66, 'App\\Models\\PostGallery', 11, 'aadaa133-fe6a-4920-87bb-94655f27cf72', 'post_gallery_images', 'LOGO25 (2)', 'LOGO25-(2).png', 'image/png', 'public', 'public', 5875901, '[]', '[]', '[]', '[]', 1, '2023-11-07 12:29:54', '2023-11-07 12:29:54'),
(67, 'App\\Models\\Post', 47, '72d5b8c2-d9e4-4c41-b980-6de9e9704ef1', 'post image', '83c56bc4-9482-4a4f-8fb0-2a9e157d3afc', '83c56bc4-9482-4a4f-8fb0-2a9e157d3afc.png', 'image/png', 'public', 'public', 12148, '[]', '[]', '[]', '[]', 1, '2023-11-07 12:33:42', '2023-11-07 12:33:42'),
(68, 'App\\Models\\PostSortList', 7, '54587b2b-4f8f-4c19-856a-0c66f03489e3', 'post_sort_list_images', 'Thêm tiêu đề (2)', 'Thêm-tiêu-đề-(2).png', 'image/png', 'public', 'public', 767293, '[]', '[]', '[]', '[]', 1, '2023-11-07 12:34:41', '2023-11-07 12:34:41'),
(69, 'App\\Models\\PostGallery', 12, '430d5db6-d031-4898-bb01-2bf2b7e87a40', 'post_gallery_images', '83c56bc4-9482-4a4f-8fb0-2a9e157d3afc', '83c56bc4-9482-4a4f-8fb0-2a9e157d3afc.png', 'image/png', 'public', 'public', 12148, '[]', '[]', '[]', '[]', 1, '2023-11-07 12:36:08', '2023-11-07 12:36:08'),
(71, 'App\\Models\\AdSpaces', 1, '9bdc6f7e-6521-45c2-9422-12db585da387', 'post image', 'header1', 'header1.png', 'image/png', 'public', 'public', 512163, '[]', '[]', '[]', '[]', 1, '2023-11-09 04:12:02', '2023-11-09 04:12:02'),
(74, 'App\\Models\\AdSpaces', 4, 'a24c2067-3f6b-4e0d-a8e3-82e1633d2281', 'post image', 'footer', 'footer.png', 'image/png', 'public', 'public', 187397, '[]', '[]', '[]', '[]', 1, '2023-11-09 06:39:20', '2023-11-09 06:39:20'),
(75, 'App\\Models\\AdSpaces', 5, 'df43632b-4eeb-4ee3-901a-c34e3fa0979b', 'post image', 'footer1', 'footer1.png', 'image/png', 'public', 'public', 134294, '[]', '[]', '[]', '[]', 1, '2023-11-09 06:39:20', '2023-11-09 06:39:20'),
(80, 'App\\Models\\AdSpaces', 6, '3fd572a1-11c9-4a4f-9c82-404ac5fb6a7d', 'post image', 'top', 'top.jpg', 'image/jpeg', 'public', 'public', 311168, '[]', '[]', '[]', '[]', 1, '2023-11-09 06:57:21', '2023-11-09 06:57:21'),
(81, 'App\\Models\\AdSpaces', 7, 'c376ccec-6b54-4b60-ab5e-44b78a735d6c', 'post image', 'top2', 'top2.jpg', 'image/jpeg', 'public', 'public', 128586, '[]', '[]', '[]', '[]', 1, '2023-11-09 06:57:21', '2023-11-09 06:57:21'),
(82, 'App\\Models\\AdSpaces', 2, 'd859ad27-35cf-4456-b7c5-262362165f76', 'post image', 'top2', 'top2.png', 'image/png', 'public', 'public', 262426, '[]', '[]', '[]', '[]', 1, '2023-11-09 07:01:43', '2023-11-09 07:01:43'),
(83, 'App\\Models\\AdSpaces', 3, '623c46dc-c940-4fed-9108-fc55dd24abbe', 'post image', 'top3', 'top3.png', 'image/png', 'public', 'public', 143333, '[]', '[]', '[]', '[]', 1, '2023-11-09 07:01:43', '2023-11-09 07:01:43'),
(84, 'App\\Models\\AdSpaces', 9, 'c8b06983-8655-4af8-9841-1e31430c1f9f', 'post image', 'footer', 'footer.png', 'image/png', 'public', 'public', 187397, '[]', '[]', '[]', '[]', 1, '2023-11-09 07:05:53', '2023-11-09 07:05:53'),
(85, 'App\\Models\\AdSpaces', 10, '5126f579-1083-4d4a-8b3a-e26b6bbe2964', 'post image', 'footer1', 'footer1.png', 'image/png', 'public', 'public', 134294, '[]', '[]', '[]', '[]', 1, '2023-11-09 07:05:53', '2023-11-09 07:05:53'),
(86, 'App\\Models\\AdSpaces', 15, 'a57a7a34-6363-4ab4-af1f-c7fdb4016d09', 'post image', 'TREND1', 'TREND1.png', 'image/png', 'public', 'public', 81410, '[]', '[]', '[]', '[]', 1, '2023-11-09 07:20:42', '2023-11-09 07:20:42'),
(87, 'App\\Models\\AdSpaces', 16, '2c9b021f-5369-4831-aaf9-ca14a187da06', 'post image', 'TREDN2', 'TREDN2.png', 'image/png', 'public', 'public', 88764, '[]', '[]', '[]', '[]', 1, '2023-11-09 07:20:42', '2023-11-09 07:20:42'),
(88, 'App\\Models\\AdSpaces', 11, '77b6aafb-8e23-441b-95ce-792cc74bd387', 'post image', 'TREND1', 'TREND1.png', 'image/png', 'public', 'public', 81410, '[]', '[]', '[]', '[]', 1, '2023-11-09 07:21:10', '2023-11-09 07:21:10'),
(89, 'App\\Models\\AdSpaces', 12, 'c5474c85-9d41-4e82-bae9-ace2ba3eb79b', 'post image', 'TREDN2', 'TREDN2.png', 'image/png', 'public', 'public', 88764, '[]', '[]', '[]', '[]', 1, '2023-11-09 07:21:10', '2023-11-09 07:21:10'),
(90, 'App\\Models\\AdSpaces', 17, '259fc679-4256-4842-9ddc-f1c1cbe36db9', 'post image', 'PO', 'PO.png', 'image/png', 'public', 'public', 142040, '[]', '[]', '[]', '[]', 1, '2023-11-09 07:24:13', '2023-11-09 07:24:13'),
(91, 'App\\Models\\AdSpaces', 18, '05e1c08c-6aa9-4c60-b2fb-d8186e95c385', 'post image', 'PO2', 'PO2.jpg', 'image/jpeg', 'public', 'public', 93799, '[]', '[]', '[]', '[]', 1, '2023-11-09 07:24:13', '2023-11-09 07:24:13'),
(92, 'App\\Models\\AdSpaces', 13, '9dffa119-5ccc-41ae-a477-1087868abb98', 'post image', 'PO', 'PO.png', 'image/png', 'public', 'public', 142040, '[]', '[]', '[]', '[]', 1, '2023-11-09 07:24:36', '2023-11-09 07:24:36'),
(93, 'App\\Models\\AdSpaces', 14, '4efa27cf-42b8-4560-8161-0af861d5d6a2', 'post image', 'PO2', 'PO2.jpg', 'image/jpeg', 'public', 'public', 93799, '[]', '[]', '[]', '[]', 1, '2023-11-09 07:24:36', '2023-11-09 07:24:36'),
(94, 'App\\Models\\AdSpaces', 19, '43d631e9-08f1-40c3-90e3-d0d284776ec4', 'post image', 're', 're.png', 'image/png', 'public', 'public', 107169, '[]', '[]', '[]', '[]', 1, '2023-11-09 07:28:11', '2023-11-09 07:28:11'),
(95, 'App\\Models\\AdSpaces', 20, '37c325c0-1c03-49b7-926b-0c637e6245fe', 'post image', 're1', 're1.png', 'image/png', 'public', 'public', 129720, '[]', '[]', '[]', '[]', 1, '2023-11-09 07:28:11', '2023-11-09 07:28:11'),
(97, 'App\\Models\\Post', 48, '69e2cca2-a6e9-41c2-96c3-e873104012b4', 'post image', 'deccanhe', 'deccanhe.png', 'image/png', 'public', 'public', 624025, '[]', '[]', '[]', '[]', 1, '2023-11-11 13:21:32', '2023-11-11 13:21:32'),
(98, 'App\\Models\\PostVideo', 2, '66d9faf9-e8f6-45c3-8449-667ccd4e7b82', 'post_video_thumb', '911ad5045c3f8a61d32e (1)', '911ad5045c3f8a61d32e-(1).jpg', 'image/jpeg', 'public', 'public', 1142290, '[]', '[]', '[]', '[]', 1, '2023-11-12 06:29:48', '2023-11-12 06:29:48'),
(99, 'App\\Models\\PostVideo', 2, '84674eef-b76d-4888-8ffd-98dbfd627284', 'post_video', '400617207_352432580790720_4429751811539056575_n', '400617207_352432580790720_4429751811539056575_n.mp4', 'video/mp4', 'public', 'public', 24389639, '[]', '[]', '[]', '[]', 2, '2023-11-12 06:29:48', '2023-11-12 06:29:48'),
(100, 'App\\Models\\User', 1, 'dc2bcb46-2f2b-4719-9b0b-2a9cb16d2070', 'news-image', 'mw23usa1', 'mw23usa1.jpeg', 'image/jpeg', 'public', 'public', 197163, '[]', '[]', '[]', '[]', 17, '2023-11-12 06:36:18', '2023-11-12 06:36:18'),
(101, 'App\\Models\\Post', 50, '01d2aa95-e45f-430e-a1aa-1247bd48d090', 'post image', 'mw23usa1', 'mw23usa1.jpeg', 'image/jpeg', 'public', 'public', 197163, '[]', '[]', '[]', '[]', 1, '2023-11-12 06:37:14', '2023-11-12 06:37:14'),
(102, 'App\\Models\\User', 1, 'cda1d7dc-c37a-40aa-b56f-efbf2bcdf660', 'news-image', 'mw23myanmar2', 'mw23myanmar2.jpeg', 'image/jpeg', 'public', 'public', 177035, '[]', '[]', '[]', '[]', 18, '2023-11-12 06:39:55', '2023-11-12 06:39:55'),
(103, 'App\\Models\\Post', 51, '856ddddc-f14a-4aca-9163-28a184dc597d', 'post image', 'mw23myanmar2', 'mw23myanmar2.jpeg', 'image/jpeg', 'public', 'public', 177035, '[]', '[]', '[]', '[]', 1, '2023-11-12 06:40:23', '2023-11-12 06:40:23'),
(104, 'App\\Models\\Post', 52, '92617eb7-3996-440c-aa91-14918203bbf6', 'post image', '20230828-001304-l-1920x1280we-1024x683', '20230828-001304-l-1920x1280we-1024x683.png', 'image/png', 'public', 'public', 1326538, '[]', '[]', '[]', '[]', 1, '2023-11-12 06:43:46', '2023-11-12 06:43:46'),
(105, 'App\\Models\\User', 1, '068f5f0d-ea28-48f7-a758-812ede541384', 'news-image', 'missuniverse', 'missuniverse.jpeg', 'image/jpeg', 'public', 'public', 225994, '[]', '[]', '[]', '[]', 19, '2023-11-21 12:29:35', '2023-11-21 12:29:35'),
(106, 'App\\Models\\Post', 53, '78322480-8475-4f87-a76c-e9394d9a6d47', 'post image', 'missuniverse', 'missuniverse.jpeg', 'image/jpeg', 'public', 'public', 225994, '[]', '[]', '[]', '[]', 1, '2023-11-21 12:31:08', '2023-11-21 12:31:08'),
(108, 'App\\Models\\PostGallery', 13, '2a5d5b8d-9aa3-4f80-851a-2fd946e44eb7', 'post_gallery_images', 'Australia-02-min', 'Australia-02-min.jpg', 'image/jpeg', 'public', 'public', 738348, '[]', '[]', '[]', '[]', 1, '2023-11-21 12:45:49', '2023-11-21 12:45:49'),
(109, 'App\\Models\\PostGallery', 14, '0aea39a1-be50-469d-b3bb-8788ffea26c7', 'post_gallery_images', 'Australia-03 (1)-min', 'Australia-03-(1)-min.jpg', 'image/jpeg', 'public', 'public', 713266, '[]', '[]', '[]', '[]', 1, '2023-11-21 12:45:49', '2023-11-21 12:45:49'),
(115, 'App\\Models\\Post', 55, 'aafd5eb9-a572-4ccd-85d4-5967a5311df1', 'post image', 'miss-universe-evening-gowns-2023', 'miss-universe-evening-gowns-2023.jpg', 'image/jpeg', 'public', 'public', 193818, '[]', '[]', '[]', '[]', 1, '2023-11-21 13:00:27', '2023-11-21 13:00:27'),
(116, 'App\\Models\\PostGallery', 15, '7bb1953e-d52f-40ed-a547-85ffe7d95ab0', 'post_gallery_images', 'Group-06-min', 'Group-06-min.jpg', 'image/jpeg', 'public', 'public', 1338296, '[]', '[]', '[]', '[]', 1, '2023-11-21 13:02:05', '2023-11-21 13:02:05'),
(117, 'App\\Models\\PostGallery', 16, '6304311d-2e12-4651-bd19-e3b860e7a8bf', 'post_gallery_images', 'Group-07-min', 'Group-07-min.jpg', 'image/jpeg', 'public', 'public', 1597033, '[]', '[]', '[]', '[]', 1, '2023-11-21 13:02:05', '2023-11-21 13:02:05'),
(120, 'App\\Models\\User', 1, 'f40da91d-dbf6-438c-8afc-c6b961c6ae95', 'news-image', 'Thailand-02 (1)-min', 'Thailand-02-(1)-min.jpg', 'image/jpeg', 'public', 'public', 953222, '[]', '[]', '[]', '[]', 20, '2023-11-21 13:16:00', '2023-11-21 13:16:00'),
(121, 'App\\Models\\User', 1, 'f5c24e07-5a80-4094-85e1-57055ca719d7', 'news-image', 'Thailand-05-min', 'Thailand-05-min.jpg', 'image/jpeg', 'public', 'public', 880313, '[]', '[]', '[]', '[]', 21, '2023-11-21 13:16:06', '2023-11-21 13:16:06'),
(122, 'App\\Models\\User', 1, '4f58e928-5d02-4fdc-816f-b180fa05132c', 'news-image', 'Australia-02-min', 'Australia-02-min.jpg', 'image/jpeg', 'public', 'public', 738348, '[]', '[]', '[]', '[]', 22, '2023-11-21 13:16:26', '2023-11-21 13:16:26'),
(123, 'App\\Models\\User', 1, 'a37af945-7a67-48f3-84ec-9203d9b1aeff', 'news-image', 'Australia-03 (1)-min', 'Australia-03-(1)-min.jpg', 'image/jpeg', 'public', 'public', 713266, '[]', '[]', '[]', '[]', 23, '2023-11-21 13:16:31', '2023-11-21 13:16:31'),
(124, 'App\\Models\\Post', 56, 'ca25f221-ee1a-4f26-8a58-f1c410fcdfdd', 'post image', 'BEN_1400-min', 'BEN_1400-min.jpg', 'image/jpeg', 'public', 'public', 1159604, '[]', '[]', '[]', '[]', 1, '2023-11-21 13:40:05', '2023-11-21 13:40:05'),
(125, 'App\\Models\\PostSortList', 9, '5dd04066-317a-4afd-adc1-a30a41ea3689', 'post_sort_list_images', 'BEN_1408-min', 'BEN_1408-min.jpg', 'image/jpeg', 'public', 'public', 1213448, '[]', '[]', '[]', '[]', 1, '2023-11-21 13:40:05', '2023-11-21 13:40:05'),
(126, 'App\\Models\\PostSortList', 10, '00773083-eb3e-4435-a809-7beb6213038e', 'post_sort_list_images', 'BEN_1423-min', 'BEN_1423-min.jpg', 'image/jpeg', 'public', 'public', 1159519, '[]', '[]', '[]', '[]', 1, '2023-11-21 13:40:05', '2023-11-21 13:40:05'),
(127, 'App\\Models\\PostSortList', 11, '2a61d5d0-ca8e-4e12-a774-033a53afecc6', 'post_sort_list_images', 'BEN_1442-min', 'BEN_1442-min.jpg', 'image/jpeg', 'public', 'public', 1213376, '[]', '[]', '[]', '[]', 1, '2023-11-21 13:40:05', '2023-11-21 13:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `model_type` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(5, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(6, 'App\\Models\\User', 13),
(6, 'App\\Models\\User', 14),
(7, 'App\\Models\\User', 15),
(6, 'App\\Models\\User', 16),
(7, 'App\\Models\\User', 17);

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `id` bigint UNSIGNED NOT NULL,
  `navigationable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(2, 'App\\Models\\Category', 2, 3, NULL, '2023-03-23 08:22:10', '2023-11-11 12:48:05'),
(15, 'App\\Models\\Category', 6, 2, NULL, '2023-09-03 02:44:22', '2023-11-11 12:48:05'),
(16, 'App\\Models\\Category', 7, 5, NULL, '2023-09-03 02:44:40', '2023-11-11 12:48:05'),
(17, 'App\\Models\\Category', 8, 4, NULL, '2023-09-03 02:44:58', '2023-11-11 12:48:05'),
(18, 'App\\Models\\Category', 9, 6, NULL, '2023-09-03 02:45:10', '2023-11-11 12:48:05'),
(19, 'App\\Models\\Category', 10, 1, NULL, '2023-09-03 02:45:27', '2023-11-11 12:48:05'),
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
(42, 'App\\Models\\Category', 11, 10, NULL, '2023-10-27 06:48:32', '2023-10-27 06:48:32'),
(43, 'App\\Models\\Category', 12, 7, NULL, '2023-11-11 12:42:38', '2023-11-11 12:48:05'),
(44, 'App\\Models\\Category', 13, 8, NULL, '2023-11-11 12:42:54', '2023-11-11 12:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage_ad', 'Manage Ad', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(5, 'manage_categories', 'Manage Categories', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(6, 'manage_sub_categories', 'Manage Sub Categories', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(11, 'manage_settings', 'Manage Settings', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(12, 'manage_staff', 'Manage Staff', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(13, 'manage_roles_permission', 'Manage Roles Permission', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(14, 'manage_add_post', 'Manage Add Post ', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(15, 'manage_all_post', 'Manage All Post', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(18, 'manage_polls', 'Manage polls', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(22, 'manage_language', 'Manage Language', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(23, 'manage_navigation', 'Manage Navigation', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(26, 'manage_comment', 'Manage Comment', 'web', '2023-03-23 08:22:10', '2023-03-23 08:22:10'),
(28, 'manage_forum', 'Manage Forum', 'web', '2023-10-20 01:05:13', '2023-10-20 01:05:13'),
(29, 'dashboard', 'Dashboard', 'web', '2023-10-29 12:57:09', '2023-10-29 12:57:09'),
(32, 'fb_posts', 'Fb Post', 'web', '2023-10-29 13:09:49', '2023-10-29 13:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` bigint UNSIGNED NOT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `question` varchar(181) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option1` varchar(181) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option2` varchar(181) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option3` varchar(181) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option4` varchar(181) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option5` varchar(181) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option6` varchar(181) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option7` varchar(181) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option8` varchar(181) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option9` varchar(181) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option10` varchar(181) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poll_id` bigint UNSIGNED NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `breaking` tinyint(1) NOT NULL,
  `slider` tinyint(1) NOT NULL,
  `recommended` tinyint(1) NOT NULL,
  `show_on_headline` tinyint(1) NOT NULL,
  `show_registered_user` tinyint(1) NOT NULL,
  `optional_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_types` int NOT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `sub_category_id` bigint UNSIGNED DEFAULT NULL,
  `scheduled_post` int NOT NULL DEFAULT '0',
  `scheduled_post_time` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `rss_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(48, 'Miss World 2022 is Karolina Bielawska from Poland', 'miss-world-2022-is-karolina-bielawska-from-poland', 'The best thing about the telecast of the 70th Miss World contest was the winner´s announcement, by Julia Morley: Poland!', 'Miss World 2022, Miss World Poland, Karolina Bielawska', 1, 0, 0, 1, 0, 1, 0, NULL, 'Miss World 2022,Miss World Poland,Karolina Bielawska', 1, 1, 2, 12, 0, NULL, 1, NULL, 0, NULL, 1, '2023-11-11 13:21:32', '2023-11-12 06:15:25'),
(49, 'Exclusive interview with Miss Universe Thailand 2023', 'exclusive-interview-with-miss-universe-thailand-2023', 'Exclusive interview with Miss Universe Thailand 2023', 'Miss Universe 2023', 1, 0, 0, 1, 0, 1, 0, NULL, 'Miss Universe 2023', 6, 1, 6, 14, 0, NULL, 1, NULL, 0, NULL, 1, '2023-11-12 06:29:47', '2023-11-12 06:30:14'),
(50, 'Miss World America 2023 is Victoria DiSorbo of Tennessee', 'miss-world-america-2023-is-victoria-disorbo-of-tennessee', 'Victoria DiSorbo will represent the United States in the upcoming Miss World 2023 pageant which will be held in New Delhi, India.', 'Miss World American', 1, 0, 0, 1, 1, 1, 0, NULL, 'Miss World American', 1, 1, 2, 11, 0, NULL, 1, NULL, 0, NULL, 1, '2023-11-12 06:37:14', '2023-11-21 08:53:27'),
(51, 'Miss World Myanmar 2023 is Yoon Theint Theint Nway', 'miss-world-myanmar-2023-is-yoon-theint-theint-nway', 'Yoon Theint Theint Nway is 19 years of age and is from Pindaya. She will represent Myanmar at the Miss World 2023 pageant .', 'Miss World Myanmar', 1, 0, 0, 1, 1, 0, 0, NULL, 'Miss World Myanmar', 1, 1, 2, 11, 0, NULL, 1, NULL, 0, NULL, 1, '2023-11-12 06:40:23', '2023-11-21 08:53:24'),
(52, 'Johanne Grundt Hansen is Miss World Danmark 2023', 'johanne-grundt-hansen-is-miss-world-danmark-2023', 'Nikoline Uhrenholt Hansen was crowned Sunday night, August 27th, at Cirkusbygningen in Copenhagen.', 'Miss World Danmark 2023', 1, 0, 0, 0, 1, 1, 0, NULL, 'Miss World Danmark 2023', 1, 1, 2, 11, 0, NULL, 1, NULL, 0, NULL, 1, '2023-11-12 06:43:46', '2023-11-21 08:53:21'),
(53, 'Miss Universe 2023 is Sheynnis Palacios of Nicaragua', 'miss-universe-2023-is-sheynnis-palacios-of-nicaragua', 'Nicaragua was crowned by the outgoing Miss Universe, R’bonney Gabriel of the United States, after defeating 83 other contestants.', 'Miss Universe 2023, Nicaragua', 1, 0, 0, 0, 0, 0, 0, NULL, 'Miss Universe 2023,Nicaragua', 1, 1, 6, 14, 0, NULL, 1, NULL, 0, NULL, 1, '2023-11-21 12:31:08', '2023-11-21 12:31:45'),
(55, 'Top 10 Evening Gown - Miss Universe 2023', 'top-10-evening-gown-miss-universe-2023', 'Top 10 Miss Universe 2023 in Evening Gown Competition', 'Miss Universe 2023', 1, 0, 0, 0, 1, 1, 0, NULL, 'Miss Universe 2023', 2, 1, 6, 14, 0, NULL, 1, NULL, 0, NULL, 1, '2023-11-21 13:00:27', '2023-11-21 13:02:05'),
(56, 'Final Question - Miss Universe 2023', 'final-question-miss-universe-2023', 'The final question of Miss Universe 2023 was “If you could live one year in another woman’s shoes who would you choose and why?”.', 'Miss Universe 2023', 1, 0, 0, 1, 0, 1, 0, NULL, 'Miss Universe 2023', 3, 1, 6, 14, 0, NULL, 1, NULL, 0, NULL, 1, '2023-11-21 13:40:05', '2023-11-21 13:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `post_reactions`
--

CREATE TABLE `post_reactions` (
  `id` bigint UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emoji_id` int NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `guard_name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(18, 2),
(21, 2),
(22, 2),
(23, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(32, 2),
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
(15, 4),
(28, 5),
(1, 7),
(15, 7),
(18, 7),
(22, 7),
(26, 7),
(27, 7),
(28, 7),
(30, 7),
(31, 7);

-- --------------------------------------------------------

--
-- Table structure for table `rss_feeds`
--

CREATE TABLE `rss_feeds` (
  `id` bigint UNSIGNED NOT NULL,
  `feed_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feed_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(2, 'vnxpress', 'https://news.zing.vn/rss/giai-tri.rss', 100, 1, 2, 10, 1, 0, 1, 1, '2023-08-11 23:56:50', '2023-09-24 06:30:17'),
(4, 'Ariful', 'https://search.cnbc.com/rs/search/combinedcms/view.xml?partnerId=wrss01&id=100727362', 1, 1, 2, 11, 1, 1, 1, 0, '2023-10-30 12:08:44', '2023-10-30 12:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `seo_tools`
--

CREATE TABLE `seo_tools` (
  `id` bigint UNSIGNED NOT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_tools`
--

INSERT INTO `seo_tools` (`id`, `lang_id`, `site_title`, `home_title`, `site_description`, `keyword`, `google_analytics`, `created_at`, `updated_at`) VALUES
(1, 1, 'Thế Giới Hoa Hậu', 'Home', 'Pageantry News', 'Beauty Pageant World Website', '', '2023-03-23 08:22:10', '2023-03-23 08:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(14, 'facebook', '0', '2023-03-23 08:22:10', '2023-11-07 12:22:44'),
(15, 'twitter', '0', '2023-03-23 08:22:10', '2023-11-07 12:22:44'),
(16, 'linkedin', '0', '2023-03-23 08:22:10', '2023-11-07 12:22:44'),
(17, 'reddit', '0', '2023-03-23 08:22:10', '2023-11-07 12:22:44'),
(18, 'whatsapp', '0', '2023-03-23 08:22:10', '2023-11-07 12:22:44'),
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
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `sort_list_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_description` text COLLATE utf8mb4_unicode_ci,
  `sort_list_content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sort_list_post`
--

INSERT INTO `sort_list_post` (`id`, `post_id`, `sort_list_title`, `image_description`, `sort_list_content`, `created_at`, `updated_at`) VALUES
(9, 56, 'Thailand', NULL, '<p>The top 3 finalists were asked who they would choose if they could live one year in another&rsquo;s woman&rsquo;s shoes. To which Porsild replied, &ldquo;I would choose Malala Yousafzai because I know the struggles she had to deal with in order to get to where she is today.&rdquo;</p>\r\n<p>\"She (Malala) had to fight for women\'s education and fight for all women to be able to stand strong and be the change and lead by example. If I could choose anyone that would be her,\" the 27-year-old added.</p>', '2023-11-21 13:40:05', '2023-11-21 13:40:05'),
(10, 56, 'Australia', NULL, '<p>The Australian representative confessed that she would choose to be her mother, \"a strong woman who taught her to work, to be brave and to whom she will always be grateful\".</p>', '2023-11-21 13:40:05', '2023-11-21 13:40:05'),
(11, 56, 'Nicaragua', NULL, '<p>\"I would choose Mary Wollstonecraft (English philosopher and writer), because she was the first woman who broke ground for women\'s rights. I would do my best to make wage gaps the opportunity for many women to be able to work in any area that they can perform, because there is no limit for women.</p>', '2023-11-21 13:40:05', '2023-11-21 13:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_in_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `parent_category_id` bigint UNSIGNED NOT NULL,
  `lang_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `show_in_menu`, `parent_category_id`, `lang_id`, `created_at`, `updated_at`) VALUES
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
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `about_us` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `contact`, `dob`, `gender`, `status`, `language`, `dark_mode`, `email_verified_at`, `password`, `type`, `blood_group`, `remember_token`, `created_at`, `updated_at`, `about_us`) VALUES
(1, 'Super', 'Admin', 'admin@tghh.com', '1234567890', NULL, 1, 1, 'en', 0, '2023-03-23 08:22:10', '$2y$10$lFOWKa0Yp5VKaODtSTDsPu3Hf0AFEwFDdv4yDQG0a4CFHWGZx7meG', 1, NULL, NULL, '2023-03-23 08:22:10', '2023-12-01 12:58:39', NULL),
(2, 'Loan', 'Nguyen', 'mle.hau21@gmail.com', '', NULL, 0, 1, 'en', 0, '2023-09-02 13:04:11', '$2y$10$AUx2ToMDTS7kvmEKBuWKn.ANiypBF9CcZwdixFjSBdtKqLBi7ygx2', 2, NULL, NULL, '2023-09-02 12:43:32', '2023-09-02 13:08:55', NULL),
(4, 'Hau', 'Lê', 'hau@gmail.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$jxLlZkvMs3GX5C8W8Iw.QO5dkyZFQUN5KQIzTl3RJEwvV5LBPBud6', 2, NULL, NULL, '2023-09-02 13:48:12', '2023-09-02 13:48:12', NULL),
(5, 'Hau', 'Lê', 'hau1@gmail.com', '', NULL, 0, 0, 'en', 0, NULL, '$2y$10$3ml5dldhgSUF2CuF.mRDZOru.q4.20RkbgLDvuBs2J5n3BAHq3382', 2, NULL, NULL, '2023-09-06 11:06:59', '2023-11-20 14:23:02', NULL),
(6, 'test', '1', 'tess@gmail.com', '1', NULL, 1, 1, 'en', 0, NULL, '$2y$10$ij1svOQunlUnwL7WjUuatu/wOioACrwAPUMlwvu3Sc4CFdtbGW5nG', 2, NULL, NULL, '2023-10-20 12:04:40', '2023-10-20 13:23:17', NULL),
(7, 'test', '2', 'test2@gmail.com', '1', NULL, 1, 1, 'en', 0, NULL, '$2y$10$5PWVXoYLh.yyIT3hqss2bO.1zPD15x2.N23I0R8FXBhLv/2P3CZBC', 2, NULL, NULL, '2023-10-20 12:09:18', '2023-10-20 12:09:18', NULL),
(8, 'test', 'ba', 'test3@gmail.com', '123', NULL, 1, 0, 'en', 0, NULL, '$2y$10$BjZNixrtnf9HjEoFstvCYePao7iyDla2a89K7uAcBDm3TAeg6kyN6', 2, NULL, NULL, '2023-10-27 06:51:51', '2023-10-29 09:30:21', 'ssss'),
(9, 'kim', 'dung', 'dung@gmail.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$OUFuXxmaYJpa8NkSDWmNHuy4XxVw1PoFQ0DZdcRpZK6goRHIvnXhC', 2, NULL, NULL, '2023-10-27 06:54:46', '2023-10-27 06:54:46', NULL),
(10, 'Theodore', 'Avila', 'zyquladil@mailinator.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$..Fx.wgNH99vq3DopR3sYePkeGTS8Y92fr9p0ysfKoim551U48oE2', 2, NULL, NULL, '2023-10-29 13:43:18', '2023-10-29 13:43:18', NULL),
(11, 'Tanek', 'Hicks', 'zysohomu@mailinator.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$a8fofuvV9KKYmgB8UEMKheEQzCshjsn/IJ6m1fWOqxP4j9f0JuxQS', 2, NULL, NULL, '2023-10-29 13:44:47', '2023-10-29 13:44:47', NULL),
(12, 'Nehru', 'Daniels', 'foweb@mailinator.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$tjBuVwoqagRHlBladID0w.oHljE0v0YVuGzCfNwRpYKJC2Zm/tBm.', 2, NULL, NULL, '2023-10-29 13:45:32', '2023-10-29 13:45:32', NULL),
(13, 'Anjolie', 'Fitzgerald', 'nylumuve@mailinator.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$ddcirGwVV2z.4w7/a9Yoq.aU5Z35LzWDlYZUB4kaylINtzX7j7MyO', 2, NULL, NULL, '2023-10-29 13:49:05', '2023-10-29 13:49:05', NULL),
(14, 'Beatrice', 'Cline', 'supihi@mailinator.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$5JNQFQ/KyfRhSOuA1beRnecwjAthAfVrDrSzpEKuT4wmBB9QTvdPG', 2, NULL, NULL, '2023-10-29 13:50:17', '2023-10-29 13:50:17', NULL),
(15, 'Ariful', 'Sikder', 'arif@gmail.com', '', NULL, 0, 0, 'en', 0, NULL, '$2y$10$mVudeC7kD19Yhu22o05up.5hyC.jcpH1Ze8k9ka4uAhMkLgzbZw1a', 2, NULL, NULL, '2023-10-30 06:26:46', '2023-11-02 12:31:46', NULL),
(16, 'test', '1', 'test1@gmail.com', '', NULL, 0, 1, 'en', 0, NULL, '$2y$10$oH4b1YpDf6aExbnsX0a9WuRdDJh/dmV.a8tXKAg7qqLETKBrpj25W', 2, NULL, NULL, '2023-11-02 12:34:53', '2023-11-02 12:34:53', NULL),
(17, 'hau', '123', 'hau123@gmail.com', '123', NULL, 1, 1, 'en', 0, NULL, '$2y$10$NXzrQyQ/v/TYbzun5OgCguvpNDJOOzCZ.JHtt4RIz2COpggypwhJi', 2, NULL, NULL, '2023-12-02 03:55:24', '2023-12-02 03:55:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video_post`
--

CREATE TABLE `video_post` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `video_content` longtext COLLATE utf8mb4_unicode_ci,
  `thumbnail_image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_embed_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_post`
--

INSERT INTO `video_post` (`id`, `post_id`, `video_content`, `thumbnail_image_url`, `video_url`, `video_embed_code`, `created_at`, `updated_at`) VALUES
(2, 49, '<p>Today TheGioiHoaHau was arranged by Miss Universe Organization to have an exclusive interview with Miss Universe Thailand 2023 - Anntonia Porsild</p>', NULL, NULL, NULL, '2023-11-12 06:29:47', '2023-11-12 06:29:47');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `album_categories`
--
ALTER TABLE `album_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `analytics`
--
ALTER TABLE `analytics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `article_post`
--
ALTER TABLE `article_post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `audio_post`
--
ALTER TABLE `audio_post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `forum_comment_likes`
--
ALTER TABLE `forum_comment_likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forum_files`
--
ALTER TABLE `forum_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `forum_likes`
--
ALTER TABLE `forum_likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `f_b_posts`
--
ALTER TABLE `f_b_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `f_b_post_commands`
--
ALTER TABLE `f_b_post_commands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `gallery_post`
--
ALTER TABLE `gallery_post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `video_post`
--
ALTER TABLE `video_post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `gallery_post`
--
ALTER TABLE `gallery_post`
  ADD CONSTRAINT `gallery_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD CONSTRAINT `rss_feeds_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rss_feeds_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rss_feeds_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rss_feeds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
