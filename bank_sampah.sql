-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Nov 2020 pada 04.37
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank_sampah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(3) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tgl_kegiatan` date NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `tgl_kegiatan`, `deskripsi`, `foto`) VALUES
(1, 'Festival Limbah Bekas', '2020-11-02', 'Festival limbah ini diadakan untuk memperingatkan kepada masyarakat bahwa tak selamanya limbah tidak dapat diolah kembali', 'beritaaaa.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_donasi`
--

CREATE TABLE `detail_donasi` (
  `id_detail_donasi` int(3) NOT NULL,
  `id_donasi` int(3) NOT NULL,
  `id_user` int(3) NOT NULL,
  `jenis_donasi` enum('terpakai','tidak terpakai') NOT NULL,
  `berat` int(3) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_donasi`
--

INSERT INTO `detail_donasi` (`id_detail_donasi`, `id_donasi`, `id_user`, `jenis_donasi`, `berat`, `alamat`, `no_hp`, `foto`) VALUES
(1, 3, 46, 'tidak terpakai', 5, 'Sawojajar', '0123454321', 'botol2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `donasi`
--

CREATE TABLE `donasi` (
  `id_donasi` int(3) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pegawai` int(11) DEFAULT '1',
  `tgl_donasi` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_pengambilan` date NOT NULL,
  `status` enum('TERAMBIL','BELUM') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `donasi`
--

INSERT INTO `donasi` (`id_donasi`, `id_user`, `id_pegawai`, `tgl_donasi`, `tgl_pengambilan`, `status`) VALUES
(3, 46, 1, '2020-11-10 00:00:00', '2020-11-13', 'TERAMBIL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(3) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `judul`, `foto`) VALUES
(1, 'Penghargaan Walikota', 'img1.PNG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `komentar` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_user`, `komentar`) VALUES
(1, 46, 'joss mantap pelayanane');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(3) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `ttl` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `ttl`, `jenis_kelamin`, `alamat`, `no_hp`) VALUES
(1, 'Djo', '2000-02-02', 'L', 'Malioboro', '0123454321');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin`
--

CREATE TABLE `poin` (
  `id_poin` int(3) NOT NULL,
  `id_user` int(3) NOT NULL,
  `total_poin` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `poin`
--

INSERT INTO `poin` (`id_poin`, `id_user`, `total_poin`) VALUES
(1, 46, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `foto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama`, `deskripsi`, `foto`) VALUES
(1, 'Tas Go Green', 'Tas ini dibuat melalui pengolahan limbah bekas yang sudah tidak terpakai', 'produk2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('admin','member') NOT NULL,
  `status` enum('aktif','pasif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `alamat`, `jenis_kelamin`, `no_hp`, `username`, `password`, `level`, `status`) VALUES
(1, 'admin', 'admin', 'L', '01', 'admin', 'admin', 'admin', 'aktif'),
(46, 'user', ' malang', 'L', '081234567890', 'user', 'user', 'member', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `detail_donasi`
--
ALTER TABLE `detail_donasi`
  ADD PRIMARY KEY (`id_detail_donasi`),
  ADD KEY `id_donasi` (`id_donasi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `donasi`
--
ALTER TABLE `donasi`
  ADD PRIMARY KEY (`id_donasi`),
  ADD KEY `id_user` (`id_user`,`id_pegawai`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`id_poin`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `detail_donasi`
--
ALTER TABLE `detail_donasi`
  MODIFY `id_detail_donasi` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `donasi`
--
ALTER TABLE `donasi`
  MODIFY `id_donasi` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `poin`
--
ALTER TABLE `poin`
  MODIFY `id_poin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_donasi`
--
ALTER TABLE `detail_donasi`
  ADD CONSTRAINT `detail_donasi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `detail_donasi_ibfk_2` FOREIGN KEY (`id_donasi`) REFERENCES `donasi` (`id_donasi`);

--
-- Ketidakleluasaan untuk tabel `donasi`
--
ALTER TABLE `donasi`
  ADD CONSTRAINT `donasi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `donasi_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `poin`
--
ALTER TABLE `poin`
  ADD CONSTRAINT `poin_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
