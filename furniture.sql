-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 01, 2024 at 10:03 PM
-- Server version: 5.7.44-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furniture_efb_vn`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `json_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_super_admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `role`, `json_information`, `is_super_admin`, `status`, `remember_token`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Mạnh Supper', 'mcitwind@gmail.com', '$2y$10$1IT8.iwpx.s9JyY.7RZdFOwPHQt4gyMWLgIp0obcdvu/kveTJGFwi', 2, NULL, 1, 'active', NULL, NULL, NULL, '2021-09-24 08:48:18', '2024-07-01 13:49:25'),
(2, 'Test', 'test01@gmail.com', '$2y$10$otAzoxJLuXqIPxCvbymoPeWi5ev5JL62htTAQfbo/vbjDhm7cheZO', 1, NULL, 0, 'active', NULL, NULL, NULL, '2022-07-08 11:13:53', '2024-07-01 13:50:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_21_090133_create_admins_table', 1),
(5, '2021_09_29_090019_create_tb_options_table', 1),
(6, '2021_09_29_090048_create_tb_logs_table', 1),
(7, '2021_09_29_090107_create_tb_admin_menus_table', 1),
(8, '2021_09_29_090214_create_tb_modules_table', 1),
(9, '2021_09_29_090233_create_tb_module_functions_table', 1),
(10, '2021_09_29_090301_create_tb_roles_table', 1),
(11, '2021_09_29_090402_create_tb_menus_table', 1),
(12, '2021_09_29_090455_create_tb_blocks_table', 1),
(13, '2021_09_29_090509_create_tb_block_contents_table', 1),
(14, '2021_09_29_090709_create_tb_cms_taxonomys_table', 1),
(15, '2021_09_29_090743_create_tb_cms_posts_table', 1),
(16, '2021_10_09_013236_create_tb_pages_table', 1),
(17, '2021_10_26_210129_change_tb_users_table', 1),
(24, '2022_04_25_163138_create_tb_widgets_table', 3),
(25, '2022_04_25_163922_create_tb_components_table', 3),
(26, '2022_04_26_155008_create_tb_widget_configs_table', 4),
(27, '2022_04_26_155035_create_tb_component_configs_table', 4),
(28, '2022_06_02_102255_create_tb_bookings_table', 5),
(29, '2022_02_14_165457_create_tb_contacts_table', 6),
(30, '2022_02_14_170033_create_tb_orders_table', 6),
(31, '2022_02_14_170056_create_tb_order_details_table', 6),
(32, '2022_06_27_162451_create_tb_popups_table', 7),
(33, '2022_06_29_095757_change_users_table', 8),
(35, '2022_07_07_144844_create_tb_affiliate_payments_table', 9),
(36, '2022_07_12_210520_create_tb_affiliate_historys_table', 10),
(37, '2022_12_02_162806_create_tb_branchs_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin_menus`
--

CREATE TABLE `tb_admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `toolbar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_admin_menus`
--

INSERT INTO `tb_admin_menus` (`id`, `parent_id`, `name`, `icon`, `url_link`, `iorder`, `status`, `toolbar`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(3, 10, 'Quản lý người dùng', 'fa fa-user-plus', 'admins', 3, 'active', 'deactive', 1, 1, '2021-09-30 07:38:46', '2022-03-02 19:25:15'),
(5, 10, 'Quản lý nhóm quyền', 'fa fa-users', 'roles', 4, 'active', 'active', 1, 1, '2021-09-30 09:57:11', '2022-03-02 19:25:00'),
(6, 10, 'Quản lý Menu Admin', 'fa fa-tasks', 'admin_menus', 5, 'active', 'deactive', 1, 1, '2021-09-30 21:41:45', '2022-03-02 19:26:32'),
(10, NULL, 'Quản lý hệ thống', 'fa fa-server', NULL, 4, 'active', 'deactive', 1, 1, '2021-10-01 17:10:06', '2022-12-31 04:36:46'),
(13, NULL, 'Quản lý cấu hình', 'fa fa-home', NULL, 3, 'active', 'deactive', 1, 1, '2021-10-02 10:26:41', '2022-12-31 04:36:36'),
(17, 71, 'Quản lý Khối nội dung', 'fa fa-object-group', 'block_contents', 999, 'active', 'deactive', 1, 1, '2021-10-07 09:08:48', '2022-08-06 08:30:21'),
(41, 71, 'Quản lý Pages - Trang', 'fa fa-clone', 'pages', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:15:57', '2022-08-06 08:30:18'),
(42, 71, 'Quản lý Menu Website', 'fa fa-bars', 'menus', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:19:53', '2022-08-06 08:30:15'),
(44, 70, 'Quản lý hình ảnh hệ thống', 'fa fa-picture-o', 'web_image', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:03', '2022-08-06 08:29:09'),
(45, 70, 'Quản lý thông tin Website', 'fa fa-globe', 'web_information', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:28', '2022-08-06 08:29:06'),
(46, 70, 'Quản lý liên kết MXH', 'fa fa-share-alt-square', 'web_social', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:43', '2022-08-06 08:29:03'),
(51, NULL, 'Quản lý nội dung', 'fa fa-folder', NULL, 2, 'active', NULL, 1, 1, '2022-05-30 08:46:23', '2022-08-06 08:32:52'),
(52, 51, 'Quản lý danh mục - thể loại', NULL, 'cms_taxonomys', 1, 'active', NULL, 1, 1, '2022-05-30 08:46:51', '2022-05-30 08:46:51'),
(53, 51, 'Quản lý bài viết', NULL, 'cms_posts', 2, 'deactive', NULL, 1, 1, '2022-05-30 09:56:47', '2023-01-04 01:58:27'),
(58, 71, 'Quản lý mã nhúng CSS - JS', NULL, 'web_source', NULL, 'active', NULL, 1, 1, '2022-06-07 02:41:52', '2022-08-06 08:30:12'),
(59, 72, 'Quản lý liên hệ', NULL, 'contacts', 3, 'active', NULL, 1, 1, '2022-06-08 03:16:46', '2022-08-06 08:35:02'),
(62, 72, 'Quản lý Đăng ký bản tin', NULL, 'call_request', 2, 'active', NULL, 1, 1, '2022-06-10 03:01:44', '2022-12-07 02:40:22'),
(70, 13, 'Cấu hình thông tin chung', 'fa fa-bars', '#', 1, 'active', NULL, 1, 1, '2022-08-06 08:28:32', '2022-08-06 08:31:29'),
(71, 13, 'Cấu hình Website', 'fa fa-object-group', '#', 2, 'active', NULL, 1, 1, '2022-08-06 08:29:55', '2022-08-06 08:31:10'),
(72, NULL, 'Quản lý khách hàng', 'fa fa-opencart', '#', 1, 'active', NULL, 1, 1, '2022-08-06 08:32:30', '2022-08-06 08:34:15'),
(73, 51, 'Quản lý sản phẩm', NULL, 'cms_products', 4, 'active', NULL, 1, 1, '2022-10-08 03:23:29', '2022-11-15 10:07:38'),
(76, NULL, 'Khai báo Module Functions', NULL, 'module_functions', 5, 'active', NULL, 1, 1, '2022-12-31 01:44:58', '2022-12-31 04:36:52'),
(77, 76, 'Khai báo Modules', NULL, 'modules', 1, 'active', NULL, 1, 1, '2022-12-31 01:45:41', '2022-12-31 01:45:41'),
(78, 76, 'Khai báo Blocks', NULL, 'blocks', 2, 'active', NULL, 1, 1, '2022-12-31 01:46:03', '2022-12-31 01:46:03'),
(79, 76, 'Khai báo tham số', NULL, 'options', 3, 'active', NULL, 1, 1, '2022-12-31 01:46:24', '2022-12-31 01:46:24'),
(80, 72, 'Quản lý đơn hàng', NULL, 'order_products', 1, 'active', NULL, 1, 1, '2023-01-03 09:59:54', '2023-01-03 10:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `tb_affiliate_historys`
--

CREATE TABLE `tb_affiliate_historys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `order_total_money` double(20,2) NOT NULL DEFAULT '0.00',
  `affiliate_percent` double(20,2) NOT NULL DEFAULT '0.00',
  `affiliate_point` double(20,2) DEFAULT NULL,
  `affiliate_money` double(20,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_affiliate_historys`
--

INSERT INTO `tb_affiliate_historys` (`id`, `is_type`, `user_id`, `order_id`, `order_total_money`, `affiliate_percent`, `affiliate_point`, `affiliate_money`, `description`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'product', 3, 9, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 17:51:21', '2022-07-12 18:52:58'),
(3, 'product', 2, 9, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:18:05', '2022-07-12 18:52:58'),
(4, 'service', 3, 14, 0.00, 3.00, 0.00, 0.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:53:27', '2022-07-12 18:53:27'),
(5, 'service', 2, 14, 0.00, 2.50, 0.00, 0.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:53:27', '2022-07-12 18:53:27'),
(6, 'product', 3, 11, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-13 08:11:45', '2022-07-13 08:11:54'),
(7, 'product', 2, 11, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-13 08:11:45', '2022-07-13 08:11:54'),
(8, 'product', 3, 16, 5350000.00, 1.50, 80250.00, 80250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(9, 'product', 2, 16, 5350000.00, 1.50, 80250.00, 80250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(10, 'service', 3, 15, 450000.00, 3.00, 13500.00, 13500.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17'),
(11, 'service', 2, 15, 450000.00, 2.50, 11250.00, 11250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_affiliate_payments`
--

CREATE TABLE `tb_affiliate_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `money` double(20,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_affiliate_payments`
--

INSERT INTO `tb_affiliate_payments` (`id`, `user_id`, `money`, `description`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 3, 5000000.00, 'Số tài khoản: 1122335789\r\nChủ tài khoản: Nguyễn Hữu Thắng\r\nTên ngân hàng: Vietcombank Hà Tây', NULL, 'new', NULL, NULL, '2022-07-13 08:29:49', '2022-07-13 08:29:49'),
(2, 3, 15000000.00, 'Số tài khoản: 1122335789\r\nChủ tài khoản: Nguyễn Hữu Thắng\r\nTên ngân hàng: MB Bank', '{\"admin_note\":\"ThangNH \\u0111ang x\\u1eed l\\u00fd \\u0111\\u1ec1 ngh\\u1ecb thanh to\\u00e1n n\\u00e0y\"}', 'processing', NULL, 1, '2022-07-13 08:33:09', '2022-07-13 10:40:49'),
(3, 3, 50000.00, NULL, NULL, 'new', NULL, NULL, '2022-07-13 09:01:39', '2022-07-13 09:01:39'),
(4, 3, 5350000.00, NULL, '{\"admin_note\":\"Payment for orders by affiliate wallet\",\"order_id\":16}', 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(5, 3, 450000.00, NULL, '{\"admin_note\":\"Payment for orders by affiliate wallet\",\"order_id\":15}', 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blocks`
--

CREATE TABLE `tb_blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `block_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_config` tinyint(1) NOT NULL DEFAULT '1',
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_blocks`
--

INSERT INTO `tb_blocks` (`id`, `name`, `description`, `block_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Khối hình ảnh quảng cáo', 'Block used for displaying banner advertising images, with or without additional content', 'banner', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"slide\",\r\n                \"static\",\r\n                \"logo_partner\"\r\n	]\r\n}', 1, 2, 'active', 1, 1, '2021-10-07 04:49:19', '2022-12-31 01:47:03'),
(11, 'Khối nội dung tùy chọn', 'Blocks are used for optional content and styled accordingly', 'custom', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"about_us\",\r\n		\"about_vision\",\r\n		\"core_value\",\r\n		\"about_development\",\r\n		\"about_client\"\r\n	]\r\n}', 1, 3, 'active', 1, 1, '2021-10-11 16:44:15', '2022-11-30 07:19:09'),
(20, 'Khối nội dung đầu trang', NULL, 'header', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"branch.default\"\r\n	],\r\n	\"layout\":[\r\n		\"default\"\r\n	]\r\n}', 1, 1, 'active', 1, 1, '2022-05-30 03:05:17', '2022-12-05 09:11:16'),
(21, 'Khối nội dung chân trang', NULL, 'footer', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"branch.default\"\r\n	]\r\n}', 1, 99, 'active', 1, 1, '2022-05-30 03:06:28', '2022-12-05 09:11:25'),
(22, 'Khối danh sách dịch vụ nổi bật', NULL, 'cms_service', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 5, 'active', 1, 1, '2022-05-31 07:25:43', '2022-12-31 03:36:17'),
(23, 'Khối danh sách bài viết nổi bật', NULL, 'cms_post', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	]\r\n}', 1, 7, 'active', 1, 1, '2022-05-31 09:53:32', '2023-01-03 15:54:48'),
(24, 'Khối Video và hình ảnh nổi bật', NULL, 'cms_resource', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	],\r\n	\"style\":[\r\n		\"video\",\r\n		\"image\"\r\n	]\r\n}', 1, 6, 'deactive', 1, 1, '2022-06-01 08:38:54', '2022-11-30 07:22:16'),
(27, 'Khối hiển thị nội dung chính', 'Khối hiển thị nội dung theo từng chức năng cụ thể', 'main', '{\r\n	\"template\":[\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"page.price\",\r\n		\"page.content\",\r\n		\"branch.default\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 4, 'active', 1, 1, '2022-06-02 11:23:39', '2022-12-05 10:19:52'),
(35, 'Khối nội dung form đăng ký', NULL, 'form', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"booking\"\r\n	]\r\n}', 1, 8, 'deactive', 1, 1, '2022-09-13 09:23:28', '2022-11-30 07:22:22'),
(36, 'Khối danh sách sản phẩm nổi bật', NULL, 'cms_product', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 4, 'active', 1, 1, '2022-10-08 03:22:14', '2022-12-31 03:36:05'),
(37, 'Khối danh sách câu hỏi thường gặp - FAQs', NULL, 'faq', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"default\"\r\n	]\r\n}', 1, NULL, 'deactive', 1, 1, '2022-10-17 04:36:18', '2022-11-30 07:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `tb_block_contents`
--

CREATE TABLE `tb_block_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `block_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_link_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_block_contents`
--

INSERT INTO `tb_block_contents` (`id`, `parent_id`, `title`, `brief`, `content`, `block_code`, `json_params`, `image`, `image_background`, `icon`, `url_link`, `url_link_title`, `position`, `system_code`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(19, NULL, 'Vì sao CHỌN chúng tôi?', NULL, NULL, 'custom', '{\"layout\":\"about_us\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2021-10-12 10:29:41', '2022-12-31 03:14:03'),
(21, 19, 'Sự khác biệt của Thaiever', 'Thaiever đầu tư bài bản từ sản phẩm lõi HDF sản xuất bởi nhà máy FSC (thành viên Tập đoàn Thaiever - Top 10 nhà máy sản xuất ván MDF hiện đại bậc nhất thế giới). Với quy trình sản xuất tự động hóa tới 90% giúp sản phẩm đạt chất lượng tốt nhất và giảm thiểu tác hại với môi trường.', NULL, 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2021-10-12 10:31:50', '2022-12-31 03:14:40'),
(22, 19, 'HƯỚNG ĐẾN GIÁ TRỊ BỀN VỮNG', 'Tập đoàn còn thực hiện quy trình khép kín – khai thác đi đôi với trồng và phát triển nguồn rừng. Doanh nghiệp chú trọng tạo ra cây giống có năng suất cao, liên kết với các lâm trường, và người dân để triển khai trồng, chăm sóc và khai thác nhằm tạo 1 vòng đời sản xuất bền vững.', NULL, 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, '#', 'learn more', NULL, NULL, 2, 'delete', 1, 1, '2021-10-12 10:32:50', '2022-12-31 03:14:44'),
(74, NULL, 'Khối hình ảnh banner đầu trang', 'CAM KẾT CHẤT LƯỢNG', 'Làm đẹp ngôi nhà của bạn', 'banner', '{\"layout\":\"static\",\"style\":null}', '/data/cms-image/1/hero.png', NULL, NULL, 'sofa', 'Shopping ngay', NULL, NULL, 2, 'active', 1, 1, '2022-03-18 17:50:28', '2023-01-03 15:05:36'),
(79, NULL, 'Danh mục SẢN PHẨM', NULL, NULL, 'custom', '{\"layout\":\"about_development\",\"style\":null}', NULL, NULL, NULL, 'san-pham', 'Xem tất cả', NULL, NULL, 4, 'active', 1, 1, '2022-05-31 07:26:33', '2023-01-02 15:05:11'),
(82, NULL, 'Khám phá NGÔI NHÀ & VĂN PHÒNG', 'Compellingly cultivate synergistic infrastructures rather than fully tested opportunities. Synergistically evisculate web-enabled interfaces for market positioning web services. Continually create business infomediaries and interdependent products.', NULL, 'custom', '{\"layout\":\"about_vision\",\"style\":null}', '/data/cms-image/1/service.png', NULL, NULL, 'sofa', 'Khám phá ngay!', NULL, NULL, 6, 'active', 1, 1, '2022-06-01 08:39:42', '2023-01-03 07:51:59'),
(94, NULL, 'Khối hiển thị nội dung chính', NULL, NULL, 'main', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-06-02 11:24:21', '2022-06-03 03:49:47'),
(96, 241, '#2', 'COO - FHM Agency', NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/1233.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-08-05 08:58:04', '2022-09-13 07:35:29'),
(97, 241, '#1', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/demo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-08-05 08:58:04', '2022-09-13 07:36:29'),
(103, 241, '#4', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/demo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-08-05 09:17:04', '2022-09-13 07:36:51'),
(104, 241, '#3', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/1233.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2022-08-05 09:17:04', '2022-09-13 07:35:32'),
(286, 74, '#2', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', 'https://cms.mars-ways.com/uploads/photos/banner/252439177_368170538389309_1938840243787974099_n.jpg', 'https://cms.mars-ways.com/uploads/photos/banner/252439177_368170538389309_1938840243787974099_n.jpg', NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2022-11-07 15:54:33', '2022-12-31 01:41:57'),
(287, 74, '#1', NULL, 'Digital Agency <span>Solutions</span>', 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/banner/1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2022-11-07 15:54:33', '2022-12-31 01:41:55'),
(289, 79, 'Tầm nhìn', 'Trở thành công ty cung cấp vật liệu lát sàn hàng đầu Việt Nam năm 2025', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-2-1.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2022-11-15 07:55:34', '2022-12-31 03:26:45'),
(290, 79, 'Mục tiêu', 'Chiếm 35% thị phần ván sàn công nghiệp năm 2025', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-2-3.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2022-11-15 07:56:51', '2022-12-31 03:26:54'),
(291, 79, 'Sứ mệnh', 'Cung cấp các giải pháp lát sàn tuyệt vời và đảm bảo an toàn sức khoẻ cho 100 triệu người dân Việt Nam', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-2-2.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2022-11-15 07:56:53', '2022-12-31 03:26:49'),
(292, 293, 'Chính trực', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-3-1.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2022-11-15 07:56:54', '2023-01-02 17:03:13'),
(293, NULL, 'Sản phẩm MỚI', 'Compellingly cultivate synergistic infrastructures rather than fully tested opportunities. Synergistically evisculate web-enabled interfaces.', NULL, 'cms_product', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, 'san-pham-khac', 'Phổ thông', NULL, NULL, 5, 'active', 1, 1, '2022-11-15 07:57:15', '2023-01-03 15:06:53'),
(294, 293, 'Tuân thủ', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-3-4.png', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'delete', 1, 1, '2022-11-15 07:59:00', '2023-01-02 17:03:27'),
(295, 293, 'Công bằng', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-3-3.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2022-11-15 07:59:02', '2023-01-02 17:03:22'),
(296, 293, 'Tôn trọng', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-3-2.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2022-11-15 07:59:03', '2023-01-02 17:03:17'),
(297, 293, 'Đạo đức', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-3-5.png', NULL, NULL, NULL, NULL, NULL, NULL, 5, 'delete', 1, 1, '2022-11-15 07:59:05', '2023-01-02 17:03:33'),
(299, NULL, 'Dịch vụ', NULL, NULL, 'custom', '{\"layout\":\"core_value\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'active', 1, 1, '2022-11-15 10:36:53', '2022-12-31 03:56:57'),
(300, 299, 'Top 500 doanh nghiệp', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/client/logo-02-(2).png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2022-11-15 10:39:21', '2022-12-31 03:49:56'),
(301, 299, 'Top 500 doanh nghiệp', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/client/logo-02-(2).png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2022-11-15 10:39:23', '2022-12-31 03:49:52'),
(302, 299, 'Top 500 doanh nghiệp', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/client/logo-02-(2).png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2022-11-15 10:39:25', '2022-12-31 03:49:49'),
(303, 299, 'Top 500 doanh nghiệp', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/client/logo-02-(2).png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2022-11-15 10:39:27', '2022-12-31 03:49:45'),
(304, 19, 'service', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-12-31 03:14:37', '2022-12-31 03:15:18'),
(305, 19, 'logo1', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-12-31 03:15:11', '2022-12-31 03:15:11'),
(306, 19, 'logo2', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2022-12-31 03:15:33', '2022-12-31 03:15:33'),
(307, 304, 'Nhãn hàng quốc tế', 'Powerful Layout with Responsive functionality that can be adapted to any screen size. Resize browser to view.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/svgexport-9.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-12-31 03:16:10', '2022-12-31 03:16:10'),
(308, 304, 'Giải thưởng cao quý', 'Looks beautiful & ultra-sharp on Retina Screen Displays. Retina Icons, Fonts & all others graphics are optimized.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/svgexport-10.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-12-31 03:16:45', '2022-12-31 03:16:45'),
(309, 304, 'Khách hàng hài lòng', 'Canvas includes tons of optimized code that are completely customizable and deliver unmatched fast performance.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/svgexport-11.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2022-12-31 03:17:23', '2022-12-31 03:17:23'),
(310, 305, 'logo', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/amazon.svg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-12-31 03:17:59', '2022-12-31 03:17:59'),
(311, 305, 'logo', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/cnn.svg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-12-31 03:18:34', '2022-12-31 03:18:34'),
(312, 305, 'logo', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/google.svg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2022-12-31 03:19:23', '2022-12-31 03:19:23'),
(313, 305, 'logo', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/linkedin.svg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-12-31 03:19:48', '2022-12-31 03:19:48'),
(314, 306, 'logo', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/netflix.svg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-12-31 03:20:31', '2022-12-31 03:20:31'),
(315, 306, 'logo', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/jetblue.svg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-12-31 03:20:57', '2022-12-31 03:20:57'),
(316, 306, 'logo', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/github.svg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2022-12-31 03:21:15', '2022-12-31 03:21:15'),
(317, 79, 'Sofa', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/sofa.png', NULL, NULL, 'sofa', NULL, NULL, NULL, 1, 'active', 1, 1, '2022-12-31 03:28:15', '2022-12-31 03:28:15'),
(318, 79, 'Bàn', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/ban.png', NULL, NULL, 'ban', NULL, NULL, NULL, 2, 'active', 1, 1, '2022-12-31 03:29:26', '2023-01-03 08:33:13'),
(319, 79, 'Ghế', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/ghe.png', NULL, NULL, 'ghe', NULL, NULL, NULL, 3, 'active', 1, 1, '2022-12-31 03:29:52', '2023-01-03 08:33:24'),
(320, 79, 'Đèn', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/den.png', NULL, NULL, 'san-pham-khac', NULL, NULL, NULL, 4, 'active', 1, 1, '2022-12-31 03:30:29', '2023-01-03 08:33:49'),
(321, 79, 'Tủ', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/tu.png', NULL, NULL, 'san-pham-khac', NULL, NULL, NULL, 5, 'active', 1, 1, '2022-12-31 03:30:55', '2023-01-03 08:34:01'),
(322, 79, 'Giường', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/giuong.png', NULL, NULL, 'giuong', NULL, NULL, NULL, 6, 'active', 1, 1, '2022-12-31 03:31:58', '2023-01-03 08:34:11'),
(323, NULL, 'Service', NULL, NULL, 'custom', '{\"layout\":\"core_value\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2022-12-31 03:53:47', '2022-12-31 04:15:02'),
(324, 299, 'Chất lượng vượt trội', 'Completely formulate top-line resources rather than cross-media portals cross-platform solutions.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/svgexport-21.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-12-31 03:55:03', '2022-12-31 03:55:03'),
(325, 299, 'Vận chuyển hỏa tốc miễn phí', 'Rapidiously optimize user-centric catalysts for change vis-a-vis granular \"outside the box\" thinking.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/svgexport-22.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-12-31 03:57:35', '2022-12-31 03:57:35'),
(326, 299, 'Thanh toán bảo mật', 'Continually recaptiualize 2.0 action items after global information. Efficiently strategize holistic networks.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/svgexport-23.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2022-12-31 03:58:05', '2022-12-31 03:58:05'),
(327, NULL, 'Theo dõi chúng tôi trên Instagram', NULL, NULL, 'banner', '{\"layout\":\"logo_partner\",\"style\":null}', '/data/cms-image/1/svgexport-24.png', NULL, NULL, 'instagram/fhmvietnam', '@fhmvietnam', NULL, NULL, 8, 'active', 1, 1, '2022-12-31 04:02:09', '2023-01-02 16:20:28'),
(328, 327, 'image1', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-12-31 04:03:40', '2022-12-31 04:03:40'),
(329, 327, 'image2', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-12-31 04:03:57', '2022-12-31 04:03:57'),
(330, 328, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/ins1.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-12-31 04:05:22', '2022-12-31 04:05:22'),
(331, 328, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/ins2.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-12-31 04:05:38', '2022-12-31 04:05:38'),
(332, 328, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/ins3.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2022-12-31 04:05:54', '2022-12-31 04:05:54'),
(333, 328, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/ins4.png', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-12-31 04:06:16', '2022-12-31 04:06:16'),
(334, 329, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/ins5.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-12-31 04:06:34', '2022-12-31 04:06:34'),
(335, 329, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/ins6.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-12-31 04:06:48', '2022-12-31 04:06:48'),
(336, 329, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/ins7.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2022-12-31 04:07:16', '2022-12-31 04:07:32'),
(337, 329, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/ins8.png', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-12-31 04:07:52', '2022-12-31 04:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bookings`
--

CREATE TABLE `tb_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_note` text COLLATE utf8mb4_unicode_ci,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_branchs`
--

CREATE TABLE `tb_branchs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_branchs`
--

INSERT INTO `tb_branchs` (`id`, `is_type`, `name`, `city`, `district`, `address`, `phone`, `fax`, `map`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'FHM Agency', '5', '825', 'Số 16 Trần Quốc Vượng, Cầu Giấy, Hà nội', '098 226 9600', '098 226 9611', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29792.14029028318!2d105.7910779951155!3d21.03198432079961!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab398a2a3667%3A0x24328ecb439376f!2sFHM%20Agency!5e0!3m2!1svi!2sus!4v1670225754820!5m2!1svi!2sus\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'active', 1, 1, '2022-12-05 07:47:15', '2022-12-05 09:41:38'),
(2, NULL, 'Công ty cổ phần FHM Agency Hà Nội', '5', '825', '2/25 Thọ Tháp, Cầu Giấy, Hà Nội', '0393004567', '0393004567', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d29792.155949030785!2d105.791078!3d21.031906!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd0905b6cacd304da!2zQ8O0bmcgdHkgY-G7lSBwaOG6p24gdGjGsMahbmcgbeG6oWkgRkhNIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1670225430705!5m2!1svi!2sus\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'active', 1, 1, '2022-12-05 07:49:39', '2022-12-05 07:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cms_posts`
--

CREATE TABLE `tb_cms_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'post',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `count_visited` int(11) NOT NULL DEFAULT '0',
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_cms_posts`
--

INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(1, 1, 'post', 'Bảng giá thiết kế', '{\"brief\":{\"vi\":\"In varius varius justo, eget ultrices mauris rhoncus non. Morbi tristique, mauris eu bibendum, velit diam.\"},\"content\":{\"vi\":\"<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"\\/data\\/other\\/1\\/bang-gia-thiet-ke-noi-that.jpg\\\" \\/><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/post/1.jpg', '/data/cms-image/post/1.jpg', 0, 18, 1, 'active', 1, 1, '2021-10-15 08:58:35', '2022-12-11 15:39:26', 'bang-gia-thiet-ke'),
(2, 1, 'post', 'Bảng giá thi công phần thô', '{\"brief\":{\"vi\":\"In varius varius justo, eget ultrices mauris rhoncus non. Morbi tristique, mauris eu bibendum, velit diam.\"},\"content\":{\"vi\":\"<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"\\/data\\/other\\/1\\/bang-gia-thiet-ke-noi-that.jpg\\\" \\/><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/post/1.jpg', '/data/cms-image/post/1.jpg', 0, 9, 2, 'active', 1, 1, '2021-10-15 08:59:49', '2022-12-11 15:39:38', 'bang-gia-thi-cong-phan-tho'),
(3, 1, 'post', 'Xu thế việc làm toàn cầu - 2021?', '{\"brief\":{\"vi\":\"In varius varius justo, eget ultrices mauris rhoncus non. Morbi tristique, mauris eu bibendum, velit diam.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'http://cvedu.test/assets/img/module-3.jpg', NULL, 0, 8, 3, 'active', 1, 1, '2021-10-15 09:36:39', '2022-12-11 15:39:59', 'xu-the-viec-lam-toan-cau-2021'),
(4, 3, 'service', 'Kiến trúc biệt thự', '{\"price\":\"450000\",\"price_currency\":\"\\u20ab\",\"brief\":{\"vi\":\"Powerful Layout with Responsive functionality that can be adapted to any screen size.\"},\"content\":{\"vi\":\"<h2><strong>Quy tr\\u00ecnh trong thi\\u1ebft k\\u1ebf n\\u1ed9i thi c\\u00f4ng th\\u1ea5t chung c\\u01b0 c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>1. Thu th\\u1eadp th\\u00f4ng tin, t\\u01b0 v\\u1ea5n \\u00fd t\\u01b0\\u1edfng<\\/strong><\\/h3>\\r\\n\\r\\n<p>Nh\\u00e2n vi\\u00ean t\\u01b0 v\\u1ea5n c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t ti\\u1ebfp nh\\u1eadn y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng, trao \\u0111\\u1ed5i h\\u1ed7 tr\\u1ee3 \\u00fd t\\u01b0\\u1edfng thi\\u1ebft k\\u1ebf v\\u00e0 ch\\u1ecdn ch\\u1ea5t li\\u1ec7u ph\\u00f9 h\\u1ee3p d\\u1ef1a v\\u00e0o t\\u00ecnh h\\u00ecnh t\\u00e0i ch\\u00ednh c\\u1ee7a ch\\u1ee7 nh\\u00e0.<\\/p>\\r\\n\\r\\n<h3><strong>2. Kh\\u1ea3o s\\u00e1t c\\u00f4ng tr\\u00ecnh<\\/strong><\\/h3>\\r\\n\\r\\n<p>X\\u00e1c \\u0111\\u1ecbnh r\\u00f5 m\\u1ee5c \\u0111\\u00edch thi\\u1ebft, d\\u1ef1a tr\\u00ean di\\u1ec7n t\\u00edch t\\u00ednh to\\u00e1n c\\u00e1c th\\u00f4ng s\\u1ed1 \\u0111\\u1ec3 gi\\u00fap kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu, phong c\\u00e1ch thi\\u1ebft k\\u1ebf theo \\u00fd t\\u01b0\\u1edfng v\\u00e0 mong mu\\u1ed1n c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>3. K\\u00fd k\\u1ebft h\\u1ee3p \\u0111\\u1ed3ng thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chung c\\u01b0<\\/strong><\\/h3>\\r\\n\\r\\n<p>Sau khi kh\\u1ea3o s\\u00e1t, N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd x\\u00e1c \\u0111\\u1ecbnh \\u0111\\u01b0\\u1ee3c ph\\u01b0\\u01a1ng \\u00e1n t\\u1ed1i \\u01b0u cho c\\u00f4ng tr\\u00ecnh, sau t\\u1eeb 2-4 ng\\u00e0y t\\u00f9y theo kh\\u1ed1i l\\u01b0\\u1ee3ng c\\u00f4ng vi\\u1ec7c N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd thi\\u1ebft k\\u1ebf ra m\\u1eb7t b\\u1eb1ng t\\u1eeb 2D \\u0111\\u1ec3 l\\u00ean ph\\u01b0\\u01a1ng \\u00e1n cho kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu.<\\/p>\\r\\n\\r\\n<p>Sau khi kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd ti\\u1ebfn h\\u00e0nh b\\u00e1o gi\\u00e1 d\\u1ef1a tr\\u00ean h\\u1ea1ng m\\u1ee5c c\\u00f3 s\\u1eb5n c\\u00f9ng c\\u00e1c y\\u00eau c\\u1ea7u ri\\u00eang c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>4. Thi\\u1ebft k\\u1ebf b\\u1ea3n v\\u1ebd 3D<\\/strong><\\/h3>\\r\\n\\r\\n<p>N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd g\\u1eedi c\\u00e1c h\\u00ecnh \\u1ea3nh c\\u00e1c b\\u1ea3n v\\u1ebd 3D chi ti\\u1ebft t\\u1eebng c\\u0103n ph\\u00f2ng (t\\u1eeb \\u0111\\u01b0\\u1eddng n\\u00e9t, \\u0111\\u1ed9 d\\u00e0i, chi\\u1ec1u cao\\u2026)qua cho kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<p>K\\u00e8m theo \\u0111\\u00f3 l\\u00e0 s\\u1ef1 thi\\u1ebft k\\u1ebf ph\\u1ed1i m\\u00e0u s\\u1eafc \\u0111\\u1ec3 kh\\u00e1ch h\\u00e0ng c\\u00f3 th\\u1ec3 h\\u00ecnh dung \\u0111\\u01b0\\u1ee3c t\\u1ed5ng th\\u1ec3 b\\u1ed1 c\\u1ee5c s\\u1ea3n ph\\u1ea9m sau khi thi\\u1ebft k\\u1ebf.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/1582527257_dream.jpg', '/data/cms-image/1/1582527257_dream.jpg', 0, 6, 7, 'delete', 1, 1, '2022-02-13 15:59:41', '2022-11-11 04:38:07', NULL),
(5, 17, 'service', 'Tổ chức sự kiện', '{\"price\":null,\"price_currency\":null,\"brief\":{\"vi\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusm tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusm tempor incididunt ut labore et.\"},\"content\":{\"vi\":\"<h2><strong>Quy tr\\u00ecnh trong thi\\u1ebft k\\u1ebf n\\u1ed9i thi c\\u00f4ng th\\u1ea5t chung c\\u01b0 c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>1. Thu th\\u1eadp th\\u00f4ng tin, t\\u01b0 v\\u1ea5n \\u00fd t\\u01b0\\u1edfng<\\/strong><\\/h3>\\r\\n\\r\\n<p>Nh\\u00e2n vi\\u00ean t\\u01b0 v\\u1ea5n c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t ti\\u1ebfp nh\\u1eadn y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng, trao \\u0111\\u1ed5i h\\u1ed7 tr\\u1ee3 \\u00fd t\\u01b0\\u1edfng thi\\u1ebft k\\u1ebf v\\u00e0 ch\\u1ecdn ch\\u1ea5t li\\u1ec7u ph\\u00f9 h\\u1ee3p d\\u1ef1a v\\u00e0o t\\u00ecnh h\\u00ecnh t\\u00e0i ch\\u00ednh c\\u1ee7a ch\\u1ee7 nh\\u00e0.<\\/p>\\r\\n\\r\\n<h3><strong>2. Kh\\u1ea3o s\\u00e1t c\\u00f4ng tr\\u00ecnh<\\/strong><\\/h3>\\r\\n\\r\\n<p>X\\u00e1c \\u0111\\u1ecbnh r\\u00f5 m\\u1ee5c \\u0111\\u00edch thi\\u1ebft, d\\u1ef1a tr\\u00ean di\\u1ec7n t\\u00edch t\\u00ednh to\\u00e1n c\\u00e1c th\\u00f4ng s\\u1ed1 \\u0111\\u1ec3 gi\\u00fap kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu, phong c\\u00e1ch thi\\u1ebft k\\u1ebf theo \\u00fd t\\u01b0\\u1edfng v\\u00e0 mong mu\\u1ed1n c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>3. K\\u00fd k\\u1ebft h\\u1ee3p \\u0111\\u1ed3ng thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chung c\\u01b0<\\/strong><\\/h3>\\r\\n\\r\\n<p>Sau khi kh\\u1ea3o s\\u00e1t, N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd x\\u00e1c \\u0111\\u1ecbnh \\u0111\\u01b0\\u1ee3c ph\\u01b0\\u01a1ng \\u00e1n t\\u1ed1i \\u01b0u cho c\\u00f4ng tr\\u00ecnh, sau t\\u1eeb 2-4 ng\\u00e0y t\\u00f9y theo kh\\u1ed1i l\\u01b0\\u1ee3ng c\\u00f4ng vi\\u1ec7c N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd thi\\u1ebft k\\u1ebf ra m\\u1eb7t b\\u1eb1ng t\\u1eeb 2D \\u0111\\u1ec3 l\\u00ean ph\\u01b0\\u01a1ng \\u00e1n cho kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu.<\\/p>\\r\\n\\r\\n<p>Sau khi kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd ti\\u1ebfn h\\u00e0nh b\\u00e1o gi\\u00e1 d\\u1ef1a tr\\u00ean h\\u1ea1ng m\\u1ee5c c\\u00f3 s\\u1eb5n c\\u00f9ng c\\u00e1c y\\u00eau c\\u1ea7u ri\\u00eang c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>4. Thi\\u1ebft k\\u1ebf b\\u1ea3n v\\u1ebd 3D<\\/strong><\\/h3>\\r\\n\\r\\n<p>N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd g\\u1eedi c\\u00e1c h\\u00ecnh \\u1ea3nh c\\u00e1c b\\u1ea3n v\\u1ebd 3D chi ti\\u1ebft t\\u1eebng c\\u0103n ph\\u00f2ng (t\\u1eeb \\u0111\\u01b0\\u1eddng n\\u00e9t, \\u0111\\u1ed9 d\\u00e0i, chi\\u1ec1u cao\\u2026)qua cho kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<p>K\\u00e8m theo \\u0111\\u00f3 l\\u00e0 s\\u1ef1 thi\\u1ebft k\\u1ebf ph\\u1ed1i m\\u00e0u s\\u1eafc \\u0111\\u1ec3 kh\\u00e1ch h\\u00e0ng c\\u00f3 th\\u1ec3 h\\u00ecnh dung \\u0111\\u01b0\\u1ee3c t\\u1ed5ng th\\u1ec3 b\\u1ed1 c\\u1ee5c s\\u1ea3n ph\\u1ea9m sau khi thi\\u1ebft k\\u1ebf.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/demo/1233.jpg', NULL, 1, 54, 2, 'active', 1, 1, '2022-02-13 16:05:18', '2022-11-10 04:41:25', 'to-chuc-su-kien'),
(17, 1, 'post', 'Quy trình thi công nội thất chung cư trọn gói', '{\"brief\":{\"vi\":\"Phasellus et lacus mattis, tincidunt metus sodales, tincidunt urna. Cras felis neque, iaculis vitae varius eu, luctus consectetur odio. However, this ideal is a dream, not reality, and a clever and profitable marketing ruse, not fact.\"},\"content\":{\"vi\":\"<p>Nullam mollis ultrices est. Nulla in justo lacinia, scelerisque purus et, semper tortor. Donec bibendum leo vitae commodo porttitor. Proin tempus sollicitudin odio in feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ultrices vitae nisl tristique commodo. Phasellus porttitor metus at mattis ultricies. In imperdiet nec nunc in tincidunt.<\\/p>\\r\\n\\r\\n<p>Curabitur faucibus dolor at dui lobortis, eget dictum nisi mattis. Fusce risus dui, fringilla non elit sit amet, lobortis interdum eros. Donec mattis lectus quis elit fermentum lacinia. Nullam at ligula semper ante mollis pretium. Nam euismod velit ut quam accumsan vestibulum. Etiam diam augue, dapibus ac placerat nec, accumsan eget nibh. Cras sodales, leo ut volutpat laoreet, velit enim pharetra magna, at dapibus lacus elit vel mi. Nullam a massa ac ligula scelerisque maximus. Quisque dictum quis lorem ut sodales. Duis at semper odio. Morbi in sapien vel lacus posuere mattis ac eget ante. Etiam viverra accumsan rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus.<\\/p>\"},\"seo_title\":\"Quy tr\\u00ecnh thi c\\u00f4ng n\\u1ed9i th\\u1ea5t chung c\\u01b0 tr\\u1ecdn g\\u00f3i title\",\"seo_keyword\":\"Cv t\\u1ed1t, h\\u01b0\\u1edbng d\\u1eabn t\\u1ea1o cv\",\"seo_description\":\"Phasellus et lacus mattis, tincidunt metus sodales, tincidunt urna. Cras felis neque, iaculis vitae varius eu, luctus consectetur odio. However, this ideal is a dream, not reality, and a clever and profitable marketing ruse, not fact.\",\"related_post\":[\"19\",\"18\"]}', '/data/cms-image/post/1.jpg', '/data/cms-image/post/1.jpg', 1, 253, 1, 'active', 1, 1, '2021-10-15 08:58:35', '2022-12-11 15:39:34', 'quy-trinh-thi-cong-noi-that-chung-cu'),
(18, 1, 'post', 'Xu hướng thiết kế nhà phố mới nhất 2022', '{\"brief\":{\"vi\":\"In varius varius justo, eget ultrices mauris rhoncus non. Morbi tristique, mauris eu bibendum, velit diam.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/post/2.jpg', '/data/cms-image/post/2.jpg', 1, 29, 2, 'active', 1, 1, '2021-10-15 08:59:49', '2022-12-11 15:39:00', 'xu-huong-thiet-ke-nha-pho-moi-nhat-2022'),
(19, 1, 'post', 'Thi công nội thất trọn gói uy tín, chuyên nghiệp', '{\"brief\":{\"vi\":\"In varius varius justo, eget ultrices mauris rhoncus non. Morbi tristique, mauris eu bibendum, velit diam.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/post/3.jpg', '/data/cms-image/post/3.jpg', 1, 23, 3, 'active', 1, 1, '2021-10-15 09:36:39', '2022-12-11 15:39:30', 'thi-cong-noi-that-tron-goi-uy-tin-chuyen-nghiep'),
(21, 17, 'service', 'Sản xuất nội dung', '{\"price\":null,\"price_currency\":null,\"brief\":{\"vi\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusm tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusm tempor incididunt ut labore et.\"},\"content\":{\"vi\":\"<p>Ng\\u00e0y nay khi l\\u0129nh v\\u1ef1c c\\u00f4ng ngh\\u1ec7 th\\u00f4ng tin ng\\u00e0y c\\u00e0ng hi\\u1ec7n \\u0111\\u1ea1i \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 s\\u1ef1 ra \\u0111\\u1eddi v\\u00e0 ph\\u00e1t tri\\u1ec3n m\\u1ea1nh m\\u1ebd c\\u1ee7a nh\\u1eefng trang m\\u1ea1ng x\\u00e3 h\\u1ed9i (Social Network) v\\u1edbi s\\u1ef1 k\\u1ebft n\\u1ed1i v\\u00e0 lan truy\\u1ec1n r\\u1ed9ng r\\u00e3i tr\\u00ean kh\\u1eafp th\\u1ebf gi\\u1edbi b\\u1eb1ng c\\u00e1c thi\\u1ebft b\\u1ecb th\\u00f4ng minh nh\\u01b0; \\u0110i\\u1ec7n tho\\u1ea1i th\\u00f4ng minh (Smart Phone), IPad, Laptop, Tablet\\u2026 Ch\\u00ednh vi\\u1ec7c t\\u00edch h\\u1ee3p c\\u00e1c trang m\\u1ea1ng x\\u00e3 h\\u1ed9i b\\u1eb1ng c\\u00e1c thi\\u1ebft b\\u1ecb di \\u0111\\u1ed9ng th\\u00f4ng minh \\u0111\\u00e3 gi\\u00fap gia t\\u0103ng s\\u1ef1 lan truy\\u1ec1n v\\u00e0 ph\\u00e1t tri\\u1ec3n r\\u1ed9ng r\\u00e3i c\\u1ee7a m\\u1ea1ng x\\u00e3 h\\u1ed9i \\u0111\\u1ebfn v\\u1edbi ng\\u01b0\\u1eddi d\\u00f9ng Vi\\u1ec7t Nam v\\u00e0 tr\\u00ean kh\\u1eafp th\\u1ebf gi\\u1edbi.<\\/p>\\r\\n\\r\\n<p>M\\u1ea1ng x\\u00e3 h\\u1ed9i Facebook t\\u00ednh \\u0111\\u1ebfn n\\u0103m 2017 t\\u1ea1i Vi\\u1ec7t Nam c\\u00f3 tr\\u00ean 42 tri\\u1ec7u ng\\u01b0\\u1eddi d\\u00f9ng. Kh\\u00f4ng ch\\u1ec9 c\\u00f3 s\\u1ed1 l\\u01b0\\u1ee3ng ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng kh\\u1ed5ng l\\u1ed3 m\\u00e0 Facebook c\\u00f2n c\\u00f3 t\\u00ednh n\\u0103ng lan truy\\u1ec1n c\\u1ef1c k\\u1ef3 r\\u1ed9ng r\\u00e3i. Ch\\u00ednh v\\u00ec \\u0111i\\u1ec1u n\\u00e0y m\\u00e0 nhi\\u1ec1u c\\u00f4ng ty; c\\u00e1 nh\\u00e2n kinh doanh Online s\\u1eed d\\u1ee5ng d\\u1ecbch v\\u1ee5 qu\\u1ea3ng c\\u00e1o facebook \\u0111\\u1ec3 qu\\u1ea3ng b\\u00e1 s\\u1ea3n ph\\u1ea9m v\\u00e0 th\\u01b0\\u01a1ng hi\\u1ec7u c\\u1ee7a m\\u00ecnh. Nh\\u1edd qu\\u1ea3ng c\\u00e1o facebook m\\u00e0 nhi\\u1ec1u m\\u1eb7t h\\u00e0ng c\\u1ee7a c\\u00e1c doanh nghi\\u1ec7p, c\\u00f4ng ty, c\\u1eeda h\\u00e0ng \\u0111\\u01b0\\u1ee3c qu\\u1ea3ng b\\u00e1 r\\u1ed9ng r\\u00e3i \\u0111\\u1ebfn ng\\u01b0\\u1eddi ti\\u00eau d\\u00f9ng.<\\/p>\\r\\n\\r\\n<h2>Hi\\u1ec7u Qu\\u1ea3 Trong D\\u1ecbch V\\u1ee5 Qu\\u1ea3ng C\\u00e1o Facebook<\\/h2>\\r\\n\\r\\n<h3>Qu\\u1ea3ng c\\u00e1o Facebook \\u0111\\u1ebfn \\u0111\\u00fang m\\u1ee5c ti\\u00eau<\\/h3>\\r\\n\\r\\n<p>V\\u1edbi nh\\u1eefng t\\u00ednh n\\u0103ng v\\u01b0\\u1ee3t tr\\u1ed9i c\\u1ee7a Facebook nh\\u01b0 b\\u1ed9 l\\u1ecdc th\\u00f4ng minh; l\\u1ef1a ch\\u1ecdn v\\u1ecb tr\\u00ed \\u0111\\u1ecba l\\u00fd, \\u0111\\u1ed9 tu\\u1ed5i, s\\u1edf th\\u00edch, gi\\u1edbi t\\u00ednh, nh\\u00f3m \\u0111\\u1ed1i t\\u01b0\\u1ee3ng, ch\\u1ee9c v\\u1ee5\\u2026 v\\u1edbi nh\\u1eefng t\\u00ednh n\\u0103ng n\\u00e0y qu\\u1ea3ng c\\u00e1o Facebook ch\\u1ec9 hi\\u1ec3n th\\u1ecb qu\\u1ea3ng c\\u00e1o tr\\u00ean nh\\u1eefng ng\\u01b0\\u1eddi thu\\u1ed9c nh\\u00f3m \\u0111\\u1ed1i t\\u01b0\\u1ee3ng m\\u00e0 b\\u1ea1n mu\\u1ed1n gi\\u1edbi h\\u1ea1n theo b\\u1ed9 l\\u1ecdc c\\u1ee7a Facebook.<\\/p>\\r\\n\\r\\n<h3>Qu\\u1ea3ng c\\u00e1o Facebook<\\/h3>\\r\\n\\r\\n<p>Qu\\u1ea3ng c\\u00e1o Facebook lu\\u00f4n b\\u1eaft bu\\u1ed9c ph\\u1ea3i g\\u1eafn li\\u1ec1n v\\u1edbi m\\u1ed9t ho\\u1eb7c nhi\\u1ec1u \\u201ch\\u00ecnh \\u1ea3nh\\u201d ho\\u1eb7c \\u201cvideo clip\\u201d tr\\u00ean nh\\u1eefng m\\u1eabu qu\\u1ea3ng c\\u00e1o. Do v\\u1eady m\\u00e0 nh\\u1eefng qu\\u1ea3ng c\\u00e1o Facebook c\\u1ee7a b\\u1ea1n d\\u1ec5 d\\u00e0ng \\u0111\\u01b0\\u1ee3c ch\\u00fa \\u00fd v\\u00e0 thu h\\u00fat ng\\u01b0\\u1eddi d\\u00f9ng; c\\u00f9ng v\\u1edbi t\\u00ednh lan truy\\u1ec1n v\\u00e0 chia s\\u1ebb r\\u1ed9ng r\\u00e3i c\\u1ee7a Facebook c\\u0169ng gi\\u00fap gia t\\u0103ng s\\u1ef1 ph\\u1ee7 s\\u00f3ng t\\u1ed1i \\u0111a v\\u1ec1 nh\\u1eadn di\\u1ec7n th\\u01b0\\u01a1ng hi\\u1ec7u\\/s\\u1ea3n ph\\u1ea9m c\\u1ee7a b\\u1ea1n \\u0111\\u1ebfn v\\u1edbi c\\u00f4ng ch\\u00fang. Qu\\u1ea3ng c\\u00e1o Facebook hi\\u1ec7u qu\\u1ea3 v\\u1edbi t\\u00ednh n\\u0103ng lan truy\\u1ec1n nhanh.<\\/p>\\r\\n\\r\\n<p>Trong c\\u00e1c k\\u00eanh qu\\u1ea3ng c\\u00e1o th\\u00ec \\u0111\\u1ed9 lan truy\\u1ec1n r\\u1ed9ng r\\u00e3i v\\u00e0 nhanh ch\\u00f3ng nh\\u1ea5t thu\\u1ed9c v\\u1ec1 k\\u00eanh qu\\u1ea3ng c\\u00e1o Facebook, nh\\u1eefng m\\u1eabu qu\\u1ea3ng c\\u00e1o Facebook d\\u1ec5 d\\u00e0ng \\u0111\\u01b0\\u1ee3c lan truy\\u1ec1n r\\u1ed9ng r\\u00e3i v\\u1edbi t\\u1ed1c \\u0111\\u1ed9 nhanh ch\\u00f3ng b\\u1edfi c\\u00e1c t\\u00ednh n\\u0103ng; Y\\u00eau th\\u00edch <a href=\\\"https:\\/\\/vi.wikipedia.org\\/wiki\\/Like\\\">(Like)<\\/a>, chia s\\u1ebb (share)\\u2026 v\\u00e0 t\\u00ednh k\\u1ebft n\\u1ed1i b\\u1eafc c\\u1ea7u t\\u1eeb ng\\u01b0\\u1eddi n\\u00e0y v\\u1edbi ng\\u01b0\\u1eddi kh\\u00e1c.<\\/p>\\r\\n\\r\\n<h3>Qu\\u1ea3ng c\\u00e1o Facebook c\\u00f3 t\\u00ednh c\\u1ed9ng \\u0111\\u1ed3ng cao<\\/h3>\\r\\n\\r\\n<p>V\\u1edbi t\\u00ednh n\\u0103ng c\\u1ed9ng \\u0111\\u1ed3ng cao th\\u00ec c\\u00e1c m\\u1eabu qu\\u1ea3ng c\\u00e1o Facebook s\\u1ebd gi\\u00fap b\\u1ea1n d\\u1ec5 d\\u00e0ng ti\\u1ebfp c\\u1eadn v\\u00e0 t\\u01b0\\u01a1ng t\\u00e1c v\\u1edbi c\\u00e1c kh\\u00e1ch h\\u00e0ng th\\u00f4ng qua c\\u00e1c m\\u1eabu qu\\u1ea3ng c\\u00e1o Facebook c\\u1ee7a b\\u1ea1n t\\u1eeb \\u0111\\u00f3 n\\u00e2ng cao kh\\u1ea3 n\\u0103ng ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng v\\u00e0 thu th\\u1eadp th\\u00f4ng tin v\\u1ec1 s\\u1ef1 h\\u00e0i l\\u00f2ng v\\u00e0 nh\\u1eefng g\\u00ec ch\\u01b0a h\\u00e0i l\\u00f2ng \\u0111\\u1ed1i v\\u1edbi s\\u1ea3n ph\\u1ea9m c\\u1ee7a doanh nghi\\u1ec7p b\\u1ea1n. T\\u1eeb \\u0111\\u00f3 t\\u1ea1o m\\u1ed1i li\\u00ean k\\u1ebft ch\\u1eb7t ch\\u1ebd gi\\u1eefa doanh nghi\\u1ec7p b\\u1ea1n v\\u00e0 kh\\u00e1ch h\\u00e0ng; gi\\u00fap t\\u0103ng uy t\\u00edn th\\u01b0\\u01a1ng hi\\u1ec7u, uy t\\u00edn doanh nghi\\u1ec7p b\\u1ea1n \\u0111\\u1ed1i v\\u1edbi ng\\u01b0\\u1eddi ti\\u00eau d\\u00f9ng.<\\/p>\\r\\n\\r\\n<h2><strong>C\\u00e1c D\\u1ea1ng Qu\\u1ea3ng C\\u00e1o Facebook<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>H\\u00ecnh th\\u1ee9c qu\\u1ea3ng c\\u00e1o Facebook Page Post:<\\/strong><\\/h3>\\r\\n\\r\\n<p>&nbsp;Qu\\u1ea3ng c\\u00e1o Page Post l\\u00e0 h\\u00ecnh th\\u1ee9c qu\\u1ea3ng c\\u00e1o m\\u1ed9t b\\u00e0i vi\\u1ebft tr\\u00ean Fanpage; k\\u00e8m theo \\u0111\\u00f3 l\\u00e0 m\\u1ed9t ho\\u1eb7c nhi\\u1ec1u h\\u00ecnh \\u1ea3nh v\\u1ec1 s\\u1ea3n ph\\u1ea9m v\\u00e0 th\\u01b0\\u01a1ng hi\\u1ec7u c\\u1ee7a b\\u1ea1n. Gi\\u00fap t\\u0103ng l\\u01b0\\u1ee3t qu\\u1ea3ng b\\u00e1 s\\u1ea3n ph\\u1ea9m c\\u1ee7a b\\u1ea1n \\u0111\\u1ebfn v\\u1edbi c\\u1ed9ng \\u0111\\u1ed3ng v\\u00e0 t\\u0103ng \\u0111\\u1ed9 t\\u01b0\\u01a1ng t\\u00e1c c\\u1ee7a kh\\u00e1ch h\\u00e0ng l\\u00ean m\\u1eabu qu\\u1ea3ng c\\u00e1o c\\u1ee7a b\\u1ea1n qua c\\u00e1c h\\u00e0nh vi; Like post, chia s\\u1ebb \\u201cshare\\u201d, comment, photo view,\\u2026 \\u0110\\u1ed3ng th\\u1eddi c\\u0169ng t\\u0103ng l\\u01b0\\u1ee3ng fan t\\u1ef1 nhi\\u00ean cho fanpage c\\u1ee7a b\\u1ea1n. H\\u00ecnh th\\u1ee9c n\\u00e0y ch\\u1ec9 t\\u00ednh ti\\u1ec1n khi kh\\u00e1ch h\\u00e0ng c\\u00f3 t\\u01b0\\u01a1ng t\\u00e1c l\\u00ean m\\u1eabu qu\\u1ea3ng c\\u00e1o Page Post c\\u1ee7a b\\u1ea1n m\\u00e0 th\\u00f4i.&nbsp;<strong>Page Post ph\\u00f9 h\\u1ee3p v\\u1edbi c\\u00e1c l\\u00e3nh v\\u1ef1c kinh doanh nh\\u01b0<\\/strong>;<strong> Th\\u1eddi trang, m\\u1ef9 ph\\u1ea9m, b\\u1ea5t \\u0111\\u1ed9ng s\\u1ea3n, th\\u1ea9m m\\u1ef9 vi\\u1ec7n, spa, \\u1ea9m th\\u1ef1c.<\\/strong><\\/p>\\r\\n\\r\\n<h3><strong>H\\u00ecnh th\\u1ee9c qu\\u1ea3ng c\\u00e1o Facebook Page Like:<\\/strong>&nbsp;<\\/h3>\\r\\n\\r\\n<p>Qu\\u1ea3ng c\\u00e1o Facebook Page Like l\\u00e0 h\\u00ecnh th\\u1ee9c gi\\u00fap gia t\\u0103ng l\\u01b0\\u1ee3ng fan \\u201cth\\u1eadt\\u201d tr\\u00ean fanpage c\\u1ee7a b\\u1ea1n. \\u0110\\u00e2y l\\u00e0 h\\u00ecnh th\\u1ee9c qu\\u1ea3ng c\\u00e1o kh\\u00f4ng \\u0111em l\\u1ea1i nhi\\u1ec1u doanh thu cho b\\u1ea1n nh\\u01b0ng ch\\u00fang l\\u1ea1i b\\u1ed5 tr\\u1ee3 cho c\\u00e1c h\\u00ecnh th\\u1ee9c qu\\u1ea3ng c\\u00e1o kh\\u00e1c c\\u1ee7a facebook. V\\u00e0 Page Like c\\u0169ng l\\u00e0 h\\u00ecnh th\\u1ee9c qu\\u1ea3ng c\\u00e1o c\\u1ef1c k\\u00ec quan tr\\u1ecdng trong chi\\u1ebfn l\\u01b0\\u1ee3c Marketing Online; b\\u1edfi \\u0111\\u1ec3 qu\\u1ea3ng c\\u00e1o facebook hi\\u1ec7u qu\\u1ea3 cho c\\u00e1c h\\u00ecnh th\\u1ee9c kh\\u00e1c nh\\u01b0; Page post, Website click, Website click \\u2013 Multi product\\u2026 th\\u00ec vi\\u1ec7c \\u0111\\u1ea7u ti\\u00ean l\\u00e0 ph\\u1ea3i qu\\u1ea3ng c\\u00e1o facebook Page Like. Ngo\\u00e0i ra n\\u1ebfu b\\u1ea1n bi\\u1ebft t\\u1eadn d\\u1ee5ng h\\u00ecnh th\\u1ee9c qu\\u1ea3ng c\\u00e1o facebook; Page, Like t\\u1ed1t \\u0111\\u1ebfn khi l\\u01b0\\u1ee3ng fan tr\\u00ean fanpage c\\u1ee7a b\\u1ea1n l\\u1edbn s\\u1ebd gi\\u00fap b\\u1ea1n t\\u0103ng doanh thu l\\u1edbn m\\u00e0 kh\\u00f4ng c\\u1ea7n ph\\u1ea3i d\\u00f9ng \\u0111\\u1ebfn c\\u00e1c h\\u00ecnh th\\u1ee9c qu\\u1ea3ng c\\u00e1c kh\\u00e1c.<\\/p>\\r\\n\\r\\n<h3><strong>H\\u00ecnh th\\u1ee9c qu\\u1ea3ng c\\u00e1o Facebook Website Click:<\\/strong>&nbsp;<\\/h3>\\r\\n\\r\\n<p>Qu\\u1ea3ng c\\u00e1o Website Click l\\u00e0 h\\u00ecnh th\\u1ee9c qu\\u1ea3ng c\\u00e1o tr\\u00ean facebook c\\u00f3 \\u0111\\u01b0\\u1eddng d\\u1eabn tr\\u1ef1c ti\\u1ebfp \\u0111\\u1ebfn website c\\u1ee7a b\\u1ea1n. H\\u00ecnh th\\u1ee9c n\\u00e0y gi\\u00fap ng\\u01b0\\u1eddi ti\\u00eau d\\u00f9ng \\u0111\\u1ebfn v\\u1edbi website c\\u1ee7a b\\u1ea1n l\\u1ef1a ch\\u1ecdn s\\u1ea3n ph\\u1ea9m tr\\u1ef1c ti\\u1ebfp tr\\u00ean website; \\u0111\\u1ed3ng th\\u1eddi c\\u0169ng qu\\u1ea3ng b\\u00e1 website c\\u1ee7a b\\u1ea1n r\\u1ed9ng r\\u00e3i \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng. Kh\\u00f4ng ch\\u1ec9 v\\u1eady gi\\u00fap t\\u0103ng l\\u01b0\\u1ee3ng traffic website v\\u00e0 l\\u00e0m t\\u0103ng ch\\u1ea5t l\\u01b0\\u1ee3ng website c\\u00f4ng ty b\\u1ea1n.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/demo/demo.jpg', NULL, 1, 157, 1, 'active', 1, 1, '2022-02-13 15:59:41', '2022-11-11 04:39:53', 'san-xuat-noi-dung'),
(36, 1, 'post', 'Quản lý tài khoản', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"18\",\"17\",\"3\",\"2\",\"1\"]}', '/data/cms-image/post/1.jpg', '/data/cms-image/post/1.jpg', 0, 17, NULL, 'active', 1, 1, '2022-07-18 02:34:33', '2022-12-11 15:39:50', 'quan-ly-tai-khoan'),
(37, 1, 'post', 'Về chúng tôi', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/post/3.jpg', '/data/cms-image/post/3.jpg', 0, 11, 99, 'active', 1, 1, '2022-08-06 08:23:52', '2022-12-11 15:39:46', 've-chung-toi'),
(38, 1, 'post', 'Hạng mục', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/post/3.jpg', '/data/cms-image/post/3.jpg', 0, 8, 99, 'active', 1, 1, '2022-08-06 08:24:21', '2022-12-11 15:39:42', 'hang-muc'),
(39, 17, 'service', 'Kiến trúc nhà phố', '{\"price\":\"450000\",\"price_currency\":\"\\u20ab\",\"brief\":{\"vi\":\"Powerful Layout with Responsive functionality that can be adapted to any screen size.\"},\"content\":{\"vi\":\"<h2><strong>Quy tr\\u00ecnh trong thi\\u1ebft k\\u1ebf n\\u1ed9i thi c\\u00f4ng th\\u1ea5t chung c\\u01b0 c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>1. Thu th\\u1eadp th\\u00f4ng tin, t\\u01b0 v\\u1ea5n \\u00fd t\\u01b0\\u1edfng<\\/strong><\\/h3>\\r\\n\\r\\n<p>Nh\\u00e2n vi\\u00ean t\\u01b0 v\\u1ea5n c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t ti\\u1ebfp nh\\u1eadn y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng, trao \\u0111\\u1ed5i h\\u1ed7 tr\\u1ee3 \\u00fd t\\u01b0\\u1edfng thi\\u1ebft k\\u1ebf v\\u00e0 ch\\u1ecdn ch\\u1ea5t li\\u1ec7u ph\\u00f9 h\\u1ee3p d\\u1ef1a v\\u00e0o t\\u00ecnh h\\u00ecnh t\\u00e0i ch\\u00ednh c\\u1ee7a ch\\u1ee7 nh\\u00e0.<\\/p>\\r\\n\\r\\n<h3><strong>2. Kh\\u1ea3o s\\u00e1t c\\u00f4ng tr\\u00ecnh<\\/strong><\\/h3>\\r\\n\\r\\n<p>X\\u00e1c \\u0111\\u1ecbnh r\\u00f5 m\\u1ee5c \\u0111\\u00edch thi\\u1ebft, d\\u1ef1a tr\\u00ean di\\u1ec7n t\\u00edch t\\u00ednh to\\u00e1n c\\u00e1c th\\u00f4ng s\\u1ed1 \\u0111\\u1ec3 gi\\u00fap kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu, phong c\\u00e1ch thi\\u1ebft k\\u1ebf theo \\u00fd t\\u01b0\\u1edfng v\\u00e0 mong mu\\u1ed1n c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>3. K\\u00fd k\\u1ebft h\\u1ee3p \\u0111\\u1ed3ng thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chung c\\u01b0<\\/strong><\\/h3>\\r\\n\\r\\n<p>Sau khi kh\\u1ea3o s\\u00e1t, N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd x\\u00e1c \\u0111\\u1ecbnh \\u0111\\u01b0\\u1ee3c ph\\u01b0\\u01a1ng \\u00e1n t\\u1ed1i \\u01b0u cho c\\u00f4ng tr\\u00ecnh, sau t\\u1eeb 2-4 ng\\u00e0y t\\u00f9y theo kh\\u1ed1i l\\u01b0\\u1ee3ng c\\u00f4ng vi\\u1ec7c N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd thi\\u1ebft k\\u1ebf ra m\\u1eb7t b\\u1eb1ng t\\u1eeb 2D \\u0111\\u1ec3 l\\u00ean ph\\u01b0\\u01a1ng \\u00e1n cho kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu.<\\/p>\\r\\n\\r\\n<p>Sau khi kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd ti\\u1ebfn h\\u00e0nh b\\u00e1o gi\\u00e1 d\\u1ef1a tr\\u00ean h\\u1ea1ng m\\u1ee5c c\\u00f3 s\\u1eb5n c\\u00f9ng c\\u00e1c y\\u00eau c\\u1ea7u ri\\u00eang c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>4. Thi\\u1ebft k\\u1ebf b\\u1ea3n v\\u1ebd 3D<\\/strong><\\/h3>\\r\\n\\r\\n<p>N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd g\\u1eedi c\\u00e1c h\\u00ecnh \\u1ea3nh c\\u00e1c b\\u1ea3n v\\u1ebd 3D chi ti\\u1ebft t\\u1eebng c\\u0103n ph\\u00f2ng (t\\u1eeb \\u0111\\u01b0\\u1eddng n\\u00e9t, \\u0111\\u1ed9 d\\u00e0i, chi\\u1ec1u cao\\u2026)qua cho kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<p>K\\u00e8m theo \\u0111\\u00f3 l\\u00e0 s\\u1ef1 thi\\u1ebft k\\u1ebf ph\\u1ed1i m\\u00e0u s\\u1eafc \\u0111\\u1ec3 kh\\u00e1ch h\\u00e0ng c\\u00f3 th\\u1ec3 h\\u00ecnh dung \\u0111\\u01b0\\u1ee3c t\\u1ed5ng th\\u1ec3 b\\u1ed1 c\\u1ee5c s\\u1ea3n ph\\u1ea9m sau khi thi\\u1ebft k\\u1ebf.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/service/bg.jpg', '/data/cms-image/service/bg.jpg', 0, 6, 6, 'delete', 1, 1, '2022-02-13 15:59:41', '2022-11-11 04:38:13', NULL),
(40, 17, 'service', 'Nội thất nhà hàng, cafe, spa,...', '{\"price\":\"450000\",\"price_currency\":\"\\u20ab\",\"brief\":{\"vi\":\"Powerful Layout with Responsive functionality that can be adapted to any screen size.\"},\"content\":{\"vi\":\"<h2><strong>Quy tr\\u00ecnh trong thi\\u1ebft k\\u1ebf n\\u1ed9i thi c\\u00f4ng th\\u1ea5t chung c\\u01b0 c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>1. Thu th\\u1eadp th\\u00f4ng tin, t\\u01b0 v\\u1ea5n \\u00fd t\\u01b0\\u1edfng<\\/strong><\\/h3>\\r\\n\\r\\n<p>Nh\\u00e2n vi\\u00ean t\\u01b0 v\\u1ea5n c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t ti\\u1ebfp nh\\u1eadn y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng, trao \\u0111\\u1ed5i h\\u1ed7 tr\\u1ee3 \\u00fd t\\u01b0\\u1edfng thi\\u1ebft k\\u1ebf v\\u00e0 ch\\u1ecdn ch\\u1ea5t li\\u1ec7u ph\\u00f9 h\\u1ee3p d\\u1ef1a v\\u00e0o t\\u00ecnh h\\u00ecnh t\\u00e0i ch\\u00ednh c\\u1ee7a ch\\u1ee7 nh\\u00e0.<\\/p>\\r\\n\\r\\n<h3><strong>2. Kh\\u1ea3o s\\u00e1t c\\u00f4ng tr\\u00ecnh<\\/strong><\\/h3>\\r\\n\\r\\n<p>X\\u00e1c \\u0111\\u1ecbnh r\\u00f5 m\\u1ee5c \\u0111\\u00edch thi\\u1ebft, d\\u1ef1a tr\\u00ean di\\u1ec7n t\\u00edch t\\u00ednh to\\u00e1n c\\u00e1c th\\u00f4ng s\\u1ed1 \\u0111\\u1ec3 gi\\u00fap kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu, phong c\\u00e1ch thi\\u1ebft k\\u1ebf theo \\u00fd t\\u01b0\\u1edfng v\\u00e0 mong mu\\u1ed1n c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>3. K\\u00fd k\\u1ebft h\\u1ee3p \\u0111\\u1ed3ng thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chung c\\u01b0<\\/strong><\\/h3>\\r\\n\\r\\n<p>Sau khi kh\\u1ea3o s\\u00e1t, N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd x\\u00e1c \\u0111\\u1ecbnh \\u0111\\u01b0\\u1ee3c ph\\u01b0\\u01a1ng \\u00e1n t\\u1ed1i \\u01b0u cho c\\u00f4ng tr\\u00ecnh, sau t\\u1eeb 2-4 ng\\u00e0y t\\u00f9y theo kh\\u1ed1i l\\u01b0\\u1ee3ng c\\u00f4ng vi\\u1ec7c N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd thi\\u1ebft k\\u1ebf ra m\\u1eb7t b\\u1eb1ng t\\u1eeb 2D \\u0111\\u1ec3 l\\u00ean ph\\u01b0\\u01a1ng \\u00e1n cho kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu.<\\/p>\\r\\n\\r\\n<p>Sau khi kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd ti\\u1ebfn h\\u00e0nh b\\u00e1o gi\\u00e1 d\\u1ef1a tr\\u00ean h\\u1ea1ng m\\u1ee5c c\\u00f3 s\\u1eb5n c\\u00f9ng c\\u00e1c y\\u00eau c\\u1ea7u ri\\u00eang c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>4. Thi\\u1ebft k\\u1ebf b\\u1ea3n v\\u1ebd 3D<\\/strong><\\/h3>\\r\\n\\r\\n<p>N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd g\\u1eedi c\\u00e1c h\\u00ecnh \\u1ea3nh c\\u00e1c b\\u1ea3n v\\u1ebd 3D chi ti\\u1ebft t\\u1eebng c\\u0103n ph\\u00f2ng (t\\u1eeb \\u0111\\u01b0\\u1eddng n\\u00e9t, \\u0111\\u1ed9 d\\u00e0i, chi\\u1ec1u cao\\u2026)qua cho kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<p>K\\u00e8m theo \\u0111\\u00f3 l\\u00e0 s\\u1ef1 thi\\u1ebft k\\u1ebf ph\\u1ed1i m\\u00e0u s\\u1eafc \\u0111\\u1ec3 kh\\u00e1ch h\\u00e0ng c\\u00f3 th\\u1ec3 h\\u00ecnh dung \\u0111\\u01b0\\u1ee3c t\\u1ed5ng th\\u1ec3 b\\u1ed1 c\\u1ee5c s\\u1ea3n ph\\u1ea9m sau khi thi\\u1ebft k\\u1ebf.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/service/bg.jpg', '/data/cms-image/service/bg.jpg', 0, 5, 5, 'delete', 1, 1, '2022-02-13 15:59:41', '2022-11-11 04:38:16', NULL),
(41, 17, 'service', 'Thiết kế website', '{\"price\":\"450000\",\"price_currency\":\"\\u20ab\",\"brief\":{\"vi\":\"Powerful Layout with Responsive functionality that can be adapted to any screen size.\"},\"content\":{\"vi\":\"<h2><strong>Quy tr\\u00ecnh trong thi\\u1ebft k\\u1ebf n\\u1ed9i thi c\\u00f4ng th\\u1ea5t chung c\\u01b0 c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>1. Thu th\\u1eadp th\\u00f4ng tin, t\\u01b0 v\\u1ea5n \\u00fd t\\u01b0\\u1edfng<\\/strong><\\/h3>\\r\\n\\r\\n<p>Nh\\u00e2n vi\\u00ean t\\u01b0 v\\u1ea5n c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t ti\\u1ebfp nh\\u1eadn y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng, trao \\u0111\\u1ed5i h\\u1ed7 tr\\u1ee3 \\u00fd t\\u01b0\\u1edfng thi\\u1ebft k\\u1ebf v\\u00e0 ch\\u1ecdn ch\\u1ea5t li\\u1ec7u ph\\u00f9 h\\u1ee3p d\\u1ef1a v\\u00e0o t\\u00ecnh h\\u00ecnh t\\u00e0i ch\\u00ednh c\\u1ee7a ch\\u1ee7 nh\\u00e0.<\\/p>\\r\\n\\r\\n<h3><strong>2. Kh\\u1ea3o s\\u00e1t c\\u00f4ng tr\\u00ecnh<\\/strong><\\/h3>\\r\\n\\r\\n<p>X\\u00e1c \\u0111\\u1ecbnh r\\u00f5 m\\u1ee5c \\u0111\\u00edch thi\\u1ebft, d\\u1ef1a tr\\u00ean di\\u1ec7n t\\u00edch t\\u00ednh to\\u00e1n c\\u00e1c th\\u00f4ng s\\u1ed1 \\u0111\\u1ec3 gi\\u00fap kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu, phong c\\u00e1ch thi\\u1ebft k\\u1ebf theo \\u00fd t\\u01b0\\u1edfng v\\u00e0 mong mu\\u1ed1n c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>3. K\\u00fd k\\u1ebft h\\u1ee3p \\u0111\\u1ed3ng thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chung c\\u01b0<\\/strong><\\/h3>\\r\\n\\r\\n<p>Sau khi kh\\u1ea3o s\\u00e1t, N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd x\\u00e1c \\u0111\\u1ecbnh \\u0111\\u01b0\\u1ee3c ph\\u01b0\\u01a1ng \\u00e1n t\\u1ed1i \\u01b0u cho c\\u00f4ng tr\\u00ecnh, sau t\\u1eeb 2-4 ng\\u00e0y t\\u00f9y theo kh\\u1ed1i l\\u01b0\\u1ee3ng c\\u00f4ng vi\\u1ec7c N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd thi\\u1ebft k\\u1ebf ra m\\u1eb7t b\\u1eb1ng t\\u1eeb 2D \\u0111\\u1ec3 l\\u00ean ph\\u01b0\\u01a1ng \\u00e1n cho kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu.<\\/p>\\r\\n\\r\\n<p>Sau khi kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd ti\\u1ebfn h\\u00e0nh b\\u00e1o gi\\u00e1 d\\u1ef1a tr\\u00ean h\\u1ea1ng m\\u1ee5c c\\u00f3 s\\u1eb5n c\\u00f9ng c\\u00e1c y\\u00eau c\\u1ea7u ri\\u00eang c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>4. Thi\\u1ebft k\\u1ebf b\\u1ea3n v\\u1ebd 3D<\\/strong><\\/h3>\\r\\n\\r\\n<p>N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd g\\u1eedi c\\u00e1c h\\u00ecnh \\u1ea3nh c\\u00e1c b\\u1ea3n v\\u1ebd 3D chi ti\\u1ebft t\\u1eebng c\\u0103n ph\\u00f2ng (t\\u1eeb \\u0111\\u01b0\\u1eddng n\\u00e9t, \\u0111\\u1ed9 d\\u00e0i, chi\\u1ec1u cao\\u2026)qua cho kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<p>K\\u00e8m theo \\u0111\\u00f3 l\\u00e0 s\\u1ef1 thi\\u1ebft k\\u1ebf ph\\u1ed1i m\\u00e0u s\\u1eafc \\u0111\\u1ec3 kh\\u00e1ch h\\u00e0ng c\\u00f3 th\\u1ec3 h\\u00ecnh dung \\u0111\\u01b0\\u1ee3c t\\u1ed5ng th\\u1ec3 b\\u1ed1 c\\u1ee5c s\\u1ea3n ph\\u1ea9m sau khi thi\\u1ebft k\\u1ebf.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/demo/1233.jpg', NULL, 1, 5, 4, 'active', 1, 1, '2022-02-13 15:59:41', '2022-11-10 04:41:40', 'thiet-ke-website'),
(42, 17, 'service', 'Khách hàng doanh nghiệp', '{\"price\":\"450000\",\"price_currency\":\"\\u20ab\",\"brief\":{\"vi\":\"Powerful Layout with Responsive functionality that can be adapted to any screen size.\"},\"content\":{\"vi\":\"<h2><strong>Quy tr\\u00ecnh trong thi\\u1ebft k\\u1ebf n\\u1ed9i thi c\\u00f4ng th\\u1ea5t chung c\\u01b0 c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>1. Thu th\\u1eadp th\\u00f4ng tin, t\\u01b0 v\\u1ea5n \\u00fd t\\u01b0\\u1edfng<\\/strong><\\/h3>\\r\\n\\r\\n<p>Nh\\u00e2n vi\\u00ean t\\u01b0 v\\u1ea5n c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t ti\\u1ebfp nh\\u1eadn y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng, trao \\u0111\\u1ed5i h\\u1ed7 tr\\u1ee3 \\u00fd t\\u01b0\\u1edfng thi\\u1ebft k\\u1ebf v\\u00e0 ch\\u1ecdn ch\\u1ea5t li\\u1ec7u ph\\u00f9 h\\u1ee3p d\\u1ef1a v\\u00e0o t\\u00ecnh h\\u00ecnh t\\u00e0i ch\\u00ednh c\\u1ee7a ch\\u1ee7 nh\\u00e0.<\\/p>\\r\\n\\r\\n<h3><strong>2. Kh\\u1ea3o s\\u00e1t c\\u00f4ng tr\\u00ecnh<\\/strong><\\/h3>\\r\\n\\r\\n<p>X\\u00e1c \\u0111\\u1ecbnh r\\u00f5 m\\u1ee5c \\u0111\\u00edch thi\\u1ebft, d\\u1ef1a tr\\u00ean di\\u1ec7n t\\u00edch t\\u00ednh to\\u00e1n c\\u00e1c th\\u00f4ng s\\u1ed1 \\u0111\\u1ec3 gi\\u00fap kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu, phong c\\u00e1ch thi\\u1ebft k\\u1ebf theo \\u00fd t\\u01b0\\u1edfng v\\u00e0 mong mu\\u1ed1n c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>3. K\\u00fd k\\u1ebft h\\u1ee3p \\u0111\\u1ed3ng thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chung c\\u01b0<\\/strong><\\/h3>\\r\\n\\r\\n<p>Sau khi kh\\u1ea3o s\\u00e1t, N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd x\\u00e1c \\u0111\\u1ecbnh \\u0111\\u01b0\\u1ee3c ph\\u01b0\\u01a1ng \\u00e1n t\\u1ed1i \\u01b0u cho c\\u00f4ng tr\\u00ecnh, sau t\\u1eeb 2-4 ng\\u00e0y t\\u00f9y theo kh\\u1ed1i l\\u01b0\\u1ee3ng c\\u00f4ng vi\\u1ec7c N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd thi\\u1ebft k\\u1ebf ra m\\u1eb7t b\\u1eb1ng t\\u1eeb 2D \\u0111\\u1ec3 l\\u00ean ph\\u01b0\\u01a1ng \\u00e1n cho kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu.<\\/p>\\r\\n\\r\\n<p>Sau khi kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd ti\\u1ebfn h\\u00e0nh b\\u00e1o gi\\u00e1 d\\u1ef1a tr\\u00ean h\\u1ea1ng m\\u1ee5c c\\u00f3 s\\u1eb5n c\\u00f9ng c\\u00e1c y\\u00eau c\\u1ea7u ri\\u00eang c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>4. Thi\\u1ebft k\\u1ebf b\\u1ea3n v\\u1ebd 3D<\\/strong><\\/h3>\\r\\n\\r\\n<p>N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd g\\u1eedi c\\u00e1c h\\u00ecnh \\u1ea3nh c\\u00e1c b\\u1ea3n v\\u1ebd 3D chi ti\\u1ebft t\\u1eebng c\\u0103n ph\\u00f2ng (t\\u1eeb \\u0111\\u01b0\\u1eddng n\\u00e9t, \\u0111\\u1ed9 d\\u00e0i, chi\\u1ec1u cao\\u2026)qua cho kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<p>K\\u00e8m theo \\u0111\\u00f3 l\\u00e0 s\\u1ef1 thi\\u1ebft k\\u1ebf ph\\u1ed1i m\\u00e0u s\\u1eafc \\u0111\\u1ec3 kh\\u00e1ch h\\u00e0ng c\\u00f3 th\\u1ec3 h\\u00ecnh dung \\u0111\\u01b0\\u1ee3c t\\u1ed5ng th\\u1ec3 b\\u1ed1 c\\u1ee5c s\\u1ea3n ph\\u1ea9m sau khi thi\\u1ebft k\\u1ebf.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/demo/1233.jpg', NULL, 1, 42, 3, 'active', 1, 1, '2022-02-13 15:59:41', '2022-11-10 04:41:32', 'khach-hang-doanh-nghiep'),
(45, 30, 'product', 'Sàn gỗ Timbee', '{\"price\":null,\"price_old\":null,\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/about_us/tb_a11.jpg', NULL, 1, 12, NULL, 'delete', 1, 1, '2022-11-21 09:31:42', '2022-12-31 03:38:09', 'san-go-timbee'),
(51, 32, 'product', 'Ghế Sofa Xám', '{\"price\":\"23000000\",\"price_old\":\"28000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"Compellingly cultivate synergistic infrastructures rather than fully tested opportunities. Synergistically evisculate web-enabled interfaces.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/2.jpg', '/data/cms-image/1/2-1.jpg', 1, 43, 1, 'active', 1, 1, '2022-12-31 03:39:08', '2024-06-24 13:27:28', 'ghe-sofa-xam'),
(52, 36, 'product', 'Đèn trần', '{\"price\":\"500000\",\"price_old\":\"600000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"Compellingly cultivate synergistic infrastructures rather than fully tested opportunities. Synergistically evisculate web-enabled interfaces.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/3.jpg', '/data/cms-image/1/3-1.jpg', 1, 28, 2, 'active', 1, 1, '2022-12-31 03:39:48', '2023-11-13 16:54:25', 'den-tran'),
(53, 33, 'product', 'Ghế cao', '{\"price\":\"600000\",\"price_old\":\"800000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"Compellingly cultivate synergistic infrastructures rather than fully tested opportunities. Synergistically evisculate web-enabled interfaces.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/4-1.jpg', '/data/cms-image/1/4.jpg', 1, 11, 3, 'active', 1, 1, '2022-12-31 03:40:49', '2023-11-13 16:55:02', 'ghe-cao'),
(54, 32, 'product', 'Bộ bàn ghế Sofa', '{\"price\":\"50000000\",\"price_old\":\"60000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"Compellingly cultivate synergistic infrastructures rather than fully tested opportunities. Synergistically evisculate web-enabled interfaces.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/5.jpg', '/data/cms-image/1/5-1.jpg', 1, 12, 4, 'active', 1, 1, '2022-12-31 03:41:38', '2023-11-13 16:55:31', 'bo-ban-ghe-sofa'),
(55, 36, 'product', 'Giá treo quần áo', '{\"price\":\"500000\",\"price_old\":\"600000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"Compellingly cultivate synergistic infrastructures rather than fully tested opportunities. Synergistically evisculate web-enabled interfaces.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/6.jpg', NULL, 1, 46, 5, 'active', 1, 1, '2022-12-31 03:42:15', '2023-11-13 16:54:31', 'gia-treo-quan-ao'),
(56, 36, 'product', 'Đèn ngủ vàng gold', '{\"price\":\"800000\",\"price_old\":\"1000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"Compellingly cultivate synergistic infrastructures rather than fully tested opportunities. Synergistically evisculate web-enabled interfaces.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/7.jpg', NULL, 1, 29, 6, 'active', 1, 1, '2022-12-31 03:42:48', '2024-06-24 13:27:27', 'den-ngu-vang-gold'),
(57, 34, 'product', 'Bộ ghế đệm trắng', '{\"price\":\"10000000\",\"price_old\":\"12000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"Compellingly cultivate synergistic infrastructures rather than fully tested opportunities. Synergistically evisculate web-enabled interfaces.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/8-1.jpg', '/data/cms-image/1/8.jpg', 1, 5, 7, 'active', 1, 1, '2022-12-31 03:43:34', '2023-04-11 07:54:30', 'bo-ghe-dem-trang'),
(58, 33, 'product', 'Ghế bành', '{\"price\":\"800000\",\"price_old\":\"1000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"Compellingly cultivate synergistic infrastructures rather than fully tested opportunities. Synergistically evisculate web-enabled interfaces.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/9-1.jpg', '/data/cms-image/1/9.jpg', 1, 0, 8, 'active', 1, 1, '2022-12-31 03:44:55', '2023-01-02 17:13:33', 'ghe-banh'),
(59, 32, 'product', 'Ghế Sofa Gỗ Cao Su Tự Nhiên', '{\"price\":\"9000000\",\"price_old\":null,\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/sofa2.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 06:46:42', '2023-01-03 06:46:42', 'ghe-sofa-go-cao-su-tu-nhien'),
(60, 32, 'product', 'Sofa Gỗ Tràm Tự Nhiên MOHO', '{\"price\":\"15000000\",\"price_old\":\"20000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/sofa3.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 10:38:58', '2023-01-03 10:38:58', 'sofa-go-tram-tu-nhien-moho'),
(61, 32, 'product', 'Ghế Sofa MOHO KOGE', '{\"price\":\"7000000\",\"price_old\":\"8500000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/sofa4.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 10:39:49', '2023-01-03 10:39:49', 'ghe-sofa-moho-koge'),
(62, 32, 'product', 'Bộ sofa 4 món cao cấp', '{\"price\":\"9000000\",\"price_old\":\"10000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"87\",\"88\",\"60\"]}', '/data/cms-image/1/sofa7.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 10:42:42', '2023-01-03 17:04:47', 'sofa-may-25-cho-hien-dai-da-mushroom'),
(63, 33, 'product', 'Ghế Eames trong suốt có đệm', '{\"price\":\"4000000\",\"price_old\":\"5000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"66\",\"64\",\"65\"]}', '/data/cms-image/1/ghe2.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 10:53:01', '2023-01-03 17:04:05', 'ghe-eames-trong-suot-co-dem'),
(64, 33, 'product', 'Ghế thổ cẩm có gác tay', '{\"price\":\"3000000\",\"price_old\":\"3500000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"66\",\"63\",\"65\"]}', '/data/cms-image/1/ghe1.JPG', NULL, 0, 1, NULL, 'active', 1, 1, '2023-01-03 10:53:55', '2023-01-03 17:06:51', 'ghe-tho-cam-co-gac-tay'),
(65, 33, 'product', 'Ghế quầy bọc da', '{\"price\":\"3000000\",\"price_old\":\"4000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"66\",\"64\",\"63\"]}', '/data/cms-image/1/ghe3.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 10:55:50', '2023-01-03 17:02:23', 'ghe-quay-boc-da'),
(66, 33, 'product', 'Ghế bàn ăn Sofi hiện đại', '{\"price\":\"3500000\",\"price_old\":\"4000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/ghe4.JPG', NULL, 0, 2, NULL, 'active', 1, 1, '2023-01-03 10:57:15', '2023-01-04 02:00:29', 'ghe-ban-an-sofi-hien-dai'),
(67, 34, 'product', 'Giường ngủ liền tủ quần áo giá rẻ', '{\"price\":\"9000000\",\"price_old\":\"10000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/beds5.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:33:35', '2023-01-03 14:33:35', 'giuong-ngu-lien-tu-quan-ao-gia-re');
INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(68, 34, 'product', 'Giường ngủ cao cấp GN', '{\"price\":\"15000000\",\"price_old\":\"20000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"69\",\"57\",\"67\"]}', '/data/cms-image/1/beds2.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:34:16', '2023-01-03 17:01:56', 'giuong-ngu-cao-cap-gn'),
(69, 34, 'product', 'Giường đa năng bọc đệm GN', '{\"price\":\"7000000\",\"price_old\":\"8500000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"68\",\"67\",\"57\"]}', '/data/cms-image/1/beds4.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:34:49', '2023-01-03 17:01:24', 'giuong-da-nang-boc-dem-gn'),
(70, 34, 'product', 'Giường ngủ cao cấp phong cách hoàng gia', '{\"price\":\"35000000\",\"price_old\":\"40000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"71\",\"68\",\"69\"]}', '/data/cms-image/1/beds3.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:35:55', '2023-01-03 17:01:05', 'giuong-ngu-cao-cap-phong-cach-hoang-gia'),
(71, 34, 'product', 'Giường ngủ hiện đại', '{\"price\":\"15000000\",\"price_old\":\"20000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"70\",\"69\",\"68\"]}', '/data/cms-image/1/bed1.JPG', NULL, 0, 2, NULL, 'active', 1, 1, '2023-01-03 14:36:41', '2023-01-03 17:00:42', 'giuong-ngu-hien-dai'),
(72, 35, 'product', 'Bộ bàn ăn 4 ghế Linda nhập khẩu BA', '{\"price\":\"3000000\",\"price_old\":\"4000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/ban1.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:44:24', '2023-01-03 14:44:24', 'bo-ban-an-4-ghe-linda-nhap-khau-ba'),
(73, 35, 'product', 'Bộ bàn ăn 4 ghế hiện đại nhập khẩu BA', '{\"price\":\"7000000\",\"price_old\":\"8500000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/ban2.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:44:56', '2023-01-03 14:44:56', 'bo-ban-an-4-ghe-hien-dai-nhap-khau-ba'),
(74, 35, 'product', 'Bàn ăn gỗ sồi nga 6 ghế', '{\"price\":\"9000000\",\"price_old\":\"10000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/ban3.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:45:23', '2023-01-03 14:45:23', 'ban-an-go-soi-nga-6-ghe'),
(75, 35, 'product', 'Bộ bàn ăn 4 ghế sồi mặt đá BA', '{\"price\":\"9000000\",\"price_old\":\"10000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/ban4.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:45:56', '2023-01-03 14:45:56', 'bo-ban-an-4-ghe-soi-mat-da-ba'),
(76, 35, 'product', 'Bộ bàn ăn mango 4 ghế trắng', '{\"price\":\"15000000\",\"price_old\":\"20000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"78\",\"77\",\"74\"]}', '/data/cms-image/1/ban5.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:46:21', '2023-01-03 17:00:13', 'bo-ban-an-mango-4-ghe-trang'),
(77, 35, 'product', 'Bàn trà đan chéo mặt kính BT', '{\"price\":\"3000000\",\"price_old\":\"4000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"73\",\"74\",\"75\"]}', '/data/cms-image/1/ban6.jpg', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:47:49', '2023-01-03 16:59:43', 'ban-tra-dan-cheo-mat-kinh-bt'),
(78, 35, 'product', 'Bàn Trà Đôi Mặt Đá bt', '{\"price\":\"4000000\",\"price_old\":\"5000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"77\",\"79\",\"75\"]}', '/data/cms-image/1/ban7.jpg', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:48:37', '2023-01-03 16:58:57', 'ban-tra-doi-mat-da-bt'),
(79, 35, 'product', 'Bàn trà lồng chim BT', '{\"price\":\"3000000\",\"price_old\":\"4000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"78\",\"76\",\"77\"]}', '/data/cms-image/1/ban8.jpg', NULL, 0, 1, NULL, 'active', 1, 1, '2023-01-03 14:50:14', '2023-01-03 16:58:22', 'ban-tra-long-chim-bt'),
(80, 36, 'product', 'Tủ bếp TB-109', '{\"price\":\"7000000\",\"price_old\":\"8500000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/khac01.jpg', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:56:58', '2023-01-03 14:56:58', 'tu-bep-tb-109'),
(81, 36, 'product', 'kệ tivi treo tường đẹp ktv', '{\"price\":\"7000000\",\"price_old\":\"8500000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/khac03.jpg', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:57:47', '2023-01-03 14:57:47', 'ke-tivi-treo-tuong-dep-ktv'),
(82, 36, 'product', 'Kệ Gỗ Ti Vi Phòng Khách Hiện Đại', '{\"price\":\"7000000\",\"price_old\":\"10000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"84\",\"81\",\"56\"]}', '/data/cms-image/1/khac2.jpg', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:58:37', '2023-01-03 16:57:39', 'ke-go-ti-vi-phong-khach-hien-dai'),
(83, 36, 'product', 'Tủ bếp hiện đại 09', '{\"price\":\"15000000\",\"price_old\":\"20000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"84\",\"81\",\"82\"]}', '/data/cms-image/1/khac04.jpg', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:59:24', '2023-01-03 16:52:40', 'tu-bep-hien-dai-09'),
(84, 36, 'product', 'Tủ bếp phong cách Italy', '{\"price\":\"9000000\",\"price_old\":\"10000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"82\",\"83\",\"85\"]}', '/data/cms-image/1/khac05.jpg', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 15:00:16', '2023-01-03 16:52:12', 'tu-bep-phong-cach-italy'),
(85, 36, 'product', 'Tủ bếp TB 007', '{\"price\":\"15000000\",\"price_old\":\"20000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"82\",\"83\",\"56\"]}', '/data/cms-image/1/khac06.jpg', NULL, 0, 1, NULL, 'active', 1, 1, '2023-01-03 15:00:47', '2023-01-03 17:07:18', 'tu-bep-tb-007'),
(86, 32, 'product', 'Sofa gỗ phòng khách hiện đại SG', '{\"price\":\"15000000\",\"price_old\":\"18000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"\\u2013 Gi\\u01b0\\u1eddng ng\\u1ee7 c\\u00f3 \\u0111a d\\u1ea1ng k\\u00edch th\\u01b0\\u1edbc cho b\\u1ea1n d\\u1ec5 d\\u00e0ng l\\u1ef1a ch\\u1ecdn: 1m6 x 2m, 1m8 x 2m ho\\u1eb7c 2m x 2m2\\r\\n\\r\\n\\u2013 Thi\\u1ebft k\\u1ebf g\\u00f3c xoay linh ho\\u1ea1t, ph\\u00f9 h\\u1ee3p v\\u1edbi kh\\u00f4ng gian gia \\u0111\\u00ecnh b\\u1ea1n.\\r\\n\\r\\n\\u2013 G\\u1ed7 c\\u00f4ng nghi\\u1ec7p \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh v\\u00e0 m\\u1ed1i m\\u1ecdt, n\\u00ean kh\\u00e1ch h\\u00e0ng y\\u00ean t\\u00e2m s\\u1eed d\\u1ee5ng.\\r\\n\\r\\n\\u2013 Thi\\u1ebft k\\u1ebf \\u0111\\u01a1n gi\\u1ea3n sang tr\\u1ecdng hi\\u1ec7n \\u0111\\u1ea1i v\\u00e0 d\\u1ec5 d\\u00e0ng th\\u00e1o r\\u00e1p, di chuy\\u1ec3n\\r\\n\\r\\n\\u2013 Gi\\u00e1 s\\u1ea3n ph\\u1ea9m ch\\u01b0a bao g\\u1ed3m thu\\u1ebf theo lu\\u1eadt hi\\u1ec7n h\\u00e0nh. B\\u00ean c\\u1ea1nh \\u0111\\u00f3, tu\\u1ef3 v\\u00e0o lo\\u1ea1i s\\u1ea3n ph\\u1ea9m, h\\u00ecnh th\\u1ee9c v\\u00e0 \\u0111\\u1ecba ch\\u1ec9 giao h\\u00e0ng m\\u00e0 c\\u00f3 th\\u1ec3 ph\\u00e1t sinh th\\u00eam chi ph\\u00ed kh\\u00e1c nh\\u01b0 ph\\u00ed v\\u1eadn chuy\\u1ec3n, ph\\u1ee5 ph\\u00ed h\\u00e0ng c\\u1ed3ng k\\u1ec1nh, thu\\u1ebf nh\\u1eadp kh\\u1ea9u (\\u0111\\u1ed1i v\\u1edbi \\u0111\\u01a1n h\\u00e0ng giao t\\u1eeb n\\u01b0\\u1edbc ngo\\u00e0i c\\u00f3 gi\\u00e1 tr\\u1ecb tr\\u00ean 1 tri\\u1ec7u \\u0111\\u1ed3ng)\\u2026..\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"60\",\"59\",\"54\"]}', '/data/cms-image/1/sofa11.jpeg', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 15:15:24', '2023-01-03 16:50:56', 'sofa-go-phong-khach-hien-dai-sg'),
(87, 32, 'product', 'Ghế sofa da giá rẻ Hà Nội SF', '{\"price\":\"15000000\",\"price_old\":\"18000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"\\u2013 Gi\\u01b0\\u1eddng ng\\u1ee7 c\\u00f3 \\u0111a d\\u1ea1ng k\\u00edch th\\u01b0\\u1edbc cho b\\u1ea1n d\\u1ec5 d\\u00e0ng l\\u1ef1a ch\\u1ecdn: 1m6 x 2m, 1m8 x 2m ho\\u1eb7c 2m x 2m2\\r\\n\\r\\n\\u2013 Thi\\u1ebft k\\u1ebf g\\u00f3c xoay linh ho\\u1ea1t, ph\\u00f9 h\\u1ee3p v\\u1edbi kh\\u00f4ng gian gia \\u0111\\u00ecnh b\\u1ea1n.\\r\\n\\r\\n\\u2013 G\\u1ed7 c\\u00f4ng nghi\\u1ec7p \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh v\\u00e0 m\\u1ed1i m\\u1ecdt, n\\u00ean kh\\u00e1ch h\\u00e0ng y\\u00ean t\\u00e2m s\\u1eed d\\u1ee5ng.\\r\\n\\r\\n\\u2013 Thi\\u1ebft k\\u1ebf \\u0111\\u01a1n gi\\u1ea3n sang tr\\u1ecdng hi\\u1ec7n \\u0111\\u1ea1i v\\u00e0 d\\u1ec5 d\\u00e0ng th\\u00e1o r\\u00e1p, di chuy\\u1ec3n\\r\\n\\r\\n\\u2013 Gi\\u00e1 s\\u1ea3n ph\\u1ea9m ch\\u01b0a bao g\\u1ed3m thu\\u1ebf theo lu\\u1eadt hi\\u1ec7n h\\u00e0nh. B\\u00ean c\\u1ea1nh \\u0111\\u00f3, tu\\u1ef3 v\\u00e0o lo\\u1ea1i s\\u1ea3n ph\\u1ea9m, h\\u00ecnh th\\u1ee9c v\\u00e0 \\u0111\\u1ecba ch\\u1ec9 giao h\\u00e0ng m\\u00e0 c\\u00f3 th\\u1ec3 ph\\u00e1t sinh th\\u00eam chi ph\\u00ed kh\\u00e1c nh\\u01b0 ph\\u00ed v\\u1eadn chuy\\u1ec3n, ph\\u1ee5 ph\\u00ed h\\u00e0ng c\\u1ed3ng k\\u1ec1nh, thu\\u1ebf nh\\u1eadp kh\\u1ea9u (\\u0111\\u1ed1i v\\u1edbi \\u0111\\u01a1n h\\u00e0ng giao t\\u1eeb n\\u01b0\\u1edbc ngo\\u00e0i c\\u00f3 gi\\u00e1 tr\\u1ecb tr\\u00ean 1 tri\\u1ec7u \\u0111\\u1ed3ng)\\u2026..\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"61\",\"59\",\"51\"]}', '/data/cms-image/1/sofa9.jpg', NULL, 0, 2, NULL, 'active', 1, 1, '2023-01-03 15:16:07', '2023-01-03 17:06:25', 'ghe-sofa-da-gia-re-ha-noi-sf'),
(88, 32, 'product', 'Sofa phong cách hiện đại 07', '{\"price\":\"9000000\",\"price_old\":\"10000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"Ch\\u1ea5t li\\u1ec7u c\\u1ee7a gi\\u01b0\\u1eddng g\\u1ed7: G\\u1ed7 c\\u00f4ng nghi\\u1ec7p MDF ph\\u1ee7 melamine nh\\u1eadp kh\\u1ea9u theo ti\\u00eau chu\\u1ea9n ch\\u00e2u \\u00c2u\\r\\nK\\u00edch th\\u01b0\\u1edbc gi\\u01b0\\u1eddng ng\\u1ee7: R\\u1ed9ng 1m6 x D\\u00e0i 2m l\\u1ecdt l\\u00f2ng\\r\\nK\\u00edch th\\u01b0\\u1edbc t\\u1ee7 qu\\u1ea7n \\u00e1o: R\\u1ed9ng 1m6 x Cao 2m2 k\\u1ecbch tr\\u1ea7n\\r\\nB\\u00e0n l\\u00e0m vi\\u1ec7c kh\\u00f4ng h\\u1ed9c: D\\u00e0i 80 x R\\u1ed9ng 40 x Cao 75 cm\\r\\nM\\u00e0u s\\u1eafc:  M\\u00e0u v\\u00e2n g\\u1ed7 s\\u00e1ng k\\u1ebft h\\u1ee3p tr\\u1eafng\"},\"content\":{\"vi\":\"<p>\\u2013 Gi\\u01b0\\u1eddng ng\\u1ee7 c\\u00f3 \\u0111a d\\u1ea1ng k\\u00edch th\\u01b0\\u1edbc cho b\\u1ea1n d\\u1ec5 d\\u00e0ng l\\u1ef1a ch\\u1ecdn: 1m6 x 2m, 1m8 x 2m ho\\u1eb7c 2m x 2m2<\\/p>\\r\\n\\r\\n<p>\\u2013 Thi\\u1ebft k\\u1ebf g\\u00f3c xoay linh ho\\u1ea1t, ph\\u00f9 h\\u1ee3p v\\u1edbi kh\\u00f4ng gian gia \\u0111\\u00ecnh b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p>\\u2013&nbsp;G\\u1ed7 c\\u00f4ng nghi\\u1ec7p \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh v\\u00e0 m\\u1ed1i m\\u1ecdt, n\\u00ean kh\\u00e1ch h\\u00e0ng y\\u00ean t\\u00e2m s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<p>\\u2013 Thi\\u1ebft k\\u1ebf \\u0111\\u01a1n gi\\u1ea3n sang tr\\u1ecdng hi\\u1ec7n \\u0111\\u1ea1i v\\u00e0 d\\u1ec5 d\\u00e0ng th\\u00e1o r\\u00e1p, di chuy\\u1ec3n<\\/p>\\r\\n\\r\\n<p>\\u2013&nbsp;Gi\\u00e1 s\\u1ea3n ph\\u1ea9m ch\\u01b0a bao g\\u1ed3m thu\\u1ebf theo lu\\u1eadt hi\\u1ec7n h\\u00e0nh. B\\u00ean c\\u1ea1nh \\u0111\\u00f3, tu\\u1ef3 v\\u00e0o lo\\u1ea1i s\\u1ea3n ph\\u1ea9m, h\\u00ecnh th\\u1ee9c v\\u00e0 \\u0111\\u1ecba ch\\u1ec9 giao h\\u00e0ng m\\u00e0 c\\u00f3 th\\u1ec3 ph\\u00e1t sinh th\\u00eam chi ph\\u00ed kh\\u00e1c nh\\u01b0 ph\\u00ed v\\u1eadn chuy\\u1ec3n, ph\\u1ee5 ph\\u00ed h\\u00e0ng c\\u1ed3ng k\\u1ec1nh, thu\\u1ebf nh\\u1eadp kh\\u1ea9u (\\u0111\\u1ed1i v\\u1edbi \\u0111\\u01a1n h\\u00e0ng giao t\\u1eeb n\\u01b0\\u1edbc ngo\\u00e0i c\\u00f3 gi\\u00e1 tr\\u1ecb tr\\u00ean 1 tri\\u1ec7u \\u0111\\u1ed3ng)\\u2026..<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"87\",\"62\",\"60\"]}', '/data/cms-image/1/sofa10.jpg', NULL, 0, 5, NULL, 'active', 1, 1, '2023-01-03 15:17:01', '2023-01-03 17:05:05', 'sofa-phong-cach-hien-dai-07'),
(89, 32, 'product', 'SOFA GÓC GIÁ RẺ G-16', '{\"price\":\"15000000\",\"price_old\":\"18000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"Gh\\u1ebf sofa G\\u00d3C k\\u00edch th\\u01b0\\u1edbc ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u c\\u0103n ph\\u00f2ng kh\\u00e1c nhau\\r\\nB\\u1ed9 sofa b\\u1ec1n \\u0111\\u1eb9p theo th\\u1eddi gian khi \\u0111\\u01b0\\u1ee3c l\\u00e0m t\\u1eeb c\\u00e1c ch\\u1ea5t li\\u1ec7u cao c\\u1ea5p\\r\\nKi\\u1ec3u d\\u00e1ng v\\u00e0 m\\u00e0u s\\u1eafc d\\u1ec5 d\\u00e0ng k\\u1ebft h\\u1ee3p v\\u1edbi nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t kh\\u00e1c\\r\\nL\\u01b0ng t\\u1ef1a thi\\u1ebft k\\u1ebf \\u00eam \\u00e1i,ph\\u00f9 h\\u1ee3p v\\u1edbi c\\u01a1 th\\u1ec3 ng\\u01b0\\u1eddi\\r\\nThi\\u1ebft k\\u1ebf ch\\u00e2n g\\u1ed7 c\\u00e1ch \\u0111i\\u1ec7u cho kh\\u00f4ng gian\\r\\nC\\u00f3 gi\\u00e1 c\\u1ea3 c\\u0169ng nh\\u01b0 ch\\u1ebf \\u0111\\u1ed9 b\\u1ea3o h\\u00e0nh t\\u1ed1t nh\\u1ea5t\\r\\nL\\u00f2 xo c\\u00f3 \\u0111\\u1ed9 \\u0111\\u00e0n h\\u1ed3i t\\u1ed1t\\r\\nThi\\u1ebft k\\u1ebf d\\u00e1ng Sofa G\\u00f3c ch\\u1eef L ti\\u1ec7n l\\u1ee3i khi s\\u1eed d\\u1ee5ng\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"86\",\"62\",\"61\"]}', '/data/cms-image/1/sofa15.jpg', NULL, 0, 2, NULL, 'active', 1, 1, '2023-01-04 02:13:36', '2023-01-04 02:56:06', 'sofa-goc-gia-re-g-16'),
(90, 32, 'product', 'Sofa da kem kiểu Nhật – SF046', '{\"price\":\"9000000\",\"price_old\":\"10000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"Ph\\u00f2ng kh\\u00e1ch l\\u00e0 n\\u01a1i ti\\u1ebfp c\\u00e1c b\\u1ea1n b\\u00e8, ng\\u01b0\\u1eddi th\\u00e2n c\\u1ee7a ch\\u00fang ta , c\\u00f3 th\\u1ec3 coi ph\\u00f2ng kh\\u00e1ch l\\u00e0 b\\u1ed9 m\\u1eb7t c\\u1ee7a ng\\u00f4i nh\\u00e0.\\r\\nV\\u00ec l\\u1ebd \\u0111\\u00f3 m\\u00e0 b\\u1ed9 sofa da hi\\u1ec7n \\u0111\\u1ea1i \\u0111\\u01b0\\u1ee3c n\\u1ed9i th\\u1ea5t Ph\\u00fa Th\\u1ecbnh l\\u1ef1a ch\\u1ecdn l\\u00e0 s\\u1ea3n ph\\u1ea9m ch\\u1ee7 \\u0111\\u1ea1o cho ng\\u00f4i nh\\u00e0 b\\u1ea1n ,v\\u1ecb tr\\u00ed trung t\\u00e2m ph\\u00f2ng kh\\u00e1ch nh\\u00ecn ph\\u1ea3i th\\u1ef1c s\\u1ef1 sang tr\\u1ecdng, l\\u1ecbch s\\u1ef1, n\\u1ed5i b\\u1eadt g\\u00e2y \\u1ea5n t\\u01b0\\u1ee3ng v\\u1edbi qu\\u00fd b\\u1ea1n b\\u00e8 c\\u1ee7a kh\\u00e1ch h\\u00e0ng.\\r\\nV\\u1edbi thi\\u1ebft k\\u1ebf hi\\u1ec7n \\u0111\\u1ea1i t\\u1ea1o l\\u00ean m\\u1ed9t b\\u1ed9 sofa sang tr\\u1ecdng theo thi\\u1ebft k\\u1ebf ki\\u1ec3u Nh\\u1eadt B\\u1ea3n. Khung g\\u1ed7 t\\u1ef1 nhi\\u00ean ch\\u1eafc ch\\u1eafn, m\\u00fat Malaysia kh\\u00f4ng v\\u00f5ng n\\u00fan, b\\u1ecdc b\\u00ean ngo\\u00e0i l\\u00e0 da cao c\\u1ea5p c\\u0103ng b\\u00f3ng. T\\u1ea5t c\\u1ea3 t\\u1ea1o n\\u00ean m\\u1ed9t s\\u1ea3n ph\\u1ea9m ho\\u00e0n h\\u1ea3o cho kh\\u00f4ng gian ph\\u00f2ng kh\\u00e1ch nh\\u00e0 b\\u1ea1n.\\r\\n\\r\\n\\u0110\\u1eb7c bi\\u1ec7t t\\u1ea1i Ph\\u00fa Th\\u1ecbnh s\\u1ea3n ph\\u1ea9m c\\u1ee7a b\\u1ea1n c\\u00f3 th\\u1ec3 \\u0111\\u1eb7t l\\u00e0m theo k\\u00edch th\\u01b0\\u1edbc v\\u00e0 m\\u00e0u s\\u1eafc \\u0111\\u1ec3 ph\\u00f9 h\\u1ee3p nh\\u1ea5t cho kh\\u00f4ng gian v\\u00e0 ch\\u1ea1m \\u0111\\u1ebfn s\\u1ef1 h\\u00e0i l\\u00f2ng c\\u1ee7a kh\\u00e1ch h\\u00e0ng.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"88\",\"87\",\"62\"]}', '/data/cms-image/1/Sofa13.jpg', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-04 02:14:58', '2023-01-04 02:47:21', 'sofa-da-kem-kieu-nhat-sf046'),
(91, 32, 'product', 'Ghế sofa góc da G-36', '{\"price\":\"15000000\",\"price_old\":\"18000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"Gh\\u1ebf sofa G\\u00d3C k\\u00edch th\\u01b0\\u1edbc ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u c\\u0103n ph\\u00f2ng kh\\u00e1c nhau\\r\\nB\\u1ed9 sofa b\\u1ec1n \\u0111\\u1eb9p theo th\\u1eddi gian khi \\u0111\\u01b0\\u1ee3c l\\u00e0m t\\u1eeb c\\u00e1c ch\\u1ea5t li\\u1ec7u cao c\\u1ea5p\\r\\nKi\\u1ec3u d\\u00e1ng v\\u00e0 m\\u00e0u s\\u1eafc d\\u1ec5 d\\u00e0ng k\\u1ebft h\\u1ee3p v\\u1edbi nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t kh\\u00e1c\\r\\nL\\u01b0ng t\\u1ef1a thi\\u1ebft k\\u1ebf \\u00eam \\u00e1i,ph\\u00f9 h\\u1ee3p v\\u1edbi c\\u01a1 th\\u1ec3 ng\\u01b0\\u1eddi\\r\\nThi\\u1ebft k\\u1ebf ch\\u00e2n g\\u1ed7 c\\u00e1ch \\u0111i\\u1ec7u cho kh\\u00f4ng gian\\r\\nC\\u00f3 gi\\u00e1 c\\u1ea3 c\\u0169ng nh\\u01b0 ch\\u1ebf \\u0111\\u1ed9 b\\u1ea3o h\\u00e0nh t\\u1ed1t nh\\u1ea5t\\r\\nL\\u00f2 xo c\\u00f3 \\u0111\\u1ed9 \\u0111\\u00e0n h\\u1ed3i t\\u1ed1t\\r\\nThi\\u1ebft k\\u1ebf d\\u00e1ng Sofa G\\u00f3c ch\\u1eef L ti\\u1ec7n l\\u1ee3i khi s\\u1eed d\\u1ee5ng\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"93\",\"92\",\"90\"]}', '/data/cms-image/1/service.png', NULL, 0, 1, NULL, 'active', 1, 1, '2023-01-04 02:18:13', '2023-01-04 02:50:03', 'ghe-sofa-goc-da-g-36'),
(92, 32, 'product', 'Ghế Sofa Gỗ Cao Su Tự Nhiên A7', '{\"price\":\"9000000\",\"price_old\":\"10000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"Ph\\u00f2ng kh\\u00e1ch l\\u00e0 n\\u01a1i ti\\u1ebfp c\\u00e1c b\\u1ea1n b\\u00e8, ng\\u01b0\\u1eddi th\\u00e2n c\\u1ee7a ch\\u00fang ta , c\\u00f3 th\\u1ec3 coi ph\\u00f2ng kh\\u00e1ch l\\u00e0 b\\u1ed9 m\\u1eb7t c\\u1ee7a ng\\u00f4i nh\\u00e0.\\r\\nV\\u00ec l\\u1ebd \\u0111\\u00f3 m\\u00e0 b\\u1ed9 sofa da hi\\u1ec7n \\u0111\\u1ea1i \\u0111\\u01b0\\u1ee3c n\\u1ed9i th\\u1ea5t Ph\\u00fa Th\\u1ecbnh l\\u1ef1a ch\\u1ecdn l\\u00e0 s\\u1ea3n ph\\u1ea9m ch\\u1ee7 \\u0111\\u1ea1o cho ng\\u00f4i nh\\u00e0 b\\u1ea1n ,v\\u1ecb tr\\u00ed trung t\\u00e2m ph\\u00f2ng kh\\u00e1ch nh\\u00ecn ph\\u1ea3i th\\u1ef1c s\\u1ef1 sang tr\\u1ecdng, l\\u1ecbch s\\u1ef1, n\\u1ed5i b\\u1eadt g\\u00e2y \\u1ea5n t\\u01b0\\u1ee3ng v\\u1edbi qu\\u00fd b\\u1ea1n b\\u00e8 c\\u1ee7a kh\\u00e1ch h\\u00e0ng.\\r\\nV\\u1edbi thi\\u1ebft k\\u1ebf hi\\u1ec7n \\u0111\\u1ea1i t\\u1ea1o l\\u00ean m\\u1ed9t b\\u1ed9 sofa sang tr\\u1ecdng theo thi\\u1ebft k\\u1ebf ki\\u1ec3u Nh\\u1eadt B\\u1ea3n. Khung g\\u1ed7 t\\u1ef1 nhi\\u00ean ch\\u1eafc ch\\u1eafn, m\\u00fat Malaysia kh\\u00f4ng v\\u00f5ng n\\u00fan, b\\u1ecdc b\\u00ean ngo\\u00e0i l\\u00e0 da cao c\\u1ea5p c\\u0103ng b\\u00f3ng. T\\u1ea5t c\\u1ea3 t\\u1ea1o n\\u00ean m\\u1ed9t s\\u1ea3n ph\\u1ea9m ho\\u00e0n h\\u1ea3o cho kh\\u00f4ng gian ph\\u00f2ng kh\\u00e1ch nh\\u00e0 b\\u1ea1n.\\r\\n\\r\\n\\u0110\\u1eb7c bi\\u1ec7t t\\u1ea1i Ph\\u00fa Th\\u1ecbnh s\\u1ea3n ph\\u1ea9m c\\u1ee7a b\\u1ea1n c\\u00f3 th\\u1ec3 \\u0111\\u1eb7t l\\u00e0m theo k\\u00edch th\\u01b0\\u1edbc v\\u00e0 m\\u00e0u s\\u1eafc \\u0111\\u1ec3 ph\\u00f9 h\\u1ee3p nh\\u1ea5t cho kh\\u00f4ng gian v\\u00e0 ch\\u1ea1m \\u0111\\u1ebfn s\\u1ef1 h\\u00e0i l\\u00f2ng c\\u1ee7a kh\\u00e1ch h\\u00e0ng.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"91\",\"89\",\"90\"]}', '/data/cms-image/1/sofa2.JPG', NULL, 0, 1, NULL, 'active', 1, 1, '2023-01-03 06:46:42', '2023-01-04 02:48:25', 'ghe-sofa-go-cao-su-tu-nhien-a7'),
(93, 32, 'product', 'Ghế Sofa MOHO KOGE 08', '{\"price\":\"7000000\",\"price_old\":\"8500000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"Ph\\u00f2ng kh\\u00e1ch l\\u00e0 n\\u01a1i ti\\u1ebfp c\\u00e1c b\\u1ea1n b\\u00e8, ng\\u01b0\\u1eddi th\\u00e2n c\\u1ee7a ch\\u00fang ta , c\\u00f3 th\\u1ec3 coi ph\\u00f2ng kh\\u00e1ch l\\u00e0 b\\u1ed9 m\\u1eb7t c\\u1ee7a ng\\u00f4i nh\\u00e0.\\r\\nV\\u00ec l\\u1ebd \\u0111\\u00f3 m\\u00e0 b\\u1ed9 sofa da hi\\u1ec7n \\u0111\\u1ea1i \\u0111\\u01b0\\u1ee3c n\\u1ed9i th\\u1ea5t Ph\\u00fa Th\\u1ecbnh l\\u1ef1a ch\\u1ecdn l\\u00e0 s\\u1ea3n ph\\u1ea9m ch\\u1ee7 \\u0111\\u1ea1o cho ng\\u00f4i nh\\u00e0 b\\u1ea1n ,v\\u1ecb tr\\u00ed trung t\\u00e2m ph\\u00f2ng kh\\u00e1ch nh\\u00ecn ph\\u1ea3i th\\u1ef1c s\\u1ef1 sang tr\\u1ecdng, l\\u1ecbch s\\u1ef1, n\\u1ed5i b\\u1eadt g\\u00e2y \\u1ea5n t\\u01b0\\u1ee3ng v\\u1edbi qu\\u00fd b\\u1ea1n b\\u00e8 c\\u1ee7a kh\\u00e1ch h\\u00e0ng.\\r\\nV\\u1edbi thi\\u1ebft k\\u1ebf hi\\u1ec7n \\u0111\\u1ea1i t\\u1ea1o l\\u00ean m\\u1ed9t b\\u1ed9 sofa sang tr\\u1ecdng theo thi\\u1ebft k\\u1ebf ki\\u1ec3u Nh\\u1eadt B\\u1ea3n. Khung g\\u1ed7 t\\u1ef1 nhi\\u00ean ch\\u1eafc ch\\u1eafn, m\\u00fat Malaysia kh\\u00f4ng v\\u00f5ng n\\u00fan, b\\u1ecdc b\\u00ean ngo\\u00e0i l\\u00e0 da cao c\\u1ea5p c\\u0103ng b\\u00f3ng. T\\u1ea5t c\\u1ea3 t\\u1ea1o n\\u00ean m\\u1ed9t s\\u1ea3n ph\\u1ea9m ho\\u00e0n h\\u1ea3o cho kh\\u00f4ng gian ph\\u00f2ng kh\\u00e1ch nh\\u00e0 b\\u1ea1n.\\r\\n\\r\\n\\u0110\\u1eb7c bi\\u1ec7t t\\u1ea1i Ph\\u00fa Th\\u1ecbnh s\\u1ea3n ph\\u1ea9m c\\u1ee7a b\\u1ea1n c\\u00f3 th\\u1ec3 \\u0111\\u1eb7t l\\u00e0m theo k\\u00edch th\\u01b0\\u1edbc v\\u00e0 m\\u00e0u s\\u1eafc \\u0111\\u1ec3 ph\\u00f9 h\\u1ee3p nh\\u1ea5t cho kh\\u00f4ng gian v\\u00e0 ch\\u1ea1m \\u0111\\u1ebfn s\\u1ef1 h\\u00e0i l\\u00f2ng c\\u1ee7a kh\\u00e1ch h\\u00e0ng.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"90\",\"89\",\"88\"]}', '/data/cms-image/1/sofa4.JPG', NULL, 0, 6, NULL, 'active', 1, 1, '2023-01-03 10:39:49', '2023-01-04 02:51:14', 'ghe-sofa-moho-koge-08'),
(94, 33, 'product', 'Ghế Eames trong suốt có đệm ab', '{\"price\":\"4000000\",\"price_old\":\"5000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"66\",\"64\",\"65\"]}', '/data/cms-image/1/ghe2.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 10:53:01', '2023-01-03 17:04:05', 'ghe-eames-trong-suot-co-dem-ab'),
(95, 33, 'product', 'Ghế thổ cẩm có gác tay êm', '{\"price\":\"3000000\",\"price_old\":\"3500000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"66\",\"63\",\"65\"]}', '/data/cms-image/1/ghe1.JPG', NULL, 0, 1, NULL, 'active', 1, 1, '2023-01-03 10:53:55', '2023-01-03 17:06:51', 'ghe-tho-cam-co-gac-tay-em'),
(96, 33, 'product', 'Ghế quầy bọc da cao cap', '{\"price\":\"3000000\",\"price_old\":\"4000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"66\",\"64\",\"63\"]}', '/data/cms-image/1/ghe3.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 10:55:50', '2023-01-03 17:02:23', 'ghe-quay-boc-da-cao-cap'),
(97, 33, 'product', 'Ghế bàn ăn Sofi hiện đại mới', '{\"price\":\"3500000\",\"price_old\":\"4000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/ghe4.JPG', NULL, 0, 3, NULL, 'active', 1, 1, '2023-01-03 10:57:15', '2023-04-11 07:52:53', 'ghe-ban-an-sofi-hien-dai-moi'),
(98, 34, 'product', 'Giường ngủ liền tủ quần áo giá rẻ nhất Hà Nội', '{\"price\":\"9000000\",\"price_old\":\"10000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/beds5.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:33:35', '2023-01-03 14:33:35', 'giuong-ngu-lien-tu-quan-ao-gia-re-nhat-ha-noi'),
(99, 34, 'product', 'Giường ngủ cao cấp A8', '{\"price\":\"15000000\",\"price_old\":\"20000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"69\",\"57\",\"67\"]}', '/data/cms-image/1/beds2.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:34:16', '2023-01-03 17:01:56', 'giuong-ngu-cao-cap-gn-a8'),
(100, 34, 'product', 'Giường đa năng bọc đệm K9', '{\"price\":\"7000000\",\"price_old\":\"8500000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"68\",\"67\",\"57\"]}', '/data/cms-image/1/beds4.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:34:49', '2023-01-03 17:01:24', 'giuong-da-nang-boc-dem-gn-k9');
INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(101, 34, 'product', 'Giường ngủ cao cấp phong cách hoàng gia k7', '{\"price\":\"35000000\",\"price_old\":\"40000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"71\",\"68\",\"69\"]}', '/data/cms-image/1/beds3.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:35:55', '2023-01-03 17:01:05', 'giuong-ngu-cao-cap-phong-cach-hoang-gia-k7'),
(102, 34, 'product', 'Giường ngủ hiện đại SG', '{\"price\":\"15000000\",\"price_old\":\"20000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"70\",\"69\",\"68\"]}', '/data/cms-image/1/bed1.JPG', NULL, 0, 5, NULL, 'active', 1, 1, '2023-01-03 14:36:41', '2023-03-28 10:06:20', 'giuong-ngu-hien-dai-sg'),
(103, 35, 'product', 'Bộ bàn ăn 4 ghế Linda nhập khẩu QR', '{\"price\":\"3000000\",\"price_old\":\"4000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/ban1.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:44:24', '2023-01-03 14:44:24', 'bo-ban-an-4-ghe-linda-nhap-khau-qr'),
(104, 35, 'product', 'Bộ bàn ăn 4 ghế hiện đại nhập khẩu T6', '{\"price\":\"7000000\",\"price_old\":\"8500000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/ban2.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:44:56', '2023-01-03 14:44:56', 'bo-ban-an-4-ghe-hien-dai-nhap-khau-t6'),
(105, 35, 'product', 'Bàn ăn gỗ sồi nga 6 ghế mới', '{\"price\":\"9000000\",\"price_old\":\"10000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/ban3.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:45:23', '2023-01-03 14:45:23', 'ban-an-go-soi-nga-6-ghe-moi'),
(106, 35, 'product', 'Bộ bàn ăn 4 ghế sồi mặt đá ST', '{\"price\":\"9000000\",\"price_old\":\"10000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/ban4.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:45:56', '2023-01-03 14:45:56', 'bo-ban-an-4-ghe-soi-mat-da-ba-st'),
(107, 35, 'product', 'Bộ bàn ăn mango 4 ghế trắng mới', '{\"price\":\"15000000\",\"price_old\":\"20000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"78\",\"77\",\"74\"]}', '/data/cms-image/1/ban5.JPG', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:46:21', '2023-01-03 17:00:13', 'bo-ban-an-mango-4-ghe-trang-moi'),
(108, 35, 'product', 'Bàn trà đan chéo mặt kính HN', '{\"price\":\"3000000\",\"price_old\":\"4000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"73\",\"74\",\"75\"]}', '/data/cms-image/1/ban6.jpg', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:47:49', '2023-01-03 16:59:43', 'ban-tra-dan-cheo-mat-kinh-hn'),
(109, 36, 'product', 'Tủ bếp phong cách hiện đại', '{\"price\":\"7000000\",\"price_old\":\"8500000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/khac01.jpg', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:56:58', '2023-01-03 14:56:58', 'tu-bep-phong-cach-hien-dai'),
(110, 36, 'product', 'kệ tivi treo tường đẹp SG', '{\"price\":\"7000000\",\"price_old\":\"8500000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/khac03.jpg', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:57:47', '2023-01-03 14:57:47', 'ke-tivi-treo-tuong-dep-sg'),
(111, 36, 'product', 'Kệ Gỗ Ti Vi Phòng Khách Hiện Đại A6', '{\"price\":\"7000000\",\"price_old\":\"10000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"84\",\"81\",\"56\"]}', '/data/cms-image/1/khac2.jpg', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:58:37', '2023-01-03 16:57:39', 'ke-go-ti-vi-phong-khach-hien-dai-a6'),
(112, 36, 'product', 'Tủ bếp hiện đại mới', '{\"price\":\"15000000\",\"price_old\":\"20000000\",\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":\"V\\u1edbi \\u0111\\u1ecbnh h\\u01b0\\u1edbng ph\\u01b0\\u01a1ng tr\\u00e2m mang tr\\u00e3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng v\\u1edbi t\\u1ea5t c\\u1ea3 s\\u1ef1 nhi\\u1ec7t huy\\u1ebft c\\u1ee7a c\\u00f4ng ty. C\\u00f4ng ty c\\u00f3 \\u0111\\u1ed9i ng\\u0169 s\\u1ea3n xu\\u1ea5t l\\u00e0nh ngh\\u1ec1 k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111\\u1ed9i ng\\u0169 ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e2u n\\u0103m d\\u00e0y kinh nghi\\u1ec7m, \\u0111\\u1ed9i ng\\u0169 th\\u1ee3 thi c\\u00f4ng l\\u1eafp \\u0111\\u1eb7t chu \\u0111\\u00e1o t\\u1ec9 m\\u1ec9 k\\u1ebft h\\u1ee3p v\\u1edbi nhau s\\u1ebd t\\u01b0 v\\u1ea5n, ki\\u1ebfn t\\u1ea1o n\\u00ean s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1eb9p nh\\u1ea5t, v\\u00e0 h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng nh\\u1ea5t.\\r\\n\\r\\nHi\\u1ec7n t\\u1ea1i c\\u00f4ng ty ch\\u1ee7 y\\u1ebfu t\\u1eadp trung v\\u1ec1 m\\u1eb7t s\\u1ea3n xu\\u1ea5t t\\u1ee7 qu\\u1ea7n \\u00e1o g\\u1ed7 c\\u00f4ng nghi\\u1ec7p: MDF, MDF ch\\u1ed1ng \\u1ea9m, MDF An C\\u01b0\\u1eddng, MDF s\\u01a1n ph\\u1ee7, Acrylic\\u2026, t\\u1ee7 g\\u1ed7 c\\u00e1nh k\\u00ednh k\\u1ebft h\\u1ee3p LED. Nh\\u1eb1m \\u0111a d\\u1ea1ng m\\u1eabu m\\u00e3 ph\\u00f9 h\\u1ee3p cho nhi\\u1ec1u ki\\u1ec3u c\\u0103n h\\u1ed9, ph\\u00f2ng ng\\u1ee7 kh\\u00e1c nhau.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"84\",\"81\",\"82\"]}', '/data/cms-image/1/khac04.jpg', NULL, 0, 0, NULL, 'active', 1, 1, '2023-01-03 14:59:24', '2023-01-03 16:52:40', 'tu-bep-hien-dai-moi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cms_taxonomys`
--

CREATE TABLE `tb_cms_taxonomys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_cms_taxonomys`
--

INSERT INTO `tb_cms_taxonomys` (`id`, `taxonomy`, `parent_id`, `title`, `json_params`, `is_featured`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(1, 'post', NULL, 'Tin tức', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 3, 'active', 1, 1, '2021-10-15 03:19:10', '2022-12-08 06:58:25', 'tin-tuc'),
(2, 'post', NULL, 'Chia sẻ kiến thức', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 2, 'delete', 1, 1, '2021-10-15 04:01:59', '2022-12-08 06:58:09', 'chia-se-kien-thuc'),
(3, 'service', NULL, 'Thiết kế kiến trúc', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 1, 'delete', 1, 1, '2022-02-12 08:10:39', '2022-12-05 02:49:33', 'thiet-ke-kien-truc'),
(4, 'post', NULL, 'Báo giá', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 2, 'delete', 1, 1, '2022-02-13 15:02:31', '2022-12-08 06:58:03', 'bao-gia'),
(17, 'resource', NULL, 'Dự án', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, NULL, 'active', 1, 1, '2022-08-06 02:39:04', '2022-12-08 06:53:12', 'du-an'),
(18, 'post', NULL, 'Giới thiệu', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 1, 'delete', 1, 1, '2022-08-06 08:22:34', '2022-12-08 06:57:59', 'gioi-thieu'),
(24, 'post', 18, 'Tuyển dụng', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 2, 'delete', 1, 1, '2022-08-19 07:41:33', '2022-12-08 06:57:59', 'tuyen-dung'),
(30, 'product', NULL, 'Sản phẩm', '{\"image\":null,\"image_background\":\"\\/data\\/cms-image\\/1\\/title-area-background-img.jpg\",\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, NULL, 'active', 1, 1, '2022-11-21 09:29:34', '2022-12-31 04:19:31', 'san-pham'),
(31, 'product', NULL, 'Software', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'delete', 1, 1, '2022-11-21 09:30:05', '2022-12-08 06:58:13', 'software'),
(32, 'product', 30, 'Sofa', '{\"image\":null,\"image_background\":\"\\/data\\/cms-image\\/1\\/title-area-background-img.jpg\",\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 1, 'active', 1, 1, '2023-01-02 17:06:23', '2023-01-03 07:30:17', 'sofa'),
(33, 'product', 30, 'Ghế', '{\"image\":null,\"image_background\":\"\\/data\\/cms-image\\/1\\/title-area-background-img.jpg\",\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 2, 'active', 1, 1, '2023-01-02 17:07:42', '2023-01-03 08:13:00', 'ghe'),
(34, 'product', 30, 'Giường', '{\"image\":null,\"image_background\":\"\\/data\\/cms-image\\/1\\/title-area-background-img.jpg\",\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 3, 'active', 1, 1, '2023-01-02 17:08:00', '2023-01-03 08:13:12', 'giuong'),
(35, 'product', 30, 'Bàn', '{\"image\":null,\"image_background\":\"\\/data\\/cms-image\\/1\\/title-area-background-img.jpg\",\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 4, 'active', 1, 1, '2023-01-02 17:08:26', '2023-01-03 08:38:11', 'ban'),
(36, 'product', 30, 'Sản phẩm khác', '{\"image\":null,\"image_background\":\"\\/data\\/cms-image\\/1\\/title-area-background-img.jpg\",\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 5, 'active', 1, 1, '2023-01-02 17:11:20', '2023-01-03 08:38:00', 'san-pham-khac');

-- --------------------------------------------------------

--
-- Table structure for table `tb_components`
--

CREATE TABLE `tb_components` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_components`
--

INSERT INTO `tb_components` (`id`, `component_code`, `parent_id`, `title`, `brief`, `content`, `json_params`, `image`, `image_background`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'menu', NULL, 'Main menu', NULL, NULL, '{\"menu_id\":\"24\"}', NULL, NULL, 1, 'active', 1, 1, '2022-05-04 08:23:05', '2022-05-20 01:38:02'),
(2, 'banner_image', NULL, 'Adv banner', NULL, NULL, NULL, '/data/cms-image/banner/no-banner.jpg', NULL, 2, 'active', 1, 1, '2022-05-04 10:25:30', '2022-05-04 10:25:30'),
(3, 'menu', NULL, 'Primary sidebar', 'Primary sidebar section', NULL, '{\"menu_id\":\"33\"}', NULL, NULL, 3, 'active', 1, 1, '2022-05-19 07:24:44', '2022-05-20 01:38:15'),
(4, 'custom', NULL, 'Footer content', NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-05-19 15:21:27', '2022-05-19 15:21:27'),
(5, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 5, 'delete', 1, 1, '2022-05-20 04:24:40', '2022-05-20 06:23:36'),
(6, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 1, 'active', 1, 1, '2022-05-20 04:27:07', '2022-05-20 04:27:07'),
(7, NULL, 2, 'Right banner 2', NULL, NULL, '{\"url_link\":\"#\",\"url_link_title\":\"View more\",\"target\":\"_self\"}', '/data/banner/architektura-5.jpg', NULL, 2, 'active', 1, 1, '2022-05-20 06:25:03', '2022-05-20 06:25:03'),
(8, NULL, 2, 'Right banner 3', NULL, NULL, '{\"url_link\":null,\"url_link_title\":null,\"target\":\"_self\"}', '/data/banner/ewx_cslxkaio8su.jpg', NULL, 3, 'active', 1, 1, '2022-05-20 06:27:24', '2022-05-20 06:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `tb_component_configs`
--

CREATE TABLE `tb_component_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `component_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_config` tinyint(1) NOT NULL DEFAULT '1',
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_component_configs`
--

INSERT INTO `tb_component_configs` (`id`, `name`, `description`, `component_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Menu', NULL, 'menu', NULL, 1, 1, 'active', 1, 1, '2022-04-26 09:53:00', '2022-04-26 09:53:00'),
(2, 'Custom', NULL, 'custom', NULL, 1, 2, 'active', 1, 1, '2022-04-26 09:53:17', '2022-04-26 09:53:17'),
(3, 'Banner / Image', NULL, 'banner_image', NULL, 1, 3, 'active', 1, 1, '2022-04-26 09:53:50', '2022-04-26 09:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contacts`
--

CREATE TABLE `tb_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'contact',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_contacts`
--

INSERT INTO `tb_contacts` (`id`, `is_type`, `name`, `email`, `phone`, `subject`, `content`, `admin_note`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'newsletter', NULL, 'huuthangb2k50@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-02 08:02:36', '2022-06-02 08:02:36'),
(16, 'newsletter', NULL, 'thangnh.edu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-09-13 09:54:38', '2022-09-13 09:54:38'),
(19, 'call_request', 'Thắng Nguyễn 2', 'thangnh.edu@gmail.com', '0912 568 999', NULL, 'Thử chức năng trên fhm', NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-08 07:14:54', '2022-10-08 07:14:54'),
(22, 'contact', 'Thắng Nguyễn 2', 'huuthangb2k50@gmail.com', '0912 568 999', NULL, 'Liên hệ lại cho tôi nhé', NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-11 07:07:33', '2022-10-11 07:07:33'),
(28, 'call_request', NULL, 'huuthangb2k50@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2022-11-30 07:46:59', '2022-11-30 07:46:59'),
(38, 'contact', 'Nhật Minh', 'nguyenvana@gmail.com', '03666666666', NULL, '123456', NULL, NULL, NULL, 'new', NULL, NULL, '2023-01-03 08:39:45', '2023-01-03 08:39:45'),
(40, 'call_request', NULL, 'huuthangb2k50@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2023-01-04 02:00:14', '2023-01-04 02:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `tb_logs`
--

CREATE TABLE `tb_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `url_referer` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `logged_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_menus`
--

CREATE TABLE `tb_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_menus`
--

INSERT INTO `tb_menus` (`id`, `parent_id`, `name`, `description`, `url_link`, `menu_type`, `system_code`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(24, NULL, 'Menu đầu trang', 'Menu link for main navbar', NULL, 'header', NULL, NULL, 1, 'active', 1, 1, '2022-05-10 10:29:01', '2022-08-10 06:52:06'),
(26, 24, 'Shop', NULL, 'san-pham', 'main', 'public', '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2021-12-08 02:51:06', '2023-01-03 08:29:58'),
(30, 24, 'Giới thiệu', NULL, '/gioi-thieu', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-05-18 16:49:38', '2023-01-03 08:29:58'),
(31, 24, 'Liên hệ', NULL, '/lien-he', NULL, NULL, '{\"target\":\"_self\"}', 4, 'active', 1, 1, '2022-05-18 16:52:41', '2023-01-03 08:29:58'),
(33, NULL, 'LIÊN KẾT NHANH', 'Hiển thị liên kết cuối chân trang', NULL, 'footer', NULL, NULL, 3, 'delete', 1, 1, '2022-05-18 18:47:23', '2022-12-31 04:10:56'),
(34, 33, 'Điều khoản dịch vụ', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-05-18 18:49:06', '2022-08-18 04:34:19'),
(35, 33, 'Chính sách bảo mật', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-05-18 18:49:24', '2022-08-18 04:34:32'),
(36, NULL, 'Menu cuối trang #2', NULL, NULL, 'footer', NULL, NULL, 3, 'delete', 1, 1, '2022-06-02 07:25:15', '2022-08-05 10:14:07'),
(37, 36, 'Chính sách bảo mật thông tin', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-06-02 07:25:33', '2022-06-02 07:25:33'),
(38, 36, 'Hướng dẫn tra cứu', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-06-02 07:25:44', '2022-06-02 07:25:44'),
(46, 33, 'Câu hỏi thường gặp', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-08-05 10:15:12', '2022-08-18 04:34:42'),
(58, 24, 'Trang chủ', NULL, '/', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-08-17 09:34:50', '2023-01-03 08:29:58'),
(64, NULL, 'GIỚI THIỆU', NULL, NULL, 'footer', NULL, NULL, 2, 'delete', 1, 1, '2022-10-17 07:19:46', '2022-12-31 04:10:53'),
(65, 64, 'Câu chuyện Thaiever', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-10-17 07:19:58', '2022-11-30 07:30:20'),
(66, 64, 'Tầm nhìn sứ mệnh', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-10-17 07:20:09', '2022-11-30 07:30:29'),
(67, 64, 'Giá trị cốt lõi', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-10-17 07:20:16', '2022-11-30 07:30:42'),
(68, NULL, 'SẢN PHẨM', NULL, NULL, 'footer', NULL, NULL, 3, 'delete', 1, 1, '2022-11-30 07:30:01', '2022-11-30 07:41:17'),
(69, 64, 'Chiến lược phát triển', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 4, 'active', 1, 1, '2022-11-30 07:30:51', '2022-11-30 07:30:51'),
(70, 64, 'Danh hiệu giải thưởng', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 5, 'active', 1, 1, '2022-11-30 07:30:59', '2022-11-30 07:30:59'),
(74, 26, 'Sofa', NULL, '/sofa', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-12-31 01:58:04', '2023-01-03 08:29:58'),
(75, 26, 'Ghế', NULL, '/ghe', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-12-31 01:58:46', '2023-01-03 08:29:58'),
(76, 26, 'Giường', NULL, '/giuong', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-12-31 01:58:57', '2023-01-03 08:29:58'),
(77, 26, 'Bàn', NULL, '/ban', NULL, NULL, '{\"target\":\"_self\"}', 4, 'active', 1, 1, '2022-12-31 01:59:14', '2023-01-03 08:29:58'),
(78, 26, 'Sản phẩm khác', NULL, '/san-pham-khac', NULL, NULL, '{\"target\":\"_self\"}', 5, 'active', 1, 1, '2022-12-31 01:59:27', '2023-01-03 08:29:58'),
(81, NULL, 'Mạng xã hội', NULL, NULL, 'footer', NULL, NULL, 2, 'active', 1, 1, '2022-12-31 04:08:52', '2022-12-31 04:08:52'),
(82, 81, 'FACEBOOK', NULL, 'facebook.com', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-12-31 04:09:15', '2023-01-03 07:56:35'),
(83, 81, 'INSTAGRAM', NULL, 'instagram.com', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-12-31 04:09:27', '2023-01-03 07:56:45'),
(84, 81, 'TWITTER', NULL, 'twitter.com', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-12-31 04:09:46', '2023-01-03 07:56:55'),
(85, 81, 'YOUTUBE', NULL, 'youtube.com', NULL, NULL, '{\"target\":\"_self\"}', 4, 'active', 1, 1, '2022-12-31 04:09:53', '2023-01-03 07:57:05'),
(86, NULL, 'Liên kết', NULL, NULL, 'footer', NULL, NULL, 3, 'active', 1, 1, '2022-12-31 04:10:13', '2022-12-31 04:10:13'),
(87, 86, 'TRANG CHỦ', NULL, '/', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-12-31 04:10:23', '2022-12-31 04:10:46'),
(88, 86, 'GIỚI THIỆU', NULL, 'gioi-thieu', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-12-31 04:10:34', '2022-12-31 04:10:46'),
(89, 86, 'LIÊN HỆ', NULL, 'lien-he', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-12-31 04:10:44', '2022-12-31 04:10:46'),
(90, NULL, 'Xu hướng', NULL, NULL, 'footer', NULL, NULL, 4, 'active', 1, 1, '2022-12-31 04:11:11', '2022-12-31 04:11:11'),
(91, 90, 'SHOP', NULL, 'san-pham-khac', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-12-31 04:11:25', '2023-01-03 16:23:49'),
(92, 90, 'BÀI VIẾT', NULL, 'gioi-thieu', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-12-31 04:11:39', '2023-01-03 16:24:00'),
(93, 90, 'VỀ CHÚNG TÔI', NULL, 'about', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-12-31 04:11:49', '2022-12-31 04:11:50'),
(94, NULL, 'Chính sách', NULL, NULL, 'footer', NULL, NULL, 5, 'active', 1, 1, '2022-12-31 04:12:09', '2022-12-31 04:12:09'),
(95, 94, 'ĐIỀU KHOẢN DỊCH VỤ', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-12-31 04:12:25', '2022-12-31 04:12:48'),
(96, 94, 'CHÍNH SÁCH HỖ TRỢ', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-12-31 04:12:35', '2022-12-31 04:12:48'),
(97, 94, 'QUYỀN LỢI KHÁCH HÀNG', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-12-31 04:12:47', '2022-12-31 04:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `tb_modules`
--

CREATE TABLE `tb_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_modules`
--

INSERT INTO `tb_modules` (`id`, `module_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'admins', 'Quản lý người dùng', 'Chức năng quản lý người dùng hệ thống', 100, 'active', 1, 1, '2021-10-01 12:35:15', '2022-08-08 06:47:54'),
(5, 'admin_menus', 'Quản lý Menu Admin', NULL, 102, 'active', 1, 1, '2022-03-04 05:19:37', '2022-08-08 06:47:53'),
(6, 'roles', 'Quản lý nhóm quyền', NULL, 101, 'active', 1, 1, '2022-03-04 05:20:18', '2022-08-08 06:47:54'),
(7, 'menus', 'Quản lý Menu Website Public', NULL, 94, 'active', 1, 1, '2022-03-04 05:20:46', '2022-08-08 06:49:15'),
(8, 'block_contents', 'Quản lý Khối nội dung', NULL, 96, 'active', 1, 1, '2022-03-04 05:21:07', '2022-08-08 06:49:14'),
(9, 'pages', 'Quản lý Pages - Trang', NULL, 95, 'active', 1, 1, '2022-03-04 05:21:19', '2022-08-08 06:49:15'),
(10, 'cms_taxonomys', 'Quản lý danh mục - thể loại', NULL, 3, 'active', 1, 1, '2022-03-04 05:21:40', '2022-03-04 05:29:06'),
(11, 'cms_posts', 'Quản lý bài viết', NULL, 4, 'active', 1, 1, '2022-03-04 05:22:17', '2022-03-04 05:29:11'),
(12, 'cms_services', 'Quản lý dịch vụ', NULL, 5, 'deactive', 1, 1, '2022-03-04 05:22:40', '2022-12-07 02:40:50'),
(13, 'cms_products', 'Quản lý sản phẩm', NULL, 6, 'active', 1, 1, '2022-03-04 05:22:52', '2022-11-06 09:15:07'),
(16, 'web_information', 'Quản lý thông tin website', NULL, 91, 'active', 1, 1, '2022-03-04 05:24:37', '2022-08-08 06:49:17'),
(17, 'web_image', 'Quản lý hình ảnh hệ thống', NULL, 92, 'active', 1, 1, '2022-03-04 05:25:38', '2022-08-08 06:49:17'),
(18, 'web_social', 'Quản lý liên kết MXH', NULL, 90, 'active', 1, 1, '2022-03-04 05:25:53', '2022-08-08 06:49:18'),
(19, 'contacts', 'Quản lý liên hệ', NULL, 1, 'active', 1, 1, '2022-03-04 05:26:39', '2022-08-08 06:44:47'),
(20, 'call_request', 'Quản lý đăng ký tư vấn', NULL, NULL, 'active', 1, 1, '2022-08-08 06:42:19', '2022-08-08 06:42:34'),
(21, 'web_source', 'Quản lý mã nhúng CSS - JS', NULL, 93, 'active', 1, 1, '2022-08-08 06:46:02', '2022-08-08 06:49:16'),
(22, 'order_services', 'Quản lý đăng ký dịch vụ', NULL, NULL, 'deactive', 1, 1, '2022-08-08 06:50:09', '2023-01-03 09:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `tb_module_functions`
--

CREATE TABLE `tb_module_functions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `function_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_module_functions`
--

INSERT INTO `tb_module_functions` (`id`, `module_id`, `function_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(7, 19, 'contacts.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 05:32:15', '2022-03-04 05:35:40'),
(8, 19, 'contacts.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 05:35:45', '2022-03-04 05:35:45'),
(9, 19, 'contacts.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 05:35:48', '2022-03-04 05:35:48'),
(10, 19, 'contacts.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 05:35:51', '2022-03-04 05:35:51'),
(11, 19, 'contacts.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 05:35:55', '2022-03-04 05:35:55'),
(12, 19, 'contacts.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 05:35:58', '2022-03-04 05:35:58'),
(27, 1, 'admins.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(28, 1, 'admins.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(29, 1, 'admins.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(30, 1, 'admins.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(31, 1, 'admins.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(32, 1, 'admins.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(39, 5, 'admin_menus.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(40, 5, 'admin_menus.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(41, 5, 'admin_menus.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(42, 5, 'admin_menus.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(43, 5, 'admin_menus.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(44, 5, 'admin_menus.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(45, 6, 'roles.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(46, 6, 'roles.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(47, 6, 'roles.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(48, 6, 'roles.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(49, 6, 'roles.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(50, 6, 'roles.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(51, 7, 'menus.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(52, 7, 'menus.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(53, 7, 'menus.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(54, 7, 'menus.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(55, 7, 'menus.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(56, 7, 'menus.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(57, 8, 'block_contents.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(58, 8, 'block_contents.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(59, 8, 'block_contents.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(60, 8, 'block_contents.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(61, 8, 'block_contents.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(62, 8, 'block_contents.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(63, 9, 'pages.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(64, 9, 'pages.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(65, 9, 'pages.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(66, 9, 'pages.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(67, 9, 'pages.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(68, 9, 'pages.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(75, 10, 'cms_taxonomys.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(76, 10, 'cms_taxonomys.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(77, 10, 'cms_taxonomys.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(78, 10, 'cms_taxonomys.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(79, 10, 'cms_taxonomys.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(80, 10, 'cms_taxonomys.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(81, 11, 'cms_posts.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(82, 11, 'cms_posts.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(83, 11, 'cms_posts.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(84, 11, 'cms_posts.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(85, 11, 'cms_posts.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(86, 11, 'cms_posts.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(87, 12, 'cms_services.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(88, 12, 'cms_services.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(89, 12, 'cms_services.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(90, 12, 'cms_services.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(91, 12, 'cms_services.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(92, 12, 'cms_services.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(93, 13, 'cms_products.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-11-06 09:15:42'),
(94, 13, 'cms_products.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-11-06 09:15:42'),
(95, 13, 'cms_products.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-11-06 09:15:41'),
(96, 13, 'cms_products.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-11-06 09:15:41'),
(97, 13, 'cms_products.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-11-06 09:15:40'),
(98, 13, 'cms_products.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-11-06 09:15:40'),
(117, 16, 'web.information', 'Xem thông tin website', NULL, 1, 'active', 1, 1, '2022-03-04 07:24:06', '2022-03-04 07:24:06'),
(118, 16, 'web.information.update', 'Cập nhật thông tin website', NULL, 2, 'active', 1, 1, '2022-03-04 07:24:24', '2022-03-04 07:24:24'),
(119, 17, 'web.image', 'Xem hình ảnh hệ thống', NULL, 1, 'active', 1, 1, '2022-03-04 07:25:11', '2022-03-04 07:25:11'),
(120, 17, 'web.image.update', 'Cập nhật hình ảnh hệ thống', NULL, 2, 'active', 1, 1, '2022-03-04 07:25:34', '2022-03-04 07:25:34'),
(121, 18, 'web.social', 'Xem liên kết MXH', NULL, 1, 'active', 1, 1, '2022-03-04 07:26:03', '2022-03-04 07:26:03'),
(122, 18, 'web.social.update', 'Cập nhật liên kết MXH', NULL, 2, 'active', 1, 1, '2022-03-04 07:26:23', '2022-03-04 07:26:23'),
(123, 20, 'call_request.destroy', 'Xóa', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:30', '2022-08-08 06:44:30'),
(124, 20, 'call_request.update', 'Sửa thông tin (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:30', '2022-08-08 06:44:30'),
(125, 20, 'call_request.show', 'Sửa thông tin (Form nhập)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:31', '2022-08-08 06:44:31'),
(126, 20, 'call_request.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:31', '2022-08-08 06:44:31'),
(127, 21, 'web.source.update', 'Cập nhật mã', NULL, NULL, 'active', 1, 1, '2022-08-08 06:46:40', '2022-08-08 06:46:40'),
(128, 21, 'web.source', 'Xem chi tiết mã', NULL, NULL, 'active', 1, 1, '2022-08-08 06:46:40', '2022-08-08 06:46:40'),
(129, 22, 'order_services.destroy', 'Xóa', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:30', '2022-08-08 06:51:30'),
(130, 22, 'order_services.update', 'Sửa thông tin (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:30', '2022-08-08 06:51:30'),
(131, 22, 'order_services.edit', 'Sửa thông tin (Form nhập)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:31', '2022-08-08 06:51:31'),
(132, 22, 'order_services.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:31', '2022-08-08 06:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `tb_options`
--

CREATE TABLE `tb_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_system_param` tinyint(1) DEFAULT '1',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_options`
--

INSERT INTO `tb_options` (`id`, `option_name`, `option_value`, `description`, `is_system_param`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(2, 'information', '{\"site_name\":\"N\\u1ed8I TH\\u1ea4T FURNITURE\",\"phone\":\"(+84) 876.59.2882\",\"hotline\":\"(+84) 876.59.2882\",\"email\":\"support@gbd.vn\",\"address\":\"T\\u1ea7ng 8, to\\u00e0 nh\\u00e0 Sannam, s\\u1ed1 78 ph\\u1ed1 Duy T\\u00e2n, P D\\u1ecbch V\\u1ecdng H\\u1eadu, Q c\\u1ea7u Gi\\u1ea5y, Tp H\\u00e0 N\\u1ed9i\",\"seo_title\":\"N\\u1ed8I TH\\u1ea4T FURNITURE - GBD\",\"seo_keyword\":\"N\\u1ed8I TH\\u1ea4T FURNITURE - GBD\",\"seo_description\":\"N\\u1ed8I TH\\u1ea4T FURNITURE - GBD\"}', 'Các dữ liệu cấu trúc liên quan đến thông tin liên hệ của hệ thống website', 0, 1, 1, '2021-10-02 05:06:00', '2024-07-01 13:59:18'),
(5, 'image', '{\"logo_header\":\"\\/data\\/cms-image\\/1\\/header-logo.svg\",\"logo_footer\":null,\"favicon\":\"\\/data\\/cms-image\\/1\\/header-logo.svg\",\"background_breadcrumbs\":null,\"seo_og_image\":\"\\/data\\/cms-image\\/1\\/header-logo.svg\"}', 'Danh sách các hình ảnh cấu hình trên hệ thống tại các vị trí', 0, 1, 1, '2021-10-11 09:22:56', '2024-07-01 13:57:09'),
(6, 'social', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/Gbd.vn1\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"call_now\":\"+84 876592882\",\"zalo\":\"https:\\/\\/zalo.me\\/+84 876592882\"}', 'Danh sách các Social network của hệ thống', 0, 1, 1, '2022-02-14 10:35:40', '2024-07-01 13:59:50'),
(7, 'page', '{\r\n\"frontend.home\":  1\r\n}', NULL, 0, 1, 1, '2022-05-26 11:03:52', '2022-06-09 04:03:39'),
(8, 'source_code', '{\"header\":null,\"footer\":null,\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3724.019381341712!2d105.78888961546387!3d21.031910493045476!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd0905b6cacd304da!2zQ8O0bmcgdHkgY-G7lSBwaOG6p24gdGjGsMahbmcgbeG6oWkgRkhNIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1667354812651!5m2!1svi!2sus\\\" style=\\\"border:0;height:100%\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\" height=\\\"100%\\\"><\\/iframe>\"}', NULL, 0, 1, 1, '2022-06-07 02:24:11', '2022-12-07 02:44:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_orders`
--

CREATE TABLE `tb_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product',
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_note` text COLLATE utf8mb4_unicode_ci,
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_orders`
--

INSERT INTO `tb_orders` (`id`, `is_type`, `customer_id`, `name`, `email`, `phone`, `address`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'service', NULL, 'Quản lý đăng ký sự kiện', 'thangnh.edu@gmail.com', '0912 568 999', NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-31 09:46:37', '2022-10-31 09:46:37'),
(2, 'product', NULL, 'Thắng Nguyễn 2', 'huuthangb2k50@gmail.com', '098 226 9600', NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-31 10:02:12', '2022-10-31 10:02:12'),
(17, 'product', NULL, 'Nhật Minh', 'nguyenvana@gmail.com', '03666666666', 'Hoàng Mai Hà Nội', '123456', NULL, NULL, 'new', NULL, NULL, '2023-01-03 09:51:08', '2023-01-03 09:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order_details`
--

CREATE TABLE `tb_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `discount` double(20,2) DEFAULT NULL,
  `customer_note` text COLLATE utf8mb4_unicode_ci,
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_order_details`
--

INSERT INTO `tb_order_details` (`id`, `order_id`, `item_id`, `quantity`, `price`, `discount`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 1, 44, 1, 5000000.00, NULL, NULL, NULL, '{\"post_type\":\"product\",\"post_link\":\"http:\\/\\/fhmvn.test\\/kho-giao-dien\\/ban-hang\\/mau-website-ban-hang-01-44.html\"}', NULL, NULL, NULL, '2022-10-31 09:46:38', '2022-10-31 09:46:38'),
(2, 2, 44, 1, 5000000.00, NULL, NULL, NULL, '{\"post_type\":\"product\",\"post_link\":\"http:\\/\\/fhmvn.test\\/kho-giao-dien\\/ban-hang\\/mau-website-ban-hang-01-44.html\"}', NULL, NULL, NULL, '2022-10-31 10:02:12', '2022-10-31 10:02:12'),
(21, 17, 53, 2, 600000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 17, 54, 1, 50000000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 18, 57, 1, 10000000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pages`
--

CREATE TABLE `tb_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_page` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_pages`
--

INSERT INTO `tb_pages` (`id`, `name`, `title`, `keyword`, `description`, `content`, `route_name`, `alias`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `is_page`) VALUES
(1, 'Trang chủ', NULL, NULL, NULL, NULL, 'frontend.home', 'trang-chu', '{\"og_image\":null,\"template\":\"home.primary\",\"block_content\":[\"74\",\"19\",\"79\",\"293\",\"82\",\"299\",\"323\",\"327\"]}', 1, 'active', 1, 1, '2022-03-23 09:35:33', '2022-12-31 04:02:28', 1),
(3, 'Danh mục', 'Danh mục', NULL, NULL, NULL, 'frontend.cms.taxonomy', 'danh-muc', '{\"og_image\":null,\"template\":\"post.default\",\"block_content\":[\"94\"]}', 2, 'active', 1, 1, '2022-06-02 11:20:50', '2022-12-07 02:02:15', 0),
(4, 'Chi tiết nội dung', NULL, NULL, NULL, NULL, 'frontend.cms.detail', 'chi-tiet-bai-viet', '{\"og_image\":null,\"template\":\"post.detail\",\"block_content\":[\"112\",\"94\",\"93\"]}', 3, 'active', 1, 1, '2022-06-03 02:52:10', '2022-11-06 09:18:33', 0),
(13, 'Liên hệ', 'Liên hệ với chúng tôi', NULL, NULL, NULL, 'frontend.contact', 'lien-he', '{\"og_image\":null,\"template\":\"contact.default\",\"block_content\":[\"94\"]}', 6, 'active', 1, 1, '2022-06-07 07:35:49', '2023-01-03 16:04:34', 1),
(19, 'Tìm kiếm', NULL, NULL, NULL, NULL, 'frontend.search', 'tim-kiem', '{\"og_image\":null,\"template\":\"search.default\",\"block_content\":[\"94\"]}', 7, 'active', 1, 1, '2022-07-18 08:36:34', '2023-01-03 16:04:46', 1),
(30, 'Đại lý', 'Danh sách đại lý', NULL, NULL, NULL, 'frontend.branch', 'dai-ly', '{\"og_image\":null,\"template\":\"branch.default\",\"block_content\":[\"94\"]}', NULL, 'delete', 1, 1, '2022-12-05 09:09:28', '2022-12-31 04:26:58', 1),
(31, 'Giỏ hàng', 'Giỏ hàng', NULL, NULL, NULL, 'frontend.order.cart', 'gio-hang', '{\"og_image\":null,\"template\":\"cart.default\",\"block_content\":[\"94\"]}', 4, 'active', 1, 1, '2022-12-31 04:26:34', '2022-12-31 04:26:46', 1),
(32, 'Giới thiệu', 'Giới thiệu', NULL, NULL, '<p>Nội Thất Lam Kinh là một doanh nghiệp lâu năm trong lĩnh vực nội thất, chuyên cung cấp nội thất văn phòng, trường học…</P>\r\n<p>Với trên 5 năm kinh nghiệm hợp tác sản xuất cùng các doanh nghiệp vừa &amp; nhỏ, Lam Kinh là đơn vị chuyên cung cấp nội thất văn phòng hàng đầu miền Bắc, thương hiệu uy tín được hàng ngàn công ty, cá nhân tin tưởng và lựa chọn.</p>\r\n\r\n<p>– Các lĩnh vực hoạt động chính: Sản xuất và cung cấp nội thất văn phòng với các mặt hàng như:</p>\r\n\r\n<p>+ Nội thất văn phòng: bàn giám đốc, bàn ghế nhân viên, bàn họp, bàn lễ tân, hộc tủ tài liệu.<br />\r\n+ Nội thất trường học: Bàn ghế tiểu học, bàn ghế học sinh, bàn ghế sinh viên.<br />\r\n+ Nội thất gia đình: Tư vấn thiết kế , thi công lắp đặt hoàn thiện trọn gói căn hộ chung cư, phòng ngủ , phòng khách , phòng bếp<br />\r\nĐồ gia đình có một số mặt hàng như: Tủ giày, tủ quần áo, bàn ăn, sofa gia đình …</p>\r\n\r\n<p>II. Sứ mệnh hoạt động</p>\r\n\r\n<p>Nội Thất Lam Kinh mang tới cho các doanh nghiệp vừa và nhỏ những sản phẩm nội thất chất lượng, với mức giá tiết kiệm nhất nhằm mang tới cho bạn một không gian văn phòng mới với đầy đủ tiện nghi để làm việc.<br />\r\nVới mức giá phải chăng phù hợp với nhu cầu của nhiều khách hàng nên được nhiều khách hàng tin cậy lựa chọn.<br />\r\nIII. Nguyên tắc</p>\r\n\r\n<p>Để phục vụ quý khách ngày một tốt hơn chúng tối luôn có những quy tắc hoạt động chặt chẽ để mang tới cho khách hàng sự hài lòng tốt nhất:</p>\r\n\r\n<p>– Luôn tôn trọng ý kiến góp ý của khách hàng, vì chúng tôi luôn hiểu rằng, những ý kiến đó là động lực, là chìa khóa vươn lên những tầm cao mới.</p>\r\n\r\n<p>– Sản phẩm luôn phải đảm bảo về chất lượng</p>\r\n\r\n<p>– Dịch vụ chuyên nghiệp, linh hoạt và tối đa khâu vận chuyển để tiết kiệm thời gian</p>\r\n\r\n<p>– Hỗ trợ khách hàng hết mình trước cũng như sau quá trình mua hàng.</p>\r\n\r\n<p>IV. Tầm nhìn chiến lược</p>\r\n\r\n<p>Trong tương lai, nội thất Lam Kinh luôn cố gắng và phấn đấu trở thành thương hiệu uy tín, và là đơn vị dẫn đầu trong cung cấp nội thất giá rẻ cho các doanh nghiệp vừa và nhỏ.</p>\r\n\r\n<p>Một khi khách hàng đã chọn nội thất Lam Kinh đảm bảo bạn sẽ hài lòng với chất lượng nội thất tại đây.</p>', 'frontend.page', 'gioi-thieu', '{\"og_image\":null,\"template\":\"page.default\",\"block_content\":[\"94\"]}', 5, 'active', 1, 1, '2023-01-03 15:37:40', '2023-01-03 16:18:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_popups`
--

CREATE TABLE `tb_popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_popups`
--

INSERT INTO `tb_popups` (`id`, `title`, `content`, `image`, `json_params`, `start_time`, `end_time`, `duration`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Home Popup', '<p>Nullam mollis ultrices est. Nulla in justo lacinia, scelerisque purus et, semper tortor. Donec bibendum leo vitae commodo porttitor. Proin tempus sollicitudin odio in feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ultrices vitae nisl tristique commodo. Phasellus porttitor metus at mattis ultricies. In imperdiet nec nunc in tincidunt.</p>\r\n\r\n<p>Curabitur faucibus dolor at dui lobortis, eget dictum nisi mattis. Fusce risus dui, fringilla non elit sit amet, lobortis interdum eros. Donec mattis lectus quis elit fermentum lacinia. Nullam at ligula semper ante mollis pretium. Nam euismod velit ut quam accumsan vestibulum. Etiam diam augue, dapibus ac placerat nec, accumsan eget nibh. Cras sodales, leo ut volutpat laoreet, velit enim pharetra magna, at dapibus lacus elit vel mi. Nullam a massa ac ligula scelerisque maximus. Quisque dictum quis lorem ut sodales. Duis at semper odio. Morbi in sapien vel lacus posuere mattis ac eget ante. Etiam viverra accumsan rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '/data/cms-image/banner/no-banner.jpg', '{\"page\":[\"1\",\"3\",\"4\"]}', '2022-06-27 00:00:00', '2022-06-28 00:00:00', 5, 'active', 1, 1, '2022-06-27 15:22:00', '2022-06-27 18:01:38'),
(2, 'Thông báo bảo trì hệ thống', NULL, '/data/cms-image/banner/1.jpg', '{\"page\":[\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"13\",\"14\",\"15\",\"16\"]}', '2022-06-28 00:00:00', '2022-06-28 00:00:00', NULL, 'deactive', 1, 1, '2022-06-27 15:42:38', '2022-06-27 18:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `tb_roles`
--

CREATE TABLE `tb_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `json_access` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_roles`
--

INSERT INTO `tb_roles` (`id`, `name`, `description`, `json_access`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Quyền quản trị nội dung', 'Dành cho nhân viên thiết kế và cập nhật nội dung', '{\"menu_id\":[\"72\",\"80\",\"62\",\"59\",\"51\",\"52\",\"73\",\"13\",\"70\",\"46\",\"45\",\"44\",\"71\",\"58\",\"42\",\"41\",\"17\"],\"function_code\":[\"call_request.index\",\"call_request.show\",\"call_request.update\",\"call_request.destroy\",\"contacts.index\",\"contacts.create\",\"contacts.store\",\"contacts.edit\",\"contacts.update\",\"contacts.destroy\",\"cms_taxonomys.index\",\"cms_taxonomys.create\",\"cms_taxonomys.store\",\"cms_taxonomys.edit\",\"cms_taxonomys.update\",\"cms_taxonomys.destroy\",\"cms_posts.index\",\"cms_posts.create\",\"cms_posts.store\",\"cms_posts.edit\",\"cms_posts.update\",\"cms_posts.destroy\",\"cms_products.index\",\"cms_products.create\",\"cms_products.store\",\"cms_products.edit\",\"cms_products.update\",\"cms_products.destroy\",\"web.social\",\"web.social.update\",\"web.information\",\"web.information.update\",\"web.image\",\"web.image.update\",\"web.source\",\"web.source.update\",\"menus.index\",\"menus.create\",\"menus.store\",\"menus.edit\",\"menus.update\",\"menus.destroy\",\"pages.index\",\"pages.create\",\"pages.store\",\"pages.edit\",\"pages.update\",\"block_contents.index\",\"block_contents.create\",\"block_contents.store\",\"block_contents.edit\",\"block_contents.update\"]}', 1, 'active', 1, 1, '2021-10-02 10:59:48', '2024-07-01 13:50:17'),
(2, 'Quản trị hệ thống', 'Quyền dành cho người quản trị hệ thống', '{\"menu_id\":[\"72\",\"62\",\"59\",\"51\",\"52\",\"53\",\"73\",\"74\",\"75\",\"13\",\"70\",\"46\",\"45\",\"44\",\"71\",\"58\",\"42\",\"41\",\"17\",\"10\",\"3\",\"5\",\"6\"],\"function_code\":[\"call_request.index\",\"call_request.show\",\"call_request.update\",\"call_request.destroy\",\"contacts.index\",\"contacts.create\",\"contacts.store\",\"contacts.edit\",\"contacts.update\",\"contacts.destroy\",\"cms_taxonomys.index\",\"cms_taxonomys.create\",\"cms_taxonomys.store\",\"cms_taxonomys.edit\",\"cms_taxonomys.update\",\"cms_taxonomys.destroy\",\"cms_posts.index\",\"cms_posts.create\",\"cms_posts.store\",\"cms_posts.edit\",\"cms_posts.update\",\"cms_posts.destroy\",\"cms_products.index\",\"cms_products.create\",\"cms_products.store\",\"cms_products.edit\",\"cms_products.update\",\"cms_products.destroy\",\"web.social\",\"web.social.update\",\"web.information\",\"web.information.update\",\"web.image\",\"web.image.update\",\"web.source\",\"web.source.update\",\"menus.index\",\"menus.create\",\"menus.store\",\"menus.edit\",\"menus.update\",\"menus.destroy\",\"pages.index\",\"pages.create\",\"pages.store\",\"pages.edit\",\"pages.update\",\"pages.destroy\",\"block_contents.index\",\"block_contents.create\",\"block_contents.store\",\"block_contents.edit\",\"block_contents.update\",\"block_contents.destroy\",\"admins.index\",\"admins.create\",\"admins.store\",\"admins.edit\",\"admins.update\",\"admins.destroy\",\"roles.index\",\"roles.create\",\"roles.store\",\"roles.edit\",\"roles.update\",\"roles.destroy\",\"admin_menus.index\",\"admin_menus.create\",\"admin_menus.store\",\"admin_menus.edit\",\"admin_menus.update\",\"admin_menus.destroy\"]}', 2, 'active', 1, 1, '2021-10-02 11:28:09', '2022-12-07 02:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_widgets`
--

CREATE TABLE `tb_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_widgets`
--

INSERT INTO `tb_widgets` (`id`, `widget_code`, `title`, `brief`, `json_params`, `image`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'header', 'Header Style 1', 'Header 1 brief content', '{\"layout\":null,\"style\":null,\"component\":[\"1\",\"2\"]}', NULL, 10, 'active', 1, 1, '2022-05-04 14:59:07', '2022-05-10 07:29:20'),
(2, 'footer', 'Footer Style 1', NULL, '{\"layout\":null,\"style\":null,\"component\":[\"2\",\"1\"]}', NULL, 20, 'active', 1, 1, '2022-05-10 07:29:03', '2022-05-10 07:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `tb_widget_configs`
--

CREATE TABLE `tb_widget_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `widget_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_config` tinyint(1) NOT NULL DEFAULT '1',
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_widget_configs`
--

INSERT INTO `tb_widget_configs` (`id`, `name`, `description`, `widget_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Header', NULL, 'header', NULL, 1, 1, 'active', 1, 1, '2022-04-26 09:40:39', '2022-04-26 09:40:39'),
(2, 'Footer', NULL, 'footer', NULL, 1, 2, 'active', 1, 1, '2022-04-26 09:42:09', '2022-04-26 09:42:09'),
(3, 'Left Sidebar', NULL, 'left_sidebar', NULL, 1, 3, 'active', 1, 1, '2022-04-26 09:42:46', '2022-04-26 09:42:46'),
(4, 'Right Sidebar', NULL, 'right_sidebar', NULL, 1, 4, 'active', 1, 1, '2022-04-26 09:43:02', '2022-04-26 09:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `affiliate_id` int(11) DEFAULT NULL,
  `affiliate_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_score` double NOT NULL DEFAULT '0',
  `total_money` double NOT NULL DEFAULT '0',
  `total_payment` double NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `email_verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `is_super_user` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_view_info` int(11) NOT NULL DEFAULT '0',
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `json_profiles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `affiliate_id`, `affiliate_code`, `total_score`, `total_money`, `total_payment`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type`, `email_verified`, `email_verification_code`, `status`, `is_super_user`, `avatar`, `birthday`, `sex`, `phone`, `count_view_info`, `country_id`, `city_id`, `district_id`, `json_params`, `json_profiles`, `admin_updated_id`) VALUES
(2, NULL, '2', 105091500, 105091500, 0, 'Thắng Nguyễn', 'meta_thangnh', NULL, '$2y$10$V78sbM3Ny/Tvd/bWOLjCLeDDSgLmwlds8tWQh/nhXWCcQheYbtcQy', NULL, '2022-07-11 02:33:03', '2022-07-14 04:28:17', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '098 226 9600', 0, NULL, NULL, NULL, NULL, NULL, 1),
(3, 2, 'mRpdEly6Bx3', 79243750, 79243750, 25850000, 'Thắng Nguyễn EDU', 'huuthangb2k50@gmail.com', NULL, '$2y$10$FLuZlM/WTtFZPKJW4PyC0efVJeTFeWSzichj1d/55v7Qe0aoEKVJu', NULL, '2022-07-11 03:04:45', '2022-07-14 04:28:17', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '096 220 92 11', 0, NULL, NULL, NULL, NULL, NULL, 1),
(4, 3, 'qBmtRsfkwH4', 0, 0, 0, 'Thắng Nguyễn 2', 'meta_test', NULL, '$2y$10$SGOy7paQ82Pt8lbIg1Z0nuAhCR04yxYTIhXbqbK.3HoSSO/FIrumy', NULL, '2022-07-11 03:20:37', '2022-07-11 03:20:37', NULL, 0, NULL, 'active', 0, NULL, NULL, 'female', '1900 1570', 0, NULL, NULL, NULL, NULL, NULL, 1),
(5, 4, 'U7fj3GtOb95', 0, 0, 0, 'Nguyễn Hữu Thắng', 'meta_thangnguyen', NULL, '$2y$10$qb4Y74yT4dQhwk3ER8Cyq.qZBbif//5SLb3JK7PWysraIQ43Gnu/y', NULL, '2022-07-11 03:53:11', '2022-07-11 03:53:11', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '0936.267.568', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 'lM2Z3vEmFM6', 0, 0, 0, 'Bắc Hà AFL', 'meta_bacha', NULL, '$2y$10$36l5V8DsEp7rWar78gGaZe2XvrtKfg6qD/XvB/n/DFj7cg8iwF18y', NULL, '2022-07-11 18:08:34', '2022-07-11 18:08:34', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0936.267.568', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'ajXYJMQwtg7', 0, 0, 0, 'Lịch sử Apply', 'test_lai', NULL, '$2y$10$GpNMSXWwC4fHsRciLRCabOIZFakxt1KUh.HkD/mAAaBQYw.C03nd.', NULL, '2022-07-11 18:11:04', '2022-07-11 18:11:04', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0912 568 999', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '1mQVhkwtR38', 0, 0, 0, 'Đặt lại mật khẩu', 'huuthangb2k250@gmail.com', NULL, '$2y$10$h2VUcj4EumZJHqG/ERzGDex59lR0qff6gkqD/9G4k8NlgE0ASaBEC', NULL, '2022-07-11 18:13:20', '2022-07-11 18:13:20', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '098 226 9600', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 4, 'mLu1qHUYPF9', 0, 0, 0, 'Tags', 'test2@gmail.com', NULL, '$2y$10$g5hcIFbN9zr37wiikne1CuEmLMUC9JMUDfjvyu1URsUGCTLV5h5FK', NULL, '2022-07-11 18:25:50', '2022-07-11 18:30:37', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '1900 1570', 0, NULL, NULL, NULL, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `admins_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_admin_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_admin_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_affiliate_historys_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_affiliate_historys_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_affiliate_payments_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_affiliate_payments_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_blocks`
--
ALTER TABLE `tb_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_blocks_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_blocks_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_block_contents_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_block_contents_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_bookings`
--
ALTER TABLE `tb_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_bookings_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_bookings_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_branchs`
--
ALTER TABLE `tb_branchs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_branchs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_branchs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_posts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_posts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_taxonomys_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_taxonomys_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_components`
--
ALTER TABLE `tb_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_components_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_components_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_component_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_component_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_contacts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_contacts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_logs`
--
ALTER TABLE `tb_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_modules`
--
ALTER TABLE `tb_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_modules_module_code_unique` (`module_code`),
  ADD KEY `tb_modules_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_modules_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_module_functions_function_code_unique` (`function_code`),
  ADD KEY `tb_module_functions_module_id_foreign` (`module_id`),
  ADD KEY `tb_module_functions_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_module_functions_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_options_option_name_unique` (`option_name`),
  ADD KEY `tb_options_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_options_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_orders_customer_id_foreign` (`customer_id`),
  ADD KEY `tb_orders_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_orders_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_order_details_order_id_foreign` (`order_id`),
  ADD KEY `tb_order_details_item_id_foreign` (`item_id`),
  ADD KEY `tb_order_details_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_order_details_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pages_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_pages_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_popups`
--
ALTER TABLE `tb_popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_popups_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_popups_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_roles_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_roles_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_widgets`
--
ALTER TABLE `tb_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widgets_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widgets_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widget_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widget_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_admin_updated_id_foreign` (`admin_updated_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_blocks`
--
ALTER TABLE `tb_blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `tb_bookings`
--
ALTER TABLE `tb_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_branchs`
--
ALTER TABLE `tb_branchs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tb_components`
--
ALTER TABLE `tb_components`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_contacts`
--
ALTER TABLE `tb_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tb_logs`
--
ALTER TABLE `tb_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_menus`
--
ALTER TABLE `tb_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tb_modules`
--
ALTER TABLE `tb_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `tb_options`
--
ALTER TABLE `tb_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_orders`
--
ALTER TABLE `tb_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_order_details`
--
ALTER TABLE `tb_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_pages`
--
ALTER TABLE `tb_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_popups`
--
ALTER TABLE `tb_popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_roles`
--
ALTER TABLE `tb_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_widgets`
--
ALTER TABLE `tb_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `admins_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  ADD CONSTRAINT `tb_admin_menus_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_admin_menus_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  ADD CONSTRAINT `tb_affiliate_historys_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_affiliate_historys_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  ADD CONSTRAINT `tb_affiliate_payments_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_affiliate_payments_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_blocks`
--
ALTER TABLE `tb_blocks`
  ADD CONSTRAINT `tb_blocks_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_blocks_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  ADD CONSTRAINT `tb_block_contents_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_block_contents_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_bookings`
--
ALTER TABLE `tb_bookings`
  ADD CONSTRAINT `tb_bookings_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_bookings_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_branchs`
--
ALTER TABLE `tb_branchs`
  ADD CONSTRAINT `tb_branchs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_branchs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  ADD CONSTRAINT `tb_cms_posts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_cms_posts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  ADD CONSTRAINT `tb_cms_taxonomys_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_cms_taxonomys_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_components`
--
ALTER TABLE `tb_components`
  ADD CONSTRAINT `tb_components_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_components_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  ADD CONSTRAINT `tb_component_configs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_component_configs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD CONSTRAINT `tb_contacts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_contacts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD CONSTRAINT `tb_menus_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_menus_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_modules`
--
ALTER TABLE `tb_modules`
  ADD CONSTRAINT `tb_modules_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_modules_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  ADD CONSTRAINT `tb_module_functions_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_module_functions_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_options`
--
ALTER TABLE `tb_options`
  ADD CONSTRAINT `tb_options_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_options_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD CONSTRAINT `tb_orders_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_orders_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD CONSTRAINT `tb_order_details_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_order_details_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD CONSTRAINT `tb_pages_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_pages_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_popups`
--
ALTER TABLE `tb_popups`
  ADD CONSTRAINT `tb_popups_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_popups_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD CONSTRAINT `tb_roles_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_roles_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_widgets`
--
ALTER TABLE `tb_widgets`
  ADD CONSTRAINT `tb_widgets_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_widgets_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  ADD CONSTRAINT `tb_widget_configs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_widget_configs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
