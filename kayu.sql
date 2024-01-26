-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2024 at 09:15 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kayu`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_produk`, `qty`, `subtotal`) VALUES
(6, 6, 3, 2, 60000),
(7, 7, 4, 3, 120000),
(9, 9, 1, 2, 20000),
(11, 11, 1, 1, 10000),
(12, 12, 1, 1, 10000),
(13, 13, 1, 1, 10000),
(14, 14, 1, 1, 10000),
(15, 15, 1, 1, 10000),
(16, 16, 4, 1, 40000),
(17, 17, 24, 2, 320000),
(18, 18, 4, 2, 80000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `foto_pelanggan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `username`, `alamat`, `telp`, `password`, `foto_pelanggan`) VALUES
(1, 'Intan Putri', 'putrintun', 'Jl. Lembayung VII', '081234567890', '827ccb0eea8a706c4c34a16891f84e7b', 'PELANGGAN 1.jpg'),
(2, 'Dimas Bahari', 'dimsantoso', 'Jl. Bayam IV', '081234567890', '827ccb0eea8a706c4c34a16891f84e7b', 'PELANGGAN 2.jpg'),
(3, 'Raka Pratama', 'raktama', 'Jl. Ambarawa V', '081234567890', '827ccb0eea8a706c4c34a16891f84e7b', 'PELANGGAN 3.jpg'),
(12, 'George Marlissa', 'Jorz', 'Jl. S. Mambramo', '082236358060', 'aaaad3ee4d5dd668ca112f55ad814dec', 'bIDuvBP.jpg'),
(13, 'q', 'q', 'q', '08', 'e10adc3949ba59abbe56e057f20f883e', 'jeruk.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `tgl_pembayaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_transaksi`, `tgl_pembayaran`) VALUES
(3, 6, '2021-10-31'),
(4, 7, '2021-10-31'),
(5, 11, '2022-11-17'),
(6, 9, '2022-11-18'),
(7, 16, '2024-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `foto_petugas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `level`, `foto_petugas`) VALUES
(1, 'Andi', 'Andi', '21232f297a57a5a743894a0e4a801fc3', 'T', 'PETUGAS 1.jpg'),
(2, 'Shafira Virda', 'rameyputri', '21232f297a57a5a743894a0e4a801fc3', '0', 'PETUGAS 2.jpg'),
(3, 'Anna Ambarwati', 'annati', '827ccb0eea8a706c4c34a16891f84e7b', 'T', 'PETUGAS 3.jpg'),
(14, 'George Marlissa', 'Jorz', '21232f297a57a5a743894a0e4a801fc3', 'T', 'Untitled.png'),
(15, 'admin', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'T', 'IMG-20191218-WA0018.jpg'),
(16, 'petugas', 'petugas', 'e10adc3949ba59abbe56e057f20f883e', 'T', 'semangka.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `foto_produk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `deskripsi`, `harga`, `foto_produk`) VALUES
(4, 'Cappucino', 'Dark, rich espresso lies in wait under a smoothed and stretched layer of thick milk foam. An alchemy of barista artistry and craft.', 40000, 'CAPPUCINO.JPG'),
(24, 'kopi2', 'kopi', 160000, 'veny2.png'),
(25, 'kopi23', 'kopi33', 200000, 'kua.png');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `pembayaran` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `id_petugas`, `tgl_transaksi`, `pembayaran`) VALUES
(6, 1, 2, '2021-10-31', NULL),
(7, 1, 1, '2021-10-31', NULL),
(9, 11, 2, '2021-10-31', NULL),
(11, 12, 1, '2022-11-17', NULL),
(12, 12, 1, '2022-11-18', NULL),
(13, 12, 1, '2022-11-18', NULL),
(14, 12, 1, '2022-11-18', NULL),
(15, 12, 1, '2022-11-18', NULL),
(16, 13, 16, '2024-01-26', NULL),
(18, 13, 16, '2024-01-26', 'DANA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
