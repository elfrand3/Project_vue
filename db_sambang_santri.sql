-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Okt 2021 pada 08.41
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sambang_santri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sambang_santri`
--

CREATE TABLE `tb_sambang_santri` (
  `id_sambang_santri` int(11) NOT NULL,
  `id_wali` int(11) DEFAULT NULL,
  `id_set_hari` int(11) DEFAULT NULL,
  `niup` int(11) DEFAULT NULL,
  `tgl_daftar_sambang` date DEFAULT NULL,
  `tgl_sambang` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_setting_hari`
--

CREATE TABLE `tb_setting_hari` (
  `id_set_hari` int(11) NOT NULL,
  `id_wilayah` int(11) DEFAULT NULL,
  `id_shif` int(11) DEFAULT NULL,
  `nama_hari` varchar(7) DEFAULT NULL,
  `status` enum('y','t') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_setting_pertemuan`
--

CREATE TABLE `tb_setting_pertemuan` (
  `id_pertemuan` int(11) NOT NULL,
  `jml_pertemuan` varchar(2) DEFAULT NULL,
  `status` enum('y','t') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_setting_tamu`
--

CREATE TABLE `tb_setting_tamu` (
  `id_setting_tamu` int(11) NOT NULL,
  `jml_tamu` varchar(2) DEFAULT NULL,
  `status` enum('y','t') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_shif`
--

CREATE TABLE `tb_shif` (
  `id_shif` int(11) NOT NULL,
  `nama_shif` varchar(45) DEFAULT NULL,
  `jml_santri` varchar(2) DEFAULT NULL,
  `status` enum('y','t') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tamu_sambang`
--

CREATE TABLE `tb_tamu_sambang` (
  `id_tamu` int(11) NOT NULL,
  `id_sambang_santri` int(11) DEFAULT NULL,
  `id_mahrom` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_sambang_santri`
--
ALTER TABLE `tb_sambang_santri`
  ADD PRIMARY KEY (`id_sambang_santri`),
  ADD KEY `sethari_idx` (`id_set_hari`);

--
-- Indeks untuk tabel `tb_setting_hari`
--
ALTER TABLE `tb_setting_hari`
  ADD PRIMARY KEY (`id_set_hari`),
  ADD KEY `idshif_idx` (`id_shif`);

--
-- Indeks untuk tabel `tb_setting_pertemuan`
--
ALTER TABLE `tb_setting_pertemuan`
  ADD PRIMARY KEY (`id_pertemuan`);

--
-- Indeks untuk tabel `tb_setting_tamu`
--
ALTER TABLE `tb_setting_tamu`
  ADD PRIMARY KEY (`id_setting_tamu`);

--
-- Indeks untuk tabel `tb_shif`
--
ALTER TABLE `tb_shif`
  ADD PRIMARY KEY (`id_shif`);

--
-- Indeks untuk tabel `tb_tamu_sambang`
--
ALTER TABLE `tb_tamu_sambang`
  ADD PRIMARY KEY (`id_tamu`),
  ADD KEY `idsambang_idx` (`id_sambang_santri`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_sambang_santri`
--
ALTER TABLE `tb_sambang_santri`
  MODIFY `id_sambang_santri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_setting_hari`
--
ALTER TABLE `tb_setting_hari`
  MODIFY `id_set_hari` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_setting_pertemuan`
--
ALTER TABLE `tb_setting_pertemuan`
  MODIFY `id_pertemuan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_setting_tamu`
--
ALTER TABLE `tb_setting_tamu`
  MODIFY `id_setting_tamu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_shif`
--
ALTER TABLE `tb_shif`
  MODIFY `id_shif` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_sambang_santri`
--
ALTER TABLE `tb_sambang_santri`
  ADD CONSTRAINT `sethari` FOREIGN KEY (`id_set_hari`) REFERENCES `tb_setting_hari` (`id_set_hari`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `tb_setting_hari`
--
ALTER TABLE `tb_setting_hari`
  ADD CONSTRAINT `idshif` FOREIGN KEY (`id_shif`) REFERENCES `tb_shif` (`id_shif`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `tb_tamu_sambang`
--
ALTER TABLE `tb_tamu_sambang`
  ADD CONSTRAINT `idsambang` FOREIGN KEY (`id_sambang_santri`) REFERENCES `tb_sambang_santri` (`id_sambang_santri`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
