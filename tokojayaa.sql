-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2023 at 05:27 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokojayaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `katalog`
--

CREATE TABLE `katalog` (
  `id_katalog` int(11) NOT NULL,
  `nama_katalog` varchar(64) NOT NULL,
  `slug` varchar(64) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `katalog`
--

INSERT INTO `katalog` (`id_katalog`, `nama_katalog`, `slug`, `deskripsi`) VALUES
(2, 'KAOS', 'KAOS', ''),
(4, 'SANDAL', 'SANDAL', 'Bahan: Kulit Asli\r\nSize: 40,41,39,38'),
(5, 'SEPATU', 'SEPATU', 'Bahan: Kulit Asli\r\nSize: M'),
(7, 'CELANA ', 'CELANA', ''),
(8, 'KEMEJA', 'KEMEJA', ''),
(9, 'TOPI', 'TOPI', ''),
(10, 'TAS', 'Backpack ', 'tas ini bagus banget');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id_order` int(11) NOT NULL,
  `resi` varchar(16) NOT NULL,
  `pembeli_id` int(11) NOT NULL,
  `total_harga` double(16,0) NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  `kirim_ke` text NOT NULL,
  `terbaca` enum('0','1','2') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id_order`, `resi`, `pembeli_id`, `total_harga`, `status`, `kirim_ke`, `terbaca`, `created_at`, `updated_at`) VALUES
(14, '1492986210', 0, 150000, '0', 'SP 2A KOTA TERNATE, KOTA : TERNATE, PROFINSI : MALUKU UTARA, KODEPOS : 1234567', '0', '2017-04-23 17:23:30', '2017-04-23 17:23:30'),
(15, '1492986242', 0, 70000, '0', 'SP 2A KOTA TERNATE, KOTA : TERNATE, PROFINSI : MALUKU UTARA, KODEPOS : 1234567', '0', '2017-04-23 17:24:02', '2017-04-23 17:24:02'),
(16, '1492986284', 0, 120000, '0', 'SP 2A KOTA TERNATE, KOTA : TERNATE, PROFINSI : MALUKU UTARA, KODEPOS : 1234567', '0', '2017-04-23 17:24:44', '2017-04-23 17:24:44'),
(17, '1492986338', 0, 70000, '0', 'SP 2A KOTA TERNATE, KOTA : TERNATE, PROFINSI : MALUKU UTARA, KODEPOS : 1234567', '0', '2017-04-23 17:25:38', '2017-04-23 17:25:38'),
(18, '1492986376', 0, 150000, '0', 'SP 2A KOTA TERNATE, KOTA : TERNATE, PROFINSI : MALUKU UTARA, KODEPOS : 1234567', '0', '2017-04-23 17:26:16', '2017-04-23 17:26:16'),
(19, '1492986445', 0, 250000, '0', 'SP 2A KOTA TERNATE, KOTA : TERNATE, PROFINSI : MALUKU UTARA, KODEPOS : 1234567', '0', '2017-04-23 17:27:25', '2017-04-23 17:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id_ordetail` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `produk_harga` double(16,0) NOT NULL,
  `qty` tinyint(4) NOT NULL,
  `subtotal` double(16,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`id_ordetail`, `order_id`, `produk_id`, `produk_harga`, `qty`, `subtotal`, `created_at`) VALUES
(1, 1, 12, 70000, 1, 70000, '2017-03-26 03:59:28'),
(2, 2, 12, 70000, 1, 70000, '2017-03-26 04:02:59'),
(3, 3, 12, 70000, 1, 70000, '2017-03-26 04:06:55'),
(4, 4, 6, 220000, 2, 440000, '2017-03-27 23:23:34'),
(5, 5, 10, 150000, 1, 150000, '2017-03-27 23:26:23'),
(6, 6, 12, 70000, 1, 70000, '2017-04-27 21:32:54'),
(7, 7, 8, 250000, 1, 250000, '2017-04-27 21:37:14'),
(8, 8, 12, 70000, 1, 70000, '2017-04-27 21:40:53'),
(9, 9, 9, 220000, 1, 220000, '2017-04-27 21:45:52'),
(10, 10, 6, 220000, 1, 220000, '2017-04-29 21:11:45'),
(11, 11, 11, 120000, 1, 120000, '2017-04-29 21:34:58'),
(12, 12, 5, 11880, 1, 11880, '2017-04-29 21:41:49'),
(13, 13, 10, 150000, 1, 150000, '2017-04-23 17:13:10'),
(14, 14, 10, 150000, 1, 150000, '2017-04-23 17:23:30'),
(15, 15, 12, 70000, 1, 70000, '2017-04-23 17:24:03'),
(16, 16, 11, 120000, 1, 120000, '2017-04-23 17:24:44'),
(17, 17, 12, 70000, 1, 70000, '2017-04-23 17:25:38'),
(18, 18, 10, 150000, 1, 150000, '2017-04-23 17:26:16'),
(19, 19, 8, 250000, 1, 250000, '2017-04-23 17:27:25'),
(20, 20, 11, 120000, 1, 120000, '2023-12-17 23:41:11'),
(21, 21, 12, 70000, 1, 70000, '2023-12-17 23:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `orderkonfirm`
--

CREATE TABLE `orderkonfirm` (
  `id_orkonfirm` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `resi` varchar(16) NOT NULL,
  `metode` varchar(16) NOT NULL,
  `tujuan` varchar(16) NOT NULL,
  `atasnama` varchar(128) NOT NULL,
  `dari` varchar(16) NOT NULL,
  `rekening` varchar(32) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `terbaca` enum('0','1') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(64) NOT NULL,
  `profinsi` varchar(32) NOT NULL,
  `kodepos` varchar(8) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email`, `phone`, `alamat`, `kota`, `profinsi`, `kodepos`, `password`, `created_at`, `updated_at`) VALUES
(3, 'angga', 'anggahfabs@gmail.com', '085157064447', 'condet', 'jakarta timur', 'jakarta', '372', '5b0e00f551202894d82261810111b2f1', '2023-12-17 23:40:28', '2023-12-17 23:40:28'),
(4, 'jamal', 'jamal@jamal.id', '08123456789', 'condet', 'jakarta timur', 'jakarta', '191282', '7592628bce37dd14e0b36ea66d5ba847', '2023-12-17 23:50:48', '2023-12-17 23:50:48'),
(5, 'Alifa', '19220222@bsi.ac.id', '0812345678', 'gni', 'bogor', 'jawa barat', '2567', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2023-12-18 06:07:50', '2023-12-18 00:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `namasitus` varchar(255) NOT NULL,
  `metatag` text NOT NULL,
  `metadeskripsi` text NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `katalog_id` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga_jual` double(16,0) NOT NULL,
  `harga_coret` double(16,0) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `katalog_id`, `nama_produk`, `permalink`, `stok`, `harga_jual`, `harga_coret`, `gambar`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 1, 'KEMEJA LENGAN PENDEK', 'kemeja-lengan-pendek', 20, 120000, 2, 'kemeja_lengan_pendek_1490515338.jpg', '', '2017-03-26 03:26:37', '2017-03-26 03:26:37'),
(2, 1, 'KEMEJA LENGAN PANJANG', 'kemeja-lengan-panjang', 20, 150000, 0, 'kemeja_lengan_panjang_1490515697.jpg', 'Bahan : cotton\r\nSize : M,L,XL\r\nM: 98x74\r\nL: 100x75\r\nxl: 102x76', '2017-03-26 03:08:17', '2017-03-26 03:08:17'),
(3, 2, 'KAOS PENDEK', 'kaos-pendek', 20, 115000, 0, 'kaos_pendek_1490517141.jpg', '', '2017-03-26 03:32:21', '2017-03-26 03:32:21'),
(4, 3, 'TOPI EIGER', 'topi-eiger', 6, 70000, 0, 'topi_eiger_1490516591.jpg', 'Bahan: Kulit Asli\r\nSize: M', '2017-03-26 03:27:41', '2017-03-26 03:27:41'),
(5, 2, 'KAOS PANJANG', 'kaos-panjang', 19, 12000, 1, 'kaos_panjang_1490517103.jpg', '', '2017-04-30 02:41:49', '2017-03-26 03:31:43'),
(6, 4, 'SANDAL', 'sandal', 19, 220000, 0, 'sandal_1490517317.jpg', 'Bahan: Kulit Asli\r\nSize: 40,41,39,38', '2017-04-30 02:11:45', '2017-04-29 21:09:13'),
(7, 5, 'SEPATU', 'sepatu', 15, 250000, 0, 'sepatu_1490517480.jpg', 'Bahan: Kulit Asli\r\nSize: M', '2017-03-26 03:38:00', '2017-03-26 03:38:00'),
(8, 7, 'CELANA PANJANG EIGER', 'celana-panjang-eiger', 13, 250000, 0, 'celana_panjang_eiger_1490517867.jpg', 'Bahan: Cotton\r\nSize: 29, 30, 40, 42', '2017-04-23 22:27:25', '2017-03-26 03:44:27'),
(9, 7, 'CELANA PENDEK EIGER', 'celana-pendek-eiger', 20, 220000, 0, 'celana_pendek_eiger_1490518041.jpg', '', '2017-04-29 21:09:31', '2017-04-29 21:09:31'),
(10, 8, 'KEMEJA LENGAN PANJANG', 'kemeja-lengan-panjang', 16, 150000, 0, 'kemeja_lengan_panjang_1490518187.jpg', 'Bahan: Cotton\r\nSize: M,L,XL\r\n', '2017-04-23 22:26:16', '2017-03-26 03:49:47'),
(11, 8, 'KEMEJA LENGAN PENDEK', 'kemeja-lengan-pendek', 7, 120000, 0, 'kemeja_lengan_pendek_1490518287.jpg', 'Bahan: Cotton\r\nSize: M,L,XL', '2023-12-18 05:41:11', '2017-03-26 03:51:27'),
(12, 9, 'TOPI EIGER', 'topi-eiger', 2, 70000, 0, 'topi_eiger_1490518398.jpg', 'Bahan: Cotton\r\nSize: M,L,XL', '2023-12-18 05:52:17', '2017-03-26 03:53:18'),
(14, 0, 'Tas Sekolah', 'tas-sekolah', 4, 256, 30, 'tas_sekolah_1702878477.jpg', 'tas sekolah ', '2023-12-17 23:47:57', '2023-12-17 23:47:57'),
(18, 31, 'TOPI EIGER LAGI', 'topi-eiger-lagi', 6, 70000, 0, 'topi_eiger_1490516591.jpg', 'Bahan: Kulit Asli\r\nSize: M', '2017-03-26 03:27:41', '2017-03-26 03:27:41'),
(20, 5, 'Nike Dunk', 'nike-dunk', 3, 256, 0, 'nike_dunk_1702894131.jpg', 'Bahan: Kulit Asli\r\nSize: M', '2023-12-18 04:11:24', '2023-12-18 04:11:24'),
(21, 2, 'My Chemical Romance', 'my-chemical-romance', 4, 190, 20, 'my_chemical_romance_1702894390.jpg', '100 % Original', '2023-12-18 04:13:10', '2023-12-18 04:13:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama`, `email`, `phone`, `created_at`) VALUES
(1, 'admin', '8479c86c7afcb56631104f5ce5d6de62', 'Administrator', 'administrator@admin.com', '08123456789', '2023-12-18 05:11:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `katalog`
--
ALTER TABLE `katalog`
  ADD PRIMARY KEY (`id_katalog`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id_ordetail`);

--
-- Indexes for table `orderkonfirm`
--
ALTER TABLE `orderkonfirm`
  ADD PRIMARY KEY (`id_orkonfirm`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `katalog`
--
ALTER TABLE `katalog`
  MODIFY `id_katalog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id_ordetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orderkonfirm`
--
ALTER TABLE `orderkonfirm`
  MODIFY `id_orkonfirm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
