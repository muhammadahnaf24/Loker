-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 01:26 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loker`
--

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id_pekerjaan` int(11) NOT NULL,
  `gaji` varchar(40) NOT NULL,
  `kualifikasi` varchar(30) NOT NULL,
  `lulusan` varchar(30) NOT NULL,
  `status_pekerjaan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id_pekerjaan`, `gaji`, `kualifikasi`, `lulusan`, `status_pekerjaan`) VALUES
(1, 'Rp 2.500.000 - 5.000.000', 'Bisa Menggunakan Adobe Premier', 'D4 / S1', 'Fulltime'),
(2, 'Rp 2.500.000 - 5.000.000', 'Mahir Bootstrap dan React JS', 'D3', 'Part Time'),
(3, 'Rp 8.000.000 - 10.000.000', 'Mahir Node JS dan Laravel', 'SMA / SMK', 'Freelance'),
(4, 'Rp 8.000.000 - 10.000.000', 'Mampu bekerja secara tim', 'S2', 'Full Time'),
(5, 'Rp 8.000.000 - 10.000.000', 'Mahir Menggunakan Kotlin', 'D4 / S1', 'Part Time'),
(6, 'Rp 5.000.000 - 8.000.000', 'Mampu berkomunikasi dengan bai', 'SMA / SMK', 'Freelance'),
(7, 'Rp 2.500.000 - 5.000.000', 'Mahir Python, Java', 'SMP', 'Freelance'),
(8, '> Rp 10.000.000', 'Mahir menggunakan ReactJs, Tai', 'S2', 'Full Time'),
(9, 'Rp 8.000.000 - 10.000.000', 'Bisa menggunakan Python, C++ d', 'S1', 'Part Time'),
(10, 'Rp 1.000.000 - 2.500.000', 'Bisa Mengetik', 'SMP', 'Part Time'),
(11, 'Rp 5.000.000 - 8.000.000', 'Bagus', 'D4 / S1', 'Part Time'),
(12, 'Rp 2.500.000 - 5.000.000', 'm', 'SMA / SMK', 'Freelance');

-- --------------------------------------------------------

--
-- Table structure for table `lamaran`
--

CREATE TABLE `lamaran` (
  `id_member` int(11) NOT NULL,
  `alamat_pelamar` varchar(50) NOT NULL,
  `nama_pelamar` varchar(50) NOT NULL,
  `pengalaman` varchar(150) NOT NULL,
  `pendidikan` varchar(10) NOT NULL,
  `dokumen` varchar(50) NOT NULL,
  `id_pekerjaan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama_member` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama_member`, `username`, `password`, `email`, `alamat`) VALUES
(11, 'Brilian Cahya Dewi', 'brilian', '12345', 'briliancd@gmail.com', 'Kebumen, Jawa Tengah'),
(12, 'Muhammad Ahnaf Ardiansyah', 'ahnaf', '54321', 'ahnaf@yahoo.com', 'Temanggung, Jawa Tengah');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `perusahaan` varchar(30) NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `nama`, `perusahaan`, `lokasi`, `gambar`) VALUES
(1, 'Graphic Designer', 'Twofolks Design', 'Jakarta', 'twofolks.jpg'),
(2, 'Frontend Developer', 'Global Inovasi Ventura', 'Yogyakarta', 'giv.jpg'),
(3, 'Backend Developer', 'Kairos Cemerlang', 'Bandung', 'kc.jpg'),
(4, 'Fullstack Developer', 'MRC Ventures', 'Semarang', 'mrc.jpg'),
(5, 'Mobile Developer', 'Doa Kupanjat', 'Surabaya', 'doku.jpg'),
(6, 'Marketing Computer', 'Corim Group', 'Jayapura', 'corim.jpg'),
(7, 'Software Engineer', 'Ladang Lima Group', 'Medan', 'ladang.jpg'),
(8, 'Frontend Developer', 'Cera Production', 'Jakarta', 'cera.jpg'),
(9, 'Mobile Developer', 'Glints Company', 'Surabaya', 'glints.jpg'),
(10, 'Software Developer', 'Drop Global Tech', 'Semarang', 'drop.jpg'),
(11, 'Graphic Designer', 'FBI Company', 'Jakarta', '01_Education_Medicine.jpg'),
(12, 'nj', 'f', 'Bandung', '01_Education_Medicine.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
