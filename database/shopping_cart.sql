-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2022 at 05:25 PM
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
(4, '2022_05_05_191059_create_products_table', 1),
(5, '2022_05_07_155856_create_orders_table', 1);

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
(1, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:32:\"Voluptate aliquid fugit et enim.\";s:5:\"price\";s:5:\"62.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?26984\";}i:3;a:5:{s:2:\"id\";i:3;s:5:\"title\";s:35:\"Commodi ad voluptatem sed incidunt.\";s:5:\"price\";s:6:\"157.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?84124\";}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";d:219;}', '2022-05-08 09:08:42', '2022-05-08 09:08:42'),
(2, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:3;a:5:{s:2:\"id\";i:3;s:5:\"title\";s:48:\"Corrupti ea eveniet ex odio veritatis sit rerum.\";s:5:\"price\";s:6:\"206.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?67383\";}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";d:206;}', '2022-05-11 11:08:53', '2022-05-11 11:08:53'),
(3, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:3:{i:4;a:5:{s:2:\"id\";i:4;s:5:\"title\";s:55:\"Architecto rerum facilis tenetur est sunt perspiciatis.\";s:5:\"price\";s:6:\"293.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?70665\";}i:5;a:5:{s:2:\"id\";i:5;s:5:\"title\";s:28:\"Eum corporis sint quasi eos.\";s:5:\"price\";s:6:\"102.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?34261\";}i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:17:\"Quas autem et et.\";s:5:\"price\";s:6:\"224.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?80739\";}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";d:619;}', '2022-05-11 11:10:03', '2022-05-11 11:10:03'),
(4, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:3;a:5:{s:2:\"id\";i:3;s:5:\"title\";s:48:\"Corrupti ea eveniet ex odio veritatis sit rerum.\";s:5:\"price\";s:6:\"206.00\";s:3:\"qty\";i:2;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?67383\";}i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:72:\"Minus consequatur ut voluptatum sit molestiae dolores aperiam excepturi.\";s:5:\"price\";s:6:\"261.00\";s:3:\"qty\";i:2;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?58931\";}}s:8:\"totalQty\";i:4;s:10:\"totalPrice\";d:934;}', '2022-05-11 11:19:16', '2022-05-11 11:19:16'),
(5, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:72:\"Minus consequatur ut voluptatum sit molestiae dolores aperiam excepturi.\";s:5:\"price\";s:6:\"261.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?58931\";}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";d:261;}', '2022-05-11 14:00:00', '2022-05-11 14:00:00'),
(6, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:48:\"Excepturi repudiandae natus praesentium et eius.\";s:5:\"price\";s:5:\"61.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?68536\";}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";d:61;}', '2022-05-11 14:28:15', '2022-05-11 14:28:15'),
(7, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:72:\"Minus consequatur ut voluptatum sit molestiae dolores aperiam excepturi.\";s:5:\"price\";s:6:\"261.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?58931\";}i:3;a:5:{s:2:\"id\";i:3;s:5:\"title\";s:48:\"Corrupti ea eveniet ex odio veritatis sit rerum.\";s:5:\"price\";s:6:\"206.00\";s:3:\"qty\";i:2;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?67383\";}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";d:673;}', '2022-05-13 12:59:26', '2022-05-13 12:59:26'),
(8, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:9:{i:9;a:5:{s:2:\"id\";i:9;s:5:\"title\";s:41:\"Excepturi atque quia non id in molestiae.\";s:5:\"price\";s:5:\"92.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?24842\";}i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:17:\"Quas autem et et.\";s:5:\"price\";s:6:\"224.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?80739\";}i:7;a:5:{s:2:\"id\";i:7;s:5:\"title\";s:70:\"Id accusamus recusandae incidunt cupiditate dicta aut qui consequatur.\";s:5:\"price\";s:6:\"286.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?13616\";}i:5;a:5:{s:2:\"id\";i:5;s:5:\"title\";s:28:\"Eum corporis sint quasi eos.\";s:5:\"price\";s:6:\"102.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?34261\";}i:4;a:5:{s:2:\"id\";i:4;s:5:\"title\";s:55:\"Architecto rerum facilis tenetur est sunt perspiciatis.\";s:5:\"price\";s:6:\"293.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?70665\";}i:10;a:5:{s:2:\"id\";i:10;s:5:\"title\";s:32:\"Fuga molestias dolor et ducimus.\";s:5:\"price\";s:5:\"56.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?55045\";}i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:72:\"Minus consequatur ut voluptatum sit molestiae dolores aperiam excepturi.\";s:5:\"price\";s:6:\"261.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?58931\";}i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:48:\"Excepturi repudiandae natus praesentium et eius.\";s:5:\"price\";s:5:\"61.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?68536\";}i:3;a:5:{s:2:\"id\";i:3;s:5:\"title\";s:48:\"Corrupti ea eveniet ex odio veritatis sit rerum.\";s:5:\"price\";s:6:\"206.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?67383\";}}s:8:\"totalQty\";i:9;s:10:\"totalPrice\";d:1581;}', '2022-05-13 13:01:01', '2022-05-13 13:01:01'),
(9, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:4:{i:3;a:5:{s:2:\"id\";i:3;s:5:\"title\";s:48:\"Corrupti ea eveniet ex odio veritatis sit rerum.\";s:5:\"price\";s:6:\"206.00\";s:3:\"qty\";s:1:\"2\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?67383\";}i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:72:\"Minus consequatur ut voluptatum sit molestiae dolores aperiam excepturi.\";s:5:\"price\";s:6:\"261.00\";s:3:\"qty\";s:1:\"3\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?58931\";}i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:48:\"Excepturi repudiandae natus praesentium et eius.\";s:5:\"price\";s:5:\"61.00\";s:3:\"qty\";s:1:\"4\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?68536\";}i:4;a:5:{s:2:\"id\";i:4;s:5:\"title\";s:55:\"Architecto rerum facilis tenetur est sunt perspiciatis.\";s:5:\"price\";s:6:\"293.00\";s:3:\"qty\";s:1:\"5\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?70665\";}}s:8:\"totalQty\";i:14;s:10:\"totalPrice\";d:2904;}', '2022-05-13 13:02:29', '2022-05-13 13:02:29'),
(10, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:72:\"Minus consequatur ut voluptatum sit molestiae dolores aperiam excepturi.\";s:5:\"price\";s:6:\"261.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?58931\";}i:3;a:5:{s:2:\"id\";i:3;s:5:\"title\";s:48:\"Corrupti ea eveniet ex odio veritatis sit rerum.\";s:5:\"price\";s:6:\"206.00\";s:3:\"qty\";i:1;s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?67383\";}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";d:467;}', '2022-05-13 13:16:54', '2022-05-13 13:16:54');

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
(1, 'Excepturi repudiandae natus praesentium et eius.', '61.00', 'https://lorempixel.com/640/480/technics/?68536', '2022-05-08 09:07:56', '2022-05-08 09:07:56'),
(2, 'Minus consequatur ut voluptatum sit molestiae dolores aperiam excepturi.', '261.00', 'https://lorempixel.com/640/480/technics/?58931', '2022-05-08 09:07:56', '2022-05-08 09:07:56'),
(3, 'Corrupti ea eveniet ex odio veritatis sit rerum.', '206.00', 'https://lorempixel.com/640/480/technics/?67383', '2022-05-08 09:07:56', '2022-05-08 09:07:56'),
(4, 'Architecto rerum facilis tenetur est sunt perspiciatis.', '293.00', 'https://lorempixel.com/640/480/technics/?70665', '2022-05-08 09:07:56', '2022-05-08 09:07:56'),
(5, 'Eum corporis sint quasi eos.', '102.00', 'https://lorempixel.com/640/480/technics/?34261', '2022-05-08 09:07:56', '2022-05-08 09:07:56'),
(6, 'Sint qui corrupti molestias alias est.', '120.00', 'https://lorempixel.com/640/480/technics/?82426', '2022-05-08 09:07:56', '2022-05-08 09:07:56'),
(7, 'Id accusamus recusandae incidunt cupiditate dicta aut qui consequatur.', '286.00', 'https://lorempixel.com/640/480/technics/?13616', '2022-05-08 09:07:56', '2022-05-08 09:07:56'),
(8, 'Quas autem et et.', '224.00', 'https://lorempixel.com/640/480/technics/?80739', '2022-05-08 09:07:56', '2022-05-08 09:07:56'),
(9, 'Excepturi atque quia non id in molestiae.', '92.00', 'https://lorempixel.com/640/480/technics/?24842', '2022-05-08 09:07:56', '2022-05-08 09:07:56'),
(10, 'Fuga molestias dolor et ducimus.', '56.00', 'https://lorempixel.com/640/480/technics/?55045', '2022-05-08 09:07:56', '2022-05-08 09:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
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
(1, 'm7md elfert', 'mohamedelfert19@gmail.com', NULL, '$2y$10$v7LLTWHRy73BXJGCsFN3FeOBuTBfX90JeYsKiqNA..OyA18aZElh2', 'IMiapfQG74l1LicqFIcmV5ibYdsJy6Gx8X7dUuZonY4loiGbLg1d7UiISPPj', '2022-05-08 09:08:18', '2022-05-08 09:08:18');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
