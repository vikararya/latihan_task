-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2024 at 08:44 AM
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
-- Database: `latihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,3) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, 'pecel', 'enak dan nikmat khas kpk jhoang', 10.000, 'pecel.jpg'),
(2, 'wonton', 'wonton khas kpk jhoang', 7.000, 'wonton.jpg'),
(3, 'oseng', 'oseng khas kpk jhoang nikmat', 10.000, 'oseng.jpg'),
(4, 'kerang ijo', 'kerang ijo asam pedas yang nikmat', 12.000, 'kerangijo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `menu` varchar(255) NOT NULL,
  `kuantitas` varchar(255) NOT NULL,
  `harga` decimal(10,3) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `username`, `menu`, `kuantitas`, `harga`, `status`, `date`) VALUES
(1, 'vikar', 'kerang ijo', '1', 14.000, 'Di Masak', '2024-05-24 12:11:00'),
(2, 'ronaldo', 'kerang ijo', '2', 24.000, 'Di Masak', '2024-05-14 11:01:00'),
(3, 'wayne', 'oseng', '1', 10.000, 'Belum Selesai', '2024-05-16 22:02:00'),
(5, 'hikma', 'oseng', '100', 20.000, 'Belum Selesai', '2024-06-24 12:11:00'),
(6, 'ronaldo', 'pecel', '3', 10.000, 'Di Masak', '2024-06-18 12:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `flag` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_register` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `status`, `flag`, `email`, `token`, `date_register`) VALUES
(28, 'arya', 'arya', '$2y$10$OwMMP9ow31voaQxIyFkQke/lGuDx3OERRLDDTwCWZzVKEnybQGTDy', 'admin', 1, 'saputwahyu309@gmail.com', 'ec856defd8a729c7313c231fabd10fef', '2024-04-03 14:33:56.638663'),
(29, 'messi', 'messi', '$2y$10$5NLCRNvMx9SbeXAPVirKWeOxa8A6Oma3rjD62qCk3I/bNDusXjn..', 'admin', 1, 'aryavikar121@gmail.com', '296d7b58df372db04e83fd2daa7489d6', '2024-04-04 13:00:12.651311'),
(30, 'ronaldo', 'ronaldo', '$2y$10$.HjyVDSYaRwRkz3zbZyfeecVYx8nboGRnp8S7pwtgQQhpqZKJdnHi', 'admin', 1, 'ronaldo@gmail.com', '4a051cd170deccbc9a4ba1af4a2b7976', '2024-05-24 08:06:05.087818'),
(31, 'messi', 'messi', '$2y$10$nStBd52gZkq6rHew5R9OiO75fLSgqShIBERin90x.NaOCfZ7skKdO', 'admin', 0, 'messi@gmail.com', 'bc31f4afe37b80e979d337a1b9f92960', '2024-05-24 08:12:03.375253'),
(32, 'patrick', 'patrick', '$2y$10$68Ae97N4y5GGIQIgPl9NseF7EO/9dVSBt.Y.d7md7epki9caIdd1m', 'admin', 0, 'patrick@gmail.com', '6b93f590b998335e806e7e746993dfea', '2024-05-24 08:18:41.759349');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
