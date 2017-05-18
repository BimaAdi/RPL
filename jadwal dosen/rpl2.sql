-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2017 at 06:11 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpl2`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `Kode_Dosen` varchar(10) NOT NULL,
  `Nama_Dosen` varchar(50) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `Admin` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`Kode_Dosen`, `Nama_Dosen`, `Password`, `Admin`) VALUES
('0011', 'Administrator', '0011', 'yes'),
('0531', 'Pdt. Sohuturon Siregar, M.A.', '0531', 'No'),
('0600', 'Dr. Dharma Kesuma, M.Pd.', '0600', 'No'),
('0641', 'Dr. H. Udin Supriadi, M.Pd.', '0641', 'No'),
('0720', 'Drs. H. Heri Sutarno, M.T.', '0720', 'No'),
('0900', 'Dr. Suherman, M.Pd.', '0900', 'No'),
('1026', 'Dr. Munawar Rahmat, M.Pd.', '1026', 'No'),
('1154', 'Prof. Dr. H. Makhmud Syafe\'i M.Ag., M.Pd.I.', '1154', 'No'),
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

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `Kode_Jadwal` varchar(10) NOT NULL,
  `Kode_Mata_Kuliah` varchar(10) NOT NULL,
  `Kode_Dosen` varchar(10) NOT NULL,
  `Hari` varchar(50) NOT NULL,
  `Jam` varchar(50) NOT NULL,
  `Kode_Ruangan` varchar(50) NOT NULL,
  `Sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`Kode_Jadwal`, `Kode_Mata_Kuliah`, `Kode_Dosen`, `Hari`, `Jam`, `Kode_Ruangan`, `Sks`) VALUES
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
('SO422', 'IK422', '2586', 'senin', '13:00 - 15:30', 'C08', 2),
('SP301', 'KU301', '0531', 'jumat', '13:00 - 14:40', 'D03', 2),
('SR492', 'IK492', '2585', 'rabu', '14:40 - 16:20', 'C01', 2),
('SR496', 'IK496', '2586', 'selasa', '09:30 - 12:00', 'C04', 3),
('ST353', 'IK353', '2657', 'kamis', '14:40 - 17:10', 'B01', 3),
('ST510', 'IK510', '2585', 'selasa', '09:30 - 12:00', 'C06', 3),
('TA417', 'IK417', '2400', 'kamis', '15:30 - 18:00', 'C06', 3),
('TI521', 'IK521', '1714', 'jumat', '15:30 - 18:00', 'C01', 3),
('TP502', 'IK502', '2590', 'rabu', '15:30 - 18:00', 'C04', 3),
('TP551', 'IK551', '2770', 'selasa', '07:00 - 09:30', 'C05', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `Kode_Mata_Kuliah` varchar(10) NOT NULL,
  `Nama_Mata_Kuliah` varchar(50) NOT NULL,
  `Sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`Kode_Mata_Kuliah`, `Nama_Mata_Kuliah`, `Sks`) VALUES
('IK301', 'KOMNSEP TEKNOLOGI', 2),
('IK302', 'BAHASA INGGRIS', 2),
('IK310', 'ALGORITMA DAN PEMROGRAMAN 1', 2),
('IK311', 'ALGORITMA DAN PEMEROGRAMAN 2', 3),
('IK320', 'RANGKAIAN ELEKTRONIKA', 2),
('IK321', 'SISTEM DIGITAL', 3),
('IK330', 'BASIS DATA', 2),
('IK331', 'SISTEM BASIS DATA', 3),
('IK350', 'KALKULUS', 3),
('IK353', 'STATISTIKA', 3),
('IK370', 'REKAYASA PERANGKAT LUNAK', 2),
('IK380', 'PEMROGRAMAN VISUAL', 3),
('IK410', 'STRUKTUR DATA', 3),
('IK411', 'ANALISIS DAN DESAIN ALGORITMA', 3),
('IK417', 'TEORI DAN BAHASA AUTOMATA', 3),
('IK419', 'MANAJEMEN PROYEK DAN PERANGKAT LUNAK', 2),
('IK420', 'ARSITEKTUR DAN ORGANISASI KOMPUTER', 3),
('IK421', 'JARINGAN KOMPUTER', 3),
('IK422', 'SISTEM OPERASI', 4),
('IK423', 'ETIKA DAN PROFESI', 2),
('IK428', 'METODOLOGI PENELITIAN', 2),
('IK429', 'INTERAKSI MANUSIA DAN KOMPUTER', 2),
('IK432', 'METODOLOGI BERORIENTASI OBJEK', 3),
('IK433', 'PENGANTAR SISTEM PENDUKUNG KEPUTUSAN', 3),
('IK442', 'APLIKASI KOMPUTER GRAFIS', 3),
('IK443', 'PENGAJARAN BERBASIS TIK', 2),
('IK450', 'LOGIKA INFORMATIKA', 2),
('IK451', 'METODE NUMERIK', 3),
('IK462', 'GRAFIKA KOMPUTER', 3),
('IK480', 'PEMROGRAMAN INTERNET', 2),
('IK481', 'PEMROGRAMAN BERORIENTASI OBJEK', 3),
('IK491', 'KAPITA SELEKTA', 2),
('IK492', 'SEMINAR', 2),
('IK493', 'KOMPUTER DAN MASYARAKAT', 2),
('IK494', 'KEWIRAUSAHAWAN', 2),
('IK495', 'ETIKA PROFESI', 2),
('IK496', 'SEMINAR', 3),
('IK500', 'BELAJAR DAN PEMBELAJARAN ILMU KOMPUTER', 3),
('IK501', 'EVALUASI PEMBELAJARAN ILMU KOMPUTER', 3),
('IK502', 'TELAAH KURIKULUM ILMU KOMPUTER DAN PERENCANAAN PEM', 3),
('IK503', 'MEDIA PEMBELAJARAN ILMU KOMPUTER', 2),
('IK504', 'METODOLOGI PENELITIAN PENDIDIKAN ILMU KOMPUTER', 3),
('IK505', 'KRIPTOGRAFI DAN KEAMANAN SISTEM INFORMASI', 3),
('IK506', 'ADMINISTRASI JARINGAN', 2),
('IK510', 'SISTEM TERDISTRIBUSI', 3),
('IK521', 'TEKNIK INTERFACING', 3),
('IK526', 'PERANCANGAN STRATEGIK SISTEM INFORMASI', 3),
('IK527', 'SISTEM INFORMASI GEOGRAFIS', 3),
('IK528', 'AUDIT SISTEM INFORMASI', 3),
('IK531', 'SISTEM INFORMASI PENDIDIKAN', 3),
('IK534', 'SISTEM PENDUKUNG KEPUTUSAN', 3),
('IK536', 'DATA WAREHOUSE', 3),
('IK541', 'REKAYASA INFORMASI', 3),
('IK543', 'MOBILE PROGRAMMING', 3),
('IK545', 'PROYEK PERANGKAT LUNAK', 3),
('IK551', 'TEKNIK SIMULASI DAN PEMODELAN', 3),
('IK552', 'RANCANGAN SISTEM DIGITAL', 3),
('IK553', 'MIKROELEKTRONIKA', 3),
('IK557', 'MACHINE LEARNING', 3),
('IK560', 'PENGOLAHAN BAHASA ALAMI', 3),
('IK563', 'KECERDASAN BUATAN TERDISTRIBUSI', 3),
('IK565', 'INTERPRETASI DAN PENGOLAHAN CITRA', 3),
('IK566', 'DATA MINING', 3),
('IK571', 'DATA WAREHOUSE DAN MINING', 3),
('IK574', 'E-LEARNING', 3),
('IK580', 'E-LEARNING', 3),
('KD300', 'LANDASAN PENDIDIKAN', 2),
('KD302', 'BIMBINGAN DAN KONSELING', 2),
('KD303', 'KURIKULUM DAN PEMBELAJARAN', 3),
('KU100', 'PENDIDIKAN AGAMA ISLAM', 2),
('KU103', 'PENDIDIKAN AGAMA HINDU', 2),
('KU107', 'PENDIDIKAN LINGKUNGAN SOSIAL, BUDAYA, DAN TEKNOLOG', 2),
('KU108', 'PENDIDIKAN JASMANI DAN OLAHRAGA', 2),
('KU300', 'SISTEM PENDIDIKAN AGAMA ISLAM', 2),
('KU301', 'SEMINAR PENDIDIKAN AGAMA KRISTEN DAN PROTESTAN', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `Kode_Pesan` int(10) NOT NULL,
  `Kode_Dosen` varchar(10) NOT NULL,
  `Isi_Pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`Kode_Pesan`, `Kode_Dosen`, `Isi_Pesan`) VALUES
(1, '2770', 'Test'),
(2, '2770', 'Coba 2');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `Kode_Ruangan` varchar(10) NOT NULL,
  `Nama_Ruangan` varchar(30) NOT NULL,
  `Kapasitas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`Kode_Dosen`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`Kode_Jadwal`),
  ADD KEY `Kode_Mata_Kuliah` (`Kode_Mata_Kuliah`),
  ADD KEY `Kode_Dosen` (`Kode_Dosen`),
  ADD KEY `Kode_Ruangan` (`Kode_Ruangan`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`Kode_Mata_Kuliah`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`Kode_Pesan`),
  ADD KEY `Kode_Dosen` (`Kode_Dosen`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`Kode_Ruangan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `Kode_Pesan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`Kode_Mata_Kuliah`) REFERENCES `mata_kuliah` (`Kode_Mata_Kuliah`),
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`Kode_Dosen`) REFERENCES `dosen` (`Kode_Dosen`),
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`Kode_Ruangan`) REFERENCES `ruangan` (`Kode_Ruangan`);

--
-- Constraints for table `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `pesan_ibfk_1` FOREIGN KEY (`Kode_Dosen`) REFERENCES `dosen` (`Kode_Dosen`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
