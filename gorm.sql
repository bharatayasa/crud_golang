-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 18 Mar 2024 pada 06.17
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gorm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dogs`
--

CREATE TABLE `dogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `breed` longtext DEFAULT NULL,
  `age` bigint(20) DEFAULT NULL,
  `is_good_boy` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dogs`
--

INSERT INTO `dogs` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `breed`, `age`, `is_good_boy`) VALUES
(1, '2024-03-18 12:44:46.655', '2024-03-18 13:02:01.762', NULL, 'update', 'update', 3, 1),
(2, '2024-03-18 12:45:08.556', '2024-03-18 12:45:08.556', '2024-03-18 13:02:27.069', 'Buddy', 'Labrador Retriever', 3, 1),
(3, '2024-03-18 12:45:09.515', '2024-03-18 12:45:09.515', NULL, 'Buddy', 'Labrador Retriever', 3, 1),
(4, '2024-03-18 12:45:10.314', '2024-03-18 12:45:10.314', NULL, 'Buddy', 'Labrador Retriever', 3, 1),
(5, '2024-03-18 12:45:11.068', '2024-03-18 12:45:11.068', NULL, 'Buddy', 'Labrador Retriever', 3, 1),
(6, '2024-03-18 13:07:56.359', '2024-03-18 13:07:56.359', NULL, 'Buddy', 'Labrador Retriever', 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dogs`
--
ALTER TABLE `dogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_dogs_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dogs`
--
ALTER TABLE `dogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
