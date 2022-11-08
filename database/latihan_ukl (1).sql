-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Nov 2022 pada 15.19
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan_ukl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `jurusan` varchar(5) NOT NULL,
  `angkatan` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `jurusan`, `angkatan`) VALUES
(5, 'XI RPL 1', 'RPL', 30),
(6, 'XI RPL 2', 'RPL', 30),
(7, 'XI RPL 3', 'RPL', 30),
(8, 'XI RPL 4', 'RPL', 30),
(9, 'XI RPL 5', 'RPL', 30),
(10, 'XI RPL 6', 'RPL', 30),
(11, 'XI RPL 7', 'RPL', 30),
(12, 'XI RPL 8', 'RPL', 30),
(13, 'XI TKJ 1', 'TKJ', 30),
(14, 'XI TKJ 2', 'TKJ', 30),
(16, 'XII RPL 1', 'RPL ', 29),
(17, 'XII RPL 2', 'RPL ', 29),
(18, 'X RPL 1', 'RPL', 31),
(19, 'X RPL 2', 'RPL', 31);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `nisn` int(10) NOT NULL,
  `nama_siswa` varchar(225) NOT NULL,
  `bulan` varchar(225) NOT NULL,
  `tunggakan` int(225) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `tgl_bayar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `nisn`, `nama_siswa`, `bulan`, `tunggakan`, `id_petugas`, `tgl_bayar`) VALUES
(63, 1077, 'Muhammad Radya Iftikhar', 'Maret-2021', 0, 15, '1111-11-11'),
(64, 1079, 'Tatang sutarman', 'Desember-2021', 0, 14, '2022-11-30'),
(65, 1081, 'Raiandra', 'Mei-2021', 0, 18, '9999-09-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `level` enum('petugas','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(14, 'radya', '123', 'Muhammad Radya Iftikhar', 'admin'),
(15, 'hilmy', '123', 'Muhammad Hilmy', 'admin'),
(17, 'asep', '123', 'Muhammad asep', 'admin'),
(18, 'adit', '123', 'Aditya dwi pranata', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nisn` int(10) NOT NULL,
  `nis` char(100) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `username` varchar(100) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `angkatan` int(2) NOT NULL,
  `alamat` text NOT NULL,
  `no_tlp` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `username`, `id_kelas`, `angkatan`, `alamat`, `no_tlp`, `password`) VALUES
(1077, '1234321', 'Muhammad Radya Iftikhar', 'radya', 17, 29, 'Mataram', '087716212000', '202cb962ac59075b964b07152d234b70'),
(1078, '54314', 'Muhammad hilmy', 'hilmy', 12, 31, 'Malang', '08771621123', '202cb962ac59075b964b07152d234b70'),
(1079, '341514', 'Tatang sutarman', 'tatang', 5, 30, 'Malang', '123321123321', '202cb962ac59075b964b07152d234b70'),
(1081, '432141', 'Raiandra', 'rai', 17, 29, 'bumi', '087716212000', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp`
--

CREATE TABLE `spp` (
  `id_spp` int(11) NOT NULL,
  `angkatan` int(2) NOT NULL,
  `tahun` varchar(225) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `spp`
--

INSERT INTO `spp` (`id_spp`, `angkatan`, `tahun`, `nominal`) VALUES
(8, 29, 'Januari-2021', 700000),
(9, 29, 'Februari-2021', 700000),
(10, 29, 'Maret-2021', 700000),
(11, 29, 'April-2021', 700000),
(12, 29, 'Mei-2021', 700000),
(13, 29, 'Juni-2021', 700000),
(14, 29, 'Juli-2021', 700000),
(15, 29, 'Agustus-2021', 700000),
(16, 29, 'September-2021', 700000),
(17, 29, 'Oktober-2021', 700000),
(18, 29, 'November-2021', 700000),
(19, 29, 'Desember-2021', 700000),
(20, 30, 'Januari-2021', 500000),
(21, 30, 'Februari-2021', 500000),
(22, 30, 'Maret-2021', 500000),
(23, 30, 'April-2021', 500000),
(24, 30, 'Mei-2021', 500000),
(25, 30, 'Juni-2021', 500000),
(26, 30, 'Juli-2021', 500000),
(27, 30, 'Agustus-2021', 500000),
(28, 30, 'September-2021', 500000),
(29, 30, 'Oktober-2021', 500000),
(30, 30, 'November-2021', 500000),
(31, 30, 'Desember-2021', 500000),
(32, 31, 'Januari-2021', 300000),
(33, 31, 'Februari-2021', 300000),
(34, 31, 'Maret-2021', 300000),
(35, 31, 'April-2021', 300000),
(36, 31, 'Mei-2021', 300000),
(37, 31, 'Juni-2021', 300000),
(38, 31, 'Juli-2021', 300000),
(39, 31, 'Agustus-2021', 300000),
(40, 31, 'September-2021', 300000),
(41, 31, 'Oktober-2021', 300000),
(42, 31, 'November-2021', 300000),
(43, 31, 'Desember-2021', 300000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `angkatan` (`angkatan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `nisn` (`nisn`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `angkatan` (`angkatan`);

--
-- Indeks untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`),
  ADD KEY `angkatan` (`angkatan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `nisn` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1082;

--
-- AUTO_INCREMENT untuk tabel `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ibfk_3` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`angkatan`) REFERENCES `kelas` (`angkatan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD CONSTRAINT `spp_ibfk_1` FOREIGN KEY (`angkatan`) REFERENCES `kelas` (`angkatan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
