-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27 Mei 2021 pada 17.35
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sporthome_pbo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kode` varchar(7) NOT NULL,
  `nama` varchar(5000) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode`, `nama`, `harga`, `stok`) VALUES
('B0003', 'Baselayer Specs Black L', 50000, 27),
('B0002', 'Baselayer Specs Black M', 50000, 21),
('B0001', 'Baselayer Specs Black S', 50000, 25),
('B0004', 'Baselayer Specs Black XL', 50000, 21),
('B0005', 'Baselayer Ortus Black S', 45000, 32),
('B0006', 'Baselayer Ortus Black M', 45000, 30),
('B0007', 'Baselayer Ortus Black L', 45000, 21),
('B0008', 'Sepatu Futsal Metasala Nativ Black 42', 560000, 3),
('B0009', 'Sepatu Futsal Metasala Nativ Black 43', 560000, 2),
('B0010', 'Sepatu Futsal Metasala Nativ Black 44', 560000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `no_transaksi` varchar(7) NOT NULL,
  `kode` varchar(7) NOT NULL,
  `harga` double NOT NULL,
  `jumlah_beli` int(12) NOT NULL,
  `subtotal` double NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`no_transaksi`, `kode`, `harga`, `jumlah_beli`, `subtotal`, `tanggal`) VALUES
('TR0001', 'B0004', 50000, 1, 50000, '2021-05-27'),
('TR0001', 'B0002', 50000, 2, 100000, '2021-05-27'),
('TR0002', 'B0008', 560000, 1, 560000, '2021-05-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `head_transaksi`
--

CREATE TABLE `head_transaksi` (
  `no_transaksi` varchar(7) NOT NULL,
  `tanggal` date NOT NULL,
  `total` double NOT NULL,
  `bayar` double NOT NULL,
  `kembali` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `head_transaksi`
--

INSERT INTO `head_transaksi` (`no_transaksi`, `tanggal`, `total`, `bayar`, `kembali`) VALUES
('TR0002', '2021-05-27', 560000, 600000, 40000),
('TR0001', '2021-05-27', 150000, 200000, 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` varchar(7) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(14) NOT NULL,
  `password` varchar(16) NOT NULL,
  `hak_akses` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `jk`, `agama`, `alamat`, `telp`, `password`, `hak_akses`) VALUES
('IDK0002', 'Haryadi', 'Laki-Laki', 'Islam', 'Majalengka', '08914829482', '1234', 'Kasir'),
('IDK0003', 'Aprian', 'Laki-Laki', 'Islam', 'Karawang', '085780316852', '1504', 'Kasir'),
('IDK0001', 'Ahmad Nursidik Dinar', 'Laki-Laki', 'Islam', 'Karawang', '081410856221', '2704', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`no_transaksi`,`kode`);

--
-- Indexes for table `head_transaksi`
--
ALTER TABLE `head_transaksi`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
