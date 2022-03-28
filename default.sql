-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2022 at 10:49 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `engwheels`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `photo`, `email`, `name`, `password`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin@admin.com', 'ahmed yahya', '$2y$10$r4APdO9rlyZV7TnTiATH/uca1gJMmIRkmegvafKL8FfvS51ppwCGq', '2022-02-10 17:33:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `title`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(3, 'Amos Leblanc', 'feboqiquq@mailinator.com', 'Natus ipsam qui modi', '+1 (782) 342-8904', 'Reiciendis ducimus', '2022-02-10 19:57:36', '2022-02-10 19:57:36'),
(4, 'Camille Sutton', 'werodaq@mailinator.com', 'Est animi velit ob', '+1 (451) 559-2344', 'Quam quo qui eaque v', '2022-02-10 19:58:27', '2022-02-10 19:58:27'),
(5, 'Wynter Rojas', 'qapah@mailinator.com', 'Dolore eos labore e', '+1 (839) 474-8347', 'Sit et eiusmod nihil', '2022-02-10 19:58:51', '2022-02-10 19:58:51'),
(6, 'Demetria Graves', 'vagekuj@mailinator.com', 'Hic sequi nisi dolor', '+1 (476) 833-8093', 'Labore quis mollit v', '2022-02-10 20:00:16', '2022-02-10 20:00:16'),
(7, 'Asher Yates', 'duzig@mailinator.com', 'Possimus proident', '+1 (583) 967-8368', 'Quos officia labore', '2022-02-10 20:06:41', '2022-02-10 20:06:41'),
(8, 'Hall Calderon', 'dotywi@mailinator.com', 'Saepe velit necessi', '+1 (388) 312-6771', 'Amet sunt adipisici', '2022-02-10 20:25:39', '2022-02-10 20:25:39'),
(9, 'Yuli Burt', 'kegirata@mailinator.com', 'Neque anim voluptas', '+1 (979) 846-3596', 'Alias velit cumque m', '2022-02-10 20:26:13', '2022-02-10 20:26:13'),
(10, 'Benjamin Galloway', 'kigefexo@mailinator.com', 'Perferendis libero n', '+1 (236) 663-3322', 'Eiusmod aut excepteu', '2022-02-10 20:26:41', '2022-02-10 20:26:41'),
(11, 'Vladimir Gilliam', 'bevyxu@mailinator.com', 'Laborum dolores qui', '+1 (885) 944-8491', 'Occaecat ut qui reic', '2022-02-10 20:26:57', '2022-02-10 20:26:57'),
(12, 'Vladimir Gilliam', 'bevyxu@mailinator.com', 'Laborum dolores qui', '+1 (885) 944-8491', 'Occaecat ut qui reic', '2022-02-10 20:27:26', '2022-02-10 20:27:26'),
(13, 'Vladimir Gilliam', 'bevyxu@mailinator.com', 'Laborum dolores qui', '+1 (885) 944-8491', 'Occaecat ut qui reic', '2022-02-10 20:27:46', '2022-02-10 20:27:46'),
(14, 'Declan Mcbride', 'pygynifij@mailinator.com', 'Et elit quo eu maio', '+1 (635) 724-5581', 'Ut dolor proident a', '2022-02-10 20:28:13', '2022-02-10 20:28:13'),
(15, 'Leigh Reyes', 'xikuxy@mailinator.com', 'Quis qui blanditiis', '+1 (912) 847-5926', 'Ut do dolor nesciunt', '2022-02-10 20:30:49', '2022-02-10 20:30:49'),
(16, 'Susan Stone', 'veqage@mailinator.com', 'Ipsum reprehenderit', '+1 (867) 685-7667', 'Cillum saepe magni e', '2022-02-10 20:31:05', '2022-02-10 20:31:05'),
(17, 'Knox Wells', 'volaqybok@mailinator.com', 'Excepturi qui quia v', '+1 (118) 183-6811', 'Modi illo quia labor', '2022-02-10 20:31:30', '2022-02-10 20:31:30'),
(18, 'Jillian Hale', 'kumelygo@mailinator.com', 'Cumque cupidatat mol', '+1 (728) 554-7032', 'Suscipit non dolore', '2022-02-10 20:32:22', '2022-02-10 20:32:22'),
(19, 'Clarke Andrews', 'wuvehy@mailinator.com', 'Quasi vero aut bland', '+1 (133) 245-5612', 'Illum repellendus', '2022-02-10 20:32:39', '2022-02-10 20:32:39'),
(22, 'Ferdinand Hill', 'jovymudecy@mailinator.com', 'Dolor harum officia', '+1 (393) 559-5113', 'Aut et quis quisquam', '2022-02-10 20:33:57', '2022-02-10 20:33:57'),
(25, 'Stone Terry', 'rapysoti@mailinator.com', 'Dolor commodo aut qu', '+1 (914) 635-6428', 'Commodi sed magna ex', '2022-02-10 20:42:18', '2022-02-10 20:42:18'),
(26, 'Urielle Morton', 'wefuxupar@mailinator.com', 'Mollit quod facere c', '+1 (427) 205-9376', 'Voluptas sit quia re', '2022-02-10 20:42:35', '2022-02-10 20:42:35'),
(27, 'Urielle Morton', 'wefuxupar@mailinator.com', 'Mollit quod facere c', '+1 (427) 205-9376', 'Voluptas sit quia re', '2022-02-10 20:42:45', '2022-02-10 20:42:45'),
(28, 'Urielle Morton', 'wefuxupar@mailinator.com', 'Mollit quod facere c', '+1 (427) 205-9376', 'Voluptas sit quia re', '2022-02-10 20:42:47', '2022-02-10 20:42:47'),
(29, 'Urielle Morton', 'wefuxupar@mailinator.com', 'Mollit quod facere c', '+1 (427) 205-9376', 'Voluptas sit quia re', '2022-02-10 20:42:50', '2022-02-10 20:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_02_10_210652_create_contact_us_table', 1),
(2, '2022_02_11_160038_create_admins_table', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
