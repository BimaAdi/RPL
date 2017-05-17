-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Mei 2017 pada 15.53
-- Versi Server: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jadwal_dosen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE IF NOT EXISTS `ruangan` (
  `Kode_Ruangan` varchar(10) NOT NULL,
  `Nama_Ruangan` varchar(30) NOT NULL,
  `Kapasitas` int(11) DEFAULT NULL,
  PRIMARY KEY (`Kode_Ruangan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`Kode_Ruangan`, `Nama_Ruangan`, `Kapasitas`) VALUES
('A01', 'S-305 Gd. FPMIPA A', 65),
('A02', 'E-405 Gd. FPMIPA A', 60),
('A03', 'E-406 Gd. FPMIPA A', 70),
('A04', 'S-306 Gd. FPMIPA A', 120),
('A05', 'S-302 Gd. FPMIPA A', 50),
('A06', 'E-210 Gd. FPMIPA A', 65),
('B01', 'B-205 Gd. FPMIPA B', 40),
('C01', 'Lab Praktikum', 70),
('C02', 'Lab. Basis Data', 40),
('C03', 'Lab. Pemerograman & RPL', 30),
('C04', 'Lab Pemerograman Dasar', 40),
('C05', 'IK-207 Gd.FPMIPA C', 120),
('C06', 'IK-201 Gd. FPMIPA C', 120),
('C07', 'Lab Jaringan', 25),
('C08', 'Lab. Pembelajaran', 30),
('D01', 'Ruang Keagamaan 1', 30),
('D02', 'Ruang Keagamaan 2', 5),
('D03', 'Ruang Keagamaan 3', 30),
('E01', 'Lap.Golf 1', 5),
('E02', 'Lap. GOR 1 (samping stadion)', 30);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
