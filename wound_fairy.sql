-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 12:23 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wound_fairy`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `image`, `title_ar`, `title_en`, `details_ar`, `details_en`, `created_at`, `updated_at`) VALUES
(1, 'storage/uploads/about/about.png', 'حول الجرح الجنية', 'about wound Fairy', 'سيقوم الأطباء بزيارة المرضى الذين يعيشون في المناطق النائية فقط. سيقومون أيضًا بزيارة المرضى المسنين أو المعاقين ولا يمكنهم الخروج من المنزل بسهولة ....\r\nيقوم الأطباء الآن بزيارة المرضى في منازلهم. هذه طريقة للمرضى لتوفير الوقت والمال ، لأنهم لا يضطرون إلى زيارة مكتب الطبيب أو المستشفى.\r\n\r\nسيقوم الأطباء بزيارة المرضى الذين يعيشون في المناطق النائية فقط. سيقومون أيضًا بزيارة المرضى المسنين أو المعاقين ولا يمكنهم الخروج من المنزل بسهولة.', 'Doctors will only visit patients who live in remote areas. They will also visit patients who are elderly or disabled and can\'t get out of the house easily....\r\nDoctors are now visiting patients at their homes. This is a way for patients to save time and money, because they don\'t have to visit the doctor’s office or hospital.\r\n\r\nDoctors will only visit patients who live in remote areas. They will also visit patients who are elderly or disabled and can\'t get out of the house easily.', NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `image`, `date`, `title_ar`, `title_en`, `details_ar`, `details_en`, `created_at`, `updated_at`) VALUES
(1, 'storage/uploads/blogs/blog.png', 1647271740, 'أخبار طبية', 'Medical News', 'سيقوم الأطباء بزيارة المرضى الذين يعيشون في المناطق النائية فقط. سيقومون أيضًا بزيارة المرضى المسنين أو المعاقين ولا يمكنهم الخروج من المنزل بسهولة ....\r\nيقوم الأطباء الآن بزيارة المرضى في منازلهم. هذه طريقة للمرضى لتوفير الوقت والمال ، لأنهم لا يضطرون إلى زيارة مكتب الطبيب أو المستشفى.\r\n\r\nسيقوم الأطباء بزيارة المرضى الذين يعيشون في المناطق النائية فقط. سيقومون أيضًا بزيارة المرضى المسنين أو المعاقين ولا يمكنهم الخروج من المنزل بسهولة.', 'Doctors will only visit patients who live in remote areas. They will also visit patients who are elderly or disabled and can\'t get out of the house easily....\r\nDoctors are now visiting patients at their homes. This is a way for patients to save time and money, because they don\'t have to visit the doctor’s office or hospital.\r\n\r\nDoctors will only visit patients who live in remote areas. They will also visit patients who are elderly or disabled and can\'t get out of the house easily.', NULL, NULL),
(2, 'storage/uploads/blogs/blog.png', NULL, 'أخبار طبية', 'Medical News', 'سيقوم الأطباء بزيارة المرضى الذين يعيشون في المناطق النائية فقط. سيقومون أيضًا بزيارة المرضى المسنين أو المعاقين ولا يمكنهم الخروج من المنزل بسهولة ....\r\nيقوم الأطباء الآن بزيارة المرضى في منازلهم. هذه طريقة للمرضى لتوفير الوقت والمال ، لأنهم لا يضطرون إلى زيارة مكتب الطبيب أو المستشفى.\r\n\r\nسيقوم الأطباء بزيارة المرضى الذين يعيشون في المناطق النائية فقط. سيقومون أيضًا بزيارة المرضى المسنين أو المعاقين ولا يمكنهم الخروج من المنزل بسهولة.', 'Doctors will only visit patients who live in remote areas. They will also visit patients who are elderly or disabled and can\'t get out of the house easily....\r\nDoctors are now visiting patients at their homes. This is a way for patients to save time and money, because they don\'t have to visit the doctor’s office or hospital.\r\n\r\nDoctors will only visit patients who live in remote areas. They will also visit patients who are elderly or disabled and can\'t get out of the house easily.', NULL, NULL),
(3, 'storage/uploads/blogs/blog.png', NULL, 'أخبار طبية', 'Medical News', 'سيقوم الأطباء بزيارة المرضى الذين يعيشون في المناطق النائية فقط. سيقومون أيضًا بزيارة المرضى المسنين أو المعاقين ولا يمكنهم الخروج من المنزل بسهولة ....\r\nيقوم الأطباء الآن بزيارة المرضى في منازلهم. هذه طريقة للمرضى لتوفير الوقت والمال ، لأنهم لا يضطرون إلى زيارة مكتب الطبيب أو المستشفى.\r\n\r\nسيقوم الأطباء بزيارة المرضى الذين يعيشون في المناطق النائية فقط. سيقومون أيضًا بزيارة المرضى المسنين أو المعاقين ولا يمكنهم الخروج من المنزل بسهولة.', 'Doctors will only visit patients who live in remote areas. They will also visit patients who are elderly or disabled and can\'t get out of the house easily....\r\nDoctors are now visiting patients at their homes. This is a way for patients to save time and money, because they don\'t have to visit the doctor’s office or hospital.\r\n\r\nDoctors will only visit patients who live in remote areas. They will also visit patients who are elderly or disabled and can\'t get out of the house easily.', NULL, NULL),
(4, 'storage/uploads/blogs/blog.png', NULL, 'أخبار طبية', 'Medical News', 'سيقوم الأطباء بزيارة المرضى الذين يعيشون في المناطق النائية فقط. سيقومون أيضًا بزيارة المرضى المسنين أو المعاقين ولا يمكنهم الخروج من المنزل بسهولة ....\r\nيقوم الأطباء الآن بزيارة المرضى في منازلهم. هذه طريقة للمرضى لتوفير الوقت والمال ، لأنهم لا يضطرون إلى زيارة مكتب الطبيب أو المستشفى.\r\n\r\nسيقوم الأطباء بزيارة المرضى الذين يعيشون في المناطق النائية فقط. سيقومون أيضًا بزيارة المرضى المسنين أو المعاقين ولا يمكنهم الخروج من المنزل بسهولة.', 'Doctors will only visit patients who live in remote areas. They will also visit patients who are elderly or disabled and can\'t get out of the house easily....\r\nDoctors are now visiting patients at their homes. This is a way for patients to save time and money, because they don\'t have to visit the doctor’s office or hospital.\r\n\r\nDoctors will only visit patients who live in remote areas. They will also visit patients who are elderly or disabled and can\'t get out of the house easily.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reservation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `from_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `to_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('image','text') COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `reservation_id`, `from_user_id`, `to_user_id`, `image`, `text`, `type`, `created_at`, `updated_at`) VALUES
(2, NULL, 1, NULL, NULL, 'اريد استشاره', 'text', '2022-03-15 03:05:17', NULL),
(3, NULL, NULL, 1, NULL, 'تفضل سيدى', 'text', NULL, NULL),
(5, NULL, NULL, NULL, '/storage/uploads/chat/RkJfSU1HXzE2MjkzNTYwMTUwMzEuanBn_1647335819.jpg', NULL, 'image', '2022-03-15 07:16:59', '2022-03-15 07:16:59'),
(6, NULL, NULL, NULL, '/storage/uploads/chat/RkJfSU1HXzE2MjkzNTYwMTUwMzEuanBn_1647335835.jpg', NULL, 'image', '2022-03-15 07:17:15', '2022-03-15 07:17:15'),
(7, NULL, 1, NULL, '/storage/uploads/chat/RkJfSU1HXzE2MjkzNTYwMTUwMzEuanBn_1647335864.jpg', NULL, 'image', '2022-03-15 07:17:44', '2022-03-15 07:17:44'),
(8, NULL, 1, NULL, NULL, 'اهلا ومرحبا بك', 'text', '2022-03-15 07:18:22', '2022-03-15 07:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `chat_data`
--

CREATE TABLE `chat_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complaint` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_paid` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `type` enum('visit','online') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_data`
--

INSERT INTO `chat_data` (`id`, `complaint`, `images`, `user_id`, `is_paid`, `type`, `created_at`, `updated_at`) VALUES
(1, 'come to visit me', '[\"\\/storage\\/uploads\\/ChatData\\/UmVjdGFuZ2xlIDU3OC5wbmc=_1647333744.png\",\"\\/storage\\/uploads\\/ChatData\\/UmVjdGFuZ2xlIDUwOSAoMSkucG5n_1647333744.png\",\"\\/storage\\/uploads\\/ChatData\\/UmVjdGFuZ2xlIDUwOS5wbmc=_1647333744.png\"]', NULL, 'no', 'online', '2022-03-15 06:42:24', '2022-03-15 06:42:24'),
(2, 'come to visit me', '[\"\\/storage\\/uploads\\/ChatData\\/UmVjdGFuZ2xlIDU3OC5wbmc=_1647333765.png\",\"\\/storage\\/uploads\\/ChatData\\/UmVjdGFuZ2xlIDUwOSAoMSkucG5n_1647333765.png\",\"\\/storage\\/uploads\\/ChatData\\/UmVjdGFuZ2xlIDUwOS5wbmc=_1647333765.png\"]', NULL, 'no', 'visit', '2022-03-15 06:42:45', '2022-03-15 06:42:45'),
(3, 'come to visit me', '[\"\\/storage\\/uploads\\/ChatData\\/UmVjdGFuZ2xlIDU3OC5wbmc=_1647333798.png\",\"\\/storage\\/uploads\\/ChatData\\/UmVjdGFuZ2xlIDUwOSAoMSkucG5n_1647333798.png\",\"\\/storage\\/uploads\\/ChatData\\/UmVjdGFuZ2xlIDUwOS5wbmc=_1647333798.png\"]', 1, 'no', 'visit', '2022-03-15 06:43:18', '2022-03-15 06:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'mohamed gamal', 'mohamed@mohamed.com', 'عنوان', 'رسالة', '2022-03-15 09:23:16', '2022-03-15 09:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE `hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `last_images`
--

CREATE TABLE `last_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2022_02_11_160038_create_admins_table', 1),
(3, '2022_03_02_121303_create_sliders_table', 1),
(4, '2022_03_03_081017_create_users_table', 1),
(5, '2022_03_03_081055_create_services_table', 1),
(6, '2022_03_03_081157_create_days_table', 1),
(7, '2022_03_03_081216_create_hours_table', 1),
(8, '2022_03_03_081235_create_about_us_table', 1),
(9, '2022_03_03_081244_create_blogs_table', 1),
(11, '2022_03_03_081427_create_last_images_table', 1),
(14, '2022_03_03_081959_create_chats_table', 1),
(15, '2022_03_03_082006_create_reservation_images_table', 1),
(16, '2022_03_03_082151_create_settings_table', 1),
(17, '2022_03_14_131428_create_phone_tokens_table', 2),
(18, '2022_03_03_081318_create_products_table', 3),
(19, '2022_03_14_143226_create_product_images_table', 4),
(20, '2022_03_03_081434_create_orders_table', 5),
(21, '2022_03_15_075204_create_online_consultations_table', 6),
(22, '2022_03_15_081432_create_chat_data_table', 7),
(24, '2022_03_03_081449_create_reservations_table', 8),
(25, '2022_03_15_105805_create_notifications_table', 9),
(26, '2022_02_10_210652_create_contact_us_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `text`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'رسالة جديدة', 'اهلا ومرحبا بكم', 1, '2022-03-15 09:04:50', '2022-03-15 08:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `online_consultations`
--

CREATE TABLE `online_consultations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('online','visit') COLLATE utf8mb4_unicode_ci DEFAULT 'online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_consultations`
--

INSERT INTO `online_consultations` (`id`, `image`, `title_ar`, `title_en`, `details_ar`, `details_en`, `type`, `created_at`, `updated_at`) VALUES
(1, 'storage/uploads/OnlineConsultation/Online Consultation.png', 'الاستشارة عبر الإنترنت', 'Online counseling', 'هناك العديد من الأسباب التي تجعل الناس يرغبون في استشارة طبيب عبر الإنترنت. قد يكون بسبب ضيق المسافة أو الوقت. قد يكون أيضًا بسبب تفضيل المريض للخصوصية أو الراحة.\r\n\r\nأصبحت الاستشارات عبر الإنترنت أكثر شيوعًا الآن ، حيث أصبح بإمكان الأطباء تقديم خدماتهم في بيئة افتراضية ، يمكن الوصول إليها من أي مكان وفي أي وقت.', 'There are many reasons why people would want to consult a doctor online. It might be because of the distance or time constraints. It might also be because of the patient\'s preference for privacy or for convenience.\r\n\r\nOnline consultations are now becoming more and more popular, as doctors are able to offer their services in a virtual environment, which is accessible from anywhere at any time.', 'online', NULL, NULL),
(2, 'storage/uploads/OnlineConsultation/Rectangle 521.png', 'تحديد زيارة منزلية', 'Determine a home visit\r\n', 'يقوم الأطباء الآن بزيارة المرضى في منازلهم. هذه طريقة للمرضى لتوفير الوقت والمال ، لأنهم لا يضطرون إلى زيارة مكتب الطبيب أو المستشفى.\r\n\r\nسيقوم الأطباء بزيارة المرضى الذين يعيشون في المناطق النائية فقط. سيقومون أيضًا بزيارة المرضى المسنين أو المعاقين ولا يمكنهم الخروج من المنزل بسهولة.', 'Doctors are now visiting patients at their homes. This is a way for patients to save time and money, because they don\'t have to visit the doctor’s office or hospital.\r\n\r\nDoctors will only visit patients who live in remote areas. They will also visit patients who are elderly or disabled and can\'t get out of the house easily.', 'visit', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double DEFAULT 0,
  `price` double DEFAULT 0,
  `total_price` double DEFAULT 0,
  `latitude` double DEFAULT 0,
  `longitude` double DEFAULT 0,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('new','accepted','refused','ended') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `amount`, `price`, `total_price`, `latitude`, `longitude`, `address`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 10, 90, 10.5, 5.5, 'القاهره', 'ملاحظه', 'new', '2022-03-14 14:02:51', '2022-03-15 08:57:27'),
(2, 1, 1, 3, 10, 30, 10.5, 5.5, 'القاهره', 'ملاحظه', 'new', '2022-03-14 14:02:51', '2022-03-14 14:02:51'),
(3, 1, 1, 3, 10, 30, 10.5, 5.5, 'القاهره', 'ملاحظه', 'refused', '2022-03-14 14:02:51', '2022-03-14 14:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `phone_tokens`
--

CREATE TABLE `phone_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('ios','android') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `price`, `title_ar`, `title_en`, `details_ar`, `details_en`, `created_at`, `updated_at`) VALUES
(1, 'storage/uploads/product/product.png', 10, 'سماعه', 'headphone', '<h2>الوصف</h2>', '<h2>disc</h2>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'storage/uploads/product/product2.png', 1, NULL, NULL),
(2, 'storage/uploads/product/product2.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complaint` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_time` bigint(20) DEFAULT NULL,
  `status` enum('new','accepted','refused','ended') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `total_price` double DEFAULT 0,
  `latitude` double DEFAULT 0,
  `longitude` double DEFAULT 0,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `complaint`, `images`, `service_id`, `user_id`, `date_time`, `status`, `total_price`, `latitude`, `longitude`, `address`, `created_at`, `updated_at`) VALUES
(12, 'كشف', '[\"storage\\/uploads\\/Reservation\\/T25saW5lIENvbnN1bHRhdGlvbi5wbmc=_1647341484.png\"]', 1, 1, 1647338100, 'new', 50, NULL, NULL, NULL, '2022-03-15 08:16:01', '2022-03-15 08:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title_ar`, `title_en`, `created_at`, `updated_at`) VALUES
(1, 'كشف باطنة', 'internal examination', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_price` double DEFAULT NULL,
  `home_visit_price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `terms`, `privacy`, `facebook`, `insta`, `twitter`, `linkedin`, `online_price`, `home_visit_price`, `created_at`, `updated_at`) VALUES
(1, 'الشروط والأحكام', 'الامان', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://twitter.com/', 'https://linkedin.com/', 50, 60, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `created_at`, `updated_at`) VALUES
(2, 'storage/uploads/slider/1.png', NULL, NULL),
(3, 'storage/uploads/slider/2.png', NULL, NULL),
(4, 'storage/uploads/slider/3.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone_code`, `phone`, `email`, `image`, `created_at`, `updated_at`) VALUES
(1, 'mohamed gamal', '+20', '1026638997', 'mohamed@gmail.com', 'storage/uploads/users/1647263010--MTY0NzI2MzAxMC1iVzlvWVcxbFpDQm5ZVzFoYkE9PQ==.png', '2022-03-14 11:03:30', '2022-03-14 11:12:05'),
(2, 'mohamed gamal', '+20', '1095081882', 'mohamed2@gmail.com', 'storage/uploads/users/1647263565--MTY0NzI2MzU2NS1iVzlvWVcxbFpDQm5ZVzFoYkE9PQ==.png', '2022-03-14 11:12:45', '2022-03-14 11:12:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_from_user_id_foreign` (`from_user_id`),
  ADD KEY `chats_to_user_id_foreign` (`to_user_id`),
  ADD KEY `chats_reservation_id_id_foreign` (`reservation_id`);

--
-- Indexes for table `chat_data`
--
ALTER TABLE `chat_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_data_user_id_foreign` (`user_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `last_images`
--
ALTER TABLE `last_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `online_consultations`
--
ALTER TABLE `online_consultations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_product_id_foreign` (`product_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `phone_tokens`
--
ALTER TABLE `phone_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phone_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_service_id_foreign` (`service_id`),
  ADD KEY `reservations_user_id_foreign` (`user_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chat_data`
--
ALTER TABLE `chat_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hours`
--
ALTER TABLE `hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `last_images`
--
ALTER TABLE `last_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `online_consultations`
--
ALTER TABLE `online_consultations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `phone_tokens`
--
ALTER TABLE `phone_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chats_reservation_id_id_foreign` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chats_to_user_id_foreign` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_data`
--
ALTER TABLE `chat_data`
  ADD CONSTRAINT `chat_data_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `phone_tokens`
--
ALTER TABLE `phone_tokens`
  ADD CONSTRAINT `phone_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
