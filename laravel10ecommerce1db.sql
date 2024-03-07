-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2024 at 03:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel10ecommerce1db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_attribute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `product_attribute_id`, `value`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 1, '24', 58, '2024-03-06 05:54:56', '2024-03-06 05:54:56'),
(3, 1, '32', 58, '2024-03-06 05:54:56', '2024-03-06 05:54:56'),
(4, 1, '43', 58, '2024-03-06 05:54:57', '2024-03-06 05:54:57'),
(5, 1, '50', 58, '2024-03-06 05:54:57', '2024-03-06 05:54:57'),
(6, 2, 'Red', 58, '2024-03-06 05:54:57', '2024-03-06 05:54:57'),
(7, 2, ' Green', 58, '2024-03-06 05:54:57', '2024-03-06 05:54:57'),
(8, 2, ' Black', 58, '2024-03-06 05:54:57', '2024-03-06 05:54:57'),
(9, 2, ' Blue', 58, '2024-03-06 05:54:57', '2024-03-06 05:54:57'),
(10, 1, '12', 56, '2024-03-06 07:28:54', '2024-03-06 07:28:54'),
(11, 1, '16', 56, '2024-03-06 07:28:54', '2024-03-06 07:28:54'),
(12, 1, '22', 56, '2024-03-06 07:28:54', '2024-03-06 07:28:54'),
(13, 1, '24', 56, '2024-03-06 07:28:54', '2024-03-06 07:28:54'),
(14, 2, 'Black', 56, '2024-03-06 07:28:54', '2024-03-06 07:28:54'),
(15, 2, ' Blue', 56, '2024-03-06 07:28:54', '2024-03-06 07:28:54'),
(16, 2, ' Green', 56, '2024-03-06 07:28:54', '2024-03-06 07:28:54'),
(17, 2, ' Gray', 56, '2024-03-06 07:28:54', '2024-03-06 07:28:54'),
(18, 1, '12', 55, '2024-03-06 12:03:53', '2024-03-06 12:03:53'),
(19, 1, '16', 55, '2024-03-06 12:03:53', '2024-03-06 12:03:53'),
(20, 1, '18', 55, '2024-03-06 12:03:53', '2024-03-06 12:03:53'),
(21, 2, 'Red', 55, '2024-03-06 12:03:53', '2024-03-06 12:03:53'),
(22, 2, ' Blue', 55, '2024-03-06 12:03:53', '2024-03-06 12:03:53'),
(23, 2, ' Black', 55, '2024-03-06 12:03:53', '2024-03-06 12:03:53'),
(24, 2, ' Brown', 55, '2024-03-06 12:03:53', '2024-03-06 12:03:53'),
(25, 2, 'White', 54, '2024-03-06 14:24:28', '2024-03-06 14:24:28'),
(26, 2, ' Black', 54, '2024-03-06 14:24:28', '2024-03-06 14:24:28'),
(27, 2, ' Gray', 54, '2024-03-06 14:24:28', '2024-03-06 14:24:28'),
(28, 2, ' Brown', 54, '2024-03-06 14:24:29', '2024-03-06 14:24:29'),
(29, 1, '12', 54, '2024-03-06 14:24:29', '2024-03-06 14:24:29'),
(30, 1, '16', 54, '2024-03-06 14:24:29', '2024-03-06 14:24:29'),
(31, 1, '22', 54, '2024-03-06 14:24:29', '2024-03-06 14:24:29'),
(32, 1, '24', 54, '2024-03-06 14:24:29', '2024-03-06 14:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(14, 'Mobile', 'mobile', '2024-03-05 12:32:29', '2024-03-05 12:32:29'),
(15, 'Laptop', 'laptop', '2024-03-05 12:32:46', '2024-03-05 12:32:46'),
(16, 'Camera', 'camera', '2024-03-05 12:32:56', '2024-03-05 12:32:56'),
(17, 'Gamming', 'gamming', '2024-03-05 12:33:56', '2024-03-05 12:33:56'),
(18, 'Television', 'television', '2024-03-05 12:34:20', '2024-03-05 12:34:20'),
(22, 'Equipments', 'equipments', '2024-03-05 15:02:55', '2024-03-05 15:02:55'),
(23, 'Fashion', 'fashion', '2024-03-05 15:03:59', '2024-03-05 15:03:59'),
(24, 'Furniture', 'furniture', '2024-03-05 15:04:14', '2024-03-05 15:04:14'),
(25, 'Kidtoys', 'kidtoys', '2024-03-05 15:04:55', '2024-03-05 15:04:55'),
(26, 'Organics', 'organics', '2024-03-05 15:06:32', '2024-03-05 15:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'porchouavang', 'pdevelop@gmail.com', '02076589225', 'Are you hiring Web developer?', '2024-03-04 18:04:35', '2024-03-04 18:04:35'),
(2, 'ທ້າວ ປໍ້ຈົວວ່າງ ກ່າງເສີ', 'english.academia@gmail.com', '02076589225', 'ຍັງຕ້ອງການພະນັກງານຝ່າຍພັດທະນາລະບົບບໍຈ້າວ? ຄັນຕ້ອງການແລ້ວຕິດຕໍ່ຫາເຮົາເດີ', '2024-03-04 18:20:39', '2024-03-04 18:20:39'),
(3, 'Porchouavang', 'kangserpobtsuasvaaj@gmial.com', '02076589225', 'Are you hiring web developer? please contact me from phone number', '2024-03-05 14:39:21', '2024-03-05 14:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` enum('fixed','percent') NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`) VALUES
(2, 'OFF100', 'fixed', 100.00, 100.00, '2024-03-01 09:46:59', '2024-03-01 09:49:32'),
(3, 'OFF5', 'percent', 10.00, 10.00, '2024-03-01 09:50:13', '2024-03-01 09:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '15,16,18', 6, '2024-02-19 02:02:38', '2024-03-05 14:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'First Slide Title', 'First Slide Subtitle', '199', 'http://localhost:8000/shop', '1708261779.jpg', 1, '2024-02-18 21:09:39', '2024-02-18 21:09:39'),
(4, 'Second Title', 'Second Subtitle', '299', 'http://localhost:8000/shop', '1708262399.jpg', 1, '2024-02-18 21:19:59', '2024-02-18 21:19:59'),
(5, 'Third Title', 'Third Subtitle', '159', 'http://localhost:8000/shop', '1708305759.jpg', 1, '2024-02-19 09:22:39', '2024-02-19 09:25:15'),
(6, 'Fourth Title', 'Fourth Subtitle', '199', 'http://localhost:8000/shop', '1708493991.jpg', 1, '2024-02-21 13:39:51', '2024-02-21 13:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_02_14_003831_create_sessions_table', 1),
(7, '2024_02_14_213703_create_categories_table', 2),
(8, '2024_02_14_213720_create_products_table', 2),
(9, '2024_02_18_114342_create_home_sliders_table', 3),
(10, '2024_02_19_015917_create_home_categories_table', 4),
(11, '2024_02_29_063529_create_sales_table', 5),
(12, '2024_03_01_004431_create_coupons_table', 6),
(13, '2024_03_02_060926_create_orders_table', 7),
(14, '2024_03_02_060942_create_shippings_table', 7),
(15, '2024_03_02_061009_create_transactions_table', 7),
(16, '2024_03_02_061945_create_order_items_table', 7),
(17, '2024_03_03_180021_add_delivered_canceled_date_to_orders_table', 8),
(18, '2024_03_04_061317_create_reviews_table', 9),
(19, '2024_03_04_062233_add_rstatus_to_order_items_table', 9),
(20, '2024_03_04_093819_create_contacts_table', 10),
(21, '2024_03_04_104133_create_settings_table', 11),
(22, '2024_03_04_214103_create_shoppingcart_table', 12),
(23, '2024_03_04_223022_create_subcategories_table', 13),
(24, '2024_03_05_011849_add_subcategory_id_to_products_table', 14),
(25, '2024_03_05_085403_create_profiles_table', 15),
(26, '2024_03_05_105808_create_product_attributes_table', 16),
(27, '2024_03_05_210933_create_attribute_values_table', 17),
(28, '2024_03_06_002602_add_options_to_oder_item_table', 18),
(29, '2024_03_06_011908_create_services_table', 19),
(30, '2024_03_06_070223_create_teams_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `line1` varchar(255) NOT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `status` enum('ordered','delivered','canceled') NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
(22, 13, 350.00, 0.00, 73.50, 423.50, 'Porchouavang', 'KANGSER', '2078839333', 'tester@gamilc.omt', 'Dongdok: Xaythany: Vientiane Capital', 'Namhone: Meun: Vientiane', 'Dongdok', 'Vientiane', 'Laos', '123456', 'delivered', 0, '2024-03-05 14:37:45', '2024-03-05 14:38:03', '2024-03-04', NULL),
(23, 14, 350.00, 0.00, 73.50, 423.50, 'Porchouavang', 'KANGSER', '2078839333', 'tester@gamilc.omt', 'Dongdok: Xaythany: Vientiane Capital', 'Namhone: Meun: Vientiane', 'Dongdok', 'Vientiane', 'Laos', '123456', 'canceled', 0, '2024-03-05 16:16:17', '2024-03-05 16:17:30', NULL, '2024-03-05'),
(24, 13, 12.00, 0.00, 2.52, 14.52, 'testproccessing', 'testproccessing', '2078839333', 'tester@gmail.com', 'Dongdok: Xaythany: Vientiane Capital', 'Namhone: Meun: Vientiane', 'Dongdok', 'Vientiane', 'Laos', '123456', 'ordered', 0, '2024-03-06 08:36:39', '2024-03-06 08:36:39', NULL, NULL),
(25, 13, 65.00, 0.00, 13.65, 78.65, 'testproccessing', 'testproccessing', '2078839333', 'tester@gmail.com', 'Dongdok: Xaythany: Vientiane Capital', 'Namhone: Meun: Vientiane', 'Dongdok', 'Vientiane', 'Laos', '123456', 'ordered', 0, '2024-03-06 08:38:50', '2024-03-06 08:38:50', NULL, NULL),
(26, 13, 65.00, 0.00, 13.65, 78.65, 'test', 'test', '2078839333', 'tester@gmail.com', 'Dongdok: Xaythany: Vientiane Capital', 'Namhone: Meun: Vientiane', 'Dongdok', 'Vientiane', 'Laos', '123456', 'ordered', 0, '2024-03-06 08:45:16', '2024-03-06 08:45:16', NULL, NULL),
(27, 14, 36.00, 0.00, 7.56, 43.56, 'test', 'test', '2078839333', 'tester@gmail.com', 'Dongdok: Xaythany: Vientiane Capital', 'Namhone: Meun: Vientiane', 'Dongdok', 'Vientiane', 'Laos', '123456', 'canceled', 0, '2024-03-06 08:53:09', '2024-03-06 08:59:23', NULL, '2024-03-05'),
(28, 14, 12.00, 0.00, 2.52, 14.52, 'THE', 'ACADEMIA', '2078839333', 'english.academia30@gmail.com', '12332165', 'Namhone: Meun: Vientiane', 'Dongdok', 'Vientiane', 'Laos', '123456', 'ordered', 0, '2024-03-06 09:00:23', '2024-03-06 09:00:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `options` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`, `options`) VALUES
(27, 32, 22, 350.00, 1, '2024-03-05 14:37:45', '2024-03-05 14:37:45', 0, NULL),
(28, 32, 23, 350.00, 1, '2024-03-05 16:16:17', '2024-03-05 16:16:17', 0, NULL),
(29, 58, 24, 12.00, 1, '2024-03-06 08:36:40', '2024-03-06 08:36:40', 0, NULL),
(30, 56, 25, 65.00, 1, '2024-03-06 08:38:50', '2024-03-06 08:38:50', 0, NULL),
(31, 56, 26, 65.00, 1, '2024-03-06 08:45:16', '2024-03-06 08:45:16', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:1:{s:5:\"Color\";s:6:\" Green\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(32, 58, 27, 12.00, 3, '2024-03-06 08:53:09', '2024-03-06 08:53:09', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:1:{s:5:\"Color\";s:6:\" Black\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(33, 58, 28, 12.00, 1, '2024-03-06 09:00:24', '2024-03-06 09:00:24', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:6:\" Black\";s:5:\"Sizes\";s:2:\"43\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$12$erN5BxMsWjlsb0vhwLNHUucmF6gxLLCilJ7xUd60yWrXZhD0vdoya', '2024-03-04 21:29:54');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) NOT NULL,
  `stock_status` enum('instock','outofstock') NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(32, 'Samsung Galaxy S22', 'samsung-galaxy-s22', 'Model: Samsung Galaxy S22\nDisplay: 6.2-inch Dynamic AMOLED display with a resolution of 2400 x 1080 pixels\nProcessor: Qualcomm Snapdragon 888 (US) / Exynos 2100 (Global)\nRAM: 8GB\nStorage: 128GB / 256GB\n', 'Model: Samsung Galaxy S22\nDisplay: 6.2-inch Dynamic AMOLED display with a resolution of 2400 x 1080 pixels\nProcessor: Qualcomm Snapdragon 888 (US) / Exynos 2100 (Global)\nRAM: 8GB\nStorage: 128GB / 256GB\nRear Camera: Triple camera setup with a 12MP wide, 12MP ultrawide, and 64MP telephoto lens\nFront Camera: 10MP\nBattery: 4000mAh\nOperating System: Android 11 with Samsung\'s One UI 31', 350.00, 299.00, 'DIGI123456', 'instock', 0, 200, '1709613565.jpg', NULL, 14, '2024-03-05 12:39:25', '2024-03-05 14:36:53', NULL),
(33, 'Samsung Galaxy Ultra S21', 'samsung-galaxy-ultra-s21', 'The Samsung Galaxy in white is a sleek and stylish smartphone with a clean and modern look.', 'The Samsung Galaxy in white is a stunning and sophisticated smartphone that exudes elegance and beauty. The pristine white color gives it a clean and polished appearance, making it a standout choice for those who appreciate a classic and timeless aesthetic. The white color also adds a touch of purity and simplicity to the device, making it a versatile and appealing option for users of all ages. Whether you\'re browsing the web, capturing memorable moments with the high-quality camera, or enjoying your favorite apps and games, the Samsung Galaxy in white is sure to make a statement with its striking and refined design.', 350.00, 299.00, 'DIGI123456', 'instock', 0, 200, '1709614054.jpg', NULL, 14, '2024-03-05 12:47:34', '2024-03-05 14:02:25', NULL),
(34, 'Samsung Galaxy Ultrase', 'samsung-galaxy-ultrase', 'Model: Samsung Galaxy S21\nDisplay: 6.2-inch Dynamic AMOLED display with a resolution of 2400 x 1080 pixels\nProcessor: Qualcomm Snapdragon 888 (US) / Exynos 2100 (Global)\nRAM: 8GB\nStorage: 128GB / 256GB\n', 'Model: Samsung Galaxy S21\nDisplay: 6.2-inch Dynamic AMOLED display with a resolution of 2400 x 1080 pixels\nProcessor: Qualcomm Snapdragon 888 (US) / Exynos 2100 (Global)\nRAM: 8GB\nStorage: 128GB / 256GB\nRear Camera: Triple camera setup with a 12MP wide, 12MP ultrawide, and 64MP telephoto lens\nFront Camera: 10MP\nBattery: 4000mAh\nOperating System: Android 11 with Samsung\'s One UI 31', 350.00, 299.00, 'DIGI123456', 'instock', 0, 100, '1709614208.jpg', NULL, 14, '2024-03-05 12:50:08', '2024-03-05 14:03:21', NULL),
(35, 'Samsung Galaxy Ipads21', 'samsung-galaxy-ipads21', 'Model: Samsung Galaxy S21\nDisplay: 6.2-inch Dynamic AMOLED display with a resolution of 2400 x 1080 pixels\nProcessor: Qualcomm Snapdragon 888 (US) / Exynos 2100 (Global)\nRAM: 8GB\nStorage: 128GB / 256GB\n', 'Model: Samsung Galaxy S21\nDisplay: 6.2-inch Dynamic AMOLED display with a resolution of 2400 x 1080 pixels\nProcessor: Qualcomm Snapdragon 888 (US) / Exynos 2100 (Global)\nRAM: 8GB\nStorage: 128GB / 256GB\nRear Camera: Triple camera setup with a 12MP wide, 12MP ultrawide, and 64MP telephoto lens\nFront Camera: 10MP\nBattery: 4000mAh\nOperating System: Android 11 with Samsung\'s One UI 31', 350.00, 299.00, 'DIGI123456', 'instock', 0, 100, '1709614402.jpg', NULL, 14, '2024-03-05 12:53:22', '2024-03-05 14:04:53', NULL),
(36, 'Acer-Laptops ', 'acer-laptops', '- Processor: Intel Core i3 or AMD Ryzen 3\n- Memory: 4GB DDR4 RAM\n- Storage: 128GB SSD or 500GB HDD\n- Display: 15.6-inch HD (1366 x 768) LED-backlit display\n', '- Processor: Intel Core i3 or AMD Ryzen 3\n- Memory: 4GB DDR4 RAM\n- Storage: 128GB SSD or 500GB HDD\n- Display: 15.6-inch HD (1366 x 768) LED-backlit display\n- Graphics: Integrated Intel UHD Graphics or AMD Radeon Graphics\n- Operating System: Windows 10 Home\n- Connectivity: USB 3.0 ports, HDMI, Wi-Fi, Bluetooth\n- Battery Life: Up to 6 hours of battery life\n- Design: Slim and lightweight design with a standard keyboard and touchpad', 420.00, 399.00, 'DIGI123456', 'instock', 0, 50, '1709616412.jpg', NULL, 15, '2024-03-05 13:26:52', '2024-03-05 14:07:07', NULL),
(37, 'Asus Laptop', 'asus-laptop', '- Processor: Intel Core i3 or AMD Ryzen 3\n- Memory: 4GB DDR4 RAM\n- Storage: 128GB SSD or 500GB HDD\n- Display: 15.6-inch HD (1366 x 768) LED-backlit display\n', '- Processor: Intel Core i3 or AMD Ryzen 3\n- Memory: 4GB DDR4 RAM\n- Storage: 128GB SSD or 500GB HDD\n- Display: 15.6-inch HD (1366 x 768) LED-backlit display\n- Graphics: Integrated Intel UHD Graphics or AMD Radeon Graphics\n- Operating System: Windows 10 Home\n- Connectivity: USB 3.0 ports, HDMI, Wi-Fi, Bluetooth\n- Battery Life: Up to 6 hours of battery life\n- Design: Slim and lightweight design with a standard keyboard and touchpad', 450.00, 399.00, 'DIGI123456', 'instock', 0, 100, '1709618918.jpg', NULL, 15, '2024-03-05 14:08:38', '2024-03-05 14:08:38', NULL),
(38, 'Camera', 'camera', '- Resolution: The default resolution for the built-in webcam is typically HD (720p) or higher, providing clear and sharp video quality for online communication and content creation.\n', '- Resolution: The default resolution for the built-in webcam is typically HD (720p) or higher, providing clear and sharp video quality for online communication and content creation.\n- Sensor: The webcam sensor is designed to capture images and videos with good color accuracy and detail, ensuring high-quality visuals.\n- Microphone: The integrated microphone in the laptop complements the webcam, enabling clear audio for video calls recordings.\n- Software: Acer laptops may come with pre-installed webcam software that allows users to adjust settings, apply filters, and capture still images or videos.', 230.00, 199.00, 'DIGI123456', 'instock', 0, 100, '1709619151.jpg', NULL, 16, '2024-03-05 14:12:31', '2024-03-05 14:12:31', NULL),
(39, 'Camera Round Unit', 'camera-round-unit', '- Resolution: The default resolution for the built-in webcam is typically HD (720p) or higher, providing clear and sharp video quality for online communication and content creation.', '- Resolution: The default resolution for the built-in webcam is typically HD (720p) or higher, providing clear and sharp video quality for online communication and content creation.\n- Sensor: The webcam sensor is designed to capture images and videos with good color accuracy and detail, ensuring high-quality visuals.\n- Microphone: The integrated microphone in the laptop complements the webcam, enabling clear audio for video calls recordings.\n- Software: Acer laptops may come with pre-installed webcam software that allows users to adjust settings, apply filters, and capture still images or videos.', 350.00, 299.00, 'DIGI123456', 'instock', 0, 100, '1709619335.jpg', NULL, 16, '2024-03-05 14:15:35', '2024-03-05 14:15:35', NULL),
(40, 'Camera Round Units', 'camera-round-units', '- Resolution: The default resolution for the built-in webcam is typically HD (720p) or higher, providing clear and sharp video quality for online communication and content creation.\n', '- Resolution: The default resolution for the built-in webcam is typically HD (720p) or higher, providing clear and sharp video quality for online communication and content creation.\n- Sensor: The webcam sensor is designed to capture images and videos with good color accuracy and detail, ensuring high-quality visuals.\n- Microphone: The integrated microphone in the laptop complements the webcam, enabling clear audio for video calls recordings.\n- Software: Acer laptops may come with pre-installed webcam software that allows users to adjust settings, apply filters, and capture still images or videos.', 350.00, 299.00, 'DIGI123456', 'instock', 0, 100, '1709619751.jpg', NULL, 16, '2024-03-05 14:22:31', '2024-03-05 14:22:31', NULL),
(41, 'Camera Round Units S1', 'camera-round-units-s1', '- Resolution: The default resolution for the built-in webcam is typically HD (720p) or higher, providing clear and sharp video quality for online communication and content creation.\n', '- Resolution: The default resolution for the built-in webcam is typically HD (720p) or higher, providing clear and sharp video quality for online communication and content creation.\n- Sensor: The webcam sensor is designed to capture images and videos with good color accuracy and detail, ensuring high-quality visuals.\n- Microphone: The integrated microphone in the laptop complements the webcam, enabling clear audio for video calls recordings.\n- Software: Acer laptops may come with pre-installed webcam software that allows users to adjust settings, apply filters, and capture still images or videos.', 350.00, 299.00, 'DIGI123456', 'instock', 0, 100, '1709619851.jpg', NULL, 16, '2024-03-05 14:24:11', '2024-03-05 14:24:11', NULL),
(42, 'Camera Round Unit S2', 'camera-round-unit-s2', 'Resolution: The default resolution for the built-in webcam is typically HD (720p) or higher, providing clear and sharp video quality for online communication and content creation.\n', 'Resolution: The default resolution for the built-in webcam is typically HD (720p) or higher, providing clear and sharp video quality for online communication and content creation.\n- Sensor: The webcam sensor is designed to capture images and videos with good color accuracy and detail, ensuring high-quality visuals.\n- Microphone: The integrated microphone in the laptop complements the webcam, enabling clear audio for video calls recordings.\n- Software: Acer laptops may come with pre-installed webcam software that allows users to adjust settings, apply filters, and capture still images or videos.', 350.00, 299.00, 'DIGI123456', 'instock', 0, 100, '1709621072.jpg', NULL, 16, '2024-03-05 14:44:32', '2024-03-05 14:44:32', NULL),
(43, 'Television DL1', 'television-dl1', '- Display Resolution: Many new televisions come with 4K Ultra HD resolution as the default, providing high-quality and detailed images.\n', '- Display Resolution: Many new televisions come with 4K Ultra HD resolution as the default, providing high-quality and detailed images.\n- Screen Size: The default screen size for modernvisions can range from 40 inches to 65 inches or larger, depending on the model.\n- Smart TV Capabilities: Most new televisions are equipped with smart TV features, including built-in Wi-Fi, streaming apps, and voice control functionality.\n- HDR Support: High Dynamic Range (HDR) support is often included as a default feature, enhancing the contrast and color accuracy of the displayed content.\n- Connectivity: Default connectivity options may include multiple HDMI ports, USB ports, and digital audio outputs.\n- Audio: Built-in speakers or audio technology that provides immersive sound quality.', 1200.00, 999.00, 'DIGI123456', 'instock', 0, 100, '1709621409.jpg', NULL, 18, '2024-03-05 14:50:09', '2024-03-05 14:50:09', NULL),
(44, 'Television DL2', 'television-dl2', '- Display Resolution: Many new televisions come with 4K Ultra HD resolution as the default, providing high-quality and detailed images.\n', '- Display Resolution: Many new televisions come with 4K Ultra HD resolution as the default, providing high-quality and detailed images.\n- Screen Size: The default screen size for modernvisions can range from 40 inches to 65 inches or larger, depending on the model.\n- Smart TV Capabilities: Most new televisions are equipped with smart TV features, including built-in Wi-Fi, streaming apps, and voice control functionality.\n- HDR Support: High Dynamic Range (HDR) support is often included as a default feature, enhancing the contrast and color accuracy of the displayed content.\n- Connectivity: Default connectivity options may include multiple HDMI ports, USB ports, and digital audio outputs.\n- Audio: Built-in speakers or audio technology that provides immersive sound quality.', 1200.00, 999.00, 'DIGI123456', 'instock', 0, 100, '1709621699.jpg', NULL, 18, '2024-03-05 14:54:59', '2024-03-05 14:54:59', NULL),
(45, 'TelevisionDL3', 'televisiondl3', '- Display Resolution: Many new televisions come with 4K Ultra HD resolution as the default, providing high-quality and detailed images.\n', '- Display Resolution: Many new televisions come with 4K Ultra HD resolution as the default, providing high-quality and detailed images.\n- Screen Size: The default screen size for modernvisions can range from 40 inches to 65 inches or larger, depending on the model.\n- Smart TV Capabilities: Most new televisions are equipped with smart TV features, including built-in Wi-Fi, streaming apps, and voice control functionality.\n- HDR Support: High Dynamic Range (HDR) support is often included as a default feature, enhancing the contrast and color accuracy of the displayed content.\n- Connectivity: Default connectivity options may include multiple HDMI ports, USB ports, and digital audio outputs.\n- Audio: Built-in speakers or audio technology that provides immersive sound quality.', 1200.00, 999.00, 'DIGI123456', 'instock', 0, 100, '1709621855.jpg', NULL, 18, '2024-03-05 14:57:35', '2024-03-05 14:57:35', NULL),
(46, 'TelevisionDL4', 'televisiondl4', '- Display Resolution: Many new televisions come with 4K Ultra HD resolution as the default, providing high-quality and detailed images.\n', '- Display Resolution: Many new televisions come with 4K Ultra HD resolution as the default, providing high-quality and detailed images.\n- Screen Size: The default screen size for modernvisions can range from 40 inches to 65 inches or larger, depending on the model.\n- Smart TV Capabilities: Most new televisions are equipped with smart TV features, including built-in Wi-Fi, streaming apps, and voice control functionality.\n- HDR Support: High Dynamic Range (HDR) support is often included as a default feature, enhancing the contrast and color accuracy of the displayed content.\n- Connectivity: Default connectivity options may include multiple HDMI ports, USB ports, and digital audio outputs.\n- Audio: Built-in speakers or audio technology that provides immersive sound quality.', 350.00, 299.00, 'DIGI123456', 'instock', 0, 100, '1709622068.jpg', NULL, 18, '2024-03-05 15:01:08', '2024-03-05 15:01:08', NULL),
(47, 'Bag Fashion D1', 'bag-fashion-d1', 'Material: Fashion bags can be made of various materials such as leather, canvas, nylon, polyester, or a combination of materials.\n', 'Material: Fashion bags can be made of various materials such as leather, canvas, nylon, polyester, or a combination of materials.\n\nSize: The default size of a fashion bag can range from small handbags or clutches to medium-sized shoulder bags or larger tote bags. The size may also vary based on the specific style and intended use.\n\nCompartments: Many fashion bags come with multiple compartments, pockets, and organizers to help keep belongings organized.\n\nStraps and Handles: The default design may include adjustable shoulder straps, top handles, or crossbody straps, depending on the style of the bag.\n\nClosure: Common types of closures for fashion bags include zippers, magnetic snaps, clasps, or flap closures.\n\nDesign: The default design of a fashion bag may feature decorative elements such as hardware, embellishments, patterns, or brand logos.\n\nColor: Fashion bags are available in a wide range of colors and patterns, with the default color varying based on the specific design and brand.', 110.00, 99.00, 'FASHION123', 'instock', 0, 100, '1709622651.jpg', NULL, 23, '2024-03-05 15:10:51', '2024-03-05 15:10:51', NULL),
(48, 'Bag Fashion DL2', 'bag-fashion-dl2', 'Material: Fashion bags can be made of various materials such as leather, canvas, nylon, polyester, or a combination of materials.\n', 'Material: Fashion bags can be made of various materials such as leather, canvas, nylon, polyester, or a combination of materials.\n\nSize: The default size of a fashion bag can range from small handbags or clutches to medium-sized shoulder bags or larger tote bags. The size may also vary based on the specific style and intended use.\n\nCompartments: Many fashion bags come with multiple compartments, pockets, and organizers to help keep belongings organized.\n\nStraps and Handles: The default design may include adjustable shoulder straps, top handles, or crossbody straps, depending on the style of the bag.\n\nClosure: Common types of closures for fashion bags include zippers, magnetic snaps, clasps, or flap closures.\n\nDesign: The default design of a fashion bag may feature decorative elements such as hardware, embellishments, patterns, or brand logos.\n\nColor: Fashion bags are available in a wide range of colors and patterns, with the default color varying based on the specific design and brand.', 110.00, 99.00, 'FASHION123', 'instock', 0, 100, '1709623061.jpg', NULL, 23, '2024-03-05 15:17:41', '2024-03-05 15:17:41', NULL),
(49, 'Lamp Fashion DL2kk', 'lamp-fashion-dl2kk', '1. Base:\n   - Material: Typically made of metal, ceramic, glass, or resin.\n\n', '1. Base:\n   - Material: Typically made of metal, ceramic, glass, or resin.\n   - Design: May feature decorative elements such as intricate patterns, sculptural details, or unique shapes.\n   - Size: The base is usually proportionate to the overall size of the lamp.\n\n2. Shade:\n   - Material: Often made of fabric, parchment, or glass.\n   - Design: Can feature patterns, colors, or textures to complement the base and enhance the decorative appeal of the lamp.\n   -: The shade is typically sized to fit the base and provide adequate light diffusion.\n\n3. Bulb:\n   - Type: Most fashion lamps come with a standard socket for screw-in bulbs, typically compatible with incandescent, LED, or CFL bulbs.\n   - Wattage: The default wattage may vary, but it is typically suitable for providing ambient or accent lighting.\n\n4. Switch:\n   - Location: The switch is usually located near the base of the lamp or on the power cord for easy access.\n   - Type: Commonly equipped with a standard on/off switch, but some lamps may feature touch-sensitive or dimmer switches for added functionality.\n\n5. Cord:\n   - Length: The default cord length is typically sufficient to reach a nearby power outlet.\n   - Color: The cord may be neutral in color to blend with the decor or may be designed to complement the overall aesthetic of the lamp.\n\n6. Overall Design:\n   - Style: The default design of a fashion lamp may reflect a particular aesthetic, such as modern, traditional, vintage, or eclectic.\n   - Decorative Elements: The lamp may feature embellishments such as crystals, beads, tassels, or other decorative accents to enhance its fashion-forward appeal.', 80.00, 59.00, 'FASHION123', 'instock', 0, 100, '1709623319.jpg', NULL, 24, '2024-03-05 15:21:59', '2024-03-06 12:01:24', NULL),
(50, 'Lamp Fashion DL', 'lamp-fashion-dl', '1. Base:\n   - Material: Typically made of metal, ceramic, glass, or resin.\n \n', '1. Base:\n   - Material: Typically made of metal, ceramic, glass, or resin.\n   - Design: May feature decorative elements such as intricate patterns, sculptural details, or unique shapes.\n   - Size: The base is usually proportionate to the overall size of the lamp.\n\n2. Shade:\n   - Material: Often made of fabric, parchment, or glass.\n   - Design: Can feature patterns, colors, or textures to complement the base and enhance the decorative appeal of the lamp.\n   -: The shade is typically sized to fit the base and provide adequate light diffusion.\n\n3. Bulb:\n   - Type: Most fashion lamps come with a standard socket for screw-in bulbs, typically compatible with incandescent, LED, or CFL bulbs.\n   - Wattage: The default wattage may vary, but it is typically suitable for providing ambient or accent lighting.\n\n4. Switch:\n   - Location: The switch is usually located near the base of the lamp or on the power cord for easy access.\n   - Type: Commonly equipped with a standard on/off switch, but some lamps may feature touch-sensitive or dimmer switches for added functionality.\n\n5. Cord:\n   - Length: The default cord length is typically sufficient to reach a nearby power outlet.\n   - Color: The cord may be neutral in color to blend with the decor or may be designed to complement the overall aesthetic of the lamp.\n\n6. Overall Design:\n   - Style: The default design of a fashion lamp may reflect a particular aesthetic, such as modern, traditional, vintage, or eclectic.\n   - Decorative Elements: The lamp may feature embellishments such as crystals, beads, tassels, or other decorative accents to enhance its fashion-forward appeal.', 80.00, 59.00, 'FASHION123', 'instock', 0, 1000, '1709623499.jpg', NULL, 23, '2024-03-05 15:24:59', '2024-03-05 15:24:59', NULL),
(51, 'Jean Fashion DL', 'jean-fashion-dl', ' - Style: Common styles include skinny, slim, straight, bootcut, boyfriend, and relaxed fit. Each style offers a different silhouette and degree of tapering at the leg', ' - Style: Common styles include skinny, slim, straight, bootcut, boyfriend, and relaxed fit. Each style offers a different silhouette and degree of tapering at the leg.\n   - Rise: The default rise of fashion jeans can be categorized as high-rise, mid-rise, or low-rise, determining the placement of the waistband.', 50.00, 49.00, 'FASHION123', 'instock', 0, 100, '1709623727.jpg', NULL, 23, '2024-03-05 15:28:47', '2024-03-05 15:28:47', NULL),
(52, 'Shirt Fashion DL', 'shirt-fashion-dl', ' - Style: Common styles include skinny, slim, straight, bootcut, boyfriend, and relaxed fit. Each style offers a different silhouette and degree of tapering at the leg', ' - Style: Common styles include skinny, slim, straight, bootcut, boyfriend, and relaxed fit. Each style offers a different silhouette and degree of tapering at the leg.\n   - Rise: The default rise of fashion jeans can be categorized as high-rise, mid-rise, or low-rise, determining the placement of the waistband.', 50.00, 49.00, 'FASHION123', 'instock', 0, 100, '1709623803.jpg', NULL, 23, '2024-03-05 15:30:03', '2024-03-05 15:30:03', NULL),
(53, 'Shirt Fashion DLS', 'shirt-fashion-dls', ' - Style: Common styles include skinny, slim, straight, bootcut, boyfriend, and relaxed fit. Each style offers a different silhouette and degree of tapering at the leg', ' - Style: Common styles include skinny, slim, straight, bootcut, boyfriend, and relaxed fit. Each style offers a different silhouette and degree of tapering at the leg.\n   - Rise: The default rise of fashion jeans can be categorized as high-rise, mid-rise, or low-rise, determining the placement of the waistband.', 50.00, 49.00, 'FASHION123', 'instock', 0, 100, '1709623824.jpg', NULL, 23, '2024-03-05 15:30:24', '2024-03-05 15:30:24', NULL),
(54, 'Watch Fashion DL12', 'watch-fashion-dl12', '  - Material: The default material for the case of a fashion watch may be stainless steel, gold-plated, or a combination of materials.\n ', '  - Material: The default material for the case of a fashion watch may be stainless steel, gold-plated, or a combination of materials.\n   - Size: The default size of the case can range from 34mm to 42mm for men\'s watches and 26mm to 38mm for women\'s watches.\n   - Dial Design: The default dial design may include various elements such as hour markers, sub-dials, date windows, and decorative details.\n   - Crystal: The default crystal covering the dial of the watch may be mineral glass or sapphire crystal, providing protection and clarity.', 100.00, 99.00, 'FASHION123', 'instock', 0, 100, '1709623961.jpg', NULL, 23, '2024-03-05 15:32:41', '2024-03-06 14:24:28', NULL),
(55, 'Watch Fashion DL2512', 'watch-fashion-dl2512', '  - Material: The default material for the case of a fashion watch may be stainless steel, gold-plated, or a combination of materials.\n', '  - Material: The default material for the case of a fashion watch may be stainless steel, gold-plated, or a combination of materials.\n   - Size: The default size of the case can range from 34mm to 42mm for men\'s watches and 26mm to 38mm for women\'s watches.\n   - Dial Design: The default dial design may include various elements such as hour markers, sub-dials, date windows, and decorative details.\n   - Crystal: The default crystal covering the dial of the watch may be mineral glass or sapphire crystal, providing protection and clarity.', 110.00, 99.00, 'FASHION123', 'instock', 0, 100, '1709624182.jpg', NULL, 23, '2024-03-05 15:36:22', '2024-03-06 12:03:52', NULL),
(56, 'Chair Furnitures', 'chair-furnitures', 'Furniture for good', 'Furniture for good', 79.00, 65.00, 'FURNITURE123', 'instock', 0, 100, '1709624396.jpg', NULL, 24, '2024-03-05 15:39:56', '2024-03-06 07:28:53', NULL),
(58, 'Furniture Product', 'furniture-product', 'product for furnitures', 'product forfurnitures', 15.00, 12.00, 'FURNITURE123', 'instock', 0, 100, '1709675696.jpg', NULL, 24, '2024-03-06 05:54:56', '2024-03-06 05:54:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sizes', '2024-03-05 19:25:20', '2024-03-05 19:34:37'),
(2, 'Color', '2024-03-05 19:25:25', '2024-03-05 19:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 14, '1709634481.jpg', '02076589225', 'Dongdok', 'Namhone', 'Xaythany', 'Vientiane', 'Laos', '123456', '2024-03-05 17:24:56', '2024-03-05 18:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2024-02-28 22:38:01', 1, NULL, '2024-03-01 16:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `heading`, `title`, `description`, `created_at`, `updated_at`) VALUES
(5, 'Web-App', 'Web-Application', 'Web-Application service for deleveper', '2024-03-06 14:55:34', '2024-03-06 14:57:46'),
(6, 'Network', 'Network', 'Network for office and communication', '2024-03-06 14:58:32', '2024-03-06 14:58:32'),
(7, 'E-Device', 'Electronic - Device', 'Service Electronic - Device for home and Others', '2024-03-06 15:00:28', '2024-03-06 15:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HJb0unQDJeVBApsoSV3QAPUni8zOU5QdP37c9PkH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3Z6SUIzSVBzZlJrbFdIVG1QUkhGMEtxUUhmN1NqbzBnVFJJZjJsZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1709713819);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone1` varchar(255) NOT NULL,
  `phone2` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `map` varchar(500) NOT NULL,
  `twiter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `pinterest` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone1`, `phone2`, `address`, `map`, `twiter`, `facebook`, `pinterest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'porchouavang@kangser', '2076589225', '2071839333', 'Vientiane', 'https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3795.2845261635366!2d102.61169077469543!3d17.965494785894894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMTfCsDU3JzU1LjciTiAxMDLCsDM2JzUxLjQiRQ!5e0!3m2!1sth!2sla!4v1709554810141!5m2!1sth!2sla', '#', '#', '#', '#', '#', '2024-03-04 19:44:34', '2024-03-04 20:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `line1` varchar(255) NOT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('admin@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"56c43e33785849e258de920c6a85868b\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"56c43e33785849e258de920c6a85868b\";s:2:\"id\";i:58;s:3:\"qty\";i:1;s:4:\"name\";s:17:\"Furniture Product\";s:5:\"price\";d:12;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:6:\" Black\";s:5:\"Sizes\";s:2:\"43\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-03-06 09:00:05', NULL),
('admin@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-03-06 08:59:38', NULL),
('kangserpobtsuasvaaj@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-03-06 16:29:56', NULL),
('kangserpobtsuasvaaj@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-03-06 16:29:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `option` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `image`, `name`, `option`, `description`, `created_at`, `updated_at`) VALUES
(1, '1709711910.jpg', 'John', 'Devoloper', 'I am a developer', '2024-03-06 15:58:30', '2024-03-06 16:22:13'),
(2, '1709711958.jpg', 'Jenny', 'Marketer', 'i am a marketer', '2024-03-06 15:59:18', '2024-03-06 15:59:18'),
(3, '1709713790.jpg', 'Marry', 'Manager', 'I am a manager', '2024-03-06 16:00:14', '2024-03-06 16:29:50'),
(4, '1709712071.jpg', 'David', 'Director', 'i am a director', '2024-03-06 16:01:11', '2024-03-06 16:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') NOT NULL,
  `status` enum('pending','approved','declined','refunded') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(22, 13, 22, 'cod', 'pending', '2024-03-05 14:37:45', '2024-03-05 14:37:45'),
(23, 14, 23, 'cod', 'pending', '2024-03-05 16:16:17', '2024-03-05 16:16:17'),
(24, 13, 24, 'cod', 'pending', '2024-03-06 08:36:40', '2024-03-06 08:36:40'),
(25, 13, 25, 'cod', 'pending', '2024-03-06 08:38:50', '2024-03-06 08:38:50'),
(26, 13, 26, 'cod', 'pending', '2024-03-06 08:45:17', '2024-03-06 08:45:17'),
(27, 14, 27, 'cod', 'pending', '2024-03-06 08:53:09', '2024-03-06 08:53:09'),
(28, 14, 28, 'cod', 'pending', '2024-03-06 09:00:24', '2024-03-06 09:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `utype` varchar(255) NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User Or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(13, 'Porchoua', 'kangserpobtsuasvaaj@gmail.com', NULL, '$2y$12$B8pnaHNYPNLRM6d37aWXsuRBp7Gg7mEe45kYYzWAxDaHWVXr//ege', NULL, NULL, NULL, '1WZvZ5vHizDXboPFbNaezH78ieSsix1ILgCgjQMgDWhePfM1bujmVm2BG6w8', NULL, NULL, 'ADM', '2024-03-03 15:37:46', '2024-03-05 04:51:20'),
(14, 'Porchouavang', 'admin@gmail.com', NULL, '$2y$12$/3sGAO3XoVthB/Ug.4cOwuiY.3Z9UJXUMfyHn3Ugt9yTQWquNOuta', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2024-03-03 15:45:47', '2024-03-05 18:10:17'),
(15, 'tesrt', 'user2@gmail.com', NULL, '$2y$12$bJ5IQxTgSFL0nTovOoNca.42FA/6qnB.69ZC//tLpx/zjXwufHJCu', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2024-03-03 15:56:13', '2024-03-03 15:56:13'),
(16, 'new test', 'newpdev@gmail.com', NULL, '$2y$12$i0nNRObQv7M93pA686g3IeifbbvmcHY8E3ZRcUSW08GVj.Bhgt4Wm', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2024-03-03 18:22:44', '2024-03-03 18:22:44'),
(17, 'Pdeveloper', 'pdeveloper@gmail.com', NULL, '$2y$12$ixk/Xq0Nib.dosJVeP245OH2XAkRWgz0vsQdzQ2p4SH.q7MWsRG9q', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2024-03-04 14:00:09', '2024-03-04 17:36:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_product_attribute_id_foreign` (`product_attribute_id`),
  ADD KEY `attribute_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
