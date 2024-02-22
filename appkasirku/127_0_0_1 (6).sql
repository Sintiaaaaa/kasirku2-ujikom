-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Feb 2024 pada 10.01
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan`
--
CREATE DATABASE IF NOT EXISTS `db_penjualan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_penjualan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `nim` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`nim`, `nama`, `alamat`) VALUES
(21400200, 'faqih', 'bandung'),
(21400201, 'ina', 'jakarta'),
(21400202, 'anto', 'semarang'),
(21400203, 'dani', 'padang'),
(21400204, 'jaka', 'bandung'),
(21400205, 'nara', 'bandung'),
(21400206, 'senta', 'semarang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `nim` int(10) NOT NULL,
  `buku` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `nim`, `buku`) VALUES
(1, 21400200, 'Buku Informatika'),
(2, 21400202, 'Buku Teknik Elektro'),
(3, 21400203, 'Buku Matematika'),
(4, 21400206, 'Buku Fisika'),
(5, 21400207, 'Buku Bahasa Indonesia'),
(6, 21400210, 'Buku Bahasa Daerah'),
(7, 21400211, 'Buku Kimia');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `nim` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21400207;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `db_perpus`
--
CREATE DATABASE IF NOT EXISTS `db_perpus` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_perpus`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expired_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `cover`, `title`, `author`, `publisher`, `description`, `code`, `stock`, `category_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Judul Buku Fiksi', 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 'AF123', 5, '1', NULL, NULL),
(2, NULL, 'Judul Buku Non Fiksi', 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 'AF456', 5, '2', NULL, NULL),
(3, NULL, 'Judul Buku Fiksi', 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 'AF789', 5, '1', '2023-12-12 18:24:14', NULL),
(4, NULL, 'Judul Buku Non Fiksi', 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 'AF012', 5, '2', '2023-12-13 18:24:14', NULL),
(5, NULL, 'Judul Buku Fiksi', 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 'AF785239', 5, '1', NULL, NULL),
(6, NULL, 'Judul Buku Non Fiksi', 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 'AF05212', 5, '2', NULL, NULL),
(7, NULL, 'Judul Buku Fiksi', 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 'AF78239', 5, '1', NULL, NULL),
(8, NULL, 'Judul Buku Non Fiksi', 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 'AF01522', 5, '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'fiksi', NULL, NULL),
(2, 'non-fiksi', NULL, NULL);

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
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2024_01_11_021008_create_books_table', 1),
(13, '2024_01_11_022457_create_categories_table', 1),
(14, '2024_01_11_141309_create_bookings_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `db_perpus2`
--
CREATE DATABASE IF NOT EXISTS `db_perpus2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_perpus2`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `alasan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expired_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `book_id`, `code`, `status`, `alasan`, `created_at`, `updated_at`, `expired_at`) VALUES
(1, 2, 25, '125090224', 'Disetujui', 'hhhh', '2024-02-09 07:34:54', '2024-02-09 07:34:54', '2024-02-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `title`, `code`, `cover`, `author`, `publisher`, `description`, `category_id`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Judul Buku', 'AF123', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-11 18:24:14', '2024-02-06 19:47:53'),
(2, 'Judul Buku Non Fiksi', 'AF456', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-12 18:24:14', NULL),
(3, 'Judul Buku RPL', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(4, 'Judul Buku OTKP', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(5, 'Judul Buku PH', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(6, 'Judul Buku Fiksi', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-12 18:24:14', NULL),
(7, 'Judul Buku Non Fiksi', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-13 18:24:14', NULL),
(8, 'Judul Buku RPL', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(9, 'Judul Buku OTKP', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(10, 'Judul Buku PH', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(11, 'Judul Buku', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-13 18:24:14', '2024-02-06 19:47:39'),
(12, 'Judul Buku Non Fiksi', 'AF05212', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-13 18:24:14', NULL),
(13, 'Judul Buku RPL', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(14, 'Judul Buku OTKP', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(15, 'Judul Buku PH', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(16, 'Judul Buku Fiksi', 'AF78239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-13 18:24:14', NULL),
(17, 'Judul Buku Non Fiksi', 'AF01522', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-14 18:24:14', NULL),
(18, 'Judul Buku RPL', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(19, 'Judul Buku OTKP', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(20, 'Judul Buku PH', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(21, 'BUAYAA', '21212', NULL, 'Pusat Data dan Analisa Tempo', 'Bhuana Ilmu Populer', 'HEELO WMWUA', 1, 5, '2024-02-06 19:48:37', '2024-02-06 21:18:09'),
(22, 'SEJARAH', '21213', NULL, 'Nur Hidayat', 'Ensiklopedia', 'SELAMAT BACA', 2, 5, '2024-02-06 19:49:26', '2024-02-06 19:49:26'),
(23, 'CODING', '11311', NULL, 'Ubudiyah Setiawati, S.Sos., M.I.Kom.,', 'Ensiklopedia', 'ASIK CODING', 3, 5, '2024-02-06 21:18:47', '2024-02-06 21:18:47'),
(24, 'NULIS SURAT', '21312', NULL, 'Nur Hidayat', 'Bhuana Ilmu Populer', 'ASIK NULIS SURAT', 4, 5, '2024-02-06 21:20:59', '2024-02-06 21:20:59'),
(25, 'LIPET KASUR', '21412', NULL, 'Daniapus', 'Ensiklopedia', 'BEBERES YANG BENAR', 5, 4, '2024-02-06 21:22:00', '2024-02-09 07:34:54'),
(26, 'Judul Buku Fiksi', 'AF123', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-11 18:24:14', NULL),
(27, 'Judul Buku Non Fiksi', 'AF456', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-12 18:24:14', NULL),
(28, 'Judul Buku RPL', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(29, 'Judul Buku OTKP', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(30, 'Judul Buku PH', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(31, 'Judul Buku Fiksi', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-12 18:24:14', NULL),
(32, 'Judul Buku Non Fiksi', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-13 18:24:14', NULL),
(33, 'Judul Buku RPL', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(34, 'Judul Buku OTKP', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(35, 'Judul Buku PH', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(36, 'Judul Buku Fiksi', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-13 18:24:14', NULL),
(37, 'Judul Buku Non Fiksi', 'AF05212', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-13 18:24:14', NULL),
(38, 'Judul Buku RPL', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(39, 'Judul Buku OTKP', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(40, 'Judul Buku PH', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(41, 'Judul Buku Fiksi', 'AF78239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-13 18:24:14', NULL),
(42, 'Judul Buku Non Fiksi', 'AF01522', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-14 18:24:14', NULL),
(43, 'Judul Buku RPL', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(44, 'Judul Buku OTKP', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(45, 'Judul Buku PH', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(46, 'Judul Buku Fiksi', 'AF78239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-13 18:24:14', NULL),
(47, 'Judul Buku Non Fiksi', 'AF01522', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-14 18:24:14', NULL),
(48, 'Judul Buku RPL', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(49, 'Judul Buku OTKP', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(50, 'Judul Buku PH', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'fiksi', NULL, NULL),
(2, 'non-fiksi', NULL, NULL),
(3, 'rpl', NULL, NULL),
(4, 'otkp', NULL, NULL),
(5, 'ph', NULL, NULL);

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
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2023_11_26_133115_create_books_table', 1),
(13, '2023_11_26_133209_create_bookings_table', 1),
(14, '2023_11_26_133301_create_categories_table', 1);

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
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nis_nip` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `nis_nip`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', '123456789098765', NULL, '$2y$12$SgbPBkLG8co2SRJPh706LOzw7Aa/Ipmj9WEZ7vHpom.hcOiMOUv.i', 'admin', NULL, NULL, NULL),
(2, 'fattah rizqi', 'fattah', 'fattah@gmail.com', '123456789058765', NULL, '$2y$12$yRG3kW22BIdC5/YjXb/UmukhhWI53gx/K5b8MJAjsIMtxyZAzNsaC', 'user', NULL, NULL, NULL),
(3, 'librarian', 'librarian', 'librarian@gmail.com', '123456789092765', NULL, '$2y$12$eaqrhaqJodWQmR8c2nb2DeAujhreii.0Ij8xQdNHsjXo1RGEDHYIe', 'librarian', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nis_nip_unique` (`nis_nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `db_perpustakaan`
--
CREATE DATABASE IF NOT EXISTS `db_perpustakaan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_perpustakaan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `alasan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expired_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `title`, `code`, `cover`, `author`, `publisher`, `description`, `category_id`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Judul Buku Fiksi', 'AF123', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-11 18:24:14', NULL),
(2, 'Judul Buku Non Fiksi', 'AF456', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-12 18:24:14', NULL),
(3, 'Judul Buku Fiksi', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(4, 'Judul Buku Non Fiksi', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(5, 'Judul Buku Fiksi', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(6, 'Judul Buku Fiksi', 'AF123', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-11 18:24:14', NULL),
(7, 'Judul Buku Non Fiksi', 'AF456', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-12 18:24:14', NULL),
(8, 'Judul Buku Fiksi', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(9, 'Judul Buku Non Fiksi', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(10, 'Judul Buku Fiksi', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(11, 'Judul Buku Fiksi', 'AF123', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-11 18:24:14', NULL),
(12, 'Judul Buku Non Fiksi', 'AF456', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-12 18:24:14', NULL),
(13, 'Judul Buku Fiksi', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(14, 'Judul Buku Non Fiksi', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(15, 'Judul Buku Fiksi', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(16, 'Judul Buku Fiksi', 'AF123', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-11 18:24:14', NULL),
(17, 'Judul Buku Non Fiksi', 'AF456', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-12 18:24:14', NULL),
(18, 'Judul Buku Fiksi', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(19, 'Judul Buku Non Fiksi', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(20, 'Judul Buku Fiksi', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(21, 'Judul Buku Fiksi', 'AF123', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-11 18:24:14', NULL),
(22, 'Judul Buku Non Fiksi', 'AF456', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-12 18:24:14', NULL),
(23, 'Judul Buku Fiksi', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(24, 'Judul Buku Non Fiksi', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(25, 'Judul Buku Fiksi', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(26, 'Judul Buku Fiksi', 'AF123', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-11 18:24:14', NULL),
(27, 'Judul Buku Non Fiksi', 'AF456', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-12 18:24:14', NULL),
(28, 'Judul Buku Fiksi', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(29, 'Judul Buku Non Fiksi', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(30, 'Judul Buku Fiksi', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(31, 'Judul Buku Fiksi', 'AF123', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-11 18:24:14', NULL),
(32, 'Judul Buku Non Fiksi', 'AF456', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-12 18:24:14', NULL),
(33, 'Judul Buku Fiksi', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(34, 'Judul Buku Non Fiksi', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(35, 'Judul Buku Fiksi', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(36, 'Judul Buku Fiksi', 'AF123', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-11 18:24:14', NULL),
(37, 'Judul Buku Non Fiksi', 'AF456', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-12 18:24:14', NULL),
(38, 'Judul Buku Fiksi', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(39, 'Judul Buku Non Fiksi', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(40, 'Judul Buku Fiksi', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(41, 'Judul Buku Fiksi', 'AF123', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-11 18:24:14', NULL),
(42, 'Judul Buku Non Fiksi', 'AF456', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-12 18:24:14', NULL),
(43, 'Judul Buku Fiksi', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(44, 'Judul Buku Non Fiksi', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(45, 'Judul Buku Fiksi', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(46, 'Judul Buku Fiksi', 'AF123', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-11 18:24:14', NULL),
(47, 'Judul Buku Non Fiksi', 'AF456', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-12 18:24:14', NULL),
(48, 'Judul Buku Fiksi', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(49, 'Judul Buku Non Fiksi', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(50, 'Judul Buku Fiksi', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(51, 'Judul Buku Fiksi', 'AF123', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-11 18:24:14', NULL),
(52, 'Judul Buku Non Fiksi', 'AF456', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-12 18:24:14', NULL),
(53, 'Judul Buku Fiksi', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(54, 'Judul Buku Non Fiksi', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(55, 'Judul Buku Fiksi', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'novel', NULL, NULL),
(2, 'komik', NULL, NULL),
(3, 'Rekayasa Perangkat Lunak', NULL, NULL),
(4, 'Perkantoran', NULL, NULL),
(5, 'Perhotelan', NULL, NULL);

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2023_11_26_133115_create_books_table', 1),
(14, '2023_11_26_133209_create_bookings_table', 1),
(15, '2023_11_26_133301_create_categories_table', 1);

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
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nis_nip` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `nis_nip`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', '123456789098765', NULL, '$2y$12$rH6s8ArYxYMgoSPQzoQKHuoY0t04XohrNJzIKFfcnp64DXqBDZzIC', NULL, NULL, NULL),
(2, 'fattah rizqi', 'fattah', 'fattah@gmail.com', '123456789058765', NULL, '$2y$12$fBE6ZPKdBHiOWCM2dnLPyux4v.TfFUv4eDAN1LDRdt.FsbVwVWPIK', NULL, NULL, NULL),
(3, 'librarian', 'librarian', 'librarian@gmail.com', '123456789092765', NULL, '$2y$12$F/h7K96K5eK19xHeNJehau08hGtjezpN8C7111ThMPZmS8/f6bXBa', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nis_nip_unique` (`nis_nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
--
-- Database: `db_perpustakan`
--
CREATE DATABASE IF NOT EXISTS `db_perpustakan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_perpustakan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nis_nip` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `alasan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expired_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `title`, `code`, `cover`, `author`, `publisher`, `description`, `category_id`, `stock`, `created_at`, `updated_at`) VALUES
(95, 'Judul Buku Fiksi', 'AF123', 'books-cover/g068mUsT43ABSmWAzzLPuavbIa4kFvjVPuNIjUzm.png', 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-11 18:24:14', '2024-02-06 01:22:16'),
(96, 'Judul Buku Non Fiksi', 'AF456', 'books-cover/yFWWkLZTn5YusV5NHIK9eJD26NdhDBmTlxSxvUVO.jpg', 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-12 18:24:14', '2024-02-06 01:22:29'),
(97, 'Judul Buku Fiksi', 'AF789', 'books-cover/O7NNmxORyiQwk4awo39IMJbiF8ttQsXUn0IEwsTW.jpg', 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', '2024-02-06 01:22:43'),
(98, 'Judul Buku Non Fiksi', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(99, 'Judul Buku Fiksi', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL),
(100, 'Judul Buku Fiksi', 'AF123', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 1, 5, '2023-12-11 18:24:14', NULL),
(101, 'Judul Buku Non Fiksi', 'AF456', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 2, 5, '2023-12-12 18:24:14', NULL),
(102, 'Judul Buku Fiksi', 'AF789', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 3, 5, '2023-12-12 18:24:14', NULL),
(103, 'Judul Buku Non Fiksi', 'AF012', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 4, 5, '2023-12-13 18:24:14', NULL),
(104, 'Judul Buku Fiksi', 'AF785239', NULL, 'jono', 'gramed', 'ini desckripsi penting dari buku dengan judul (judul buku)...', 5, 5, '2023-12-13 18:24:14', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'novel', NULL, NULL),
(2, 'komik', NULL, NULL),
(3, 'Rekayasa Perangkat Lunak', NULL, NULL),
(4, 'Perkantoran', NULL, NULL),
(5, 'Perhotelan', NULL, NULL);

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
(40, '2014_10_12_000000_create_users_table', 1),
(41, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(42, '2019_08_19_000000_create_failed_jobs_table', 1),
(43, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(44, '2023_11_26_133115_create_books_table', 1),
(45, '2023_11_26_133209_create_bookings_table', 1),
(46, '2023_11_26_133301_create_categories_table', 1),
(47, '2024_02_04_172317_admins_migration', 1),
(48, '2024_02_04_174850_perpustakawans_migration', 1);

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
-- Struktur dari tabel `perpustakawans`
--

CREATE TABLE `perpustakawans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nis_nip` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'perpustakawan',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nis_nip` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `nis_nip`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', '123456789098765', NULL, '$2y$12$C5CB04fJ1J9NhY20KllSm.JloUcs79JB0KOjoOAPdQ1U9xPezWnWu', 'admin', NULL, NULL, NULL),
(2, 'fattah rizqi', 'fattah', 'fattah@gmail.com', '123456789058765', NULL, '$2y$12$cT3z6nWPmX9jua7FTy1K4.Q5VaZPQD8NLxJrXTZctJmGnQKo5mo4S', 'user', NULL, NULL, NULL),
(3, 'librarian', 'librarian', 'librarian@gmail.com', '123456789092765', NULL, '$2y$12$KzWbhH0IuK7fHsqKwxCERuHMG7kd3SPRf2xKSjr1GQg/GU0SKeYoy', 'librarian', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_nis_nip_unique` (`nis_nip`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indeks untuk tabel `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indeks untuk tabel `perpustakawans`
--
ALTER TABLE `perpustakawans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `perpustakawans_username_unique` (`username`),
  ADD UNIQUE KEY `perpustakawans_nis_nip_unique` (`nis_nip`),
  ADD UNIQUE KEY `perpustakawans_email_unique` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nis_nip_unique` (`nis_nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `perpustakawans`
--
ALTER TABLE `perpustakawans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
--
-- Database: `db_toko`
--
CREATE DATABASE IF NOT EXISTS `db_toko` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_toko`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(1, 'BR001', 1, 'Kacamata Renang', '-', '100000', '200000', 'PCS', '90', '6 October 2020, 0:41', NULL),
(4, 'BR002', 1, 'Pelampung', '-', '100000', '50000', '#', '30', '14 February 2024, 11:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(1, 'Peralatan Renang', '7 May 2017, 10:23'),
(5, 'Peralatan Basket', '7 May 2017, 10:28'),
(6, 'Peralatan Volly', '6 October 2020, 0:19'),
(7, 'Peralatan Futsal', '6 October 2020, 0:20'),
(8, 'Peralatan Badminton', '11 Febuari 2024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`, `role`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1, 'admin'),
(2, 'user', '827ccb0eea8a706c4c34a16891f84e7b', 2, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'sintia', 'barukai', '081234567890', 'example@gmail.com', 'unnamed.jpg', '12314121'),
(2, 'sins', 'barukai', '085624401234', 'sisin@gmail.com', '1707884639p7.jpg', '1111222212');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(1, 'BR002', 1, '1', '3000', '13 February 2024, 11:05', '02-2024'),
(2, 'BR001', 2, '1', '200000', '14 February 2024, 9:56', '02-2024'),
(3, 'BR001', 2, '1', '200000', '14 February 2024, 9:56', '02-2024'),
(4, 'BR001', 2, '1', '200000', '14 February 2024, 10:40', '02-2024'),
(5, 'BR001', 2, '1', '200000', '14 February 2024, 10:40', '02-2024'),
(6, 'BR001', 2, '1', '200000', '14 February 2024, 10:40', '02-2024'),
(7, 'BR001', 2, '1', '200000', '14 February 2024, 10:40', '02-2024'),
(8, 'BR001', 2, '1', '200000', '14 February 2024, 10:40', '02-2024'),
(9, 'BR001', 2, '1', '200000', '14 February 2024, 11:19', '02-2024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(10, 'BR001', 2, '1', '200000', '14 February 2024, 11:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'Peralaan Olahraga', 'Bandung', '081234567890', 'sintia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `id_member` int(10) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `user`, `pass`, `id_member`, `role`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 'admin'),
(2, 'kasir', 'c7911af3adbd12a035b289556d96470a', 2, 'kasir');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `db_union`
--
CREATE DATABASE IF NOT EXISTS `db_union` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_union`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_order`
--

CREATE TABLE `tb_order` (
  `order_id` int(10) NOT NULL,
  `order_date` date NOT NULL,
  `supplier_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_order`
--

INSERT INTO `tb_order` (`order_id`, `order_date`, `supplier_id`) VALUES
(1, '2015-08-01', 2000),
(2, '2015-08-02', 6000),
(3, '2015-08-03', 7000),
(4, '2015-08-04', 8000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `supplier_id` int(10) NOT NULL,
  `supplier_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_supplier`
--

INSERT INTO `tb_supplier` (`supplier_id`, `supplier_name`) VALUES
(1000, 'Microsoft'),
(2000, 'Oracle'),
(3000, 'Apple'),
(4000, 'Samsung');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indeks untuk tabel `tb_supplier`
--
ALTER TABLE `tb_supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_supplier`
--
ALTER TABLE `tb_supplier`
  MODIFY `supplier_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4001;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data untuk tabel `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_toko\",\"table\":\"member\"},{\"db\":\"db_toko\",\"table\":\"login\"},{\"db\":\"kasir\",\"table\":\"petugas\"},{\"db\":\"db_toko\",\"table\":\"role\"},{\"db\":\"db_toko\",\"table\":\"user\"},{\"db\":\"db_toko\",\"table\":\"kategori\"},{\"db\":\"db_toko\",\"table\":\"barang\"},{\"db\":\"db_perpus2\",\"table\":\"books\"},{\"db\":\"db_perpus2\",\"table\":\"users\"},{\"db\":\"db_perpustakan\",\"table\":\"admins\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-02-14 08:06:16', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\",\"NavigationWidth\":199.66666412353516}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `toko_laravel`
--
CREATE DATABASE IF NOT EXISTS `toko_laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `toko_laravel`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategory` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_member` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `detail_alamat` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_15_040316_create_categories_table', 1),
(6, '2023_11_17_031717_create_subcategories_table', 1),
(7, '2023_11_17_064229_create_sliders_table', 1),
(8, '2023_11_17_083353_create_products_table', 1),
(9, '2023_11_20_035732_create_members_table', 1),
(10, '2023_11_20_064854_create_testimonis_table', 1),
(11, '2023_11_20_074535_create_reviews_table', 1),
(12, '2023_11_21_020115_create_pesanans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_member` int(11) NOT NULL,
  `invoice` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_details`
--

CREATE TABLE `pesanan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_subkategory` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `bahan` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `ukuran` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_member` varchar(255) NOT NULL,
  `id_produk` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_slider` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_category` int(11) NOT NULL,
  `nama_subkategory` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonis`
--

CREATE TABLE `testimonis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_testimoni` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administator', 'admin@gmail.com', '2024-02-06 17:42:19', '$2y$10$6n5ZXJZibqr82mClXYhQLu1A4iwUdIiJIeT/ZPWvHXOgOwHcWzjs2', NULL, '2024-02-06 17:42:19', '2024-02-06 17:42:19');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan_details`
--
ALTER TABLE `pesanan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimonis`
--
ALTER TABLE `testimonis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanan_details`
--
ALTER TABLE `pesanan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `testimonis`
--
ALTER TABLE `testimonis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
