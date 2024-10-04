-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2024 at 07:06 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2210010459_hukum`
--

-- --------------------------------------------------------

--
-- Table structure for table `isi bab`
--

CREATE TABLE `isi bab` (
  `id` int(11) NOT NULL,
  `pasal` text NOT NULL,
  `isi_pasal` text NOT NULL,
  `bab_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `isi kitab`
--

CREATE TABLE `isi kitab` (
  `bab_id` int(11) NOT NULL,
  `nama_bab` text NOT NULL,
  `ket_pasal` text NOT NULL,
  `kitab_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kamus`
--

CREATE TABLE `kamus` (
  `id` int(11) NOT NULL,
  `kata` text NOT NULL,
  `definisi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kitab`
--

CREATE TABLE `kitab` (
  `kitab_id` int(11) NOT NULL,
  `nama_kitab` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `isi bab`
--
ALTER TABLE `isi bab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isi kitab`
--
ALTER TABLE `isi kitab`
  ADD PRIMARY KEY (`bab_id`);

--
-- Indexes for table `kamus`
--
ALTER TABLE `kamus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kitab`
--
ALTER TABLE `kitab`
  ADD PRIMARY KEY (`kitab_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `isi bab`
--
ALTER TABLE `isi bab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `isi kitab`
--
ALTER TABLE `isi kitab`
  MODIFY `bab_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kamus`
--
ALTER TABLE `kamus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kitab`
--
ALTER TABLE `kitab`
  MODIFY `kitab_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
