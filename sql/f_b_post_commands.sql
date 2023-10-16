-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 16, 2023 at 10:17 AM
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
-- Table structure for table `f_b_post_commands`
--

CREATE TABLE `f_b_post_commands` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` timestamp NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_b_post_commands`
--

INSERT INTO `f_b_post_commands` (`id`, `post_id`, `comment`, `created_time`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Để đó dì Dung chơi mini game 🛠', '2023-10-15 02:32:36', '1029949281566777', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(2, 1, 'Bữa màu xám là ghế không bán sau đó chuyển qua màu đỏ cho xom :)))))', '2023-10-15 02:32:37', '1029949308233441', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(3, 1, 'sau bán kết là bán hết vé chứ gì', '2023-10-15 02:34:32', '1029950354900003', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(4, 2, 'vía hoa hậu còn lại hông linh lắm', '2023-10-14 20:49:28', '1029777464917292', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(5, 2, 'Top 2 team chịiiiiiii💕💐💐', '2023-10-14 20:49:48', '1029777608250611', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(6, 2, '🔥🔥🔥🔥', '2023-10-14 20:50:36', '1029778088250563', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(7, 3, 'Lỗi tại ai? Do chuỵ đúng hem', '2023-10-12 21:46:40', '1028444398383932', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(8, 3, 'Đỉnh ghê', '2023-10-12 21:46:57', '1028444488383923', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(9, 3, 'Nhờ 1 cô gái Việt mà Anntonia đã nhận được sự ủng hộ từ fan Việt Nam', '2023-10-12 21:47:36', '1028444791717226', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(10, 4, 'Khoa muốn đi = đầu, lết bằng L', '2023-10-12 02:37:55', '1027929615102077', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(11, 4, 'Chủ nhà= làm chủ định luật vật lí🤣', '2023-10-12 02:38:20', '1027929785102060', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(12, 5, 'ơ kìa 🙄', '2023-10-03 00:05:25', '1022316082330097', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(13, 5, 'Ảduu', '2023-10-03 00:05:25', '1022316085663430', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(14, 5, 'Kkk', '2023-10-03 00:05:28', '1022316112330094', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(15, 6, 'Bqh ra chưa mn em nhớ c ấy quá', '2023-10-14 07:10:00', '1029387561622949', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(16, 6, 'E nhớ chị Hoa quá', '2023-10-14 07:10:16', '1029387728289599', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(17, 7, '\"Các em đừng vội mừng, đêm CK mới biết ai hơn ai\" 💣💥', '2023-10-14 02:06:11', '1029234224971616', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(18, 7, 'hay quá chị iu ❤', '2023-10-14 02:07:31', '1029234871638218', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(19, 8, 'Chứ zô người nhục là em nha', '2023-10-13 09:13:38', '1028794845015554', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(20, 8, 'đừng làm c ấy quê mà', '2023-10-13 09:13:50', '1028794921682213', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(21, 8, 'Peru, USA cười khà khà', '2023-10-13 09:14:02', '1028795025015536', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(22, 9, 'Hoa hậu MU nằm đầu tiên luôn 🫶', '2023-10-13 22:21:12', '1029126274982411', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(23, 9, 'font chữ quê mùa', '2023-10-13 22:21:22', '1029126338315738', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(24, 9, 'Nằm đầu tiên luôn', '2023-10-13 22:22:45', '1029126874982351', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(25, 10, 'Nhìn bộ đồ chán quê thiệt chứ', '2023-10-14 06:29:56', '1029364088291963', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(26, 10, 'Ai hại chị', '2023-10-14 06:30:13', '1029364181625287', '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(27, 10, 'Xu ghê', '2023-10-14 06:31:05', '1029364571625248', '2023-10-16 09:59:27', '2023-10-16 10:56:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `f_b_post_commands`
--
ALTER TABLE `f_b_post_commands`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `f_b_post_commands`
--
ALTER TABLE `f_b_post_commands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
