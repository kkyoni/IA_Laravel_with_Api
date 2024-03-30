-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 30, 2024 at 09:20 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bus_operators` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Arrival` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bus_type` int(11) DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `from`, `to`, `bus_operators`, `time`, `duration`, `Arrival`, `price`, `bus_type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Patan', 'Surat', '1', '12:00', '06h 32m', '05:15', '2500', 1, 'active', '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(2, 'Mumbai', 'Surat', '3', '12:00', '06h 32m', '05:15', '195', 2, 'active', '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(3, 'Mumbai', 'Surat', '4', '12:00', '06h 32m', '05:15', '221', 3, 'active', '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(4, 'Mumbai', 'Surat', '2', '12:00', '06h 32m', '05:15', '245', 3, 'active', '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(5, 'Mumbai', 'Surat', '5', '12:00', '06h 32m', '05:15', '199', 2, 'active', '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bus_confirm`
--

CREATE TABLE `bus_confirm` (
  `id` int(11) NOT NULL,
  `bus_id` int(11) DEFAULT NULL,
  `invoice_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `seat_numbers` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `booking_start_date` date DEFAULT NULL,
  `booking_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_confirm`
--

INSERT INTO `bus_confirm` (`id`, `bus_id`, `invoice_id`, `user_id`, `seat_numbers`, `price`, `booking_start_date`, `booking_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '5286977475', 10, 1, 250, '2024-03-26', 'pending', '2024-03-26 13:59:16', '2024-03-25 18:30:00', NULL),
(2, 1, '5286977475', 10, 3, 250, '2024-03-26', 'pending', '2024-03-26 13:59:16', '2024-03-25 18:30:00', NULL),
(3, 2, '1072317951', 10, 31, 140, '2024-03-26', 'confirm', '2024-03-26 13:59:16', '2024-03-25 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bus_operators`
--

CREATE TABLE `bus_operators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `operators_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus_operators`
--

INSERT INTO `bus_operators` (`id`, `operators_name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AK Tour & Travels', 'active', '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(2, 'Vikas Travels', 'active', '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(3, 'Gujarat Travels', 'active', '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(4, 'Shrinath Travel Agency', 'active', '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(5, 'Indian Travels Agency', 'active', '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bus_seat`
--

CREATE TABLE `bus_seat` (
  `id` int(11) NOT NULL,
  `bus_id` int(11) DEFAULT NULL,
  `seat_collection` int(11) DEFAULT NULL,
  `seat_numbers` int(11) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_seat`
--

INSERT INTO `bus_seat` (`id`, `bus_id`, `seat_collection`, `seat_numbers`, `class`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 'first', 250, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(2, 1, 1, 2, 'first', 250, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(3, 1, 1, 0, 'none', 250, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(4, 1, 1, 3, 'first', 250, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(5, 1, 1, 4, 'first', 250, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(6, 1, 2, 5, 'first', 250, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(7, 1, 2, 6, 'first', 250, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(8, 1, 2, 0, 'none', 250, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(9, 1, 2, 7, 'first', 250, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(10, 1, 2, 8, 'first', 250, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(11, 1, 3, 9, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(12, 1, 3, 10, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(13, 1, 3, 0, 'none', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(14, 1, 3, 11, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(15, 1, 3, 12, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(16, 1, 4, 13, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(17, 1, 4, 14, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(18, 1, 4, 0, 'none', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(19, 1, 4, 15, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(20, 1, 4, 16, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(21, 1, 5, 17, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(22, 1, 5, 18, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(23, 1, 5, 0, 'none', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(24, 1, 5, 0, 'none', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(25, 1, 6, 19, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(26, 1, 6, 20, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(27, 1, 6, 0, 'none', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(28, 1, 6, 21, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(29, 1, 6, 22, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(30, 1, 7, 23, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(31, 1, 7, 24, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(32, 1, 7, 0, 'none', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(33, 1, 7, 25, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(34, 1, 7, 26, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(35, 1, 8, 27, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(36, 1, 8, 28, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(37, 1, 8, 0, 'none', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(38, 1, 8, 29, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(39, 1, 8, 30, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(40, 1, 9, 31, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(41, 1, 9, 32, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(42, 1, 9, 33, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(43, 1, 9, 34, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL),
(44, 1, 9, 35, 'economy', 140, '2024-03-27 06:27:36', '2024-03-27 06:27:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bus_type`
--

CREATE TABLE `bus_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus_type`
--

INSERT INTO `bus_type` (`id`, `type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'semiseater', 'active', '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(2, 'seater', 'active', '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(3, 'sleeper', 'active', '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `card_holder_name` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `card_type` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `card_holder_name`, `card_number`, `card_type`, `expiry_date`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jaymin Modi', '8282828282', 'Visa', '02/25', '10', '2024-03-29 08:50:38', '2024-03-30 01:47:45', '2024-03-30 01:47:45'),
(2, 'Jaymin Modi', '8282828282', 'MasterCard', '02/25', '10', '2024-03-29 08:50:38', '2024-03-30 01:46:55', NULL),
(3, 'Jaymin Modi', '8282828282', 'American Express', '02/25', '10', '2024-03-29 08:50:38', '2024-03-30 01:45:39', NULL),
(4, 'Jaymin Modi', '8282828282', 'Discover', '02/25', '10', '2024-03-29 08:50:38', '2024-03-30 01:40:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_12_064254_create_bus_table', 1),
(6, '2024_03_19_092303_create_bus_operators_table', 1),
(7, '2024_03_19_092328_create_bus_type_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user.png',
  `user_type` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `user_type`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$D58cFmP3q5nPQie2fUaW3u5CMJOMRqkoQO/rYXY.0X/ZOnOOiTSa.', 'user.png', 'admin', 'active', NULL, '2024-03-19 04:02:10', '2024-03-19 04:02:10', NULL),
(2, 'Users2', 'Users2@gmail.com', NULL, '$2y$10$qI2xGt4A01VBADsZdq7KEOWiLUGAiZnHns4MUSWvg.dXByibi2TMO', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:10', '2024-03-19 04:02:10', NULL),
(3, 'Users3', 'Users3@gmail.com', NULL, '$2y$10$8GF8uy/bxMRqRkMg97xnB.Dg5g7/BWrgbphybKfOoFC4RLDYhmBey', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:10', '2024-03-19 04:02:10', NULL),
(4, 'Users4', 'Users4@gmail.com', NULL, '$2y$10$CT8YmbYFs8uH04pv6poyjuAgwk8GELMwFIWKl.doj68IYD/ftHuKK', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:10', '2024-03-19 04:02:10', NULL),
(5, 'Users5', 'Users5@gmail.com', NULL, '$2y$10$LTBl1H7YyeF7eyK1Rm28seyJOAs4N7WrX.K5kHPICThge9m63HKDi', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:10', '2024-03-19 04:02:10', NULL),
(6, 'Users6', 'Users6@gmail.com', NULL, '$2y$10$jyHhZsTqcezJJUzkfdkeBuSE6OuBGn.LUfnqw3VC/RukBz.v3ykLC', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:10', '2024-03-19 04:02:10', NULL),
(7, 'Users7', 'Users7@gmail.com', NULL, '$2y$10$fl3VnAXRhJbrE7UsepKaXeDJgS1gtxYcruw1fZV0lwMpNVM/baKVO', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:10', '2024-03-19 04:02:10', NULL),
(8, 'Users8', 'Users8@gmail.com', NULL, '$2y$10$mD4ewhyP4cQqJA4hrVRDmeXf0AZfdWcTHoy2Tl/GyvSEANZjwLNui', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:10', '2024-03-19 04:02:10', NULL),
(9, 'Users9', 'Users9@gmail.com', NULL, '$2y$10$NhP2NOM8rr395BPKSmPJx.66k5Q5zBqyOaZ7ZCDSPbP6N6N4XV3.W', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:10', '2024-03-19 04:02:10', NULL),
(10, 'Jaymin', 'Users@gmail.com', NULL, '$2y$10$MkSeGxi9ItEaG05mdkg3be/3dyM6Qhp4OJkPQ2k/VHegdyJGA2tLO', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:10', '2024-03-29 01:24:00', NULL),
(11, 'Users11', 'Users11@gmail.com', NULL, '$2y$10$i7yyfp47O4WhD7r9117lJOpiQCOtl4j2QtUCx.oA62sIH67mrSY8K', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:10', '2024-03-19 04:02:10', NULL),
(12, 'Users12', 'Users12@gmail.com', NULL, '$2y$10$9Gx1eMLGTO1JxJS6LVTrhefSjLT38qMb36AssY4sd03PkYhow6VRS', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:10', '2024-03-19 04:02:10', NULL),
(13, 'Users13', 'Users13@gmail.com', NULL, '$2y$10$kGQE9T6.wnc.InpBvnAJD.Wqcc7By08D0l9k0rIPBdbvyDKaDkONi', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(14, 'Users14', 'Users14@gmail.com', NULL, '$2y$10$AtJrY9z2od/6u4nK2lXUueVAqOutsPKPYUnBLXFx2RjcFWl4cyYyq', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(15, 'Users15', 'Users15@gmail.com', NULL, '$2y$10$Qb5OUEE5ryiaPLhMSsKBgO30VVDaUhDLycqqp5CSZldXkpXvBLO1.', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(16, 'Users16', 'Users16@gmail.com', NULL, '$2y$10$ANos44fzzbMh9ebR3WKiwuOtnfFQNJ8WovkcY3uuh/i5Zmo8z6L6i', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(17, 'Users17', 'Users17@gmail.com', NULL, '$2y$10$NAh6F7W87TOWtX86HFwSxOlr6MOuEkrvRzoyLXyxyT1aqOfQ2T6vq', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(18, 'Users18', 'Users18@gmail.com', NULL, '$2y$10$Dfq9kTD9KCR/inFsD71npu745C5BhVhq6NfdLmX2nU1ZeKhEc.AKS', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(19, 'Users19', 'Users19@gmail.com', NULL, '$2y$10$BOLfRNmExWs9COsXzUAIGudXrxZDo/tUgLJUaPcQadoCOQ7xFdUQq', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(20, 'Users20', 'Users20@gmail.com', NULL, '$2y$10$Gvau7vaL8jEZDMbsVJb8N.Vo9F0U5jK7k52elTlh6JyZc2kBRVsj.', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(21, 'Users21', 'Users21@gmail.com', NULL, '$2y$10$xJFYKitBiZ4TemaUKYJNxOfMmPAbzzcjmx8MkN8FrpsAtyFiKxsb2', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(22, 'Users22', 'Users22@gmail.com', NULL, '$2y$10$E.FYmhNn0GAPiaFP8uv4XOop1H5Wla8YqcDV.JCwaWUxIfIMtvvka', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL),
(23, 'Users23', 'Users23@gmail.com', NULL, '$2y$10$0Omhgm33uGPSkOf2bWyEKu3RdCaWdXnfbm9QeU8NvCPcinYRSAvxa', 'user.png', 'user', 'active', NULL, '2024-03-19 04:02:11', '2024-03-19 04:02:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_confirm`
--
ALTER TABLE `bus_confirm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_operators`
--
ALTER TABLE `bus_operators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_seat`
--
ALTER TABLE `bus_seat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_type`
--
ALTER TABLE `bus_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_reset_tokens_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bus_confirm`
--
ALTER TABLE `bus_confirm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bus_operators`
--
ALTER TABLE `bus_operators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bus_seat`
--
ALTER TABLE `bus_seat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `bus_type`
--
ALTER TABLE `bus_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
