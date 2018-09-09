-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 09, 2018 at 12:36 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_anu`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_post`
--

CREATE TABLE `tb_post` (
  `id` int(11) NOT NULL,
  `judul` varchar(125) NOT NULL,
  `isi` text NOT NULL,
  `kategori` enum('kakilangit','wisata','berita') NOT NULL,
  `tgl_post` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cover` text NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_post`
--

INSERT INTO `tb_post` (`id`, `judul`, `isi`, `kategori`, `tgl_post`, `cover`, `slug`) VALUES
(2, 'Lorem Ipsum', '&lt;p class=\'ql-align-justify\'&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut leo eget nunc feugiat ullamcorper. Integer accumsan risus eget imperdiet efficitur. Proin finibus magna quis dui tempor, at elementum nibh feugiat. Ut eu ante nec ligula egestas viverra. Aliquam eget massa ac augue rhoncus tincidunt. Donec augue mi, pulvinar non iaculis vitae, auctor in lectus. Proin sed ex in velit molestie aliquet nec at nisi. Donec sit amet mauris ac neque varius volutpat eget quis est. Pellentesque id consequat nulla. Duis faucibus lectus at odio hendrerit, eget luctus justo varius. Vestibulum interdum volutpat accumsan. Cras et dictum leo, ut rhoncus nunc. Aenean aliquam urna nisl, ac condimentum urna fringilla id.&lt;/p&gt;&lt;p class=\'ql-align-justify\'&gt;Aenean justo purus, convallis dictum viverra ac, laoreet sed erat. Ut a quam enim. Donec nec nisi imperdiet, consectetur urna eget, convallis turpis. Quisque pulvinar ornare efficitur. Cras nec lacus dignissim, tempus nisi malesuada, egestas eros. Nunc quis pretium tortor, eu imperdiet libero. Praesent at libero cursus, ultricies dolor nec, sagittis eros. Nullam eleifend egestas ligula, id fermentum leo pulvinar id. Ut volutpat quam ut sem ullamcorper, hendrerit eleifend odio lobortis. Suspendisse nec enim at tellus congue venenatis sit amet fermentum lectus. Mauris semper leo mauris, sed consequat tellus viverra consectetur. Nam magna sem, hendrerit a arcu sit amet, viverra ultricies mauris. Nulla et cursus nulla. Nunc commodo, nunc vitae laoreet tempus, massa dolor condimentum arcu, eu blandit arcu mauris et ex. Morbi rutrum libero ac odio gravida, in lacinia magna sagittis.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'berita', '2018-09-09 16:25:06', 'source-code-583537_1280.jpg', 'lorem-ipsum'),
(3, 'Kampung Adat Terpopuler 2018', '&lt;h2&gt;1. Balai Kaliki (Kota Payakumbuh)&lt;/h2&gt;&lt;p&gt;&lt;img src=\'https://ayojalanjalan.com/wp-content/uploads/2018/06/API_9-Kampung-adat-9A.jpg\' height=\'1001\' width=\'1001\'&gt;&lt;/p&gt;&lt;p&gt;Perkampungan Tradisional Balai Kaliki di Kota Payakumbuh menjadi bukti nyata bahwa budaya, adat istiadat, Rumah Gadang dan Rangkiang yang masih sangat melekat di kampung ini. Balai Kaliki sangat tepat disebut sebagai Perkampungan Tradisional karena Rumah Gadangnya masih terpelihara. Ditambah lagi dengan Rangkiangnya yang berjejer didepan rumah tersebut. Tidak hanya itu, adanya kesadaran masyarakat di Balai Kaliki mendirikan rumah adat baru untuk ditempati tergolong membanggakan. Rumah Gadang sesuatu yang sakral dalam filosofi kehidupan masyarakat di Minangkabau. Rumah Gadang tempat bermulanya siklus kehidupan ketika lahir ke dunia. Silsilah persukuan di Ranah Minang menjelaskan bahwa setiap Rumah Merupakan merupakan induk dari silsilah keluarga dan suku. Rumah Gadang mempunyai halaman yang terbilang luas, pada salah satu sudut halaman depan Rumah Gadang terdapat sebuah bangunan rumah kecil yang disebut Rangkiang atau Lumbuang (lumbung) dengan bentuk atap (bagonjong) yang sama dengan Rumah Gadang. Rangkiang mengandung filosofi bahwa kehidupan bukan hari ini saja, Rangkiang menjadi lambang hidup hemat dan kesiapan materi yang kokoh untuk kehidupan selanjutnya. Sebab Rangkiang yang didepan rumah gunanya menyimpan padi yang sudah di panen. Ditambah dengan menyimpan buah-buahan yang mungkin disimpan dalam waktu agak lama.&lt;/p&gt;&lt;p&gt;Balai Kaliki sangat kuat dalam memegang budaya, adat istiadat dan segala aspek yang berhubungan dengan tradisi Minangkabau. Acara-acara adat masih dipertahankan oleh masyarakat, pakaian adat pun juga dilestarikan dengan memakainya sekali seminggu pada hari Jum’at, membuat nuansa Minang dengan ciri khas Koto Nan Gadang sangat terasa kental di Balai Kaliki.&lt;/p&gt;', 'berita', '2018-09-09 16:40:11', 'KAMPUNG-ADAT-696x4641.jpg', 'kampung-adat-terpopuler-2018'),
(4, 'Atap Langit?', '&lt;p class=\'ql-align-justify\'&gt;Atap Langit merupakan salah satu kegiatan di Desa Wisata Kakilangit, Mangunan. Wisata yang ditawarkan berupa rumah&amp;nbsp;&lt;em&gt;(homestay)&lt;/em&gt;&amp;nbsp;yang berbasis \'live in\'. Konsep tersebut memberikan pengalaman tinggal bersama antara wisatawan dengan pemilik rumah.&lt;/p&gt;&lt;p class=\'ql-align-justify\'&gt;Pengunjung akan berbagi ruangan dan ikut serta merasakan bagaimana masyarakat desa beraktifitas. Di Atap Langit, anda diajak untuk berinteraksi dan merasakan suasana kekeluargaan.&lt;/p&gt;&lt;p class=\'ql-align-justify\'&gt;Salah Satu Homestay di Desa Wisata Kakilangit&lt;/p&gt;&lt;p class=\'ql-align-justify\'&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;a href=\'https://2.bp.blogspot.com/-btVOuzQOSf0/Waop-xaMk2I/AAAAAAAAADg/7tak5uGTXCsCamJ7luSf-yFiBgloHXLjgCLcBGAs/s1600/nar4.jpg\' target=\'_blank\' style=\'color: rgb(31, 108, 4); background-color: rgb(242, 242, 242);\'&gt;&lt;img src=\'https://2.bp.blogspot.com/-btVOuzQOSf0/Waop-xaMk2I/AAAAAAAAADg/7tak5uGTXCsCamJ7luSf-yFiBgloHXLjgCLcBGAs/s640/nar4.jpg\' height=\'422\' width=\'640\'&gt;&lt;/a&gt;&lt;/p&gt;', 'kakilangit', '2018-09-09 17:11:36', 'iban2.jpg', 'atap-langit?'),
(5, 'Hutan Pinus Dlingo', '&lt;p class=\'ql-align-justify\'&gt;&lt;span style=\'color: rgb(42, 42, 42);\'&gt;Di DI Yogyakarta, salah satu hutan pinus yang jadi buruan para wisatawan adalah Hutan Pinus Dlingo yang terletak di Kabupaten Bantul, Yogyakarta. Hawa yang sejuk dan segar bisa Anda rasakan di sini. Pengunjung yang datang akan disajikan pemandangan pohon pinus yang menjulang tinggi berjajar rapi. Puncak Becici di Desa Muntuk, Kecamatan Dlingo, Kabupaten Bantul, DI Yogyakarta, Rabu (28/6/2017).(KOMPAS.COM/MARKUS YUWONO) Hutan pinus ini juga kerap menjadi lokasi pilihan bagi pasangan yang akan melakukan foro pra-nikah alias pre-wedding. Pengunjung yang datang tidak dikenakan tarif masuk, tetapi hanya membayar parkir untuk kendaraan yang dibawa pengunjung.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\'https://asset.kompas.com/crop/0x22:1000x522/780x390/data/photo/2017/06/28/3168858144.jpg\' alt=\'Puncak Becici di Desa Muntuk, Kecamatan Dlingo, Kabupaten Bantul, DI Yogyakarta, Rabu (28/6/2017).\'&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\'color: rgb(42, 42, 42);\'&gt;Artikel ini telah tayang di&amp;nbsp;&lt;/span&gt;&lt;a href=\'http://kompas.com/\' target=\'_blank\' style=\'color: inherit; background-color: rgb(255, 255, 255);\'&gt;Kompas.com&lt;/a&gt;&lt;span style=\'color: rgb(42, 42, 42);\'&gt;&amp;nbsp;dengan judul \'5 Wisata Hutan Pinus di Indonesia\',&amp;nbsp;&lt;/span&gt;&lt;a href=\'https://travel.kompas.com/read/2018/08/04/102735527/5-wisata-hutan-pinus-di-indonesia\' target=\'_blank\' style=\'color: inherit; background-color: rgb(255, 255, 255);\'&gt;https://travel.kompas.com/read/2018/08/04/102735527/5-wisata-hutan-pinus-di-indonesia&lt;/a&gt;&lt;span style=\'color: rgb(42, 42, 42);\'&gt;.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\'color: rgb(42, 42, 42);\'&gt;Penulis : Mela Arnani&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\'color: rgb(42, 42, 42);\'&gt;Editor : Inggried Dwi Wedhaswary&lt;/span&gt;&lt;/p&gt;', '', '2018-09-09 17:18:27', '0921186tenda3780x390.jpg', 'hutan-pinus-dlingo'),
(6, 'Sekilas Pandang Langit Cerdas', '&lt;p class=\'ql-align-justify\'&gt;&lt;span style=\'color: rgb(0, 0, 0);\'&gt;Kekayaan warisan leluhur di dusun mangunan tidak hanya diabadikan dalam kenangan semata. Anda dapat melihat dan belajar tentang Rumah Limasan, pembuatan&amp;nbsp;&lt;/span&gt;&lt;em style=\'color: rgb(0, 0, 0);\'&gt;thiwul ayu&lt;/em&gt;&lt;span style=\'color: rgb(0, 0, 0);\'&gt;&amp;nbsp;dan metode tradisional masyarakat dalam mengelola pertanian. Disamping itu wisatawan bisa menggali kearifan lokal yang masih terjaga sembari menikmati kearifan dan keindahan negeri di atas awan.&lt;/span&gt;&lt;/p&gt;', 'kakilangit', '2018-09-09 17:24:45', 'stylid-pintu-langit-dahromo-wisatabaru.jpg', 'sekilas-pandang-langit-cerdas'),
(7, 'Bergerak Bersama Langit Ilalang', '&lt;p class=\'ql-align-justify\'&gt;&lt;span style=\'color: rgb(0, 0, 0);\'&gt;Langit Ilalang adalah sebuah payung yang menaungi pemuda-pemudi desa wisata kaki langit agar mampu menghasilkan karya positif. Dalam pelaksanaannya, Langit Ilalang telah menfokuskan pada pelaksanaan kegiatan&amp;nbsp;&lt;/span&gt;&lt;em style=\'color: rgb(0, 0, 0);\'&gt;outbound&lt;/em&gt;&lt;span style=\'color: rgb(0, 0, 0);\'&gt;.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;a href=\'https://1.bp.blogspot.com/-dDb-pv--xtg/WapighsOc7I/AAAAAAAAAEY/wbZW4ij8rV0jqhCirh5_96n7jCTL3blrgCEwYBhgL/s1600/ilalang.jpg\' target=\'_blank\' style=\'color: rgb(255, 120, 0); background-color: rgb(242, 242, 242);\'&gt;&lt;img src=\'https://1.bp.blogspot.com/-dDb-pv--xtg/WapighsOc7I/AAAAAAAAAEY/wbZW4ij8rV0jqhCirh5_96n7jCTL3blrgCEwYBhgL/s320/ilalang.jpg\' height=\'177\' width=\'320\'&gt;&lt;/a&gt;&lt;/p&gt;&lt;p class=\'ql-align-center\'&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'kakilangit', '2018-09-09 17:33:40', 'ilalang_2.jpg', 'bergerak-bersama-langit-ilalang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', '$2y$10$vIH4tfl4S5GAgw2K9.wRvOiGy/OGKmNVSptnMgzf7F5POgkSkKkH2', 'Admin Web');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_post`
--
ALTER TABLE `tb_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_post`
--
ALTER TABLE `tb_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
