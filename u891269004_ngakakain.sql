-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 31 Jul 2025 pada 09.02
-- Versi server: 10.11.10-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u891269004_ngakakain`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Ayu Puspita', '0858 406 516', 'Gg. Pasteur No. 916, Ambon 69097, Bali', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(2, 'Vera Kiandra Farida', '(+62) 248 3857 4341', 'Jr. Raden No. 301, Payakumbuh 78682, DKI', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(3, 'Widya Padmi Hartati S.T.', '0938 6536 8274', 'Dk. Ciwastra No. 416, Padangsidempuan 78247, Jabar', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(4, 'Edi Natsir', '(+62) 306 1409 2824', 'Psr. Bara No. 449, Pekanbaru 64697, Jabar', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(5, 'Mila Astuti S.E.I', '(+62) 931 6939 5118', 'Kpg. Baya Kali Bungur No. 158, Samarinda 82820, Kalbar', '2025-07-31 00:00:00', '2025-07-31 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transactions`
--

CREATE TABLE `detail_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `weight` double NOT NULL,
  `id_transaction` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_transactions`
--

INSERT INTO `detail_transactions` (`id`, `weight`, `id_transaction`, `created_at`, `updated_at`) VALUES
(1, 25.65, 19, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(2, 29.54, 7, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(3, 27.17, 21, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(4, 25.82, 9, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(5, 27.76, 19, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(6, 26.71, 27, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(7, 26.65, 4, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(8, 26.12, 8, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(9, 25.04, 34, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(10, 25.08, 19, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(11, 27.64, 34, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(12, 29.62, 10, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(13, 29.65, 9, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(14, 27.28, 16, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(15, 27.02, 33, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(16, 27.92, 9, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(17, 25.23, 8, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(18, 29, 22, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(19, 28.2, 5, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(20, 25.42, 16, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(21, 28.43, 17, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(22, 25.94, 23, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(23, 29.17, 35, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(24, 27.83, 37, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(25, 25.05, 17, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(26, 29.02, 9, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(27, 28.71, 10, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(28, 27.08, 21, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(29, 29.78, 33, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(30, 26.74, 43, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(31, 27.09, 23, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(32, 26.12, 33, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(33, 28.52, 22, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(34, 29.83, 40, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(35, 26.39, 26, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(36, 28.89, 9, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(37, 29.19, 19, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(38, 29.75, 31, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(39, 27.08, 30, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(40, 28.83, 5, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(41, 29.85, 23, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(42, 29.85, 9, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(43, 27.46, 2, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(44, 29.29, 50, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(45, 26.05, 40, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(46, 26.05, 47, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(47, 27.11, 38, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(48, 28.65, 15, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(49, 25.9, 45, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(50, 26.53, 13, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(51, 27.12, 21, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(52, 25.98, 40, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(53, 26.44, 45, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(54, 26.21, 12, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(55, 26.08, 12, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(56, 29.8, 7, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(57, 25.83, 1, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(58, 27.83, 16, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(59, 27.16, 25, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(60, 29.86, 8, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(61, 26.23, 2, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(62, 27.9, 12, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(63, 29.37, 47, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(64, 28.82, 21, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(65, 26.87, 16, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(66, 25.24, 16, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(67, 26.45, 50, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(68, 29.42, 3, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(69, 28.54, 5, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(70, 29.91, 12, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(71, 25.41, 50, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(72, 28.32, 25, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(73, 28.68, 41, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(74, 29.56, 40, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(75, 26.16, 31, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(76, 27.56, 18, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(77, 26.75, 27, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(78, 28.82, 21, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(79, 29.63, 44, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(80, 26.38, 25, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(81, 29.29, 30, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(82, 26.62, 33, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(83, 28.15, 4, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(84, 26.34, 10, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(85, 25.58, 5, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(86, 27.43, 4, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(87, 28.12, 49, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(88, 25.44, 12, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(89, 26.22, 5, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(90, 25.86, 8, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(91, 29.34, 42, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(92, 28.66, 14, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(93, 28.85, 14, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(94, 26.7, 33, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(95, 26.15, 43, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(96, 25.46, 13, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(97, 26.5, 39, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(98, 27.27, 44, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(99, 26.99, 41, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(100, 25.48, 49, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(101, 28.33, 29, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(102, 26.83, 46, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(103, 27.68, 18, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(104, 27.46, 18, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(105, 28.25, 40, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(106, 26.08, 27, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(107, 29.21, 49, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(108, 28.19, 8, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(109, 26.25, 30, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(110, 28.67, 14, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(111, 27.6, 46, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(112, 27.72, 37, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(113, 25.52, 14, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(114, 25.72, 35, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(115, 29.68, 24, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(116, 26.32, 42, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(117, 29.8, 12, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(118, 29.87, 27, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(119, 27.69, 32, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(120, 26.26, 49, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(121, 29.69, 47, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(122, 26.07, 35, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(123, 29.34, 10, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(124, 29.76, 38, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(125, 27.76, 39, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(126, 29.31, 49, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(127, 28.08, 17, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(128, 25.82, 43, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(129, 25.23, 29, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(130, 27.71, 28, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(131, 26.53, 5, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(132, 25.65, 20, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(133, 27.53, 14, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(134, 25.06, 39, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(135, 25.34, 19, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(136, 29.87, 25, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(137, 28.77, 6, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(138, 28.67, 38, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(139, 26.13, 16, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(140, 27.29, 43, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(141, 25.21, 3, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(142, 27.1, 19, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(143, 25.67, 22, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(144, 27.7, 21, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(145, 29.72, 50, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(146, 26.95, 27, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(147, 27.78, 38, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(148, 28.01, 49, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(149, 29.98, 23, '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(150, 29.66, 20, '2025-07-31 00:00:00', '2025-07-31 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2023_05_23_072928_customers', 1),
(5, '2024_05_23_072043_transaction', 1),
(6, '2024_05_23_073255_detail_transaction', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
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
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('22qPQcF9myzark1fw9c86AtNxoeeyZ6Z8hWJ1ilT', NULL, '114.10.99.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDRtSlZHZFBwS2c4ZmpzUWtMVlVEQkExcmxLWEVVN3ZXT1hBSm1NNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHBzOi8vbGlnaHRzbGF0ZWdyYXktb2N0b3B1cy0zOTc2NDYuaG9zdGluZ2Vyc2l0ZS5jb20vY3VzdG9tZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753952531);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `id_customer` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `gramasi` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `nopol` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `date`, `id_customer`, `product_name`, `color`, `quantity`, `gramasi`, `status`, `nopol`, `created_at`, `updated_at`) VALUES
(1, '2025-07-31', 4, 'Scuba', 'Putih', '1285', 55, 2, 'AF 306 LL', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(2, '2025-07-31', 5, 'Spandex', 'Abu', '45', 59, 1, 'WG 626 ZW', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(3, '2025-07-31', 4, 'Spandex', 'Hitam', '614', 63, 1, 'PC 593 AO', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(4, '2025-07-31', 5, 'Spandex', 'Putih', '647', 56, 1, 'NF 269 YI', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(5, '2025-07-31', 1, 'Scuba', 'Abu', '1259', 69, 2, 'PR 197 IX', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(6, '2025-07-31', 5, 'Scuba', 'Putih', '128', 60, 2, 'TC 029 QS', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(7, '2025-07-31', 3, 'Scuba', 'Putih', '192', 67, 2, 'RS 256 KD', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(8, '2025-07-31', 3, 'Scuba', 'Hitam', '326', 53, 3, 'JA 868 MY', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(9, '2025-07-31', 1, 'Scuba', 'Hitam', '428', 70, 3, 'FY 541 ES', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(10, '2025-07-31', 1, 'Spandex', 'Hitam', '208', 69, 2, 'KY 174 RE', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(11, '2025-07-31', 1, 'Scuba', 'Hitam', '853', 57, 1, 'BW 986 GM', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(12, '2025-07-31', 4, 'Scuba', 'Hitam', '487', 64, 1, 'VV 853 GY', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(13, '2025-07-31', 4, 'Spandex', 'Hitam', '765', 53, 2, 'FQ 038 DT', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(14, '2025-07-31', 3, 'Spandex', 'Putih', '499', 55, 2, 'SB 482 YD', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(15, '2025-07-31', 2, 'Scuba', 'Hitam', '1591', 53, 2, 'WF 997 IM', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(16, '2025-07-31', 4, 'Scuba', 'Putih', '1705', 62, 3, 'XP 687 RZ', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(17, '2025-07-31', 4, 'Scuba', 'Abu', '1742', 57, 3, 'VW 448 DR', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(18, '2025-07-31', 2, 'Scuba', 'Abu', '1893', 58, 1, 'DV 893 XQ', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(19, '2025-07-31', 1, 'Scuba', 'Putih', '299', 58, 2, 'BF 442 SI', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(20, '2025-07-31', 4, 'Spandex', 'Putih', '1578', 56, 3, 'SG 251 KO', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(21, '2025-07-31', 4, 'Scuba', 'Abu', '1405', 51, 1, 'KI 530 BJ', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(22, '2025-07-31', 3, 'Spandex', 'Hitam', '1164', 69, 3, 'ED 414 WS', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(23, '2025-07-31', 1, 'Scuba', 'Abu', '1604', 67, 1, 'TY 310 CN', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(24, '2025-07-31', 3, 'Scuba', 'Hitam', '1121', 59, 1, 'SC 294 DQ', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(25, '2025-07-31', 5, 'Scuba', 'Hitam', '1797', 68, 1, 'RR 616 HR', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(26, '2025-07-31', 5, 'Spandex', 'Abu', '147', 59, 2, 'FF 398 LR', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(27, '2025-07-31', 2, 'Scuba', 'Hitam', '1119', 50, 1, 'DA 164 EG', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(28, '2025-07-31', 1, 'Spandex', 'Hitam', '259', 57, 3, 'ZN 898 UJ', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(29, '2025-07-31', 2, 'Scuba', 'Abu', '1074', 56, 1, 'GH 905 MU', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(30, '2025-07-31', 4, 'Spandex', 'Hitam', '940', 61, 2, 'JT 315 FZ', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(31, '2025-07-31', 3, 'Scuba', 'Abu', '651', 60, 2, 'BL 461 QY', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(32, '2025-07-31', 5, 'Spandex', 'Hitam', '1643', 51, 1, 'SF 707 ZG', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(33, '2025-07-31', 2, 'Spandex', 'Abu', '775', 59, 1, 'SZ 214 JJ', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(34, '2025-07-31', 1, 'Spandex', 'Abu', '1435', 61, 1, 'RR 263 CS', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(35, '2025-07-31', 4, 'Scuba', 'Hitam', '536', 69, 3, 'XP 206 MW', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(36, '2025-07-31', 2, 'Spandex', 'Putih', '614', 60, 2, 'HA 182 PW', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(37, '2025-07-31', 2, 'Spandex', 'Abu', '1323', 55, 1, 'UW 036 EP', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(38, '2025-07-31', 3, 'Scuba', 'Hitam', '1602', 56, 3, 'IN 810 CQ', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(39, '2025-07-31', 4, 'Spandex', 'Abu', '77', 68, 1, 'LO 320 JD', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(40, '2025-07-31', 1, 'Spandex', 'Hitam', '1095', 66, 3, 'XG 762 NU', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(41, '2025-07-31', 4, 'Scuba', 'Hitam', '1232', 67, 1, 'IM 713 NF', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(42, '2025-07-31', 5, 'Spandex', 'Hitam', '824', 58, 3, 'MB 951 PX', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(43, '2025-07-31', 3, 'Scuba', 'Hitam', '1750', 51, 1, 'NR 930 KS', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(44, '2025-07-31', 4, 'Scuba', 'Abu', '579', 60, 1, 'IY 105 EW', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(45, '2025-07-31', 5, 'Spandex', 'Hitam', '1960', 58, 1, 'FV 298 WX', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(46, '2025-07-31', 3, 'Spandex', 'Hitam', '218', 54, 1, 'QZ 370 YM', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(47, '2025-07-31', 1, 'Spandex', 'Abu', '311', 67, 1, 'CO 259 ID', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(48, '2025-07-31', 2, 'Spandex', 'Putih', '144', 66, 1, 'BG 980 IE', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(49, '2025-07-31', 2, 'Spandex', 'Abu', '506', 68, 3, 'IF 598 GS', '2025-07-31 00:00:00', '2025-07-31 00:00:00'),
(50, '2025-07-31', 4, 'Scuba', 'Hitam', '897', 64, 2, 'GW 400 PX', '2025-07-31 00:00:00', '2025-07-31 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@mikaylaKain.com', 'admin', NULL, '$2y$12$Nus9SJ1AsRbFyFVSoIvXa.bktbChHlhXJnEsL6xGfvK/jxsy4E06y', NULL, '2025-07-31 08:00:23', '2025-07-31 08:00:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_transactions`
--
ALTER TABLE `detail_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_transactions_id_transaction_foreign` (`id_transaction`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_id_customer_foreign` (`id_customer`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `detail_transactions`
--
ALTER TABLE `detail_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_transactions`
--
ALTER TABLE `detail_transactions`
  ADD CONSTRAINT `detail_transactions_id_transaction_foreign` FOREIGN KEY (`id_transaction`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
