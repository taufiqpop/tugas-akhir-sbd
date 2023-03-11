-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 05:42 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `id_matakuliahFK` int(11) DEFAULT NULL,
  `nama_dosen` varchar(45) NOT NULL,
  `nohp_dosen` varchar(15) NOT NULL,
  `alamat_dosen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `id_matakuliahFK`, `nama_dosen`, `nohp_dosen`, `alamat_dosen`) VALUES
(101, 201, 'Sindika', '081111111111', 'Surakarta'),
(102, 201, 'Amalia', '081111111112', 'Semarang'),
(103, 201, 'Bambang', '081111111113', 'Boyolali'),
(104, 201, 'Sugiarto', '081111111114', 'Klaten'),
(105, 201, 'Sumini', '081111111115', 'Bandung'),
(106, 202, 'Darti', '081111111116', 'Semarang'),
(107, 202, 'Dika', '081111111117', 'Boyolali'),
(108, 202, 'Danis', '081111111118', 'Surakarta'),
(109, 202, 'Deka', '081111111119', 'Salatiga'),
(110, 203, 'Sani', '0812345678920', 'Salatiga'),
(111, 204, 'Farel', '0812345678921', 'Semarang'),
(112, 205, 'Femi', '0812345678922', 'Bandung'),
(113, 206, 'Laila', '0812345678923', 'Klaten'),
(114, 207, 'Siska', '0812345678924', 'Bengkulu'),
(115, 208, 'Tutik', '0812345678925', 'Rawa Permai'),
(116, 209, 'Tisna', '0812345678926', 'Jakarta'),
(117, 210, 'Pandu', '0812345678927', 'Semarang'),
(118, 211, 'Dastan', '0812345678928', 'Solo'),
(119, 212, 'Sumini', '0812345678929', 'Surakarta'),
(120, 212, 'Mustika', '0812345678930', 'Solo');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_matakuliahFK` int(11) DEFAULT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `ruangan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_matakuliahFK`, `tanggal`, `ruangan`) VALUES
(401, 201, '2021-06-01 22:14:29', 'J01'),
(402, 202, '2021-06-02 22:14:29', 'J02'),
(403, 203, '2021-06-03 22:16:13', 'J03'),
(404, 204, '2021-06-04 22:16:13', 'J04'),
(405, 205, '2021-06-05 22:16:13', 'J05'),
(406, 206, '2021-06-06 22:16:13', 'J06'),
(407, 207, '2021-06-07 22:16:13', 'J07'),
(408, 208, '2021-06-08 22:16:13', 'J08'),
(409, 209, '2021-06-09 22:16:13', 'J09'),
(410, 210, '2021-06-10 22:16:13', 'J10'),
(411, 211, '2021-06-11 22:16:13', 'J11'),
(412, 212, '2021-06-12 22:16:13', 'J12'),
(413, 213, '2021-06-13 22:16:13', 'J13'),
(414, 214, '2021-06-14 22:16:13', 'J14'),
(415, 215, '2021-06-15 22:16:13', 'J15'),
(416, 216, '2021-06-16 22:16:13', 'J16'),
(417, 217, '2021-06-17 22:16:13', 'J17'),
(418, 218, '2021-06-18 22:16:13', 'J18'),
(419, 219, '2021-06-19 22:16:13', 'J19'),
(420, 220, '2021-06-20 22:16:13', 'J20');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `id_mahasiswaFK` int(11) DEFAULT NULL,
  `nama_jurusan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `id_mahasiswaFK`, `nama_jurusan`) VALUES
(501, 20019001, 'Informatika'),
(502, 20019002, 'Informatika'),
(503, 20019003, 'Informatika'),
(504, 20019004, 'Informatika'),
(505, 20019005, 'Informatika'),
(506, 20019006, 'Informatika'),
(507, 20019007, 'Informatika'),
(508, 20019008, 'Informatika'),
(509, 20019009, 'Informatika'),
(510, 20019010, 'Informatika'),
(511, 20019011, 'Informatika'),
(512, 20019012, 'Informatika'),
(513, 20019013, 'Informatika'),
(514, 20019014, 'Informatika'),
(515, 20019015, 'Informatika'),
(516, 20019016, 'Informatika'),
(517, 20019017, 'Informatika'),
(518, 20019018, 'Informatika'),
(519, 20019019, 'Informatika'),
(520, 20019020, 'Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nama_mahasiswa` varchar(45) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `nohp_mahasiswa` varchar(15) NOT NULL,
  `alamat_mahasiswa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama_mahasiswa`, `jenis_kelamin`, `nohp_mahasiswa`, `alamat_mahasiswa`) VALUES
(20019001, 'Dinda', 'Perempuan', '081234567891', 'Salatiga'),
(20019002, 'Laura', 'Perempuan', '081234567892', 'Salatiga'),
(20019003, 'Agustin', 'Perempuan', '081234567893', 'Salatiga'),
(20019004, 'Ahlan', 'laki-laki', '081234567894', 'Semarang'),
(20019005, 'Wasahlan', 'laki-laki', '081234567895', 'Ambarawa'),
(20019006, 'Madaris', 'laki-laki', '081234567896', 'Salatiga'),
(20019007, 'Rima', 'Perempuan', '081234567897', 'Ambarawa'),
(20019008, 'Danang', 'laki-laki', '081234567898', 'Semarang'),
(20019009, 'Lesti', 'Perempuan', '081234567899', 'Surakarta'),
(20019010, 'Joko', 'laki-laki', '081234567810', 'Surakarta'),
(20019011, 'Wisnu', 'laki-laki', '081234567811', 'Surakarta'),
(20019012, 'Handoko', 'laki-laki', '081234567812', 'Boyolali'),
(20019013, 'Widi', 'laki-laki', '081234567813', 'Semarang'),
(20019014, 'Dani', 'Perempuan', '081234567814', 'Boyolali'),
(20019015, 'Andika', 'laki-laki', '081234567815', 'Cilacap'),
(20019016, 'Siti', 'Perempuan', '081234567816', 'Surakarta'),
(20019017, 'Sundari', 'Perempuan', '081234567817', 'Klaten'),
(20019018, 'Ezta', 'Perempuan', '081234567818', 'Ambarawa'),
(20019019, 'Devy', 'Perempuan', '081234567819', 'Semarang'),
(20019020, 'Indah', 'Perempuan', '08123456781', 'Salatiga');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa_has_matakuliah`
--

CREATE TABLE `mahasiswa_has_matakuliah` (
  `id_mahasiswaFK` int(11) NOT NULL,
  `id_matakuliahFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa_has_matakuliah`
--

INSERT INTO `mahasiswa_has_matakuliah` (`id_mahasiswaFK`, `id_matakuliahFK`) VALUES
(20019001, 201),
(20019002, 202),
(20019003, 203),
(20019004, 204),
(20019005, 205),
(20019006, 206),
(20019007, 207),
(20019008, 208),
(20019009, 209),
(20019010, 201),
(20019011, 211),
(20019012, 212),
(20019013, 213),
(20019014, 214),
(20019015, 215),
(20019016, 216),
(20019017, 217),
(20019018, 218),
(20019019, 219),
(20019020, 220);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `mahasiswa_has_matakuliah`
--
ALTER TABLE `mahasiswa_has_matakuliah`
  ADD PRIMARY KEY (`id_mahasiswaFK`,`id_matakuliahFK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
