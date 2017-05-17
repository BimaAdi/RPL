-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Mei 2017 pada 15.50
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
-- Struktur dari tabel `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `kode_jadwal` varchar(10) NOT NULL,
  `kode_mata_kuliah` varchar(10) NOT NULL,
  `kode_dosen` varchar(10) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam` varchar(50) NOT NULL,
  `kode_ruangan` varchar(10) NOT NULL,
  `sks` int(11) NOT NULL,
  PRIMARY KEY (`kode_jadwal`),
  KEY `kode_mata_kuliah` (`kode_mata_kuliah`),
  KEY `kode_dosen` (`kode_dosen`),
  KEY `kode_ruangan` (`kode_ruangan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`kode_jadwal`, `kode_mata_kuliah`, `kode_dosen`, `hari`, `jam`, `kode_ruangan`, `sks`) VALUES
('AD411', 'IK411', '2878', 'kamis', '17:10 - 19:50', 'C05', 3),
('AG442', 'IK442', '2900', 'senin', '15:30 - 18:00', 'C08', 3),
('AJ506', 'IK506', '2556', 'selasa', '15:30 - 17:10', 'C07', 2),
('AO420', 'IK420', '2688', 'selasa', '07:00 - 09:30', 'B01', 3),
('AP310', 'IK310', '2586', 'senin', '13:00 - 14:40', 'C04', 2),
('AP311', 'IK311', '2658', 'senin', '19:50 - 22:20', 'C01', 3),
('AS528', 'IK494', '2687', 'rabu', '07:00 - 09:30', 'C01', 3),
('BD330', 'IK330', '2808', 'rabu', '15:30 - 17:10', 'C05', 2),
('BI302', 'IK302', '2901', 'rabu', '07:00 - 08:40', 'B01', 2),
('BK302', 'KD302', '0900', 'jumat', '08:40 - 10:20', 'C05', 2),
('BP500', 'IK500', '1769', 'rabu', '13:00 - 15:30', 'C05', 3),
('DM566', 'IK566', '2231', 'senin', '13:30 - 15:30', 'C01', 3),
('DM571', 'IK571', '2231', 'senin', '17:10 - 19:50', 'C01', 3),
('DW536', 'IK536', '2231', 'selasa', '13:00 - 15:30', 'C01', 3),
('EK501', 'IK501', '1713', 'rabu', '09:30 - 12:00', 'A02', 3),
('EL574', 'IK574', '2900', 'selasa', '15:30 - 18:00', 'B01', 3),
('EL580', 'IK580', '1713', 'sabtu', '15:30 - 18:00', 'C08', 3),
('EP423', 'IK423', '2591', 'kamis', '07:00 - 08:40', 'C06', 2),
('EP495', 'IK495', '2591', 'senin', '09:30 - 11:10', 'C04', 2),
('GK462', 'IK462', '2900', 'selasa', '13:00 - 14:40', 'C04', 2),
('IC565', 'IK565', '2878', 'kamis', '07:00 - 09:30', 'C01', 3),
('IG527', 'IK527', '2398', 'senin', '15:30 - 18:00', 'A02', 3),
('IM429', 'IK429', '2590', 'selasa', '13:00 - 14:40', 'A01', 2),
('JK421', 'IK421', '2401', 'selasa', '13:00 - 15:30', 'C05', 3),
('KI505', 'IK505', '2401', 'rabu', '09:30 - 12:00', 'A01', 3),
('KM493', 'IK493', '2770', 'kamis', '07:50 - 09:30', 'B01', 2),
('KP303', 'KD303', '2590', 'sabtu', '13:00 - 15:30', 'C08', 3),
('KS350', 'IK350', '2770', 'kamis', '09:30 - 12:00', 'B01', 3),
('KS491', 'IK491', '2585', 'rabu', '09:30 - 11:10', 'C06', 2),
('KT301', 'IK301', '1718', 'selasa', '13:00 - 14:40', 'B01', 2),
('KT563', 'IK563', '2585', 'rabu', '13:00 - 15:30', 'C04', 3),
('LI450', 'IK450', '1407', 'selasa', '17:10 - 18:50', 'C06', 2),
('LP300', 'KD300', '0600', 'jumat', '07:00 - 08:40', 'C05', 2),
('MA553', 'IK553', '1714', 'jumat', '13:00 - 15:30', 'C01', 3),
('MK503', 'IK503', '1713', 'selasa', '10:20 - 12:00', 'A06', 2),
('MK504', 'IK504', '1718', 'rabu', '15:30 - 18:00', 'A03', 3),
('ML419', 'IK419', '2556', 'kamis', '09:30 - 11:10', 'C05', 2),
('ML557', 'IK557', '2585', 'senin', '07:00 - 09:30', 'B01', 3),
('MN451', 'IK451', '0720', 'senin', '13:00 - 15:30', 'B01', 3),
('MO432', 'IK432', '2556', 'senin', '15:30 - 18:00', 'B01', 3),
('MP428', 'IK428', '2147', 'rabu', '13:00 - 14:40', 'C06', 2),
('MP543', 'IK543', '2231', 'rabu', '09:30 - 12:00', 'C04', 3),
('PA560', 'IK560', '2878', 'kamis', '09:30 - 12:00', 'C01', 3),
('PB107', 'KU107', '1289', 'jumat', '17:10 - 18:50', 'C06', 2),
('PH103', 'KU103', '2399', 'jumat', '11:10 - 13:00', 'D02', 2),
('PI100', 'KU100', '2449', 'jumat', '17:10 - 18:50', 'B01', 2),
('PI480', 'IK480', '2591', 'senin', '15:30 - 17:10', 'C01', 2),
('PI526', 'IK526', '2901', 'selasa', '07:00 - 09:30', 'C04', 3),
('PK433', 'IK433', '2688', 'kamis', '13:00 - 15:30', 'C06', 3),
('PL545', 'IK545', '2658', 'senin', '09:30 - 12:00', 'C02', 3),
('PT443', 'IK443', '1407', 'senin', '15:30 - 17:10', 'C05', 2),
('PV380', 'IK380', '2591', 'kamis', '17:10 - 19:50', 'C01', 3),
('RD552', 'IK552', '2399', 'kamis', '09:30 - 12:00', 'A01', 3),
('RE320', 'IK320', '1718', 'jumat', '14:40 - 16:20', 'B01', 2),
('RI541', 'IK541', '2901', 'selasa', '09:30 - 12:00', 'C01', 3),
('RL370', 'IK370', '2556', 'kamis', '15:30 - 18:00', 'A01', 3),
('SA300', 'KU300', '2611', 'jumat', '08:40 - 10:20', 'A05', 2),
('SD321', 'IK321', '2399', 'sabtu', '07:00 - 09:30', 'C06', 3),
('SD331', 'IK331', '2687', 'kamis', '07:00 - 09:30', 'A01', 3),
('SD410', 'IK410', '2688', 'rabu', '17:10 - 19:50', 'C05', 3),
('SI531', 'IK531', '1713', 'sabtu', '08:40 - 10:20', 'C08', 3),
('SK534', 'IK534', '2688', 'jumat', '07:00 - 09:30', 'C04', 3),
('SO422', 'IK422', '2586', 'selasa', '13:00 - 16:20', 'C08', 4),
('SP301', 'KU301', '0531', 'jumat', '13:00 - 14:40', 'D03', 2),
('SR492', 'IK492', '2585', 'rabu', '14:40 - 16:20', 'C01', 2),
('SR496', 'IK496', '2586', 'selasa', '09:30 - 12:00', 'C04', 3),
('ST353', 'IK353', '2657', 'kamis', '14:40 - 17:10', 'B01', 3),
('ST510', 'IK510', '2585', 'selasa', '09:30 - 12:00', 'C06', 3),
('TA417', 'IK417', '2400', 'kamis', '15:30 - 18:00', 'C06', 3),
('TI521', 'IK521', '1714', 'jumat', '15:30 - 18:00', 'C01', 3),
('TP502', 'IK502', '2590', 'rabu', '15:30 - 18:00', 'C04', 3),
('TP551', 'IK551', '2770', 'selasa', '07:00 - 09:30', 'C05', 3);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`kode_mata_kuliah`) REFERENCES `mata_kuliah` (`Kode_Mata_Kuliah`),
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`kode_dosen`) REFERENCES `dosen` (`Kode_Dosen`),
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`kode_ruangan`) REFERENCES `ruangan` (`Kode_Ruangan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
