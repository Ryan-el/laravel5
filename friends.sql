-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2021 at 09:28 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel2`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `groups_id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_telp` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `groups_id`, `nama`, `no_telp`, `alamat`, `pendidikan`, `updated_at`, `created_at`) VALUES
(1, 2, 'ryan', 8512, 'Kesambi', 'S1', '2021-10-18 11:20:37', '2021-10-18 11:20:37'),
(2, 3, 'armand', 6467, 'Cipto', 'SMA', '2021-10-18 11:20:37', '2021-10-18 11:20:37'),
(3, 2, 'Saiful', 6443, 'Bandung', 'SMK', '2021-10-18 11:20:37', '2021-10-18 11:20:37'),
(4, 2, 'wawan', 9745, 'Perum', 'D3', '2021-10-18 11:20:37', '2021-10-18 11:20:37'),
(5, 3, 'Udin', 1187, 'Tegal', 'S1', '2021-10-18 04:28:26', '2021-10-18 04:28:26'),
(7, 2, 'michelle', 9955, 'Bandung', 'S1', '2021-10-31 22:16:02', '2021-10-26 19:29:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
