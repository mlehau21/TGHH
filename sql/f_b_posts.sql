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
-- Table structure for table `f_b_posts`
--

CREATE TABLE `f_b_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` timestamp NOT NULL,
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
(1, 'Còn 10 ngày nữa là chung kết nhưng vé MGI 2023 vẫn còn trống rất nhiều, riêng khu A và khu CC đã full đỏ không phải do bán hết mà là BTC chừa riêng không bán', '2023-10-15 02:27:24', 'https://www.facebook.com/photo.php?fbid=2056563764686478&set=gm.1029947104900328&type=3', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/391718672_2056563761353145_2379385803927800805_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_ohc=hqeBaAs5_-YAX88dGv4&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfARIGlfvxFJEuo6W08yjbcvOB4Z0e7H-kU2tRnwISjQcw&oe=6531A1E5', 439, 607, '223637925531254_1029947104900328', 1, '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(2, '\"Vía Hoa hậu\"\nTân Miss Earth Vietnam 2023 là thí sinh của team Nguyên tố Lửa do Hoa Hậu Khánh Vân làm mentor', '2023-10-14 20:48:29', 'https://www.facebook.com/photo.php?fbid=2056414818034706&set=gm.1029777034917335&type=3', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/392819851_2056414861368035_114306542492606306_n.jpg?stp=dst-jpg_p720x720&_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_ohc=kLv1aUWTyk8AX_fEMIP&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfAJ4KuV9BQQTtzfPKLs2GsYN0-S-H_Ds3rLkblJxzOD8w&oe=6532E8C7', 720, 720, '223637925531254_1029777034917335', 1, '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(3, 'Bài viết của Anntonia đạt tương tác khủng nhất tại TGHH với hơn 13.000 lượt reaction, 73 lượt share và tiếp cận hơn 800.000 người người, có thể là bài viết tương tác cao nhất group thời gian gần đây\nMột cô gái Thái nhưng nhận được sự quan tâm lớn của khán giả Việt 🔥', '2023-10-12 21:45:35', 'https://www.facebook.com/photo.php?fbid=2055122381497283&set=gm.1028443771717328&type=3', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/387820011_2055122378163950_8225557849863790710_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_ohc=wT6zLgaAB1cAX-yN9o3&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfASdHWWOefVRhfjBXtaUtmly-nDjiY59iz0feCD4H41wA&oe=6531D2ED', 691, 571, '223637925531254_1028443771717328', 1, '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(4, 'Chứ Khoa muốn thế nào ⁉', '2023-10-12 02:37:00', 'https://www.facebook.com/photo.php?fbid=2054616118214576&set=gm.1027929248435447&type=3', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/387787815_2054616114881243_1663285756518791999_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=6kCqsKH60gsAX8-ciIE&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfAdNWZ9eEju9G5xTSyVPg6r2GZgQwK4H76SQvJ9591-jw&oe=65312670', 348, 1080, '223637925531254_1027929248435447', 1, '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(5, 'Miss Universe ra thông báo đang xem xét kết quả cuộc thi Miss Universe Vietnam 2023', '2023-10-03 00:04:56', 'https://www.facebook.com/photo.php?fbid=2049158518760336&set=gm.1022315875663451&type=3', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/386055164_2049158552093666_6770426914204001209_n.jpg?stp=dst-jpg_p720x720&_nc_cat=105&ccb=1-7&_nc_sid=5f2048&_nc_ohc=27yBiLFlWqUAX86YCJU&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfAqPaQXZq3T7KT438kL743l9hsURFrVF2CWMSXXmwe90g&oe=65317C81', 720, 720, '223637925531254_1022315875663451', 1, '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(6, 'Mentor Hà Thu lộng lẩy tại chung kết Miss Earth Vietnam 2023', '2023-10-14 07:08:32', 'https://www.facebook.com/photo.php?fbid=2056027928073395&set=gm.1029386668289705&type=3', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/392784831_2056027974740057_6312066402092662841_n.jpg?stp=dst-jpg_p720x720&_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=FGRMvJmeD7wAX_5FIdg&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfA2Vd04tNVSnBsk1a5vp9u1QX-b7aUTvnVa8qkT6B7JpA&oe=6531251A', 720, 720, '223637925531254_1029386668289705', 1, '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(7, 'Anntonia quay video cảm ơn các khán giả đã vote cho cô tại Miss Universe 2023, mấy hôm trước cũng làm hẳn video cám ơn fan Việt Nam.\nLịch sự quá ❤', '2023-10-14 01:57:46', 'https://www.facebook.com/groups/thegioihoahauofficial/permalink/1029230581638647/', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t15.5256-10/366295792_1012730233264223_4103780453033268033_n.jpg?stp=dst-jpg_s720x720&_nc_cat=107&ccb=1-7&_nc_sid=1a7029&_nc_ohc=z4QcMp42v6wAX_p47QJ&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfAuqWrjRs-_-dcDwj6-ZIE0mXlOtClXpwI_AvZ_Iuip4A&oe=65329C6E', 720, 405, '223637925531254_1029230581638647', 1, '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(8, 'Dự đoán Miss Universe 2023 của trang crownpulse vắng mặt đại diện của chúng ta', '2023-10-13 09:13:11', 'https://www.facebook.com/photo.php?fbid=2055447414798113&set=gm.1028794585015580&type=3', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/392738572_2055447458131442_247901765816184608_n.jpg?stp=dst-jpg_p720x720&_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_ohc=aXs8UHWMwCAAX_Qd5GK&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfBuX1_On-8RCzgOCJurqJ_YQwzdi9wKsxn5EbIr0dljcQ&oe=6532C363', 877, 720, '223637925531254_1028794585015580', 1, '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(9, 'Những chiếc sash cho Miss Universe 2023 đã sẵn sàn và khả năng cao hoa hậu cũng sẽ nằm trong nhóm này', '2023-10-13 22:19:43', 'https://www.facebook.com/photo.php?fbid=2055784558097732&set=gm.1029125564982482&type=3', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/392766580_2055784611431060_7083917570966564990_n.jpg?stp=dst-jpg_p720x720&_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_ohc=pTgUhlcRjKsAX8P6bhX&_nc_oc=AQliDeW4JHRiyBwy97cCLGVDunC5ODVFGX-SEk49Fdc5CmUBZ4JLrNXS6DyDbbYaJAU&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfCWieIz6QFrpee1_uu5D3yp0-T9pKTLhMq6EKQTz-rBYQ&oe=6530FE33', 1028, 720, '223637925531254_1029125564982482', 1, '2023-10-16 09:59:27', '2023-10-16 10:56:01'),
(10, 'Á hậu Thạch Thu Thảo tại Chung kết Miss Earth Vietnam 2023\n\nẢnh tác nghiệp bởi TGHH', '2023-10-14 06:29:35', 'https://www.facebook.com/photo.php?fbid=2056004441409077&set=gm.1029363908291981&type=3', 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/392807991_2056004501409071_4077127215735201117_n.jpg?stp=dst-jpg_p720x720&_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=MhZnVsU9JHoAX83aPbC&_nc_ht=scontent.fdac31-1.fna&edm=AFuVL-cEAAAA&oh=00_AfCErUek0mmic-T9yQUpTYW1vxYqZbUdc9lIPzNyq-ui3g&oe=6531810C', 720, 720, '223637925531254_1029363908291981', 1, '2023-10-16 09:59:27', '2023-10-16 10:56:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `f_b_posts`
--
ALTER TABLE `f_b_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `f_b_posts`
--
ALTER TABLE `f_b_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
