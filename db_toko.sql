-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 11:57 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(19, 'BR001', 14, 'Logitech MX Master', 'Logitech', '200000', '250000', 'PCS', '10', '23 October 2024, 15:50', NULL),
(20, 'BR002', 14, 'Logitech G Pro', 'Logitech', '200000', '250000', 'PCS', '8', '23 October 2024, 15:53', NULL),
(21, 'BR003', 14, 'Razer DeathAdder', 'Razer', '300000', '340000', 'PCS', '9', '23 October 2024, 15:53', NULL),
(22, 'BR004', 14, 'Razer Naga', 'Razer', '190000', '230000', 'PCS', '10', '23 October 2024, 15:54', NULL),
(23, 'BR005', 15, 'Logitech G Pro X (gaming)', 'Logitech', '350000', '400000', 'PCS', '5', '23 October 2024, 15:54', NULL),
(24, 'BR006', 15, 'Razer BlackWidow', 'Razer', '400000', '450000', 'PCS', '6', '23 October 2024, 15:57', NULL),
(25, 'BR007', 16, 'Power Supply (PSU) Phoenix PH 850W 80+ BRONZE', 'Phoenix', '500000', '599000', 'PCS', '5', '23 October 2024, 16:35', NULL),
(26, 'BR008', 17, 'Motherboard Gigabyte B760M AORUS ELITE AX DDR5 - LGA 1700', 'Gigabyte', '2000000', '2935001', 'PCS', '2', '23 October 2024, 16:37', NULL),
(27, 'BR009', 18, 'Samsung Soundbar HW-T420 2.1 Ch, 150 W 2020', 'Samsung', '1000000', '1369900', 'PCS', '5', '23 October 2024, 16:39', NULL),
(28, 'BR010', 19, 'VGA GIGABYTE 8GB RTX4060 EAGLE OC', 'Gigabyte', '5000000', '5950000', 'PCS', '4', '23 October 2024, 16:41', NULL),
(29, 'BR011', 20, 'SOLID STATE DRIVE SSD 240GB/256GB V-GeN SATA 3 PLATINUM', 'V-GEN', '500000', '556000', 'PCS', '9', '23 October 2024, 16:45', '23 October 2024, 16:47'),
(30, 'BR012', 20, 'OLID STATE DRIVE V-GEN 256 GB SATA 3', 'V-GEN', '300000', '386.000', 'PCS', '9', '23 October 2024, 16:46', NULL),
(31, 'BR013', 21, 'LED Monitor Gaming LENOVO G32qc-30 32\" 165Hz Curved HDMI', 'Lenovo', '3500000', '4265000', 'PCS', '3', '23 October 2024, 16:47', NULL),
(32, 'BR014', 21, 'Xiaomi Gaming Monitor G27Qi 2K', 'Xiaomi', '2000000', '2998999', 'PCS', '4', '23 October 2024, 16:49', '23 October 2024, 16:50'),
(33, 'BR015', 22, 'Printer HP Deskjet Ink Advantage 2875', 'HP', '650000', '765000', 'PCS', '5', '23 October 2024, 16:50', NULL),
(34, 'BR016', 22, 'Printer Canon GM2070 GM 2070 Print Only A4', 'Canon', '1999000', '2670000', 'PCS', '5', '23 October 2024, 16:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(14, 'Mouse', '23 October 2024, 15:43'),
(15, 'Keyboard', '23 October 2024, 15:43'),
(16, 'Power Supply Unit (PSU)', '23 October 2024, 15:44'),
(17, 'Motherboard', '23 October 2024, 15:45'),
(18, 'Sound Bar', '23 October 2024, 15:47'),
(19, 'Kartu Grafis (GPU)', '23 October 2024, 15:48'),
(20, 'SSD', '23 October 2024, 15:48'),
(21, 'Monitor', '23 October 2024, 15:49'),
(22, 'Printer', '23 October 2024, 15:49');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'ismaul rizki', 'jakarta', '089514363086', 'ismaulrizky@gmail.com', 'Pas Foto Ismaul Rizki.jpg', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(26, 'BR002', 1, '1', '250000', '24 October 2024, 16:17', '10-2024'),
(27, 'BR013', 1, '1', '4265000', '24 October 2024, 16:18', '10-2024'),
(28, 'BR011', 1, '1', '556000', '24 October 2024, 16:19', '10-2024'),
(29, 'BR008', 1, '2', '5870002', '24 October 2024, 16:19', '10-2024');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(43, 'BR002', 1, '1', '250000', '24 October 2024, 16:17'),
(44, 'BR013', 1, '1', '4265000', '24 October 2024, 16:18'),
(45, 'BR011', 1, '1', '556000', '24 October 2024, 16:19'),
(46, 'BR008', 1, '2', '5870002', '24 October 2024, 16:19');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'TechGear', 'Jl. H. NASIR No.10', '08123456789', 'RIZKI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
