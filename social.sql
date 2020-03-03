-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2020 at 06:04 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `day` int(11) NOT NULL,
  `month` text NOT NULL,
  `year` int(11) NOT NULL,
  `gender` text NOT NULL,
  `state` text NOT NULL,
  `country` text NOT NULL,
  `district` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `day`, `month`, `year`, `gender`, `state`, `country`, `district`) VALUES
(1, 'ballu', 'puram', 'ballu@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 'Mar', 2011, 'Male', 'India', 'Maharashtra', 'Nagpur'),
(2, 'balwesh', 'puram', '', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 'Mar', 2011, '', 'India', 'Arunachal Pradesh', 'Basar'),
(3, 'balwesh', 'puram', 'ballu@gamill.com', '5f4dcc3b5aa765d61d8327deb882cf99', 4, 'Mar', 2011, 'Male', 'India', 'Andhra Pradesh', 'Adivivaram'),
(4, 'balwesh', 'puram', 'ballu@gamill.com', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 'Feb', 2010, 'Male', 'India', 'Arunachal Pradesh', 'Bondila'),
(5, 'balwesh', 'puram', 'ballu1@gamill.com', '5f4dcc3b5aa765d61d8327deb882cf99', 4, 'Mar', 2012, 'Male', 'India', 'Andhra Pradesh', 'Atmakur'),
(6, 'shubham', 'more', 'ballu3@gamill.com', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 'Mar', 2011, 'Female', 'India', 'Andaman and Nicobar Islands', 'Bombuflat'),
(7, 'balwesh', 'puram', 'ballu11@gamill.com', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 'Feb', 2010, 'Male', 'India', 'Andhra Pradesh', 'Adivivaram'),
(8, 'balwesh', 'balwesh', 'ballu@gamill.com', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 'Mar', 2011, 'Male', 'India', 'Arunachal Pradesh', 'Basar'),
(9, 'balwesh', 'puram', 'ballu@gamill.com', '5f4dcc3b5aa765d61d8327deb882cf99', 2, 'Mar', 2011, 'Male', 'India', 'Arunachal Pradesh', 'Basar'),
(10, 'shubham', 'mori', 'shu@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 'Mar', 2010, 'Male', 'India', 'Assam', 'Amguri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
