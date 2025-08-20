-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: MySQL-8.0
-- Generation Time: Nov 25, 2024 at 11:52 PM
-- Server version: 8.0.35
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab10_metro`
--

-- --------------------------------------------------------

--
-- Table structure for table `lines`
--

CREATE TABLE `lines` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lines`
--

INSERT INTO `lines` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Saltivska liniia', 'Blue', '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(2, 'Oleksiivska liniia', 'Green', '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(3, 'Kholodnohorsko-Zavodska liniia', 'Red', '2024-11-25 22:52:24', '2024-11-25 22:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `line_stations`
--

CREATE TABLE `line_stations` (
  `id` bigint UNSIGNED NOT NULL,
  `line_id` bigint UNSIGNED NOT NULL,
  `station_id` bigint UNSIGNED NOT NULL,
  `position` int NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `line_stations`
--

INSERT INTO `line_stations` (`id`, `line_id`, `station_id`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(2, 1, 2, 2, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(3, 1, 3, 3, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(4, 1, 4, 4, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(5, 1, 5, 5, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(6, 1, 6, 6, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(7, 1, 7, 7, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(8, 1, 8, 8, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(9, 2, 9, 1, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(10, 2, 10, 2, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(11, 2, 11, 3, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(12, 2, 12, 4, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(13, 2, 13, 5, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(14, 2, 14, 6, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(15, 2, 7, 7, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(16, 2, 15, 8, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(17, 2, 16, 9, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(18, 3, 17, 1, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(19, 3, 18, 2, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(20, 3, 19, 3, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(21, 3, 20, 4, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(22, 3, 6, 5, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(23, 3, 21, 6, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(24, 3, 22, 7, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(25, 3, 23, 8, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(26, 3, 24, 9, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(27, 3, 25, 10, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(28, 3, 26, 11, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(29, 3, 27, 12, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(30, 3, 28, 13, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(31, 3, 29, 14, 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `name`, `is_active`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'Heroiv Pratsi', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(2, 'Studentska', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(3, 'Pavlova', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(4, 'Barabashova', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(5, 'Kyivska', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(6, 'Pushkinska', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(7, 'Universytet', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(8, 'Istorychnyi muzei', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(9, 'Peremoha', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(10, 'Oleksiivska', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(11, '23 Serpnia', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(12, 'Botanichnyi sad', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(13, 'Naukova', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(14, 'Derzhprom', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(15, 'Arhitektora Beketova', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(16, 'Zahistnikiv Ukrainy', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(17, 'Kholodna hora', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(18, 'Pivdennyi vokzal', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(19, 'Tsentralnyi rynok', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(20, 'Maidan Konstytutsii', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(21, 'Prospekt Gagarina', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(22, 'Metrobudivelnikiv', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(23, 'Malysheva', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(24, 'Turboatom', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(25, 'Palaz Sporty', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(26, 'Armiyska', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(27, 'Imeni O.S. Maselskoho', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(28, 'Traktorniy zavod', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(29, 'Industrialna', 1, NULL, NULL, '2024-11-25 22:52:24', '2024-11-25 22:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint UNSIGNED NOT NULL,
  `from_station_id` bigint UNSIGNED NOT NULL,
  `to_station_id` bigint UNSIGNED NOT NULL,
  `is_bidirectional` tinyint(1) DEFAULT '1',
  `type` enum('pedestrian','elevator','other') DEFAULT 'pedestrian',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `from_station_id`, `to_station_id`, `is_bidirectional`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 8, 20, 1, 'pedestrian', 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(2, 22, 25, 1, 'pedestrian', 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24'),
(3, 7, 14, 1, 'pedestrian', 1, '2024-11-25 22:52:24', '2024-11-25 22:52:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lines`
--
ALTER TABLE `lines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `line_stations`
--
ALTER TABLE `line_stations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `line_id` (`line_id`),
  ADD KEY `station_id` (`station_id`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_station_id` (`from_station_id`),
  ADD KEY `to_station_id` (`to_station_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lines`
--
ALTER TABLE `lines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `line_stations`
--
ALTER TABLE `line_stations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `line_stations`
--
ALTER TABLE `line_stations`
  ADD CONSTRAINT `line_stations_ibfk_1` FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `line_stations_ibfk_2` FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_ibfk_1` FOREIGN KEY (`from_station_id`) REFERENCES `stations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_ibfk_2` FOREIGN KEY (`to_station_id`) REFERENCES `stations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
