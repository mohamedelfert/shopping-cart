-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2022 at 09:33 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_cart`
--

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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_05_05_191059_create_products_table', 2),
(5, '2022_05_07_155856_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `data`, `created_at`, `updated_at`) VALUES
(1, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:3:{i:1;a:4:{s:5:\"title\";s:33:\"Aut nihil earum blanditiis eaque.\";s:5:\"price\";s:5:\"71.00\";s:3:\"qty\";i:2;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?80365\";}i:2;a:4:{s:5:\"title\";s:50:\"Sunt consequatur aut et blanditiis qui ut dolorum.\";s:5:\"price\";s:6:\"155.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?90711\";}i:3;a:4:{s:5:\"title\";s:40:\"Omnis ut soluta doloribus earum sit est.\";s:5:\"price\";s:5:\"90.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?33813\";}}s:8:\"totalQty\";i:4;s:10:\"totalPrice\";d:387;}', '2022-05-07 14:06:54', '2022-05-07 14:06:54'),
(2, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:4:{s:5:\"title\";s:50:\"Sunt consequatur aut et blanditiis qui ut dolorum.\";s:5:\"price\";s:6:\"155.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?90711\";}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";d:155;}', '2022-05-07 14:36:04', '2022-05-07 14:36:04'),
(3, 2, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:1;a:4:{s:5:\"title\";s:33:\"Aut nihil earum blanditiis eaque.\";s:5:\"price\";s:5:\"71.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?80365\";}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";d:71;}', '2022-05-07 14:58:49', '2022-05-07 14:58:49'),
(4, 3, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:7:{i:2;a:4:{s:5:\"title\";s:50:\"Sunt consequatur aut et blanditiis qui ut dolorum.\";s:5:\"price\";s:6:\"155.00\";s:3:\"qty\";i:4;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?90711\";}i:3;a:4:{s:5:\"title\";s:40:\"Omnis ut soluta doloribus earum sit est.\";s:5:\"price\";s:5:\"90.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?33813\";}i:1;a:4:{s:5:\"title\";s:33:\"Aut nihil earum blanditiis eaque.\";s:5:\"price\";s:5:\"71.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?80365\";}i:4;a:4:{s:5:\"title\";s:48:\"Minima voluptates quis molestiae omnis mollitia.\";s:5:\"price\";s:6:\"142.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?53521\";}i:7;a:4:{s:5:\"title\";s:35:\"Qui porro est porro fugit officiis.\";s:5:\"price\";s:6:\"270.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?27831\";}i:10;a:4:{s:5:\"title\";s:51:\"Suscipit sit suscipit sint officia aut ipsum rerum.\";s:5:\"price\";s:6:\"207.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?41577\";}i:9;a:4:{s:5:\"title\";s:28:\"Error qui excepturi ducimus.\";s:5:\"price\";s:6:\"168.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?71162\";}}s:8:\"totalQty\";i:10;s:10:\"totalPrice\";d:1568;}', '2022-05-07 15:01:37', '2022-05-07 15:01:37'),
(5, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:10:{i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:33:\"Aut nihil earum blanditiis eaque.\";s:5:\"price\";s:5:\"71.00\";s:3:\"qty\";s:1:\"5\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?80365\";}i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:50:\"Sunt consequatur aut et blanditiis qui ut dolorum.\";s:5:\"price\";s:6:\"155.00\";s:3:\"qty\";s:1:\"5\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?90711\";}i:3;a:5:{s:2:\"id\";i:3;s:5:\"title\";s:40:\"Omnis ut soluta doloribus earum sit est.\";s:5:\"price\";s:5:\"90.00\";s:3:\"qty\";s:1:\"2\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?33813\";}i:6;a:5:{s:2:\"id\";i:6;s:5:\"title\";s:37:\"Id doloremque impedit reiciendis qui.\";s:5:\"price\";s:5:\"85.00\";s:3:\"qty\";s:1:\"7\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?24314\";}i:5;a:5:{s:2:\"id\";i:5;s:5:\"title\";s:65:\"Ipsa impedit placeat nostrum incidunt dignissimos facilis magnam.\";s:5:\"price\";s:6:\"226.00\";s:3:\"qty\";s:2:\"10\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?44168\";}i:4;a:5:{s:2:\"id\";i:4;s:5:\"title\";s:48:\"Minima voluptates quis molestiae omnis mollitia.\";s:5:\"price\";s:6:\"142.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?53521\";}i:7;a:5:{s:2:\"id\";i:7;s:5:\"title\";s:35:\"Qui porro est porro fugit officiis.\";s:5:\"price\";s:6:\"270.00\";s:3:\"qty\";s:2:\"20\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?27831\";}i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:26:\"Rerum ipsa sed ut nemo ut.\";s:5:\"price\";s:6:\"122.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?44620\";}i:9;a:5:{s:2:\"id\";i:9;s:5:\"title\";s:28:\"Error qui excepturi ducimus.\";s:5:\"price\";s:6:\"168.00\";s:3:\"qty\";s:2:\"30\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?71162\";}i:10;a:5:{s:2:\"id\";i:10;s:5:\"title\";s:51:\"Suscipit sit suscipit sint officia aut ipsum rerum.\";s:5:\"price\";s:6:\"207.00\";s:3:\"qty\";s:2:\"20\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?41577\";}}s:8:\"totalQty\";i:101;s:10:\"totalPrice\";d:19009;}', '2022-05-07 17:07:23', '2022-05-07 17:07:23'),
(6, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:50:\"Sunt consequatur aut et blanditiis qui ut dolorum.\";s:5:\"price\";s:6:\"155.00\";s:3:\"qty\";s:1:\"1\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?90711\";}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";d:155;}', '2022-05-07 17:32:25', '2022-05-07 17:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Aut nihil earum blanditiis eaque.', '71.00', 'https://lorempixel.com/640/480/technics/?80365', '2022-05-05 17:23:21', '2022-05-05 17:23:21'),
(2, 'Sunt consequatur aut et blanditiis qui ut dolorum.', '155.00', 'https://lorempixel.com/640/480/technics/?90711', '2022-05-05 17:23:21', '2022-05-05 17:23:21'),
(3, 'Omnis ut soluta doloribus earum sit est.', '90.00', 'https://lorempixel.com/640/480/technics/?33813', '2022-05-05 17:23:21', '2022-05-05 17:23:21'),
(4, 'Minima voluptates quis molestiae omnis mollitia.', '142.00', 'https://lorempixel.com/640/480/technics/?53521', '2022-05-05 17:23:21', '2022-05-05 17:23:21'),
(5, 'Ipsa impedit placeat nostrum incidunt dignissimos facilis magnam.', '226.00', 'https://lorempixel.com/640/480/technics/?44168', '2022-05-05 17:23:21', '2022-05-05 17:23:21'),
(6, 'Id doloremque impedit reiciendis qui.', '85.00', 'https://lorempixel.com/640/480/technics/?24314', '2022-05-05 17:23:21', '2022-05-05 17:23:21'),
(7, 'Qui porro est porro fugit officiis.', '270.00', 'https://lorempixel.com/640/480/technics/?27831', '2022-05-05 17:23:21', '2022-05-05 17:23:21'),
(8, 'Rerum ipsa sed ut nemo ut.', '122.00', 'https://lorempixel.com/640/480/technics/?44620', '2022-05-05 17:23:21', '2022-05-05 17:23:21'),
(9, 'Error qui excepturi ducimus.', '168.00', 'https://lorempixel.com/640/480/technics/?71162', '2022-05-05 17:23:21', '2022-05-05 17:23:21'),
(10, 'Suscipit sit suscipit sint officia aut ipsum rerum.', '207.00', 'https://lorempixel.com/640/480/technics/?41577', '2022-05-05 17:23:21', '2022-05-05 17:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'm7md elfert', 'medo@yahoo.com', NULL, '$2y$10$TvHjXtAXZ55pfgNaxUUP3e1gKG7yLvdPjxAcPh8DB8YVl7BfBHStq', 'm8doU25ExHMZ85N8cYlvlqu84TvFFP96mud853i4NothIEFdfM8Wh66oQWZo', '2022-05-05 17:08:07', '2022-05-05 17:08:07'),
(2, 'Samy Ahmed Saad', 'samy@yahoo.com', NULL, '$2y$10$VfhTuwdVA4pcOtRahdrx5uRW8fBzgTOo.8D3f8yqkBeq7UXGR7Rze', NULL, '2022-05-07 14:53:10', '2022-05-07 14:53:10'),
(3, 'sara mohamed ali', 'sara@yahoo.com', NULL, '$2y$10$hcz66ftsISSfBKH8UpmnZ.SdcKJ4xP64kF2cTBevBqjz0laZ7TboW', NULL, '2022-05-07 15:00:47', '2022-05-07 15:00:47');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
