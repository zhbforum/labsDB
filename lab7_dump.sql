-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: MySQL-8.0
-- Generation Time: Nov 11, 2024 at 04:32 PM
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
-- Database: `lab`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Technology', 'News about modern technology and innovations.'),
(2, 'Sports', 'The latest sports news from around the world.'),
(3, 'Politics', 'News on politics and global events.'),
(4, 'Science', 'Interesting news from the world of science.'),
(5, 'Culture', 'Updates on culture and art.');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `news_id` int NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `commented_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `news_id`, `user_name`, `comment`, `commented_at`) VALUES
(1, 1, 'Ivan', 'Very interesting article about future technologies!', '2024-11-11 16:24:07'),
(2, 2, 'Olena', 'The match was incredible, a great game by the teams!', '2024-11-11 16:24:07'),
(3, 3, 'Anna', 'I hope the reform truly improves the situation.', '2024-11-11 16:24:07'),
(4, 4, 'Oleksandr', 'Science is moving forward, incredible discoveries.', '2024-11-11 16:24:07'),
(5, 5, 'Maria', 'Interesting how young artists see the world.', '2024-11-11 16:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `published_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `category_id`, `title`, `content`, `author`, `published_at`) VALUES
(1, 1, 'New Technologies in 2024', 'Overview of new technologies that will change the world.', 'Author1', '2024-11-11 16:24:00'),
(2, 2, 'World Football Championship Final', 'The final match of the 2024 World Championship concluded.', 'Author2', '2024-11-11 16:24:00'),
(3, 3, 'New Electoral System Reform', 'The government announced a new reform of the electoral system.', 'Author3', '2024-11-11 16:24:00'),
(4, 4, 'Advances in Quantum Physics', 'New discoveries in quantum physics.', 'Author4', '2024-11-11 16:24:00'),
(5, 5, 'New Generation of Artists', 'How young artists are changing the art world.', 'Author5', '2024-11-11 16:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int NOT NULL,
  `news_id` int NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `rating` tinyint DEFAULT NULL,
  `rated_at` datetime DEFAULT CURRENT_TIMESTAMP
);

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `news_id`, `ip_address`, `rating`, `rated_at`) VALUES
(1, 1, '192.168.1.1', 5, '2024-11-11 16:24:09'),
(2, 2, '192.168.1.2', 4, '2024-11-11 16:24:09'),
(3, 3, '192.168.1.3', 3, '2024-11-11 16:24:09'),
(4, 4, '192.168.1.4', 5, '2024-11-11 16:24:09'),
(5, 5, '192.168.1.5', 4, '2024-11-11 16:24:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_id` (`news_id`,`ip_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
