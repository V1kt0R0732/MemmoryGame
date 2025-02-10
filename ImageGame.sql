-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 10 2025 г., 16:08
-- Версия сервера: 8.0.30
-- Версия PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ImageGame`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `image_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `image_name`, `created_at`, `updated_at`) VALUES
(13, 'images/7hkNoWgYx3IEeZylVMikZiSBHUzJKD0elU3MqKy0.jpg', '2025-01-10 11:26:23', '2025-01-10 11:26:23'),
(14, 'images/CVG2Gm4h71MAs5YCeLC7pCRWt691ED07Z7s2XcMF.jpg', '2025-01-10 11:26:23', '2025-01-10 11:26:23'),
(15, 'images/ER6aSMKl0cQCJAupOYxHPqZeD6LDGzgQcf0f2309.jpg', '2025-01-10 11:26:23', '2025-01-10 11:26:23'),
(16, 'images/6L242jIyqRNCteJLKfzLOamWYikwvuoVBxC38E5J.jpg', '2025-01-10 11:26:23', '2025-01-10 11:26:23'),
(17, 'images/gIhBsdP1Fma7gROxkxFOhw5X9HHYhJBzQYhmo0hP.jpg', '2025-01-10 11:26:23', '2025-01-10 11:26:23'),
(18, 'images/JSCi4Kj95kf89zxcRHmooSlqV3nYsyfrb4MYvX31.jpg', '2025-01-10 11:26:23', '2025-01-10 11:26:23'),
(19, 'images/KGm7mfRgcxCNpjD4ZVIlysGCXxqIpX0fR9qtPG2W.jpg', '2025-01-10 11:26:23', '2025-01-10 11:26:23'),
(20, 'images/5i5M6dbpg6URzckBBvNZSokjXqfR55BVKh8FtHAz.jpg', '2025-01-10 11:26:23', '2025-01-10 11:26:23'),
(21, 'images/BXYt5R7keSJ5VCrEcYS5Yuy43X7LuFOm8SYedM9H.jpg', '2025-01-10 11:26:23', '2025-01-10 11:26:23'),
(22, 'images/073vU3HYHpLQQj2ivqDHBdd0Y8gevGftHQOec7Ig.jpg', '2025-01-10 11:26:23', '2025-01-10 11:26:23'),
(23, 'images/Yqdcw9UpgFKv7pCmKNBfFxzBbydUsALiSYt5p7mY.jpg', '2025-01-10 11:26:23', '2025-01-10 11:26:23'),
(24, 'images/JtW6KAX1qLVePRDSoPvsiAmbpYs4C2DJTNSgWtk5.jpg', '2025-02-05 13:07:29', '2025-02-05 13:07:29');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_08_162158_create_images_table', 1),
(5, '2025_01_29_173536_create_players_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `players`
--

CREATE TABLE `players` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `players`
--

INSERT INTO `players` (`id`, `name`, `points`, `created_at`, `updated_at`) VALUES
(1, 'Viktor', '3', '2025-02-03 15:33:52', '2025-02-03 15:39:10'),
(6, 'Ivankov', '1', NULL, NULL),
(7, 'Masha', '2', NULL, NULL),
(8, 'Anton', '5', NULL, NULL),
(9, 'Rodger', '10', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('26qknbmA2MI770wA5i61nn10DBbStPP65Rig8pOX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo3OntzOjEwOiJwbGF5ZXJOYW1lIjtzOjQ6Ik9sZWciO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiI1MUE5S3NEakhJY0ViTUp3bEJaMnlyYVJycnVsdnhxQzBvbzlXQTFFIjtzOjk6ImZha2VBcnJheSI7YToxNjp7aTowO3M6Mjc6Ii9zdG9yYWdlL2ltYWdlcy9ub1Bob3RvLnBuZyI7aToxO3M6Mjc6Ii9zdG9yYWdlL2ltYWdlcy9ub1Bob3RvLnBuZyI7aToyO3M6Mjc6Ii9zdG9yYWdlL2ltYWdlcy9ub1Bob3RvLnBuZyI7aTozO3M6Mjc6Ii9zdG9yYWdlL2ltYWdlcy9ub1Bob3RvLnBuZyI7aTo0O3M6Mjc6Ii9zdG9yYWdlL2ltYWdlcy9ub1Bob3RvLnBuZyI7aTo1O3M6Mjc6Ii9zdG9yYWdlL2ltYWdlcy9ub1Bob3RvLnBuZyI7aTo2O3M6Mjc6Ii9zdG9yYWdlL2ltYWdlcy9ub1Bob3RvLnBuZyI7aTo3O3M6Mjc6Ii9zdG9yYWdlL2ltYWdlcy9ub1Bob3RvLnBuZyI7aTo4O3M6Mjc6Ii9zdG9yYWdlL2ltYWdlcy9ub1Bob3RvLnBuZyI7aTo5O3M6Mjc6Ii9zdG9yYWdlL2ltYWdlcy9ub1Bob3RvLnBuZyI7aToxMDtzOjI3OiIvc3RvcmFnZS9pbWFnZXMvbm9QaG90by5wbmciO2k6MTE7czoyNzoiL3N0b3JhZ2UvaW1hZ2VzL25vUGhvdG8ucG5nIjtpOjEyO3M6Mjc6Ii9zdG9yYWdlL2ltYWdlcy9ub1Bob3RvLnBuZyI7aToxMztzOjI3OiIvc3RvcmFnZS9pbWFnZXMvbm9QaG90by5wbmciO2k6MTQ7czoyNzoiL3N0b3JhZ2UvaW1hZ2VzL25vUGhvdG8ucG5nIjtpOjE1O3M6Mjc6Ii9zdG9yYWdlL2ltYWdlcy9ub1Bob3RvLnBuZyI7fXM6NjoiaW1hZ2VzIjthOjE2OntpOjA7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzL0p0VzZLQVgxcUxWZVBSRFNvUHZzaUFtYnBZczRDMkRKVE5TZ1d0azUuanBnIjtpOjE7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzLzA3M3ZVM0hZSHBMUVFqMml2cURIQmRkMFk4Z2V2R2Z0SFFPZWM3SWcuanBnIjtpOjI7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzL0tHbTdtZlJnY3hDTnBqRDRaVklseXNHQ1h4cUlwWDBmUjlxdFBHMlcuanBnIjtpOjM7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzLzVpNU02ZGJwZzZVUnpja0JCdk5aU29ralhxZlI1NUJWS2g4RnRIQXouanBnIjtpOjQ7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzLzdoa05vV2dZeDNJRWVaeWxWTWlrWmlTQkhVekpLRDBlbFUzTXFLeTAuanBnIjtpOjU7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzL0VSNmFTTUtsMGNRQ0pBdXBPWXhIUHFaZUQ2TERHemdRY2YwZjIzMDkuanBnIjtpOjY7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzL2dJaEJzZFAxRm1hN2dST3hreEZPaHc1WDlISFloSkJ6UVlobW8waFAuanBnIjtpOjc7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzL0VSNmFTTUtsMGNRQ0pBdXBPWXhIUHFaZUQ2TERHemdRY2YwZjIzMDkuanBnIjtpOjg7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzLzdoa05vV2dZeDNJRWVaeWxWTWlrWmlTQkhVekpLRDBlbFUzTXFLeTAuanBnIjtpOjk7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzL2dJaEJzZFAxRm1hN2dST3hreEZPaHc1WDlISFloSkJ6UVlobW8waFAuanBnIjtpOjEwO3M6NjA6Ii9zdG9yYWdlL2ltYWdlcy81aTVNNmRicGc2VVJ6Y2tCQnZOWlNva2pYcWZSNTVCVktoOEZ0SEF6LmpwZyI7aToxMTtzOjYwOiIvc3RvcmFnZS9pbWFnZXMvWXFkY3c5VXBnRkt2N3BDbUtOQmZGeHpCYnlkVXNBTGlTWXQ1cDdtWS5qcGciO2k6MTI7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzL0tHbTdtZlJnY3hDTnBqRDRaVklseXNHQ1h4cUlwWDBmUjlxdFBHMlcuanBnIjtpOjEzO3M6NjA6Ii9zdG9yYWdlL2ltYWdlcy9ZcWRjdzlVcGdGS3Y3cENtS05CZkZ4ekJieWRVc0FMaVNZdDVwN21ZLmpwZyI7aToxNDtzOjYwOiIvc3RvcmFnZS9pbWFnZXMvSnRXNktBWDFxTFZlUFJEU29QdnNpQW1icFlzNEMyREpUTlNnV3RrNS5qcGciO2k6MTU7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzLzA3M3ZVM0hZSHBMUVFqMml2cURIQmRkMFk4Z2V2R2Z0SFFPZWM3SWcuanBnIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoicG9pbnRzIjtpOjQ7fQ==', 1738772071),
('ioaQILXBidChVsGNqLCWKBzRC6Xo1KIWuGuDSbGd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo5OntzOjEwOiJwbGF5ZXJOYW1lIjtzOjY6IlZpa3RvciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6IkpSTFVmV3Z1b2tZUkVxUU9DdlA0Sm1VS0Z6VnVHS09BbzQ1UnpPc24iO3M6OToiZmFrZUFycmF5IjthOjE2OntpOjA7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzL0JYWXQ1UjdrZVNKNVZDckVjWVM1WXV5NDNYN0x1Rk9tOFNZZWRNOUguanBnIjtpOjE7czoyNzoiL3N0b3JhZ2UvaW1hZ2VzL25vUGhvdG8ucG5nIjtpOjI7czoyNzoiL3N0b3JhZ2UvaW1hZ2VzL25vUGhvdG8ucG5nIjtpOjM7czoyNzoiL3N0b3JhZ2UvaW1hZ2VzL25vUGhvdG8ucG5nIjtpOjQ7czoyNzoiL3N0b3JhZ2UvaW1hZ2VzL25vUGhvdG8ucG5nIjtpOjU7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzL0VSNmFTTUtsMGNRQ0pBdXBPWXhIUHFaZUQ2TERHemdRY2YwZjIzMDkuanBnIjtpOjY7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzL0VSNmFTTUtsMGNRQ0pBdXBPWXhIUHFaZUQ2TERHemdRY2YwZjIzMDkuanBnIjtpOjc7czoyNzoiL3N0b3JhZ2UvaW1hZ2VzL25vUGhvdG8ucG5nIjtpOjg7czoyNzoiL3N0b3JhZ2UvaW1hZ2VzL25vUGhvdG8ucG5nIjtpOjk7czoyNzoiL3N0b3JhZ2UvaW1hZ2VzL25vUGhvdG8ucG5nIjtpOjEwO3M6Mjc6Ii9zdG9yYWdlL2ltYWdlcy9ub1Bob3RvLnBuZyI7aToxMTtzOjYwOiIvc3RvcmFnZS9pbWFnZXMvSnRXNktBWDFxTFZlUFJEU29QdnNpQW1icFlzNEMyREpUTlNnV3RrNS5qcGciO2k6MTI7czoyNzoiL3N0b3JhZ2UvaW1hZ2VzL25vUGhvdG8ucG5nIjtpOjEzO3M6NjA6Ii9zdG9yYWdlL2ltYWdlcy9KdFc2S0FYMXFMVmVQUkRTb1B2c2lBbWJwWXM0QzJESlROU2dXdGs1LmpwZyI7aToxNDtzOjI3OiIvc3RvcmFnZS9pbWFnZXMvbm9QaG90by5wbmciO2k6MTU7czoyNzoiL3N0b3JhZ2UvaW1hZ2VzL25vUGhvdG8ucG5nIjt9czo2OiJpbWFnZXMiO2E6MTY6e2k6MDtzOjYwOiIvc3RvcmFnZS9pbWFnZXMvQlhZdDVSN2tlU0o1VkNyRWNZUzVZdXk0M1g3THVGT204U1llZE05SC5qcGciO2k6MTtzOjYwOiIvc3RvcmFnZS9pbWFnZXMvMDczdlUzSFlIcExRUWoyaXZxREhCZGQwWThnZXZHZnRIUU9lYzdJZy5qcGciO2k6MjtzOjYwOiIvc3RvcmFnZS9pbWFnZXMvNWk1TTZkYnBnNlVSemNrQkJ2TlpTb2tqWHFmUjU1QlZLaDhGdEhBei5qcGciO2k6MztzOjYwOiIvc3RvcmFnZS9pbWFnZXMvMDczdlUzSFlIcExRUWoyaXZxREhCZGQwWThnZXZHZnRIUU9lYzdJZy5qcGciO2k6NDtzOjYwOiIvc3RvcmFnZS9pbWFnZXMvN2hrTm9XZ1l4M0lFZVp5bFZNaWtaaVNCSFV6SktEMGVsVTNNcUt5MC5qcGciO2k6NTtzOjYwOiIvc3RvcmFnZS9pbWFnZXMvRVI2YVNNS2wwY1FDSkF1cE9ZeEhQcVplRDZMREd6Z1FjZjBmMjMwOS5qcGciO2k6NjtzOjYwOiIvc3RvcmFnZS9pbWFnZXMvRVI2YVNNS2wwY1FDSkF1cE9ZeEhQcVplRDZMREd6Z1FjZjBmMjMwOS5qcGciO2k6NztzOjYwOiIvc3RvcmFnZS9pbWFnZXMvZ0loQnNkUDFGbWE3Z1JPeGt4Rk9odzVYOUhIWWhKQnpRWWhtbzBoUC5qcGciO2k6ODtzOjYwOiIvc3RvcmFnZS9pbWFnZXMvQlhZdDVSN2tlU0o1VkNyRWNZUzVZdXk0M1g3THVGT204U1llZE05SC5qcGciO2k6OTtzOjYwOiIvc3RvcmFnZS9pbWFnZXMvNWk1TTZkYnBnNlVSemNrQkJ2TlpTb2tqWHFmUjU1QlZLaDhGdEhBei5qcGciO2k6MTA7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzL0pTQ2k0S2o5NWtmODl6eGNSSG1vb1NscVYzbllzeWZyYjRNWXZYMzEuanBnIjtpOjExO3M6NjA6Ii9zdG9yYWdlL2ltYWdlcy9KdFc2S0FYMXFMVmVQUkRTb1B2c2lBbWJwWXM0QzJESlROU2dXdGs1LmpwZyI7aToxMjtzOjYwOiIvc3RvcmFnZS9pbWFnZXMvN2hrTm9XZ1l4M0lFZVp5bFZNaWtaaVNCSFV6SktEMGVsVTNNcUt5MC5qcGciO2k6MTM7czo2MDoiL3N0b3JhZ2UvaW1hZ2VzL0p0VzZLQVgxcUxWZVBSRFNvUHZzaUFtYnBZczRDMkRKVE5TZ1d0azUuanBnIjtpOjE0O3M6NjA6Ii9zdG9yYWdlL2ltYWdlcy9nSWhCc2RQMUZtYTdnUk94a3hGT2h3NVg5SEhZaEpCelFZaG1vMGhQLmpwZyI7aToxNTtzOjYwOiIvc3RvcmFnZS9pbWFnZXMvSlNDaTRLajk1a2Y4OXp4Y1JIbW9vU2xxVjNuWXN5ZnJiNE1ZdlgzMS5qcGciO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2VuZCI7fXM6NjoicG9pbnRzIjtpOjE7czoyOiJpZCI7YToxOntpOjA7czoxOiIwIjt9czozOiJudW0iO2k6MTt9', 1739127117);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
