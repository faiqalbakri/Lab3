-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2017 at 03:38 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab3`
--

-- --------------------------------------------------------

--
-- Table structure for table `labpunyatable`
--

CREATE TABLE `labpunyatable` (
  `id` int(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table ni utk lab 3';

--
-- Dumping data for table `labpunyatable`
--

INSERT INTO `labpunyatable` (`id`, `img`, `title`, `description`, `price`, `discount`) VALUES
(1, 'images/toofacedA.jpg', 'Too Faced Natural Love', 'Ultimate Neutral Eye Shadow Palette', 261, 15),
(2, 'images/toofacedB.jpg', 'Too Faced Love Light Primistic', 'Ultimate Neutral Highlighter', 150, 15),
(3, 'images/toofacedC.jpg', 'Too Faced Better Than Smile', 'Ultimate Black Mascara', 90, 15),
(4, 'images/toofacedD.jpg', 'Too Faced Better Sweet Peach', 'Peach Eye Shadow Palette', 250, 20),
(5, 'images/toofacedE.jpg', 'Too Faced Better Than Smile', 'Ultimate Waterproof Mascara', 90, 15),
(6, 'images/toofacedF.jpg', 'Too Faced Born This Way', 'Ultimate Neutral Foundation', 130, 15),
(7, 'images/toofacedG.jpg', 'Too Faced Hangover', 'Replenishing Face Primer', 70, 15),
(8, 'images/toofacedH.jpg', 'Too Faced Chocolate Bar', 'Chocolate Eye Shadow Palette', 261, 15);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
