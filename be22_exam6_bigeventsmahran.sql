-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2024 at 03:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be22_exam6_bigeventsmahran`
--
CREATE DATABASE IF NOT EXISTS `be22_exam6_bigeventsmahran` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be22_exam6_bigeventsmahran`;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `description`, `photo`, `capacity`, `email`, `phone_number`, `address`, `type`) VALUES
(2, 'Summer Music Fest', '2024-08-28 20:47:00', 'A vibrant music festival featuring local bands and renowned artists.', 'https://cdn.pixabay.com/photo/2016/11/23/15/48/audience-1853662_640.jpg', 40000, 'user@mail.com', '65515512651', '123 Music Ave, New York, NY, 10001', 'music'),
(3, 'City Marathons', '2024-09-25 06:00:00', 'Join us for a marathon through the city streets with various race lengths.', 'https://cdn.pixabay.com/photo/2017/01/01/15/45/running-1944798_640.jpg', 500, 'admin@mail.com', '516516516', 'Central Park, New York, NY, 10024', 'sport'),
(4, 'Classic Film Night', '2024-10-22 21:50:00', 'A screening of classic films in a historic theater.', 'https://cdn.pixabay.com/photo/2024/06/23/20/54/ai-generated-8848753_640.jpg', 300, 'someone@mail.com', '184855265', '456 Film St, Los Angeles, CA, 90001', 'movie'),
(5, 'Shakespeare’s Hamlet', '2024-08-25 19:50:00', 'A dramatic presentation of Shakespeare\'s famous play.', 'https://cdn.pixabay.com/photo/2017/06/28/13/00/ballet-at-sunset-2450506_640.jpg', 500, 'boxoffice@shakespearetheater.org', '6516581618', '789 Theater Rd, London, UK, SW1A 1AA', 'theater'),
(6, 'Modern Art Showcase', '2024-10-29 14:50:00', 'An exhibition showcasing contemporary art from emerging artists.', 'https://cdn.pixabay.com/photo/2016/07/24/19/59/the-storm-1539136_640.jpg', 120, 'asdghga@mail.com', '84158486', '101 Art St, San Francisco, CA, 94105', 'theater'),
(7, 'Gourmet Eats Exp', '2024-11-05 14:52:00', 'A festival celebrating gourmet food from top chefs and food trucks.', 'https://cdn.pixabay.com/photo/2016/11/18/13/23/action-1834465_640.jpg', 100, 'asdfsdaffa@mail.com', '154489131', '202 Food Blvd, Chicago, IL, 60614', 'sport'),
(8, 'Literary Wonderland', '2024-08-28 14:54:00', 'A fair featuring book signings, readings, and author meet-and-greets.', 'https://cdn.pixabay.com/photo/2016/01/22/08/20/film-1155439_640.jpg', 85, 'asazcxz@mail.com', '54151541', '303 Book St, Boston, MA, 02108', 'movie'),
(9, 'Elegant Evening for a Cause', '2024-11-24 19:56:00', 'An elegant gala to support local charities with dinner and entertainment.', 'https://cdn.pixabay.com/photo/2024/03/08/21/42/ai-generated-8621615_640.jpg', 50, 'asdfvvd@mail.com', '656484116', '404 Gala Rd, Miami, FL, 33101', 'music'),
(10, 'Smooth Sounds of Summer', '2024-08-26 14:58:00', 'Enjoy an evening of smooth jazz performed by top local artists at an intimate venue.', 'https://cdn.pixabay.com/photo/2024/05/07/17/04/piece-8746276_640.png', 150, 'asczdsd@mail.com', '15165415152', 'jazz@mail.com', 'music');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
