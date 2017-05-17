-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Mei 2017 pada 15.52
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
-- Struktur dari tabel `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `Kode_Dosen` varchar(10) NOT NULL,
  `Nama_Dosen` varchar(50) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `Admin` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Kode_Dosen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`Kode_Dosen`, `Nama_Dosen`, `Password`, `Admin`) VALUES
('0531', 'Pdt. Sohuturon Siregar, M.A.', '0531', 'No'),
('0600', 'Dr. Dharma Kesuma, M.Pd.', '0600', 'No'),
('0641', 'Dr. H. Udin Supriadi, M.Pd.', '0641', 'No'),
('0720', 'Drs. H. Heri Sutarno, M.T.', '0720', 'No'),
('0900', 'Dr. Suherman, M.Pd.', '0900', 'No'),
('1026', 'Dr. Munawar Rahmat, M.Pd.', '1026', 'No'),
('1154', 'Prof. Dr. H. Makhmud Syafe''i M.Ag., M.Pd.I.', '1154', 'No'),
('1289', 'Dr. Yadi Ruyadi, M.Si.', '1289', 'No'),
('1407', 'Drs. H. Eka Fitrajaya Rahman, M.T.', '1407', 'No'),
('1713', 'Dr.H.Enjang Ali Nurdin,M.Kom.', '1713', 'No'),
('1714', 'Drs. Waslaluddin, M.T.', '1714', 'No'),
('1718', 'Prof. Dr. H. Wawan Setiawan , M.Kom', '1718', 'No'),
('1769', 'Dr.Dedi Rohendi, M.T.', '1769', 'No'),
('2147', 'Prof. Dr. H. Munir, M.I.T.', '2147', 'No'),
('2231', 'Yudi Wibisono, S.T., M.T.', '2231', 'No'),
('2398', 'Asep Wahyudin S.Kom., M.T.', '2398', 'No'),
('2399', 'Muhamad Nursalman, S.Si., M.T.', '2399', 'No'),
('2400', 'Rasim, S.T., M.T.', '2400', 'No'),
('2401', 'Rizky Rachman Judhie Putra, M.Kom.', '2401', 'No'),
('2449', 'Dr. Jenuri, S.Ag, M.Pd', '2449', 'No'),
('2556', 'Eddy Prasetyo Nugroho, M.T.', '2556', 'No'),
('2585', 'Dr. Lala Septem Riza, M.T.', '2585', 'No'),
('2586', 'Jajang Kusnendar, S.T., M.T.', '2586', 'No'),
('2590', 'Wahyudi, M.T.', '2590', 'No'),
('2591', 'Herbert, S.Kom., M.T.', '2591', 'No'),
('2611', 'Dr. H. Mulyana Abdullah, M.Pd.I. ', '2611', 'No'),
('2657', 'Harsa Wara Prabawa, S.Si., M.Pd.', '2657', 'No'),
('2658', 'Rosa Ariani Sukamto, M.T.', '2658', 'No'),
('2679', 'Alen Rismayadi, M.Pd.', '2679', 'No'),
('2687', 'Budi Laksono Putro, S.Si., M.T.', '2687', 'No'),
('2688', 'Novi Sofia Fitriasari S.Si., M.T.', '2688', 'Yes'),
('2770', 'Enjun Junaeti, S.Si., M.Si.', '2770', 'No'),
('2805', 'Widi Kusumah, M.Pd.', '2085', 'No'),
('2808', 'Rani Megasari, S.Kom, M.T.', '2808', 'No'),
('2878', 'Yaya Wiyahardi, S.Kom., M.Kom.', '2878', 'No'),
('2895', 'Made Sudami, S.Ag., M.Pd.H.', '2895', 'No'),
('2900', 'Eki Nugraha, S.Pd., M.Kom', '2900', 'No'),
('2901', 'Ria Anggraeni, S.Pd., M.T.', '2901', 'No');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
