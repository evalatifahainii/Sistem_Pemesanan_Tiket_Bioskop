-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2024 at 03:46 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bioskopethernal`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `namaFilm` varchar(30) NOT NULL,
  `studio` varchar(20) NOT NULL,
  `jam` varchar(10) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `kursi` varchar(10) NOT NULL,
  `jumlah` int(30) DEFAULT NULL,
  `totalHarga` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `forTanggal` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id` int(11) NOT NULL,
  `namaFilm` varchar(30) NOT NULL,
  `studio` varchar(20) NOT NULL,
  `jam` varchar(10) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `kursi` varchar(10) NOT NULL,
  `jumlah` int(30) DEFAULT NULL,
  `totalHarga` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id`, `namaFilm`, `studio`, `jam`, `tanggal`, `kursi`, `jumlah`, `totalHarga`) VALUES
(1, 'Shang-Chi', 'Studio 1', '11:00', '21-07-2021', 'A0, A1', 2, 60000),
(2, 'Shang-Chi', 'Studio 1', '11:00', '21-07-2021', 'A2', 1, 30000),
(3, 'Fast & Furious 9', 'Studio 2', '14:00', '22-07-2021', 'F2, F3', 2, 60000),
(4, 'Shang-Chi', 'Studio 1', '11:00', '21-07-2021', 'A3, A4', 2, 60000),
(5, 'Black Widow', 'Studio 3', '11:00', '22-07-2021', 'A0', 1, 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
