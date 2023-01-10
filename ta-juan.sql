-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2022 pada 05.25
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta-juan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
('bonbon', '4311ccd6a83373d2ec344e2ce820382b', 'Juan Kalyzta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kode_pengetahuan` int(11) NOT NULL,
  `kode_kerusakan` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  `mb` double(11,1) NOT NULL,
  `md` double(11,1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kode_pengetahuan`, `kode_kerusakan`, `kode_gejala`, `mb`, `md`) VALUES
(1, 3, 17, 0.7, 0.3),
(2, 3, 29, 0.7, 0.3),
(3, 3, 13, 0.7, 0.2),
(4, 3, 8, 0.9, 0.1),
(5, 3, 6, 1.0, 0.0),
(6, 3, 19, 0.8, 0.2),
(7, 9, 22, 0.9, 0.1),
(8, 9, 10, 0.8, 0.4),
(9, 9, 19, 0.7, 0.4),
(10, 9, 30, 0.7, 0.3),
(11, 2, 1, 0.8, 0.2),
(12, 2, 16, 0.9, 0.1),
(13, 2, 28, 0.7, 0.2),
(14, 2, 25, 0.7, 0.3),
(15, 2, 17, 0.8, 0.2),
(16, 2, 4, 0.7, 0.3),
(17, 2, 7, 0.8, 0.2),
(18, 2, 30, 0.7, 0.3),
(19, 1, 1, 0.8, 0.3),
(20, 1, 24, 0.9, 0.1),
(21, 1, 2, 0.9, 0.1),
(22, 2, 31, 0.8, 0.3),
(23, 1, 31, 0.7, 0.3),
(24, 8, 21, 0.8, 0.2),
(25, 8, 27, 0.8, 0.2),
(26, 8, 14, 0.9, 0.2),
(27, 8, 26, 0.6, 0.2),
(28, 10, 23, 0.9, 0.1),
(29, 10, 10, 0.8, 0.2),
(30, 10, 33, 0.9, 0.2),
(31, 10, 32, 0.9, 0.2),
(32, 5, 17, 0.8, 0.3),
(33, 5, 29, 0.8, 0.2),
(34, 5, 12, 0.8, 0.2),
(35, 5, 13, 0.7, 0.3),
(36, 5, 7, 0.8, 0.2),
(37, 5, 11, 0.8, 0.1),
(38, 6, 27, 0.9, 0.2),
(39, 6, 15, 0.9, 0.4),
(40, 6, 14, 0.9, 0.2),
(41, 6, 26, 0.9, 0.2),
(42, 6, 11, 0.7, 0.3),
(43, 7, 5, 0.9, 0.3),
(44, 7, 3, 0.9, 0.1),
(45, 7, 4, 0.8, 0.3),
(46, 7, 1, 0.7, 0.3),
(47, 4, 1, 0.8, 0.2),
(48, 4, 18, 0.9, 0.2),
(49, 4, 9, 0.8, 0.2),
(50, 4, 12, 0.7, 0.3),
(51, 4, 17, 0.7, 0.3),
(52, 4, 10, 0.7, 0.2),
(53, 4, 31, 0.7, 0.3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
(1, 'cpu hidup tapi tidak ada gambar tertampil di monitor'),
(2, 'Terdapat garis horisontal/vertikal ditengah monitor'),
(3, 'Tidak ada tampilan awal bios'),
(4, 'Muncul Pesan eror pada bios (isi pesan selalu berbeda pada tiap kasus)'),
(5, 'Alarm bios berbunyi'),
(6, 'Terdengar suara aneh pada HDD'),
(7, 'Sering terjadi hang/crash saat menjalankan aplikasi'),
(8, 'Selalu Scandisk ketika booting'),
(9, 'Muncul pesan error saat menjalankan aplikasi grafis'),
(10, 'Device driver informasi tidak terdeteksi dalam device manager'),
(11, 'Tiba-tiba OS melakukan restart otomatis'),
(12, 'Keluarnya blue screen pada OS Windows (isi pesan selalu berbeda pada tiap kasus)'),
(13, 'Muncul pesan error saat pertama OS di load dari HD'),
(14, 'Tidak ada tanda-tanda dari sebagain/seluruh perangkat menyala'),
(15, 'Sering tiba-tiba mati tanpa sebab'),
(16, 'Muncul pesan pada windows, bahwa windows kekurangan memori'),
(17, 'Aplikasi berjalan dengan lambat'),
(18, 'Kinerja grafis terasa sangat berat'),
(19, 'Device tidak terdeteksi dalam bios'),
(20, 'Informasi deteksi yang salah dalam bios'),
(21, 'Hanya sebagaian perangkat yang bekerja'),
(22, 'Sebagain/seluruh karekter inputan mati'),
(23, 'Pointer mouse tidak merespon gerakan mouse'),
(24, 'Tampak blok hitam, dan gambar tidak simetris/ acak'),
(25, 'Keluarbunyi beep panjang pada saat dinyalakan'),
(26, 'Tidak ada indikasi masuk power'),
(27, 'Mati total'),
(28, 'Keluar beep berulang -ulang kali'),
(29, 'Belum sampai windows sudah restart lagi'),
(30, 'Respon lambat pada inputan'),
(31, 'Lampu Indikator Monitor berwarna merah'),
(32, 'Double Klik pada mouse'),
(33, 'Lampu indikator mouse tidak menyala');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL DEFAULT '0',
  `kerusakan` text NOT NULL,
  `gejala` text NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `hasil_nilai` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kerusakan`
--

CREATE TABLE `kerusakan` (
  `kode_kerusakan` int(11) NOT NULL,
  `nama_kerusakan` varchar(50) NOT NULL,
  `det_kerusakan` varchar(500) NOT NULL,
  `srn_kerusakan` varchar(500) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kerusakan`
--

INSERT INTO `kerusakan` (`kode_kerusakan`, `nama_kerusakan`, `det_kerusakan`, `srn_kerusakan`, `gambar`) VALUES
(1, 'MONITOR RUSAK', 'Monitor Tidak Berfungsi dengan baik atau mati total', 'Segera lapor supervisor dan lakukan permintaan barang', 'monitor.jpg'),
(2, 'MEMORI RUSAK', 'Memori card/ RAM tidak berfungsi dengan baik', 'Coba bersihkan pin kuningan pada RAM dengan penghapus atau kain halus, kalau tetap tidak bisa segera lapor supervisior dan lakukan permintaan barang', 'ram.jpg'),
(3, 'Harddisk Rusak', 'Harddisk tidak berfungsi dengan baik atau bad sector', 'Coba lakukan checkdisk/defragment disk, kalau masih tetap berfungsi tidak baik segera lapor spv dan lakukan permintaan barang', 'hdd.jpg'),
(4, 'VGA RUSAK', 'Ketika graphic card tidak berfungsi/mati', 'Untuk sementara coba memakai display onboard motherboard dan segera lakukan permintaan barang ke supervisior', 'vga.jpg'),
(5, 'OS BERMASALAH', 'Windows tidak berjalan lancar', 'Cek semua driver system, jika masih belum bisa segera backup data dan lakukan instalasi ulang OS', 'windows.jpeg'),
(6, 'POWER SUPLEY RUSAK', 'PSU tidak ada daya untuk menyalahkan Komputer', 'Coba jumper psu apa bila tidak ada daya segera lakukan permintaan PSU ke supervisior dan minta dengan daya yang sedikit lebih besar dari sebelumnya', 'psu.jpg'),
(7, 'PROSESOR RUSAK', 'Prosesor sudah tidak berfungsi dengan baik', 'Segera lakukan permintaan barang kalau bisa dengan clock yang lebih tinggi, untuk seterusnya lebih sering lakukan penambahan thermal paste agar prosesor lebih tahan lama', 'procie.jpg'),
(8, 'Motherboard Rusak', 'Slot dan port motherboard banyak yang tidak berfungsi', 'Segera lakukan permintaan barang ke supervisior', 'mobo.jpeg'),
(9, 'Keyboard Rusak', 'Ketika Keyboard tidak terdeteksi / Karakter inputan tidak bisa', 'Lakukan Permintaan barang ke supervisor', 'keyboard.jpg'),
(10, 'Mouse Rusak', 'Ketika Mouse tidak terdeteksi dan pointer mouse tidak berjalan dengan baik', 'Segera lakukan permintaan barang pada supervisior', 'Mouse.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(64) NOT NULL,
  `ket` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`, `ket`) VALUES
(1, 'Pasti ya', ''),
(2, 'Hampir pasti ya', ''),
(3, 'Kemungkinan besar ya', ''),
(4, 'Mungkin ya', ''),
(5, 'Tidak tahu', ''),
(6, 'Mungkin tidak', ''),
(7, 'Kemungkinan besar tidak', ''),
(8, 'Hampir pasti tidak', ''),
(9, 'Pasti tidak', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `kode_post` int(11) NOT NULL,
  `nama_post` varchar(50) NOT NULL,
  `det_post` varchar(15000) NOT NULL,
  `srn_post` varchar(15000) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`kode_post`, `nama_post`, `det_post`, `srn_post`, `gambar`) VALUES
(27, 'Dummy', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra interdum urna. Nam ultrices magna vel malesuada posuere. Fusce neque tortor, eleifend id tortor in, convallis feugiat quam. Etiam facilisis, metus eu dictum malesuada, sem ipsum gravida nisi, vitae volutpat urna felis id dui. Praesent ut lorem ac ex tincidunt tempor. In in arcu consectetur, molestie est id, tempus purus. Sed condimentum augue quis nunc pharetra mattis. Integer est magna, luctus vel magna eget, auctor iaculis mauris. Mauris et convallis arcu, at gravida orci.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra interdum urna. Nam ultrices magna vel malesuada posuere. Fusce neque tortor, eleifend id tortor in, convallis feugiat quam. Etiam facilisis, metus eu dictum malesuada, sem ipsum gravida nisi, vitae volutpat urna felis id dui. Praesent ut lorem ac ex tincidunt tempor. In in arcu consectetur, molestie est id, tempus purus. Sed condimentum augue quis nunc pharetra mattis. Integer est magna, luctus vel magna eget, auctor iaculis mauris. Mauris et convallis arcu, at gravida orci.</p>\r\n', 'LogoLab-Circle.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`kode_pengetahuan`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indeks untuk tabel `kerusakan`
--
ALTER TABLE `kerusakan`
  ADD PRIMARY KEY (`kode_kerusakan`);

--
-- Indeks untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`kode_post`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT untuk tabel `kerusakan`
--
ALTER TABLE `kerusakan`
  MODIFY `kode_kerusakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
