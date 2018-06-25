-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2018 at 09:28 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jackshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin','member') NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `level`) VALUES
(1, 'Agatha Putra', 'agatha', 'agatha@gmail.com', '123', 'member'),
(3, 'Abdullah Ichsan Hafidz', 'abdullah', 'abdullah@gmail.com', '123', 'member'),
(4, 'Adinda Intan Auliya Rahma', 'adinda', 'adinda@gmail.com', '123', 'member'),
(5, 'Agus Imron Wicaksono', 'agus', 'agus@gmail.com', '123', 'member'),
(6, 'Ahmad Dhany Alfansyah', 'ahmad', 'ahmad@gmail.com', '123', 'member'),
(7, 'Akbar Syamsudin Saksono', 'akbar', 'akbar@gmail.com', '123', 'member'),
(8, 'Akhmad Eka Putra Kurniawan', 'akhmad', 'akhmad@gmail.com', '123', 'member'),
(9, 'Alfandy Triyanto', 'alfandy', 'alfandy@gmail.com', '123', 'member'),
(10, 'Alvita Amelia', 'alvita', 'alvita@gmail.com', '123', 'member'),
(11, 'Anggada Ramadhan', 'anggada', 'anggada@gmail.com', '123', 'member'),
(12, 'Anggitha Bunga Fairlya', 'anggitha', 'anggitha@gmail.com', '123', 'member'),
(13, 'Anggun Amiroh Jaya', 'anggun', 'anggun@gmail.com', '123', 'member'),
(14, 'Antonio Michel', 'antonio', 'antonio@gmail.com', '123', 'member'),
(15, 'Astri Alfrena', 'astri', 'astri@gmail.com', '123', 'member'),
(16, 'Baidhowi', 'baidhow', 'baidhow@gmail.com', '123', 'member'),
(17, 'Bayu Triestian Bagaskara', 'bayu', 'bayu@gmail.com', '123', 'member'),
(18, 'Bima Setya Avira', 'bima', 'bima@gmail.com', '123', 'member'),
(19, 'Dea Nur Cahyani', 'dea', 'dea@gmail.com', '123', 'member'),
(20, 'Dicky Rozzaq Putra Irnanta', 'dickys', 'dickys@gmail.com', '123', 'member'),
(21, 'Dicky Setiawan', 'dickyr', 'dickyr@gmail.com', '123', 'member'),
(22, 'Didhan Daifullah Damar Sasongko', 'didhan', 'didhan@gmail.com', '123', 'member'),
(23, 'Efriwanda Giarto', 'efriwanda', 'efriwanda@gmail.com', '123', 'member'),
(24, 'Elfira Kintan Utami', 'elfira', 'elfira@gmail.com', '123', 'member'),
(25, 'Elsa Firlia', 'elsa', 'elsa@gmail.com', '123', 'member'),
(26, 'Emillia Riski', 'emilia', 'emilia@gmail.com', '123', 'member'),
(27, 'Endah Setiti Prabaningrum', 'endah', 'endah@gmail.com', '123', 'member'),
(28, 'Evan Nanda Satriya', 'evan', 'evan@gmail.com', '123', 'member'),
(29, 'Faisal Rachman', 'faisal', 'faisal@gmail.com', '123', 'member'),
(30, 'Fano Gilang Bhagaskara', 'fano', 'fano@gmail.com', '123', 'member'),
(31, 'Fardhan Ardhi Ramadhan', 'fardhan', 'fardhan@gmail.com', '123', 'admin'),
(32, 'Farhan Affandi', 'farhan', 'farhan@gmail.com', '123', 'member'),
(33, 'Fatimah Mayangsari', 'fatimah', 'fatimah@gmail.com', '123', 'member'),
(34, 'Fauzida Agza Taqalli', 'fauzida', 'fauzida@gmail.com', '123', 'member'),
(35, 'Fernando Ardiansyah', 'fernando', 'fernando@gmail.com', '123', 'member'),
(53, 'auau', 'arar', 'arar@dd', '123', 'member'),
(54, 'asa', 'asa', 'asa@a', '123', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
