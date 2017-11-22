-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2017 at 04:44 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tree`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(10) UNSIGNED NOT NULL,
  `agent_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sponsor_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pair_id` int(11) DEFAULT NULL,
  `leg` enum('Left','Right') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Left',
  `depth_level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `agent_code`, `sponsor_code`, `pair_id`, `leg`, `depth_level`) VALUES
(1, '1272129311', '0', 0, 'Left', 0),
(13, '1377239554', '1349404179', 1, 'Right', 2),
(12, '1262896469', '1349404179', 1, 'Left', 2),
(11, '1132897697', '1307938503', 1, 'Right', 2),
(10, '1374219722', '1307938503', 1, 'Left', 2),
(9, '1349404179', '1272129311', 1, 'Right', 1),
(8, '1307938503', '1272129311', 1, 'Left', 1),
(14, '1268069415', '1377239554', 1, 'Left', 3),
(15, '1198376060', '1377239554', 1, 'Right', 3),
(16, '1188449843', '1272129311', 2, 'Left', 1),
(17, '1184846115', '1272129311', 2, 'Right', 1),
(18, '1179746156', '1188449843', 1, 'Left', 2),
(19, '1329195935', '1188449843', 1, 'Right', 2),
(20, '1228118217', '1184846115', 1, 'Left', 2),
(21, '1192546232', '1184846115', 1, 'Right', 2),
(22, '1351092001', '1262896469', 1, 'Left', 3),
(23, '1372632257', '1262896469', 1, 'Right', 3),
(24, '1215619212', '1179746156', 1, 'Left', 3),
(25, '1371637810', '1179746156', 1, 'Right', 3),
(26, '1249476005', '1329195935', 1, 'Left', 3),
(27, '1292401419', '1329195935', 1, 'Right', 3),
(28, '1313914305', '1228118217', 1, 'Left', 3),
(29, '1145944103', '1228118217', 1, 'Right', 3),
(30, '1220700924', '1192546232', 1, 'Left', 3),
(31, '1154802887', '1192546232', 1, 'Right', 3),
(32, '1311633464', '1132897697', 1, 'Left', 3),
(33, '1392475567', '1132897697', 1, 'Right', 3),
(34, '1291625934', '1374219722', 1, 'Left', 3),
(35, '1196898075', '1374219722', 1, 'Right', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
