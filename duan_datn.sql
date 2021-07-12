-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 12, 2021 lúc 05:07 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan_datn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` bigint(20) UNSIGNED NOT NULL,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` bigint(20) UNSIGNED NOT NULL,
  `atb_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Đồng hồ cơ', 'dong-ho-co', 1, 1, '2021-07-06 15:34:11', '2021-07-06 15:34:11'),
(2, 'Đồng hồ điện tử', 'dong-ho-dien-tu', 1, 1, '2021-07-06 15:34:21', '2021-07-06 15:34:21'),
(3, 'Dây da', 'day-da', 2, 1, '2021-07-06 15:34:39', '2021-07-06 15:34:39'),
(4, 'Thép không gỉ', 'thep-khong-gi', 2, 1, '2021-07-06 15:34:51', '2021-07-06 15:34:51'),
(5, 'Mạ vàng', 'ma-vang', 2, 1, '2021-07-06 15:35:02', '2021-07-06 15:35:02'),
(6, 'Mạ đồng', 'ma-dong', 2, 1, '2021-07-06 15:35:14', '2021-07-06 15:35:14'),
(7, 'Cao su', 'cao-su', 2, 1, '2021-07-06 15:35:25', '2021-07-06 15:35:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_product`
--

CREATE TABLE `attribute_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ap_product_id` bigint(20) UNSIGNED NOT NULL,
  `ap_attribute_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute_product`
--

INSERT INTO `attribute_product` (`id`, `ap_product_id`, `ap_attribute_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 2, 1),
(4, 2, 3),
(5, 3, 1),
(6, 3, 3),
(7, 4, 2),
(8, 4, 5),
(9, 5, 1),
(10, 5, 4),
(11, 5, 5),
(12, 6, 2),
(13, 6, 7),
(15, 10, 4),
(16, 10, 5),
(17, 10, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `c_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_slug`, `c_avatar`, `c_description`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Đồng Hồ Chính Hãng', 0, 'dong-ho-chinh-hang', NULL, NULL, 0, 1, NULL, '2021-07-11 11:19:35'),
(3, 'Phụ Kiện Đồng Hồ', 0, 'phu-kien-dong-ho', NULL, NULL, 0, 1, NULL, NULL),
(4, 'Đồng hồ Philippe Auguste', 1, 'dong-ho-philippe-auguste', '2021-07-06__pa.jpg', NULL, 0, 1, '2021-07-06 15:23:02', '2021-07-06 15:23:02'),
(5, 'Đồng hồ Epos Swiss', 1, 'dong-ho-epos-swiss', '2021-07-06__epos.jpg', NULL, 0, 1, '2021-07-06 15:23:44', '2021-07-06 15:23:44'),
(6, 'Đồng hồ Atlantic Swiss', 1, 'dong-ho-atlantic-swiss', '2021-07-06__atlatic.jpg', NULL, 0, 1, '2021-07-06 15:24:25', '2021-07-06 15:24:25'),
(7, 'Đồng hồ Aries Gold', 1, 'dong-ho-aries-gold', '2021-07-06__ariesgold.jpg', NULL, 0, 1, '2021-07-06 15:25:10', '2021-07-06 15:25:10'),
(12, 'Dây đồng hồ Diamond D', 3, 'day-dong-ho-diamond-d', '2021-07-06__diamondd.jpg', NULL, 0, 1, '2021-07-06 15:28:32', '2021-07-06 15:28:32'),
(13, 'Dây đồng hồ Atlantic', 3, 'day-dong-ho-atlantic', '2021-07-06__atlatic.jpg', NULL, 0, 1, '2021-07-06 15:29:13', '2021-07-11 11:20:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `img_name`, `img_slug`, `img_product_id`, `created_at`, `updated_at`) VALUES
(1, '22088366_donghonhapkhau23.jpg', '2021-07-06__22088366-donghonhapkhau23jpg.jpg', 1, '2021-07-06 15:40:21', NULL),
(2, '1442392390_donghonhapkhau25.jpg', '2021-07-06__1442392390-donghonhapkhau25jpg.jpg', 1, '2021-07-06 15:40:21', NULL),
(3, '1475352035_donghonhapkhau21.jpg', '2021-07-06__1475352035-donghonhapkhau21jpg.jpg', 1, '2021-07-06 15:40:21', NULL),
(4, '1775973215_donghonhapkhau24.jpg', '2021-07-06__1775973215-donghonhapkhau24jpg.jpg', 1, '2021-07-06 15:40:21', NULL),
(5, '1265227352_donghokimnguu.jpg', '2021-07-06__1265227352-donghokimnguujpg.jpg', 2, '2021-07-06 15:44:43', NULL),
(6, '1504551093_donghokimnguu3.jpg', '2021-07-06__1504551093-donghokimnguu3jpg.jpg', 2, '2021-07-06 15:44:43', NULL),
(7, '1992069784_donghokimngua.jpg', '2021-07-06__1992069784-donghokimnguajpg.jpg', 2, '2021-07-06 15:44:43', NULL),
(8, '921716008_DONG-HO-CHINH-HANG-23.jpg', '2021-07-06__921716008-dong-ho-chinh-hang-23jpg.jpg', 3, '2021-07-06 15:47:21', NULL),
(9, '1300425021_DONG-HO-CHINH-HANG-7.jpg', '2021-07-06__1300425021-dong-ho-chinh-hang-7jpg.jpg', 3, '2021-07-06 15:47:21', NULL),
(10, '1929195414_DONG-HO-CHINH-HANG-9.jpg', '2021-07-06__1929195414-dong-ho-chinh-hang-9jpg.jpg', 3, '2021-07-06 15:47:21', NULL),
(11, '2077059687_DONG-HO-CHINH-HANG-24.jpg', '2021-07-06__2077059687-dong-ho-chinh-hang-24jpg.jpg', 3, '2021-07-06 15:47:21', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức - Sự kiện', 'tin-tuc-su-kien', NULL, NULL, NULL, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(75, '2014_10_12_000000_create_users_table', 1),
(76, '2014_10_12_100000_create_password_resets_table', 1),
(77, '2019_08_19_000000_create_failed_jobs_table', 1),
(78, '2021_04_10_090150_create_categories_table', 1),
(79, '2021_04_15_132126_create_type_products_table', 1),
(80, '2021_04_17_134110_create_attributes_table', 1),
(81, '2021_04_21_112939_create_products_table', 1),
(82, '2021_04_21_155435_create_attribute_product_table', 1),
(83, '2021_04_21_164307_create_images_table', 1),
(84, '2021_05_09_160758_create_slides_table', 1),
(85, '2021_05_19_142248_create_transactions_table', 1),
(86, '2021_05_19_142500_create_orders_table', 1),
(87, '2021_05_19_142716_create_menus_table', 1),
(88, '2021_05_19_142758_create_articles_table', 1),
(89, '2021_05_19_143031_create_ratings_table', 1),
(90, '2021_05_19_143424_create_user_favourite_table', 1),
(91, '2021_05_19_152534_add_multiple_column_attribute_in_table_users', 1),
(92, '2021_06_15_202729_create_jobs_table', 1),
(93, '2021_06_16_210249_add_column_role_to_users_table', 1),
(94, '2021_07_02_115319_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('2aeffd1e-1eec-465f-9b5a-4f6de5d12876', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"map hari\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-06T16:31:05.534104Z\"}', '2021-07-11 11:01:18', '2021-07-06 16:31:05', '2021-07-06 16:31:05'),
('617e8e93-52e2-404f-b099-974464a96d9f', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba comment s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-07T04:26:29.451255Z\"}', '2021-07-11 11:01:26', '2021-07-07 04:26:30', '2021-07-07 04:26:30'),
('8436fb4b-98e5-4b3b-a8c2-9303e00847a0', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"user\",\"message\":\"V\\u1eeba comment s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-06T16:22:22.533636Z\"}', '2021-07-06 16:22:43', '2021-07-06 16:22:22', '2021-07-06 16:22:22'),
('a5712372-35d3-4874-8484-14c8c9fa6dbb', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-06T16:07:41.860006Z\"}', '2021-07-06 16:20:04', '2021-07-06 16:07:42', '2021-07-06 16:07:42'),
('ae532e61-1297-4ebc-9c68-6303a033032d', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba comment s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-07T04:26:43.445846Z\"}', '2021-07-11 11:01:23', '2021-07-07 04:26:43', '2021-07-07 04:26:43'),
('e76df58a-d5a1-4993-9222-35f963dd2f8d', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"\\u0110\\u1ea1i H\\u1ea3i\",\"message\":\"V\\u1eeba comment s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-07T03:39:18.023882Z\"}', '2021-07-07 04:24:57', '2021-07-07 03:39:18', '2021-07-07 03:39:18'),
('eece3231-45b5-4815-9a29-35941d9ab8ad', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"user\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-06T16:19:49.111892Z\"}', '2021-07-06 16:22:47', '2021-07-06 16:19:49', '2021-07-06 16:19:49'),
('f76f21f9-74e7-4290-911d-0855c3c8299e', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba comment s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-06T16:04:02.000088Z\"}', '2021-07-06 16:22:36', '2021-07-06 16:04:04', '2021-07-06 16:04:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `od_product_id` bigint(20) UNSIGNED NOT NULL,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` int(11) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 0, 1, 25000000, '2021-07-06 16:07:40', '2021-07-06 16:07:40'),
(2, 2, 10, 0, 5, 25000000, '2021-07-06 16:19:48', '2021-07-06 16:19:48'),
(3, 3, 2, 15, 1, 16065000, '2021-07-06 16:31:05', '2021-07-06 16:31:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_category_id` bigint(20) UNSIGNED NOT NULL,
  `pro_type_product_id` bigint(20) UNSIGNED NOT NULL,
  `pro_user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `pro_price` int(11) NOT NULL DEFAULT 0 COMMENT 'giá',
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'giảm giá',
  `pro_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0 COMMENT 'số luoựt xem',
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0 COMMENT 'số lượt mua',
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0 COMMENT 'tổng số comment',
  `pro_review_star` int(11) NOT NULL DEFAULT 0 COMMENT 'tổng số sao',
  `pro_number` int(11) NOT NULL DEFAULT 0 COMMENT 'tổng số lượng',
  `pro_country` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'xuất xứ',
  `pro_energy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'năng lượng',
  `pro_resistant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'độ chịu nước',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_category_id`, `pro_type_product_id`, `pro_user_id`, `pro_price`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_number`, `pro_country`, `pro_energy`, `pro_resistant`, `created_at`, `updated_at`) VALUES
(1, 'Đồng hồ Philippe AugusteJL-11-1654.2ZH', 'dong-ho-philippe-augustejl-11-16542zh', 4, 1, 0, 6900000, 10, '2021-07-06__974268866-donghophienbangioihan2.jpg', 2, 0, 1, 0, 'Đồng hồ Philippe AugusteJL-11-1654.2ZH', 'Đồng hồ Philippe AugusteJL-11-1654.2ZH', 0, 0, 9999, 1, 'Quartz/Pin', '10 ATM', '2021-07-06 15:40:21', '2021-07-06 15:40:21'),
(2, 'ĐỒNG HỒ PHILIPPE AUGUSTE PA-555.1', 'dong-ho-philippe-auguste-pa-5551', 4, 1, 0, 18900000, 15, '2021-07-06__72429618-1034985426-donghokimnguu2.jpg', 4, 0, 1, 1, 'ĐỒNG HỒ PHILIPPE AUGUSTE PA-555.1', 'ĐỒNG HỒ PHILIPPE AUGUSTE PA-555.1', 0, 0, 7898, 3, 'Automatic (Cơ tự động)', '5ATM', '2021-07-06 15:44:42', '2021-07-06 15:44:42'),
(3, 'Đồng hồ Philippe Auguste PA5001B', 'dong-ho-philippe-auguste-pa5001b', 4, 1, 0, 2800000, 0, '2021-07-06__202451360-dong-ho-nhap-khau2.jpg', 0, 0, 1, 0, 'Đồng hồ Philippe Auguste PA5001B', 'Đồng hồ Philippe Auguste PA5001B', 0, 0, 123, 1, 'Automatic (Cơ tự động)', '10 ATM', '2021-07-06 15:47:20', '2021-07-06 15:47:20'),
(4, 'Đồng hồ Epos Swiss E-3387.152.22.28.32', 'dong-ho-epos-swiss-e-3387152222832', 5, 1, 0, 85000000, 15, '2021-07-06__364723213-untitled-56.jpg', 4, 0, 1, 0, 'Đồng hồ Epos Swiss E-3387.152.22.28.32', 'Đồng hồ Epos Swiss E-3387.152.22.28.32', 1, 1, 53, 3, 'Automatic (Cơ tự động)', '10 ATM', '2021-07-06 15:52:36', '2021-07-07 03:39:17'),
(5, 'Đồng hồ Epos Swiss E-3426.132.22.20.32+E-4426.132.22.20.32', 'dong-ho-epos-swiss-e-3426132222032e-4426132222032', 5, 3, 0, 35000000, 0, '2021-07-06__96439908-48.jpg', 2, 0, 1, 0, 'Đồng hồ Epos Swiss E-3426.132.22.20.32+E-4426.132.22.20.32', 'Đồng hồ Epos Swiss E-3426.132.22.20.32+E-4426.132.22.20.32', 0, 0, 52, 2, 'Automatic (Cơ tự động)', '10 ATM', '2021-07-06 15:54:16', '2021-07-11 10:50:26'),
(6, 'Đồng hồ Aries Gold QQ-M137J003Y', 'dong-ho-aries-gold-qq-m137j003y', 7, 4, 0, 58000, 0, '2021-07-06__m137j003y.jpg', 1, 0, 1, 0, 'Đồng hồ Aries Gold QQ-M137J003Y', 'Đồng hồ Aries Gold QQ-M137J003Y', 0, 0, 7777, 3, 'Automatic (Cơ tự động)', '1 ATM', '2021-07-06 15:56:03', '2021-07-06 15:56:03'),
(9, 'Dây da Diamond D D DM W 12', 'day-da-diamond-d-d-dm-w-12', 12, 7, 0, 450000, 0, '2021-07-06__1905887238-d-dm-w-12.jpg', 2, 0, 1, 0, 'Dây da Diamond D D DM W 12', 'Dây da Diamond D D DM W 12', 0, 0, 78936, 4, NULL, NULL, '2021-07-06 16:00:04', '2021-07-06 16:00:04'),
(10, 'Đồng hồ Atlantic Swiss AT-22346.45.13', 'dong-ho-atlantic-swiss-at-223464513', 6, 1, 0, 25000000, 0, '2021-07-06__1029860979-dng-h-chnh-hng-32.jpg', 6, 1, 1, 6, 'Đồng hồ Atlantic Swiss AT-22346.45.13', 'Đồng hồ Atlantic Swiss AT-22346.45.13', 4, 16, 8547, 1, 'Automatic (Cơ tự động)', '10 ATM', '2021-07-06 16:01:48', '2021-07-07 04:26:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` bigint(20) UNSIGNED NOT NULL,
  `r_product_id` bigint(20) UNSIGNED NOT NULL,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 1,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 5, 1, 'dùng tốt lắm ^^', '2021-07-06 16:04:01', '2021-07-06 16:04:01'),
(2, 2, 10, 5, 1, '12', '2021-07-06 16:22:22', '2021-07-06 16:22:22'),
(3, 4, 4, 1, 1, '123', '2021-07-07 03:39:17', '2021-07-07 03:39:17'),
(4, 1, 10, 5, 1, '123123123', '2021-07-07 04:26:29', '2021-07-07 04:26:29'),
(5, 1, 10, 1, 1, '123', '2021-07-07 04:26:43', '2021-07-07 04:26:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tst_total_money` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tst_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 thanh toan thuong, 2 la online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(1, 1, 25000000, 'Admin Supper', 'admin@gmail.com', '0377708868', NULL, 'a', 1, 1, '2021-07-04 16:07:40', '2021-07-06 16:07:40'),
(2, 2, 125000000, 'user', 'user@gmail.com', '0355578896', NULL, '123', 2, 1, '2021-07-06 16:19:48', '2021-07-04 16:23:29'),
(3, 3, 16065000, 'map hari', 'laravel1998bn@gmail.com', '556533201', NULL, '1', 1, 1, '2021-06-15 16:31:05', '2021-07-06 16:31:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tp_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tp_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tp_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tp_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tp_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tp_hot` tinyint(4) NOT NULL DEFAULT 0,
  `tp_status` tinyint(4) NOT NULL DEFAULT 1,
  `tp_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `tp_name`, `tp_slug`, `tp_avatar`, `tp_banner`, `tp_description`, `tp_hot`, `tp_status`, `tp_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Đồng hồ nam', 'dong-ho-nam', '2021-07-06__m-dhnam.jpg', NULL, NULL, 0, 1, 1, '2021-07-06 15:30:06', '2021-07-06 15:30:06'),
(2, 'Đồng hồ nữ', 'dong-ho-nu', '2021-07-06__m-dhnu.jpg', NULL, NULL, 0, 1, 1, '2021-07-06 15:30:32', '2021-07-06 15:30:32'),
(3, 'Đồng Hồ Đôi', 'dong-ho-doi', '2021-07-06__m-dhdoi.jpg', NULL, NULL, 0, 1, 1, '2021-07-06 15:30:57', '2021-07-06 15:30:57'),
(4, 'Đồng Hồ Trẻ Em', 'dong-ho-tre-em', '2021-07-06__m-dhtreem.jpg', NULL, NULL, 0, 1, 1, '2021-07-06 15:31:27', '2021-07-06 15:31:27'),
(7, 'Phụ Kiên', 'phu-kien', '2021-07-06__m-phukien.jpg', NULL, NULL, 0, 1, 3, '2021-07-06 15:33:05', '2021-07-06 15:33:05'),
(8, 'Bút Ký Cao Cấp', 'but-ky-cao-cap', '2021-07-06__m-butky.jpg', NULL, NULL, 0, 1, 3, '2021-07-06 15:33:30', '2021-07-06 15:33:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `address`, `avatar`, `role`) VALUES
(1, 'Admin Supper', 'admin@gmail.com', '2021-07-06 15:15:31', '$2y$10$HAbLRd3jaXJer.bhKculjeelJfRSg5KMX2Y0H.yn1dkmL/.qoLj5q', NULL, '2021-07-06 16:27:35', '2021-07-11 11:35:12', '0377708868', 'bac ninh', NULL, 1),
(2, 'user', 'user@gmail.com', NULL, '$2y$10$aysdWsjtbGREMO5a83HtGOIilQ6i3kNYMHX.qkKfb6Cc.rMNvjara', NULL, '2021-07-06 16:28:16', '2021-07-06 16:19:24', '0355578896', NULL, NULL, 2),
(3, 'map hari', 'laravel1998bn@gmail.com', '2021-07-06 16:26:50', '$2y$10$gXPg/uTQdmmV4E2qtkla4upHZrCHjt37u6zNYOoGlJowvv.RQWs2a', NULL, '2021-07-06 16:26:50', '2021-07-06 16:26:50', '556533201', NULL, NULL, 2),
(4, 'Đại Hải', 'hai1998bn@gmail.com', '2021-07-07 03:38:29', '$2y$10$yMtLxfLZZlopxHZzL/qjUOQ0D5YqkGVV4PGpHUroF0sDfbuO7OpSq', NULL, '2021-07-07 03:38:29', '2021-07-07 03:38:29', '201805490', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` bigint(20) UNSIGNED NOT NULL,
  `uf_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(3, 4, 2, NULL, NULL),
(4, 4, 4, NULL, NULL),
(5, 2, 1, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD UNIQUE KEY `attributes_atb_slug_unique` (`atb_slug`),
  ADD KEY `attributes_atb_category_id_foreign` (`atb_category_id`);

--
-- Chỉ mục cho bảng `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_product_ap_product_id_foreign` (`ap_product_id`),
  ADD KEY `attribute_product_ap_attribute_id_foreign` (`ap_attribute_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_name_unique` (`c_name`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_img_product_id_foreign` (`img_product_id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_od_transaction_id_foreign` (`od_transaction_id`),
  ADD KEY `orders_od_product_id_foreign` (`od_product_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_name_unique` (`pro_name`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_category_id_foreign` (`pro_category_id`),
  ADD KEY `products_pro_type_product_id_foreign` (`pro_type_product_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_r_user_id_foreign` (`r_user_id`),
  ADD KEY `ratings_r_product_id_foreign` (`r_product_id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_products_tp_slug_unique` (`tp_slug`),
  ADD KEY `type_products_tp_category_id_foreign` (`tp_category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`),
  ADD KEY `user_favourite_uf_user_id_foreign` (`uf_user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `attribute_product`
--
ALTER TABLE `attribute_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_a_menu_id_foreign` FOREIGN KEY (`a_menu_id`) REFERENCES `menus` (`id`);

--
-- Các ràng buộc cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_atb_category_id_foreign` FOREIGN KEY (`atb_category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD CONSTRAINT `attribute_product_ap_attribute_id_foreign` FOREIGN KEY (`ap_attribute_id`) REFERENCES `attributes` (`id`),
  ADD CONSTRAINT `attribute_product_ap_product_id_foreign` FOREIGN KEY (`ap_product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_img_product_id_foreign` FOREIGN KEY (`img_product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_od_product_id_foreign` FOREIGN KEY (`od_product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `orders_od_transaction_id_foreign` FOREIGN KEY (`od_transaction_id`) REFERENCES `transactions` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_pro_category_id_foreign` FOREIGN KEY (`pro_category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_pro_type_product_id_foreign` FOREIGN KEY (`pro_type_product_id`) REFERENCES `type_products` (`id`);

--
-- Các ràng buộc cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_r_product_id_foreign` FOREIGN KEY (`r_product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `ratings_r_user_id_foreign` FOREIGN KEY (`r_user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD CONSTRAINT `type_products_tp_category_id_foreign` FOREIGN KEY (`tp_category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD CONSTRAINT `user_favourite_uf_product_id_foreign` FOREIGN KEY (`uf_product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `user_favourite_uf_user_id_foreign` FOREIGN KEY (`uf_user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
