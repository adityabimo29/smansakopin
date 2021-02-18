-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 11:06 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wiu_smansakopin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` enum('admin','staf','super','') COLLATE latin1_general_ci NOT NULL DEFAULT 'staf',
  `status` enum('Aktif','Blokir') COLLATE latin1_general_ci NOT NULL DEFAULT 'Aktif',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `status`, `id_session`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Jogja Media Web', 'team.jmw111@gmail.com', '0816-4266-787', 'admin', 'Aktif', '32222');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(5) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `judul_seo` varchar(250) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `keyword` varchar(4000) NOT NULL,
  `description` varchar(1560) NOT NULL,
  `tgl` date NOT NULL,
  `status` enum('aktif','tidak aktif','Breaking News','Pilihan Editor') NOT NULL,
  `unggulan` enum('No','Yes') NOT NULL,
  `dilihat` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `id_admin`, `judul`, `judul_seo`, `gambar`, `deskripsi`, `keyword`, `description`, `tgl`, `status`, `unggulan`, `dilihat`) VALUES
(80, 2, 'Curabitur non risus ut odio faucibus rhoncus convallis id risus', 'curabitur-non-risus-ut-odio-faucibus-rhoncus-convallis-id-risus', 'curabitur-non-risus-ut-odio-faucibus-rhoncus-convallis-id-risus-38.jpeg', '<p>Ut rutrum urna hendrerit dolor mattis, tempus tempor magna tristique. Praesent ante ipsum, imperdiet ac justo ac, pharetra porttitor elit. Suspendisse potenti. Integer luctus, mi vitae porta efficitur, orci nulla egestas purus, quis tempus eros ipsum quis sem. Nam imperdiet lacus tellus. Praesent consequat lacus a risus faucibus congue. Donec at dolor malesuada, efficitur dolor non, tristique diam. Mauris et enim convallis, pharetra lorem ut, rutrum dui. Cras vitae nisl quis purus maximus sagittis. Sed consectetur ultrices nisi id molestie. Aliquam faucibus sed ex vitae laoreet. Curabitur sollicitudin dignissim laoreet. Proin facilisis mauris diam, eu condimentum mauris interdum non. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec porttitor dapibus tempus.</p>\r\n\r\n<p>Nunc sagittis eros eget luctus placerat. Nam facilisis arcu in tellus mollis, et consequat ipsum tincidunt. Aliquam elementum erat vitae nunc ornare, euismod eleifend ipsum consectetur. Nulla facilisi. Vestibulum scelerisque nibh quam, interdum gravida mi bibendum nec. Nullam placerat cursus sem, sit amet congue ante dapibus quis. Vestibulum tortor neque, facilisis ut metus in, venenatis molestie erat.</p>\r\n\r\n<p>Nulla facilisi. Integer eu ante pellentesque, fringilla purus sed, volutpat tellus. Phasellus non ornare lectus. In at ex rutrum, dictum odio ut, posuere nunc. Nullam vel efficitur dolor. Fusce id orci tincidunt dui scelerisque laoreet. Donec nec molestie ipsum. Fusce id enim quis ipsum efficitur venenatis a eu metus. Aenean vitae quam nisl. Maecenas ac risus et magna finibus convallis. Integer in justo eleifend, tristique sem non, dignissim metus. Ut dignissim urna ornare, convallis sem ac, commodo dolor. Maecenas molestie at ligula ac varius.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam vitae mollis tellus. Quisque mattis magna neque, et imperdiet mi lobortis ac. Praesent eget eros nec lacus sollicitudin efficitur. Curabitur eu lacus maximus, egestas risus fermentum, vestibulum nunc. Aliquam quis ex ac ex pulvinar faucibus eget sit amet sapien. Etiam a dui urna. Maecenas ligula est, dapibus sed malesuada laoreet, semper eu mauris. Sed egestas varius ornare. In pharetra mattis pretium. Mauris nibh dui, sollicitudin at tortor non, laoreet gravida libero. Sed faucibus, elit at ullamcorper porta, dolor libero vehicula massa, et pellentesque ipsum diam sit amet ligula. Ut auctor ut dolor sit amet ultrices. Curabitur non risus ut odio faucibus rhoncus convallis id risus. Curabitur arcu erat, volutpat bibendum ullamcorper at, hendrerit sit amet nisi.</p>\r\n\r\n<p>Aliquam hendrerit risus et nulla imperdiet, vitae facilisis libero fermentum. Mauris sed placerat urna. Donec sit amet scelerisque ipsum. Phasellus ultricies laoreet ipsum, vitae posuere felis hendrerit id. Aliquam tincidunt dictum mi in pharetra. Nulla condimentum mi rhoncus, efficitur nibh et, tristique ligula. Proin tincidunt ac neque eu porta. Nullam sollicitudin justo diam. Ut vitae ultrices libero, a bibendum urna. Sed eget massa quis enim scelerisque molestie sed ornare diam. Etiam sapien ipsum, auctor quis augue non, vestibulum tincidunt est.</p>\r\n', '', '', '2021-02-15', 'aktif', 'No', 2),
(81, 2, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra', 'class-aptent-taciti-sociosqu-ad-litora-torquent-per-conubia-nostra', 'class-aptent-taciti-sociosqu-ad-litora-torquent-per-conubia-nostra-21.jpeg', '<p>Nunc euismod nulla a odio pharetra aliquam. Aliquam semper arcu ac enim iaculis, sit amet lobortis magna scelerisque. Sed viverra risus sit amet mi fermentum, quis sagittis enim euismod. Integer condimentum urna et elit iaculis, quis gravida ante aliquet. Donec velit velit, sodales id massa eu, fringilla aliquet turpis. Aliquam erat volutpat. Curabitur at turpis blandit, finibus sapien vulputate, cursus magna. Nulla facilisi. Nam egestas arcu accumsan, egestas ante id, accumsan urna. In molestie, massa sed ultrices semper, mauris sapien laoreet sem, sed elementum tellus lectus ac libero. Nulla risus leo, dignissim tempus congue sit amet, finibus vitae felis. Phasellus pellentesque lacus in diam consectetur vestibulum. Cras sit amet ex bibendum, consectetur ante lobortis, rhoncus nunc. Nunc congue eleifend elit quis porttitor.</p>\r\n\r\n<p>Suspendisse imperdiet nulla eu lorem posuere rhoncus. Ut laoreet porta mi. Nulla pulvinar fermentum mauris, quis ullamcorper nibh viverra eget. Praesent id nisl et tortor pretium finibus eget non ex. Curabitur pellentesque a purus vitae consectetur. Sed hendrerit lacus purus, ullamcorper eleifend ipsum pretium gravida. Suspendisse a consectetur elit, in placerat leo. Nunc nunc massa, imperdiet a molestie ut, luctus non diam. Nullam eu felis lobortis, sodales est at, maximus tellus. Morbi ornare erat non turpis lacinia varius. Aenean nec consectetur odio. Integer nibh ipsum, eleifend a ornare et, consequat et ligula. Nunc at aliquam enim. Sed laoreet dictum nisl, non lobortis justo.</p>\r\n\r\n<p>Nunc sem arcu, sodales sit amet ullamcorper nec, lobortis eu leo. Donec ultricies magna et commodo accumsan. Fusce porttitor tristique lacus, ac vestibulum diam porta a. Aliquam erat volutpat. Nam ut porttitor ligula. Etiam ut consequat nibh. In quis vestibulum ipsum. Vestibulum iaculis ac ex id auctor. Nullam bibendum quam ut nunc pellentesque, in aliquet ante molestie.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam placerat justo est, a condimentum sapien tempor ut. Nam accumsan erat quis dui elementum, eu aliquet arcu dignissim. Donec hendrerit nisl quis massa volutpat maximus a ultricies purus. In vitae pharetra odio, et lobortis quam. Fusce semper ex quis felis rhoncus viverra. Curabitur gravida vitae leo et hendrerit.</p>\r\n\r\n<p>Phasellus ac pretium nisl. Suspendisse ante mauris, maximus sed vehicula volutpat, facilisis nec augue. In aliquet nibh lobortis, accumsan ligula venenatis, posuere nibh. Vestibulum in purus interdum, scelerisque magna a, semper lectus. Pellentesque mattis egestas mi, eget commodo eros volutpat sed. Curabitur in convallis risus, aliquam fermentum lectus. Praesent porttitor sem et enim commodo bibendum eget tristique velit. Aenean vel congue elit. Sed arcu nisl, sodales ac aliquam et, eleifend a diam. Integer vitae libero vel eros mattis rutrum eu sed nisl.</p>\r\n\r\n<p>Pellentesque finibus turpis in facilisis dictum. Nullam maximus orci sit amet tellus vehicula rutrum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla condimentum, mi sit amet sagittis rhoncus, leo nibh pellentesque massa, a pharetra nisi enim vel lacus. Sed at tellus lectus. Cras laoreet ligula non eros suscipit, non hendrerit augue pellentesque. Aenean non ullamcorper neque, ac mollis metus.</p>\r\n', '', '', '2021-02-15', 'aktif', 'No', 18),
(82, 2, ' Praesent vel sem a mauris ornare dictum sed vel est', '-praesent-vel-sem-a-mauris-ornare-dictum-sed-vel-est', '-praesent-vel-sem-a-mauris-ornare-dictum-sed-vel-est-54.jpeg', '<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse aliquet pharetra posuere. Aliquam erat volutpat. Etiam tellus augue, laoreet sed euismod vitae, porta nec neque. Proin sed massa vel dui efficitur tempor. Suspendisse eget velit molestie, ornare neque quis, finibus leo. Phasellus volutpat, est vitae dignissim posuere, diam sapien semper nisi, nec imperdiet nunc ante vitae augue. Mauris rhoncus quam blandit quam ullamcorper, eget convallis libero tincidunt. Quisque laoreet, dolor ut porttitor placerat, eros urna hendrerit ex, at ullamcorper sem nunc id quam. Proin tincidunt porta consequat. In hac habitasse platea dictumst. Donec dignissim lacus eget aliquet hendrerit. Etiam vitae enim ullamcorper, vestibulum lorem tristique, ornare lectus. Nulla euismod justo vel dignissim feugiat. Morbi viverra risus id vestibulum porta.</p>\r\n\r\n<p>In in enim vel sem eleifend finibus. Vivamus scelerisque massa vel ex lacinia, vitae vestibulum odio molestie. Duis congue elit et neque mattis, eget scelerisque tortor tincidunt. Ut dapibus, elit in consequat bibendum, nibh tellus tempor lectus, sit amet iaculis ante diam ultrices dui. Vivamus fermentum pharetra commodo. Phasellus et ipsum sit amet quam dictum aliquam. Sed dictum nibh sapien, id suscipit quam blandit at. Nulla in convallis arcu. Nunc suscipit, felis et tincidunt tempor, neque dui sollicitudin eros, non sagittis lacus ante eu lectus. Proin quis massa vehicula mauris pretium ornare id quis orci. Nunc congue nulla quis lectus porta ornare. Donec sed condimentum mauris, sit amet faucibus erat. Proin scelerisque condimentum risus, vitae hendrerit metus molestie ut. Ut maximus scelerisque quam sed maximus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc rhoncus libero et dui venenatis, sit amet pharetra orci semper.</p>\r\n\r\n<p>Mauris scelerisque tempus suscipit. Praesent egestas, ipsum vitae porttitor egestas, augue erat porta eros, et rhoncus mauris ex et ex. Phasellus massa lacus, laoreet sed orci lobortis, vestibulum dignissim mauris. Nunc quis magna leo. Nullam dapibus, leo nec molestie varius, purus arcu posuere orci, nec dapibus ligula ipsum sit amet sapien. Integer fringilla quam urna, at tempor tellus interdum quis. In nec odio sollicitudin, efficitur nisi sit amet, mollis magna. Duis vitae leo eu elit rhoncus pellentesque id vitae risus. Sed semper faucibus magna, finibus vehicula justo pellentesque vulputate.</p>\r\n\r\n<p>Cras accumsan velit nec eros scelerisque, congue ullamcorper nulla facilisis. Praesent vel sem a mauris ornare dictum sed vel est. Mauris interdum nunc justo, vel euismod lectus placerat egestas. Praesent in arcu leo. Nullam congue sollicitudin turpis pellentesque dictum. Mauris at sollicitudin enim, ac egestas enim. Sed augue lacus, rutrum at feugiat sed, luctus at purus. Fusce turpis dui, commodo in mi eu, pharetra euismod urna. Morbi mattis in ligula quis tincidunt. Mauris in lectus sed quam faucibus dignissim ac et tellus. Etiam molestie massa non nisi pellentesque congue. Proin sodales euismod dignissim. Aliquam erat volutpat. Mauris pulvinar ipsum id urna interdum placerat id ut neque.</p>\r\n', '', '', '2021-02-15', 'aktif', 'No', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL,
  `nama` varchar(400) NOT NULL,
  `url` varchar(600) NOT NULL,
  `gambar` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `nama`, `url`, `gambar`) VALUES
(1, 'Banner 1', 'https://www.labelklambi.com/kategori-label-printing-3', 'banner-1-30.jpeg'),
(2, 'Banner 2', 'https://www.hijup.com/id/shirt/70082-vinka-shirt', 'banner-2-88.jpeg'),
(3, 'Banner 3', 'https://jmw.my.id/demo/windward/collections', 'banner-3-40.jpeg'),
(4, 'Banner 4', 'https://tokoaqim.com/', 'banner-4-60.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `subject` varchar(400) NOT NULL,
  `message` text NOT NULL,
  `tgl` datetime NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_contact`, `name`, `email`, `subject`, `message`, `tgl`, `is_read`) VALUES
(6, 'Aleksander Petruk', 'admin@lopotia.com', 'Kerja Sama Antar Perusahaan', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2021-02-08 16:46:51', 1),
(9, 'Eko Saputra', 'ekospt2307@gmail.com', 'Event Skala Internasional', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-02-08 16:57:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id_email` int(11) NOT NULL,
  `host` varchar(400) NOT NULL,
  `username` varchar(400) NOT NULL,
  `password` varchar(400) NOT NULL,
  `port` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id_email`, `host`, `username`, `password`, `port`) VALUES
(1, 'mail.lopotia.com', 'tako@lopotia.com', 'jogjamediaweb', 465);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `nama` varchar(400) NOT NULL,
  `gambar` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `nama`, `gambar`) VALUES
(1, 'https://www.instagram.com/label_klambi/', 'httpswwwinstagramcomlabel_klambi-8.jpeg'),
(2, 'https://www.instagram.com/label_klambi/', 'httpswwwinstagramcomlabel_klambi-50.jpeg'),
(3, 'https://www.instagram.com/label_klambi/', 'httpswwwinstagramcomlabel_klambi-37.jpeg'),
(4, 'https://www.instagram.com/label_klambi/', 'httpswwwinstagramcomlabel_klambi-66.jpeg'),
(5, 'https://www.instagram.com/label_klambi/', 'httpswwwinstagramcomlabel_klambi-78.jpeg'),
(6, 'https://www.instagram.com/label_klambi/', 'httpswwwinstagramcomlabel_klambi-75.jpeg'),
(7, 'https://www.instagram.com/label_klambi/', 'httpswwwinstagramcomlabel_klambi-80.jpeg'),
(8, 'https://www.instagram.com/label_klambi/', 'httpswwwinstagramcomlabel_klambi-72.jpeg'),
(9, 'https://www.instagram.com/label_klambi/', 'httpswwwinstagramcomlabel_klambi-25.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_produk`
--

CREATE TABLE `gallery_produk` (
  `id_gallery` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `judul` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_produk`
--

INSERT INTO `gallery_produk` (`id_gallery`, `gambar`, `id_produk`, `judul`) VALUES
(48, 'label-printing69.jpeg', 58, 'Gambar 3'),
(49, 'label-printing86.jpeg', 58, 'Gambar 2');

-- --------------------------------------------------------

--
-- Table structure for table `kategorix`
--

CREATE TABLE `kategorix` (
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `judul_seo` varchar(400) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategorix`
--

INSERT INTO `kategorix` (`id_kategori`, `judul`, `judul_seo`, `deskripsi`, `gambar`) VALUES
(14, 'Promo', 'promo', NULL, 'promo-90.jpeg'),
(16, 'Label Katun', 'label-katun', NULL, 'label-sablon-65.jpeg'),
(18, 'Label Katun Baby', 'label-katun-baby', NULL, 'label-katun-baby-77.jpeg'),
(19, 'Label Satin Impor', 'label-satin-impor', NULL, 'label-satin-impor-59.jpeg'),
(20, 'Label Woven Bordir', 'label-woven-bordir', NULL, 'label-woven-bordir-25.jpeg'),
(21, 'Hangtag', 'hangtag', NULL, 'hangtag-53.jpeg'),
(22, 'Accessories', 'accessories', NULL, 'accessories-36.jpeg'),
(23, 'Buku Tamu', 'buku-tamu', NULL, 'buku-tamu-36.jpeg'),
(24, 'Packaging', 'packaging', NULL, 'label-katun-40.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `keunggulan`
--

CREATE TABLE `keunggulan` (
  `id_keunggulan` int(5) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `gambar` varchar(120) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `tgl_update` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keunggulan`
--

INSERT INTO `keunggulan` (`id_keunggulan`, `judul`, `deskripsi`, `telp`, `gambar`, `url`, `tgl_update`) VALUES
(1, 'Ramah di Kantong', 'Minimal order untuk label hanya 1Rol, selain itu harga ramah di kantong, kualitas kami utamakan. Jadi buat kamu para pemula ini STARTUP FRIENDLY banget.', NULL, 'ramah-di-kantong-32.png', NULL, '2020-10-16'),
(2, 'Proses Produksi', 'Proses produksi kami tepat waktu, 10-14hari kerja.', NULL, 'proses-produksi-31.png', NULL, '2020-10-16'),
(3, 'Customer Service', 'Didukung oleh Customer Service ramah, dan fast respon siap melayani dan memproses pesanan Anda.', NULL, 'customer-service-57.png', NULL, '2020-08-12'),
(4, 'Banya Pilihan', 'Banyak model dan pilihan bahan yang bisa Anda pilih dari beberapa kategori label kami : Woven, Katun, Katun Baby, Satin Impor, Hangtag, Packaging dll', NULL, 'banya-pilihan-36.png', NULL, '2020-11-14');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `nama_seo` varchar(200) DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `hapus` enum('Yes','No') DEFAULT NULL,
  `jenis_modul` enum('Text','Textarea','Judul & Text','Judul & Textarea','Text Images','Textarea Images','Images','Video','Select') DEFAULT NULL,
  `tgl_update` datetime DEFAULT NULL,
  `tampil` enum('Ya','Tidak') DEFAULT NULL,
  `status` enum('On','Off') DEFAULT NULL,
  `no_urut` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama`, `nama_seo`, `gambar`, `deskripsi`, `hapus`, `jenis_modul`, `tgl_update`, `tampil`, `status`, `no_urut`) VALUES
(0, 'Nama Web', 'nama-web', '', 'Label Klambi,label-klambi,label-klambi,label-klambi', 'No', '', '2017-11-01 02:22:09', 'Tidak', 'On', 0),
(1, 'Logo Web', 'logo-web', '3690image.jpg', '', 'No', 'Images', '2021-02-16 00:00:00', 'Ya', 'On', 1),
(2, 'Kota', NULL, NULL, '501', 'No', 'Select', '2020-10-27 00:00:00', 'Tidak', 'On', 5),
(3, 'Footer Information', 'home-footer', '', '<p>Sakya Label</p>\r\n\r\n<p>Hubungi Kami :<br />\r\n(WA / SMS / Telp)<br />\r\n085-729-585-548<br />\r\nEmail :&nbsp;<a href=\"mailto:evalutfina@gmail.com\">evalutfina@gmail.com</a></p>\r\n\r\n<p>Jl. Brojogaten Raya No. 25&nbsp;Baturetno, Banguntapan, Bantul&nbsp;Yogyakarta 55197</p>\r\n', 'No', 'Textarea', '2020-11-14 00:00:00', 'Tidak', 'Off', 3),
(7, 'No WA', 'no-wa', '', '6281329001631', 'No', 'Text', '2021-02-17 00:00:00', 'Ya', 'On', 7),
(9, 'Email', 'email', '', 'evalutfina@gmail.com', 'No', 'Text', '2020-11-16 00:00:00', 'Tidak', 'On', 9),
(10, 'Twitter', 'email', '', 'https://twitter.com', 'No', 'Text', '2020-10-16 00:00:00', 'Tidak', 'On', 3),
(18, 'Footer Pembayaran', 'visitor-embed', '', '<p><img alt=\"\"\r\n                                src=\"https://1.bp.blogspot.com/-WXYovrIgRis/XnSN08yNsxI/AAAAAAAAAZs/6PR5IUAbDOsM3WZFD-EXR7UeO_bNlIybACLcBGAsYHQ/s320/1200px-BNI_logo.svg.png\"\r\n                                style=\"height:33px; width:100px\">&nbsp;<img alt=\"\"\r\n                                src=\"https://1.bp.blogspot.com/-ZiMKM3w_DQs/XmnM9ZkAqKI/AAAAAAAAAY0/Ctjc9bE4xsE7FsUfXMRan_R-ZOxt7hdjQCLcBGAsYHQ/s320/1200px-BCA_logo.svg.png\"\r\n                                style=\"height:32px; width:100px\"></p>\r\n\r\n                        <p>Setelah melakukan pembayaran diharapkan segera konfirmasi</p>', 'No', 'Textarea', '2021-02-17 00:00:00', 'Ya', 'On', 3),
(19, 'Footer Pengiriman', 'visitor-counter', '', '<p><img alt=\"\" src=\"https://1.bp.blogspot.com/-fwtVBbL9r94/XnHvo7K4ZCI/AAAAAAAAAZI/ieK4XnQPR8M_9ZTiUEOKgg8I5mVVtFHeACLcBGAsYHQ/s1600/logo-jasa-kirim-pos-jne-tiki-jnt-jne.png\" style=\"width:100%\" /></p>\r\n', 'No', 'Textarea', '2021-02-17 00:00:00', 'Ya', 'On', 3),
(20, 'Tawkto Script', 'fb', '', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/602cea799c4f165d47c4200b/1eunn7ujr\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 'No', 'Text', '2021-02-17 00:00:00', 'Ya', 'On', 3),
(22, 'Logo WEB Small', 'logo-web-small', '', 'logo_new@2x.png', 'No', 'Images', '2017-11-21 22:56:16', 'Tidak', 'Off', 0),
(77, 'Title', 'title', '', 'Jomblang Cave Tour', 'No', '', '2017-10-26 06:07:05', 'Tidak', 'Off', 0),
(78, 'Keywords', 'keywords', '', 'Keyword Adisukma', 'No', 'Text', '2017-12-20 00:07:46', 'Tidak', 'Off', 0),
(79, 'Description', 'description', '', 'Deskripsi Adisukma', 'No', 'Text', '2017-12-20 00:07:55', 'Tidak', 'Off', 0),
(80, 'Footer Contact', NULL, '', '<p>Workshop Label Klambi<br />\r\nGunungan RT 04, Gunungan, Pleret, Bantul Yogyakarta<br />\r\n(banner www.labelklambi.com)<br />\r\n<br />\r\nKonsultasi &amp; Pemesanan&nbsp;hubungi:<br />\r\n0813-2900-1631&nbsp;(WA/SMS/Tlp)<br />\r\nLine id : Labelklambi<br />\r\n<a href=\"mailto:labelklambi@gmail.com\">labelklambi@gmail.com</a></p>\r\n', NULL, 'Textarea', '2021-02-17 00:00:00', 'Ya', 'On', 2),
(81, 'Contact Map', NULL, '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.3427295520305!2d110.21288036611843!3d-7.753426238663885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zN8KwNDUnMTIuNCJTIDExMMKwMTInNTEuOSJF!5e0!3m2!1sid!2sid!4v1612943458573!5m2!1sid!2sid\" width=\"100%\" height=\"100\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'No', 'Text', '2021-02-10 00:00:00', 'Ya', 'On', 8),
(82, 'No telp', NULL, '', '081329001631', 'No', 'Text', '2021-02-17 00:00:00', 'Ya', 'On', 4),
(83, 'Pesan Promo', NULL, '', 'Kami menerima pesanan dan pengiriman label dari dan ke seluruh wilayah di Indonesia. Jadi tunggu apa lagi? segera buat label usaha fashion anda disini', 'No', 'Text', '2021-02-17 00:00:00', 'Ya', 'On', NULL),
(84, 'Script Head', NULL, '', '<!-- Global site tag (gtag.js) - Google Ads: 694515717 -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=AW-694515717\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'AW-694515717\');\r\n</script>\r\n\r\n\r\n\r\n		\r\n		<!-- Global site tag (gtag.js) - Google Ads: 598387016 -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=AW-598387016\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'AW-598387016\');\r\n</script>\r\n<!-- Event snippet for Kunjungan halaman conversion page -->\r\n<script>\r\n  gtag(\'event\', \'conversion\', {\'send_to\': \'AW-598387016/HR-zCPTa5d0BEMjSqp0C\'});\r\n</script>\r\n		<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-W72WTLW\');</script>\r\n<!-- End Google Tag Manager --> \r\n		\r\n		<meta name=\"google-site-verification\" content=\"g-x_R9sZtd6uuHmFqCKoGdbLN7RzIiLxzlIgXeLxzrM\" />', 'No', 'Text', '2020-12-30 00:00:00', 'Tidak', 'On', 5),
(85, 'Script Body', NULL, '', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-W72WTLW\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->\r\n		<!-- Navigation -->', 'No', 'Text', '2020-12-30 00:00:00', 'Tidak', 'On', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orderan`
--

CREATE TABLE `orderan` (
  `id_orderan` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `telp` varchar(200) NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `provinsi` text NOT NULL,
  `kota` text NOT NULL,
  `kurir` varchar(200) NOT NULL,
  `level_ongkir` text NOT NULL,
  `barang` text DEFAULT NULL,
  `biaya` text DEFAULT NULL,
  `ongkir` text DEFAULT NULL,
  `total_biaya` text DEFAULT NULL,
  `catatan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderan`
--

INSERT INTO `orderan` (`id_orderan`, `nama`, `telp`, `rekening`, `email`, `alamat`, `provinsi`, `kota`, `kurir`, `level_ongkir`, `barang`, `biaya`, `ongkir`, `total_biaya`, `catatan`) VALUES
(9, 'Vita', '08132123', '( Contoh BCA ) - 123445678 - An. Contoh Nama', 'vita@Gmail.com', 'Seoul', 'DI Yogyakarta', 'Bantul', 'pos', '[Paket Kilat Khusus ] - Rp. 7.000 - Estimasi 1-2 HARI hari', '-Label Pengiriman  * 1 \r\n\r\n-Katun Krem 1,3cm  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 143.000\r\n\r\n', 'Ongkir : Rp. 7.000\r\n\r\n', 'Total Harga : Rp. 150.000\r\n\r\n', 'Warnanya ungu ya mba'),
(10, 'Suga', '08132123', '( Contoh BCA ) - 123445678 - An. Contoh Nama', 'aaa@gmail.com', 'daegu', 'DKI Jakarta', 'Jakarta Barat', 'pos', '[Paket Kilat Khusus ] - Rp. 15.000 - Estimasi 1-2 HARI hari', '-Label Pengiriman  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 28.000\r\n\r\n', 'Ongkir : Rp. 15.000\r\n\r\n', 'Total Harga : Rp. 43.000\r\n\r\n', 'Ungu ya mba, kalo gada pink'),
(11, 'Dora', '08132123', '( Contoh BCA ) - 123445678 - An. Contoh Nama', 'vita@Gmail.com', 'solo', 'Jawa Tengah', 'Karanganyar', 'tiki', '[ECO ] - Rp. 11.000 - Estimasi 5 hari', '-Hangtag Samson Kraft Papper  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 30.000\r\n\r\n', 'Ongkir : Rp. 11.000\r\n\r\n', 'Total Harga : Rp. 41.000\r\n\r\n', 'Font estetik'),
(12, 'eva luthfina', '085729585548', '( Contoh BCA ) - 123445678 - An. Contoh Nama', 'evalufina@gmail.com', 'brojogaten', 'DI Yogyakarta', 'Bantul', 'tiki', '[REG ] - Rp. 11.000 - Estimasi 2 hari', '-Katun Krem 1,5cm  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 120.000\r\n\r\n', 'Ongkir : Rp. 11.000\r\n\r\n', 'Total Harga : Rp. 131.000\r\n\r\n', ''),
(13, 'budi', '083156576176', '( Contoh BCA ) - 123445678 - An. Contoh Nama', 'porusruby@gmail.com', 'janti', 'DI Yogyakarta', 'Sleman', 'tiki', '[ECO ] - Rp. 7.000 - Estimasi 4 hari', '-Label Pengiriman  * 2 \r\n\r\n', 'Sub Total Harga : Rp. 56.000\r\n\r\n', 'Ongkir : Rp. 7.000\r\n\r\n', 'Total Harga : Rp. 63.000\r\n\r\n', 'saya test saja'),
(14, 'andi', '083156576176', '( Contoh BCA ) - 123445678 - An. Contoh Nama', 'porusruby@gmail.com', 'budi', 'DI Yogyakarta', 'Gunung Kidul', 'jne', '[OKE ] - Rp. 8.000 - Estimasi 3-4 hari', '-PROMO PAKET A  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 275.000\r\n\r\n', 'Ongkir : Rp. 8.000\r\n\r\n', 'Total Harga : Rp. 283.000\r\n\r\n', 'ini test aja bro'),
(15, 'Pije', '081999900701', '( Contoh BCA ) - 123445678 - An. Contoh Nama', '', 'Gunungan rto4 pleret', 'DKI Jakarta', 'Jakarta Barat', 'jne', '[REG ] - Rp. 16.000 - Estimasi 2-3 hari', '-PROMO PAKET A  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 275.000\r\n\r\n', 'Ongkir : Rp. 16.000\r\n\r\n', 'Total Harga : Rp. 291.000\r\n\r\n', ''),
(16, 'EVA LUTHFINA ROHMATIKA', '09878', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'evalufina@gmail.com', 'brojogaten', 'DI Yogyakarta', 'Bantul', 'jne', '[CTC ] - Rp. 6.000 - Estimasi 1-2 hari', '-PROMO PAKET A  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 275.000\r\n\r\n', 'Ongkir : Rp. 6.000\r\n\r\n', 'Total Harga : Rp. 281.000\r\n\r\n', ''),
(17, 'EVA LUTHFINA ROHMATIKA', '09878', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'evalufina@gmail.com', 'jl. brojogaten', 'DI Yogyakarta', 'Bantul', 'jne', '[CTC ] - Rp. 6.000 - Estimasi 1-2 hari', '-Label Katun Krem 1,3cm  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 115.000\r\n\r\n', 'Ongkir : Rp. 6.000\r\n\r\n', 'Total Harga : Rp. 121.000\r\n\r\n', ''),
(18, 'No WA', '08132123', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'aaa@gmail.com', 'aaaa', 'DI Yogyakarta', 'Bantul', 'jne', '[CTC ] - Rp. 6.000 - Estimasi 1-2 hari', '-PAKET A  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 275.000\r\n\r\n', 'Ongkir : Rp. 6.000\r\n\r\n', 'Total Harga : Rp. 281.000\r\n\r\n', 'aaa'),
(19, 'No WA', '08132123', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'aaa@gmail.com', 'aaa', 'DI Yogyakarta', 'Bantul', 'jne', '[CTC ] - Rp. 6.000 - Estimasi 1-2 hari', '-PAKET A  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 275.000\r\n\r\n', 'Ongkir : Rp. 6.000\r\n\r\n', 'Total Harga : Rp. 281.000\r\n\r\n', 'Mohon lengkapi keterangan : \n- Nama brand : aaa\n- Warna tinta : aaa\n- Warna bahan : aaa\n- Nomor WA : aaa\n- Akun IG :aaa\n                                    '),
(20, 'No WA', '08132123', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'aaa@gmail.com', 'aaaa', 'DI Yogyakarta', 'Bantul', 'jne', '[CTC ] - Rp. 6.000 - Estimasi 1-2 hari', '-PAKET A  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 275.000\r\n\r\n', 'Ongkir : Rp. 6.000\r\n\r\n', 'Total Harga : Rp. 281.000\r\n\r\n', '\nMohon lengkapi keterangan : \n- Nama brand : \n- Warna tinta : \n- Warna bahan : \n- Nomor WA : \n- Akun IG :\n                                    '),
(21, 'vita', '08132123', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'aaa@gmail.com', 'aaa', 'DI Yogyakarta', 'Gunung Kidul', 'jne', '[OKE ] - Rp. 8.000 - Estimasi 3-4 hari', '-PAKET A  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 275.000\r\n\r\n', 'Ongkir : Rp. 8.000\r\n\r\n', 'Total Harga : Rp. 283.000\r\n\r\n', 'aaa'),
(22, 'Instagram ', '08132123', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'aaa@gmail.com', 'aaa', 'Jawa Tengah', 'Karanganyar', 'jne', '[OKE ] - Rp. 12.000 - Estimasi 6-7 hari', '-PAKET B  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 650.000\r\n\r\n', 'Ongkir : Rp. 12.000\r\n\r\n', 'Total Harga : Rp. 662.000\r\n\r\n', '\nMohon lengkapi keterangan : \n- Nama brand : \n- Warna tinta : aaa\n- Warna bahan : sss\n- Nomor WA : aaa\n- Akun IG : ggg\n                                    '),
(23, 'No WA', '08132123', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'aaa@gmail.com', 'aaa', 'DI Yogyakarta', 'Bantul', 'jne', '[CTC ] - Rp. 6.000 - Estimasi 1-2 hari', '-PAKET A  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 275.000\r\n\r\n', 'Ongkir : Rp. 6.000\r\n\r\n', 'Total Harga : Rp. 281.000\r\n\r\n', '\nSilahkan cantumkan keterangan lain atau langsung hubungi admin untuk konfirmasi setelah order '),
(24, 'Andi', '085327555546', '( BRI ) - 051401000255537 - An. EVA LUTHFINA ROCHMATIKA', 'Yusup.andy@gmail.com', 'Jl janti gg.akasia', 'DI Yogyakarta', 'Sleman', 'jne', '[CTC ] - Rp. 6.000 - Estimasi 1-2 hari', '-Label Katun Krem 1,3cm  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 115.000\r\n\r\n', 'Ongkir : Rp. 6.000\r\n\r\n', 'Total Harga : Rp. 121.000\r\n\r\n', '\nSilahkan cantumkan keterangan lain atau langsung hubungi admin untuk konfirmasi setelah order '),
(25, 'saya', '08132123', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'aaa@gmail.com', 'aaa', 'DI Yogyakarta', 'Bantul', 'jne', '[CTC ] - Rp. 6.000 - Estimasi 1-2 hari', '-Roll Label  * 1 \r\n\r\n', 'Sub Total Harga : Rp. 150.000\r\n\r\n', 'Ongkir : Rp. 6.000\r\n\r\n', 'Total Harga : Rp. 156.000\r\n\r\n', '\nSilahkan cantumkan keterangan lain atau langsung hubungi admin untuk konfirmasi setelah order '),
(26, 'No Telpon', '08132123', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'aaa@gmail.com', 'aaa', 'DI Yogyakarta', 'Bantul', 'jne', '[CTC ] - Rp. 6.000 - Estimasi 1-2 hari', '-PAKET A  * 1 \r\n', 'Sub Total Harga : Rp. 275.000\r\n', 'Ongkir : Rp. 6.000\r\n', 'Total Harga : Rp. 281.000\r\n', '\nSilahkan cantumkan keterangan lain atau langsung hubungi admin untuk konfirmasi setelah order '),
(27, 'No WA', '08132123', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'aaa@gmail.com', 'aaaa', 'DI Yogyakarta', 'Bantul', 'jne', '[CTC ] - Rp. 6.000 - Estimasi 1-2 hari', '-PAKET A  * 1 \r\n', 'Sub Total Harga : Rp. 275.000\r\n', 'Ongkir : Rp. 6.000\r\n', 'Total Harga : Rp. 281.000\r\n', '\nSilahkan cantumkan keterangan lain atau langsung hubungi admin untuk konfirmasi setelah order '),
(28, 'aaa', '08132123', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'aaa@gmail.com', 'aa', 'DI Yogyakarta', 'Gunung Kidul', 'jne', '[OKE ] - Rp. 8.000 - Estimasi 3-4 hari', '-PAKET WOVEN HANGTAG  * 1 \r\n', 'Sub Total Harga : Rp. 850.000\r\n', 'Ongkir : Rp. 8.000\r\n', 'Total Harga : Rp. 858.000\r\n', '\nSilahkan cantumkan keterangan lain atau langsung hubungi admin untuk konfirmasi setelah order '),
(29, 'No WA', '08132123', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'aaa@gmail.com', 'aaaaa', 'DI Yogyakarta', 'Bantul', 'jne', '[CTC ] - Rp. 6.000 - Estimasi 1-2 hari', '-PAKET A  * 1 \r\n', 'Sub Total Harga : Rp. 275.000\r\n', 'Ongkir : Rp. 6.000\r\n', 'Total Harga : Rp. 281.000\r\n', '\nSilahkan cantumkan keterangan lain atau langsung hubungi admin untuk konfirmasi setelah order '),
(30, 'Eva', '085729585548', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'evalutfina@gmail.com', 'Jl. Brojogaten raya no.25 baturetno banguntapan bantul', 'DI Yogyakarta', 'Bantul', 'pos', '[Paket Kilat Khusus ] - Rp. 7.000 - Estimasi 1-2 HARI hari', '-Hangtag Linen 700gr  * 1 \r\n', 'Sub Total Harga : Rp. 150.000\r\n', 'Ongkir : Rp. 7.000\r\n', 'Total Harga : Rp. 157.000\r\n', '\nSilahkan cantumkan keterangan lain atau langsung hubungi admin untuk konfirmasi setelah order '),
(31, 'Eva', '085729585548', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'evalutfina@gmail.com', 'Jl. Brojogaten raya', 'DI Yogyakarta', 'Bantul', 'jne', '[CTC ] - Rp. 6.000 - Estimasi 1-2 hari', '-Hangtag Linen 700gr  * 1 \r\n', 'Sub Total Harga : Rp. 150.000\r\n', 'Ongkir : Rp. 6.000\r\n', 'Total Harga : Rp. 156.000\r\n', '\nSilahkan cantumkan keterangan lain atau langsung hubungi admin untuk konfirmasi setelah order '),
(32, 'Eva', '085729585548', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'evalutfina@gmail.com', 'Jl. Brojogaten raya', 'DI Yogyakarta', 'Bantul', 'jne', '[CTC ] - Rp. 6.000 - Estimasi 1-2 hari', '-PAKET A  * 1 \r\n', 'Sub Total Harga : Rp. 275.000\r\n', 'Ongkir : Rp. 6.000\r\n', 'Total Harga : Rp. 281.000\r\n', '\nSilahkan cantumkan keterangan lain atau langsung hubungi admin untuk konfirmasi setelah order '),
(33, 'Eva', '085729585548', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'evalutfina@gmail.com', 'Jl.brojogaten raya', 'DI Yogyakarta', 'Bantul', 'jne', '[CTC ] - Rp. 6.000 - Estimasi 1-2 hari', '-Label Katun Krem 2cm  * 1 \r\n', 'Sub Total Harga : Rp. 125.000\r\n', 'Ongkir : Rp. 6.000\r\n', 'Total Harga : Rp. 131.000\r\n', '\nSilahkan cantumkan keterangan lain atau langsung hubungi admin untuk konfirmasi setelah order '),
(34, 'Khuswatun Khasanah', '089505926261', '( BCA ) - 8465423478 - An. EVA LUTHFINA ROHMATIKA', 'khuswaa26@gmail.com', 'Kos Ei Renne No. 8a Gang Manggis Raya, Kelurahan Sekaran, Gunungpati, Semarang', 'Jawa Tengah', 'Semarang', 'jne', '[OKE ] - Rp. 9.000 - Estimasi 4-5 hari', '-Label Woven Damask  * 1 \r\n-Label Pengiriman Stiker  * 1 \r\n-Stiker Vinil  * 1 \r\n', 'Sub Total Harga : Rp. 0\r\n', 'Ongkir : Rp. 9.000\r\n', 'Total Harga : Rp. 9.000\r\n', '\nSilahkan cantumkan keterangan lain atau langsung hubungi admin untuk konfirmasi setelah order ');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id_page` int(5) NOT NULL,
  `judul` varchar(180) NOT NULL,
  `judul_seo` varchar(200) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `hapus` enum('Yes','No') DEFAULT NULL,
  `jenis_modul` enum('Text','Textarea','Judul & Text','Judul & Textarea','Text Images','Textarea Images','Images','Images SEO','SEO','Images & Link') NOT NULL,
  `status` enum('On','Off') DEFAULT NULL,
  `tampil` enum('Ya','Tidak') DEFAULT NULL,
  `title` varchar(12800) DEFAULT NULL,
  `keyword` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `tgl_update` datetime DEFAULT NULL,
  `dilihat` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id_page`, `judul`, `judul_seo`, `gambar`, `deskripsi`, `hapus`, `jenis_modul`, `status`, `tampil`, `title`, `keyword`, `description`, `tgl_update`, `dilihat`) VALUES
(0, 'Label Klambi', '', 'enom-management-40.jpeg', '', 'No', 'SEO', 'On', 'Ya', 'Label Klambi', 'Label Klambi, Label baju, label baju murah, label baju bagus, label baju murah bagus, label merk, label baju jogja, label jogja, label merk jogja, label fashion, label kaos, label baju semarang, label baju jakarta, label baju bandung, label baju semarang, label baju demak, label baju solo, label jogja, label woven, label satin, label rajut, label sablon, label woven damask, label pita satin, label', 'Label Klambi pusat produksi dan penjualan segala macam produk label baju.  Label baju jogja, Label baju, buat label baju murah, label baju bagus, label baju', '2021-02-17 00:00:00', 0),
(1, 'About NOM', '', 'about-us-18.jpeg', '<p><span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">Enom diambil dari bahasa Jawa yang memiliki arti &ldquo;muda.&rdquo; Muda disini adalah Jiwa muda yang memiliki semangat tangguh dan penuh energi, yang tanpa letih selalu berinovasi dan berkreasi untuk terus bergerak maju dan memberi kontribusi bagi masyarakat.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">Spirit itulah yang menjadi dasar nama management kami. Di tahun 2018 Enom management dibentuk dan memulai aktivitas kreatifnya dengan berbagai event yang terus berlangsung hingga hari ini. Berbagai event profesional yang telah kami organisir melingkupi event budaya, seminar, gathering, bazaar juga pameran seni. Dengan perencanaan matang dan team yang solid Enom management selalu berusaha menghadirkan konsep acara yang unik, menarik dan tertata rapi sehingga acara berjalan lancar dan membuat audiens merasa nyaman dan betah mengikuti rangkaian kegiatan dari awal hingga akhir.</span></span></span></p>\r\n\r\n<p><strong><span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">Event event:</span></span></span></strong><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">1. Galenismara, Galeria Mall Yogyakarta</span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">2. Bazaar UMKM Untuk Negeri, Taman Budaya Yogyakarta 2019</span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">3. Event Pasar Kangen tahunan, Taman Budaya Yogyakarta,</span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">4. Event kolaborasi Pasar Kangen dan Prambanan Jazz Festival, Candi Prambanan</span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">5. Balkojazz Festival, Borobudur, Jawa Tengah</span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">6. Ataraxia &ndash; art exhibition, MayinArt Gallery Singapore, Jogja Gallery</span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">7. Bersama Bangkitkan Jogja, UMKM, Yogyakarta</span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">8. Jogja Music Week, Yogyakarta</span></span></span></p>\r\n', 'No', 'Textarea', 'Off', 'Tidak', 'About', 'enom management,  e-nom, event profesional, event organizer,', 'enom management merupakan event organizer yang melingkupi event budaya, seminar, gathering, bazaar juga pameran seni', '2021-02-10 00:00:00', 0),
(2, 'Portofolio', 'portofolio', 'catalogue-11.jpeg', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><strong>Sususan Redaksi&nbsp;</strong></span><br />\r\nPimpinan Redaksi :<br />\r\nDwijo Suyono</p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<span style=\"font-size:14px\"><strong>Staf Redaksi/Reporter :</strong></span><br />\r\nDwijo Suyono<br />\r\nN Sukardi<br />\r\nArif Wicaksono<br />\r\nNadia Sekar Arum&nbsp;</p>\r\n', 'No', 'Textarea', 'On', 'Ya', 'Portofolio', 'enom management,  e-nom, event profesional, event organizer,', 'enom management merupakan event organizer yang melingkupi event budaya, seminar, gathering, bazaar juga pameran seni', '2020-10-06 00:00:00', 0),
(3, 'Event', 'event', '', NULL, 'No', 'SEO', 'Off', 'Tidak', 'Event', 'enom management,  e-nom, event profesional, event organizer,', 'enom management merupakan event organizer yang melingkupi event budaya, seminar, gathering, bazaar juga pameran seni', '2019-07-22 10:19:24', 0),
(4, 'SEO Galeri', 'seo-galeri', 'galeri-79.jpeg', '', 'No', 'SEO', 'Off', 'Tidak', 'Sakya Label Jogja | Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju ', 'Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', 'Sakya Label Jogja menyediakan jasa cetak undangan, guestbook, tag souvenir, roller belt, hangtag, pricetag, label baju serta berbagai kebutuhan cetak anda baik untuk kepentingan pribadi maupun branding sebuah produk. Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', '2019-07-17 15:57:29', 0),
(8, 'Kontak Kami', '', '', '<p style=\"text-align:center\"><strong>Workshop Label Klambi</strong><br />\r\n<strong>Gunungan RT 04, Gunungan, Pleret, Bantul Yogyakarta, (banner www.labelklambi.com)<br />\r\n0813-2900-1631&nbsp;(WA/SMS/Tlp)<br />\r\nLine id : Labelklambi<br />\r\n<a href=\"mailto:labelklambi@gmail.com\">labelklambi@gmail.com</a></strong></p>\r\n', 'No', 'Textarea', 'On', 'Tidak', 'Kontak Label Klambi | Jasa Buat Label Baju Jogja Harga Murah, Pembuatan Label baju, Buat Label Merk, Cetak label baju,label baju bagus', 'Kontak Label Klambi | Jasa Buat Label Baju Jogja Harga Murah, Pembuatan Label baju, Buat Label Merk, Cetak label baju,label baju bagus', 'Kontak Label Klambi | Jasa Buat Label Baju Jogja Harga Murah, Pembuatan Label baju, Buat Label Merk, Cetak label baju,label baju bagus', '2021-02-15 00:00:00', 0),
(9, 'Cara Order', 'cara-order', 'collections-74.jpeg', '<p>1. Menghubungi CS Label Klambi</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Wa 1. 081329001631</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Line id : Labelklambi</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Email : labelklambi@gmail.com</p>\r\n\r\n<p>2. Mengisi form order yg disediakan dari kami, bisa dikirim ke email atau whatsapp kami<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Berikut ini adalah cara pembayaran di Label Klambi</p>\r\n\r\n<p>1. Tentukan jenis label dan ukuran label serta berapa banyak yang di order.</p>\r\n\r\n<p>2. Kami akan men total semua orderan yg anda tentukan beserta dengan ongkos kirim dengan jasa ekpedisi yg sudah disepakati,</p>\r\n\r\n<p>3. Proses transfer dan konfirmasi transfer dengan membayar DP 50%-70% dari total. Dan segera hubungi CS kami dengan bukti transfer.</p>\r\n\r\n<p>4. Proses design akan kami lakukan selama 2x 24 jam maksimal dari transfer</p>\r\n\r\n<p>5. Apabila design sudah fix kami proses sesuai antrian atau sbb :</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Label jenis Sablon ( Label katun, satin pita, Piterban, Grossgrain, Hangtag,) kami proses 8 hari dari fix design. Jika full order&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 hari.&nbsp;Untuk Label Jenis Woven &amp; printing akan kami proses sesuai antrian atau kurang lebih 3-4 minggu.</p>\r\n\r\n<p>6. Proses pelunasan dan packing</p>\r\n\r\n<p>7. Proses pengiriman dg expedisi yg disepakati</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Pos Indonesia</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;TIKI</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;JNE</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;JNT</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Wahana</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Indah Chargo ( pengiriman diatas 5 kg )</p>\r\n\r\n<p>8. Untuk pembayaran dikami bisa via rekenening</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Bank Mandiri</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;BCA</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;BRI</p>\r\n', 'No', 'Textarea', 'On', 'Ya', 'Jasa Buat Label Baju Murah | LABEL KLAMBI', 'Label Klambi, Label baju, label baju murah, label baju bagus, label baju murah bagus, label merk, label baju jogja, label jogja, label merk jogja, label fashion, label kaos, label baju semarang, label baju jakarta, label baju bandung, label baju semarang, label baju demak, label baju solo, label jogja, label woven, label satin, label rajut, label sablon, label woven damask, label pita satin, label', 'Label Klambi pusat produksi dan penjualan segala macam produk label baju.  Label baju jogja, Label baju, buat label baju murah, label baju bagus, label baju', '2021-02-15 00:00:00', 0),
(10, 'Syarat & Ketentuan', 'syarat--ketentuan', 'header-66.jpeg', '<p>Syarat &amp; Ketentuan</p>\r\n\r\n<p>Sebelum Konsumen/ Customer memutuskan untuk order dan menggunakan jasa Sakya Label Jogja, silahkan membaca dan memahami ketentuan layanan kami. Dengan mengisi form order n melakukan transaksi, berarti customer/ konsumen telah menyetujui n terikat atas ketentuan yang kami berikan antara lain (minimal order, estimasi waktu pengerjaan, perubahan desain dll).</p>\r\n\r\n<p>Syarat Ketentuan ini dibuat demi kepentingan bersama agar tercipta kenyamana untuk kedua belah pihak, konsumen&amp; seller/ produsen.</p>\r\n\r\n<p><u><strong>KETENTUAN LAYANAN</strong></u></p>\r\n\r\n<ol>\r\n	<li>Sebelum melakukan order, wajib bagi customer untuk membaca serta memahami&nbsp;pricelist/ katalog produk sakya label.</li>\r\n	<li>Sebelum melakukan transaksi, customer wajib membaca serta cek kembali orderan anda.</li>\r\n	<li>Sertakan bukti transfer.</li>\r\n	<li>Konfirmasi via whatsapp.</li>\r\n	<li>Proses pengerjaan mulai dari isi form order&nbsp;- transfer - desain - tahap proffing desain - revisi/ acc desain - tahap produksi- packing- kirim.</li>\r\n	<li>Batas waktu transfer maksimal 2x24jam dr nota order dibuat.</li>\r\n	<li>Lebih dari 2x24jam customer wajib konfirmasi terlebih dahulu sebelum melakukan transaksi, menghindari stok bahan habis dan faktor external lainnya.</li>\r\n	<li>Transfer lebih dari 1mg setelah nota order dibuat tanpa konfirmasi maka dianggap cansel, untuk orderan berikutnya tidak akan dilayani/ blacklist nomor.</li>\r\n	<li>Pelunasan dilakukan maksimal 1minggu setelah seller mengkonfirmasi bahwa order telah selesai. Selebihnya dianggap cansel secara sepihak jika telah lewat dari batas waktu maksimal 1mg setelah order selesai TANPA KONFIRMASI dari customer. Sehingga pihak kami tidak bertanggung jawab jika terjadi kerusakan dengan produk tsb selama menunggu proses pelunasan.</li>\r\n	<li>Proses produksi terhitung 10-14hari kerja dari transfer n fiks desain, semakin lama fiks desain maka akan berpengaruh ke lamanya proses produksi, kami tidak menerima komplain terkait lamanya waktu produksi.</li>\r\n	<li>DP 70% dari nominal order dilakukan untuk order&nbsp;diatas nominal Rp.1.000.000,-. Dibawah nominal tsb transaksi fullpayment.</li>\r\n	<li>JIka ragu alangkah lebih baik untuk melakukan order ditempat lain. Karna kami besar dari kepercayaan customer.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><u><strong>PROSES PENGERJAAN</strong></u></p>\r\n\r\n<ol>\r\n	<li>Estimasi produksi 10-14hari kerja, terhitung dr transfer n fix desain untuk produk selain woven damask</li>\r\n	<li>Estimasi produksi 4-5minggu, terhitung dr transfer n fix desain untuk produk&nbsp;woven damask</li>\r\n	<li>Proses desain dari H+1-2 dr transfer, sesuai list antrian masuk.</li>\r\n	<li>Mohon dcek kembali dengan teliti proffing desain yg telah dikirim dari sakya label, apakah perlu revisi atw acc.</li>\r\n	<li>Sakya label melakukan proses produksi atas &quot;IJIN&quot; customer, sehingga jika terjadi kesalahan cetak (font, tulisan, angka dll) bukan 100% kesalahan dari pihak kami. Mohon dteliti kembali.</li>\r\n	<li>Revisi maksimal 2x, selebihnya ada biaya desain.</li>\r\n	<li>Fix desain berarti desain sudah tidak bisa dirubah kembali.</li>\r\n	<li>FREE JASA DESAIN.</li>\r\n	<li>Untuk softfile dikenakan biaya/ jasa desain logo.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><u>Pengiriman</u></strong></p>\r\n\r\n<ol>\r\n	<li>Tidak melayani COD maupun delivery order. semua order kita kirim melalui ekspedisi, gosend atw diambil.</li>\r\n	<li>Packing dlakukan hari senin &amp; kamin</li>\r\n	<li>Pickup dilakukan hari selasa &amp; jumat</li>\r\n	<li><strong><u>CATATAN PENTING:</u></strong>&nbsp;Cek dengan teliti ketika barang/ orderan anda datang didampingi oleh kurir dari pihak ekspedisi yang mengantar.&nbsp;Ketika packing rusak, sobek, lecek, basah dll, mohon segera meminta pertanggung jawaban dari kurir terkait, atw bisa langsung menghubungi CS ekspedisi terkait. JIka packing rusak sudah pasti dalamnya rusak, dan hal tersebut harus dteliti kembali apakah kesalahan dari pihak seller atw kurir ekspedisi. Tetapi jika packing rapi tapi dalamnya rusak, berarti hal tersebut murni kesalahan kami, maka akan kami gantin sepenuhnya. Teliti dengan bijak, <u><strong>sertakan foton vidio unboxing</strong></u>&nbsp;pada saat anda membuka paket.</li>\r\n	<li>Kami tidak menerima komplai tanpa disertakan bukti yg otentik (Vidio unboxing &amp; Foto).</li>\r\n	<li>Packing sudah kami sesuikan dengan standar keamanan produk.</li>\r\n	<li>Jika terjadi kehilangan dalam proses ekspedisi, maka kami sebagai pihak yg mengirim akan berusaha mencari solusi dg cara mengkonfirmasi dg pihak ekspedisi, mengganti dg barang sesuia orderan, mengganti dg uang sesui nominal orderan.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><u><strong>LARANGAN</strong></u></p>\r\n\r\n<ol>\r\n	<li>Konsumen/ customer dilarang memproduksi&nbsp;ditempat lain dengan desain dari Sakya Label ketika desain yang kami buat belum dibeli oleh konsumen.</li>\r\n	<li>FREE JASA DESAN bukan berarti FREE DESAIN</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><u><strong>REFUND</strong></u></p>\r\n\r\n<p>Proses refund dilakukan ketika terjadi kesalahan pada saat proses order yang 100% kesalahan dari pihak kami. Proses refund tidak akan kami klaim jika:</p>\r\n\r\n<ol>\r\n	<li>Customer/ konsumen tidak menyertakan bukti yang otentik seperti Vidio, foto, atw SC chat.</li>\r\n	<li>Kesalahan cetak dalam penulisan nama, gelar, teks, angka jika terjadi setelah fiks desain dari konsumen, maka kami tidak akan mengganti. Karna kami produksi atas ijin customer/ konsumen.</li>\r\n	<li>Jika diawal sakya label sudah menginformasikan bahwa desain customer tidah sesuai dengan size, area cetak, yang mengakibatkan hasil cetak tidak maksimal&nbsp;maka kami tidak akan mengganti.</li>\r\n	<li>Desain dari customer/ konsumen dengan resolusi kecil atau desain dengan aplikasi yang bukan standar desain sehingga mengakibatkan desain pecah atau&nbsp;tidak jelas ,&nbsp;maka kami tidak akan mengganti. Karna sudah kami informasikan di awal.</li>\r\n	<li>Order &amp; transfer berarti customer menyetujui segala sesuatu terkait ketentuan yang telah kami buat, terkait estimasi waktu produksi, desain,&nbsp; estimasi waktu desain, perubahan desain,&nbsp;minimal order, harga dll. Jika dalam perjalanan konsumen meminta untuk mempercepat waktu produksi terkait produksi mereka sudah berjalan, maka dengan berat hati akan kita tolak n tidak ada refund pengembalian. Proses produksi akan kami lakukan sesui dengan list order masuk, karna pasti di awal sudah kita tawarka penambahan biaya untuk order dengan percepatan waktu produksi.</li>\r\n	<li>Segala sesuatu yang sudah sakya label informasikan diawal sebelum customer melakukan order, tetapi tidak diindahkan maka jika terjadi kesalahan atau hasil kurang maksimal&nbsp;maka kami tidak akan mengganti.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"line-height:1\">Terima kasih atas kepercayaan anda.</span></p>\r\n\r\n<p><span style=\"line-height:1\">Kami tumbuh dan besar atas kepercayaan konsumen</span></p>\r\n\r\n<p><span style=\"line-height:1\">Sakya Label Jogja</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'No', 'Textarea', 'On', 'Ya', 'Sakya Label Jogja | Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju ', 'Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', 'Sakya Label Jogja menyediakan jasa cetak undangan, guestbook, tag souvenir, roller belt, hangtag, pricetag, label baju serta berbagai kebutuhan cetak anda baik untuk kepentingan pribadi maupun branding sebuah produk. Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', '2020-12-22 00:00:00', 0),
(11, 'Tentang Kami', 'tentang-kami', 'seo-sparepart-12.jpeg', '<p style=\"text-align:center\"><strong>Alamat Redaksi :</strong>&nbsp;<br />\r\nJl.Bhayangkara 43 Yogyakarta<br />\r\ndwibernasjogja@yahoo.com<br />\r\n+62 823-3050-8848</p>\r\n', 'No', 'Textarea', 'On', 'Ya', 'Sakya Label Jogja | Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju ', 'Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', 'Sakya Label Jogja menyediakan jasa cetak undangan, guestbook, tag souvenir, roller belt, hangtag, pricetag, label baju serta berbagai kebutuhan cetak anda baik untuk kepentingan pribadi maupun branding sebuah produk. Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', '2020-10-06 00:00:00', 0),
(12, 'Galeri', 'info-iklan', '', '<!-- SnapWidget --> <script src=\"https://snapwidget.com/js/snapwidget.js\"></script> <iframe src=\"https://snapwidget.com/embed/886367\" class=\"snapwidget-widget\" allowtransparency=\"true\" frameborder=\"0\" scrolling=\"no\" style=\"border:none; overflow:hidden;  width:100%; \"></iframe>', 'No', 'Judul & Text', 'On', 'Ya', 'Sakya Label Jogja | Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju ', 'Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', 'Sakya Label Jogja menyediakan jasa cetak undangan, guestbook, tag souvenir, roller belt, hangtag, pricetag, label baju serta berbagai kebutuhan cetak anda baik untuk kepentingan pribadi maupun branding sebuah produk. Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', '2020-10-06 00:00:00', 0),
(13, 'Pedoman Media Siber', 'pedoman-media-siber', '', '', NULL, 'Textarea', 'On', 'Ya', 'Sakya Label Jogja | Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju ', 'Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', 'Sakya Label Jogja menyediakan jasa cetak undangan, guestbook, tag souvenir, roller belt, hangtag, pricetag, label baju serta berbagai kebutuhan cetak anda baik untuk kepentingan pribadi maupun branding sebuah produk. Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', '2020-10-06 00:00:00', 0),
(14, 'Panduan Kebijakan', '', '', NULL, NULL, 'Textarea', 'On', 'Ya', 'Sakya Label Jogja | Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju ', 'Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', 'Sakya Label Jogja menyediakan jasa cetak undangan, guestbook, tag souvenir, roller belt, hangtag, pricetag, label baju serta berbagai kebutuhan cetak anda baik untuk kepentingan pribadi maupun branding sebuah produk. Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `portofolio`
--

CREATE TABLE `portofolio` (
  `id_portofolio` int(11) NOT NULL,
  `id_portofolio_kategori` int(11) NOT NULL,
  `nama` varchar(400) NOT NULL,
  `gambar` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portofolio`
--

INSERT INTO `portofolio` (`id_portofolio`, `id_portofolio_kategori`, `nama`, `gambar`) VALUES
(1, 5, 'Festival Latvia', 'festival-latvia-17.jpeg'),
(2, 8, 'Summersonic', 'summersonic-25.jpeg'),
(3, 5, 'Traditional Dance in Bhutan', 'traditional-dance-in-bhutan-19.jpeg'),
(4, 8, 'Knotfest', 'knotfest-1.jpeg'),
(5, 5, 'Festival in Bali', 'festival-in-bali-40.jpeg'),
(6, 3, 'Guangzhou Market', 'guangzhou-market-38.jpeg'),
(7, 3, 'Teheran Market', 'teheran-market-32.jpeg'),
(8, 3, 'Arabian Market', 'arabian-market-34.jpeg'),
(9, 4, 'Exhibition Art De Kour', 'exhibition-art-de-kour-31.jpeg'),
(10, 4, 'Tarakin Museum', 'tarakin-museum-73.jpeg'),
(11, 4, 'Neon Museum', 'neon-museum-97.jpeg'),
(12, 8, 'Konser Musik', 'konser-musik-80.jpeg'),
(13, 8, 'Event Musik', 'event-musik-11.jpeg'),
(14, 4, 'Museum Seni Jogja', 'museum-seni-jogja-75.jpeg'),
(15, 4, 'Museum Seni Jogja', 'museum-seni-jogja-17.jpeg'),
(16, 3, 'Museum Seni Jogja', 'museum-seni-jogja-43.jpeg'),
(17, 4, 'Museum Seni Jogja', 'museum-seni-jogja-33.jpeg'),
(18, 3, 'Bazaar', 'bazaar-64.jpeg'),
(19, 3, 'Bazaar', 'bazaar-4.jpeg'),
(20, 3, 'Bazaar', 'bazaar-55.jpeg'),
(21, 3, 'Bazaar', 'bazaar-56.jpeg'),
(22, 3, 'Bazaar', 'bazaar-27.jpeg'),
(23, 3, 'Bazaar', 'bazaar-7.jpeg'),
(24, 3, 'Bazaar', 'bazaar-92.jpeg'),
(25, 3, 'Bazaar', 'bazaar-6.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `portofolio_kategori`
--

CREATE TABLE `portofolio_kategori` (
  `id_portofolio_kategori` int(11) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `judul_seo` varchar(400) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portofolio_kategori`
--

INSERT INTO `portofolio_kategori` (`id_portofolio_kategori`, `judul`, `judul_seo`, `deskripsi`) VALUES
(2, 'Awarding', 'awarding', NULL),
(3, 'Bazaar', 'bazaar', NULL),
(4, 'Exhibition', 'exhibition', NULL),
(5, 'Festival', 'festival', NULL),
(6, 'Gala Dinner', 'gala-dinner', NULL),
(7, 'Gathering', 'gathering', NULL),
(8, 'Music', 'music', NULL),
(9, 'Private Party', 'private-party', NULL),
(10, 'Seminar', 'seminar', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_produk_kategori` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `judul` varchar(300) NOT NULL,
  `judul_seo` varchar(500) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `keyword` varchar(350) DEFAULT NULL,
  `description` varchar(350) DEFAULT NULL,
  `gambar` varchar(500) DEFAULT NULL,
  `harga` varchar(300) DEFAULT NULL,
  `unggulan` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `dilihat` int(11) NOT NULL DEFAULT 0,
  `tgl` date NOT NULL DEFAULT current_timestamp(),
  `stok` enum('Tersedia','Terbatas','Habis','Pre Order') NOT NULL,
  `berat` int(11) DEFAULT NULL,
  `kode_produk` varchar(200) DEFAULT NULL,
  `harga_diskon` varchar(400) DEFAULT NULL,
  `promo` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_produk_kategori`, `id_admin`, `judul`, `judul_seo`, `deskripsi`, `keyword`, `description`, `gambar`, `harga`, `unggulan`, `dilihat`, `tgl`, `stok`, `berat`, `kode_produk`, `harga_diskon`, `promo`) VALUES
(55, 6, 2, 'Pita Grosgrain', 'pita-grosgrain', '<p>Jenis pita ini lebih berat dan sering kali lebih tebal. Pita ini memiliki tekstur bergaris, dengan berbagai warna dan pola. Pita ini banyak digunakan sebagai hiasan pada kotak kado dan keranjang hantaran dikarenakan gampang dilekatkan pada kertas,carton, dan rotan. Pita ini banyak digunakan pada wedding souvenir,birthday Souvenir, baby hampers. Pita ini juga bias digunakan untuk label baju, dengan di finishing sablon &amp; hot cut ( pemotongan dengan alat khusus) agar hasil potongan lebih rapi dan tidak brudul. Untuk kelebihan dari bahan ini pita lebih tebal dan kaku tapi tetap mudah dijahit apalagi bila dengan finishing hotcut hasil lebih rapi. Tapi untuk kekurangan nya , jika pita ini berwarna gelap maka keawetan sablon tidak akan lama, karna bahan ini grosgrain ini yang warna gelap tidak menyerap cat / tinta. Tapi untuk warna terang hasil bias maksimal &amp; awet seperti warna bahan crem, coklat muda, putih, ping soft, biru muda dll. Dan dengan panjang label ini sekitar 16-18 meter, untuk jumlah label bisa menyesuaikan dengan ukuran panjang label.</p>\r\n\r\n<p>Untuk mengetahui jenis warna pita grosgrain bisa hubungi CS Label Klambi kami.</p>\r\n', '', '', 'pita-grosgrain-19.jpeg', '50.000', 'Tidak', 0, '2021-02-15', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(56, 6, 2, 'Satin Lokal', 'satin-lokal', '<p>Label baju jenis satin printing terbuat dari bahan yaitu satin dengan metode pencetakan menggunakan mesin printing khusus. Label jenis ini bertekstur sangat halus dan juga lembut sehingga sangat cocok digunakan di berbagai jenis pakaian. Karena seratnya yang halus membuat label ini sangat aman dan nyaman</p>\r\n\r\n<p>Label Klambi menerima pemesanan label baju satin printing untuk keperluan konveksi tentu saja dengan harga murah dan mimimal order yang tidak terlalu besar. Sehingga sangat cocok bagi Anda yang baru saja terjun ke dunia produksi pakaian.</p>\r\n\r\n<p>Label satin printing bertekstur sangat lembut sehingga sangat nyaman ketika dikenakan, dan banyak pakaian bayi yang lebih memilih label jenis ini karena sangat bagus untuk bayi yang memiliki kulit sensitif. Selain itu desain yang menarik juga dapat menambah nilai jual selain fungsi utama dari label yaitu informasi produk.</p>\r\n\r\n<p>Memilih satin untuk dijadikan label baju sudah merupakan langkap yang sangat tepat, namun jika Anda terkendala masalah model/desain, silahkan konsultasikan dengan tim kami yang akan dengan senang hati membantu Anda untuk menentukan konsep dan memilih desain yang bagus. Dengan desain label satin printing yang menarik akan membuat produk Anda nampak ekslusive berbeda dengan yang lainnya</p>\r\n\r\n<p>Dan untuk kelebihan atau kekurangan dari bahan ini sebagian kecil akan kami jelaskan di sini. Kelebihan bahan ini untuk yang warna putih cat atau hasil printing akan awet dan bisa dg berbagi warna tinta / cat. Bahan ini lembut tidak gatal, bagus untuk ditaruh di dalam baju atau diluar baju, untuk panjang rol label ini bisa mencapai + 190 meter, dan apabila budget anda tidak bisa mencukupi untuk yg 190 meter, kami menyediakan dg minimum order 19 meter dg kualitas sablon yg tidak kalah rapi dengan yg printing, dan tentu tidak menguras kantong anda.</p>\r\n', '', '', 'satin-lokal-20.jpeg', '60.000', 'Tidak', 0, '2021-02-15', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(57, 5, 2, 'Woven Damask', 'woven-damask', '<p>Woven damask atau label rajut merupakan label baju dengan kualitas terbaik yang terkenal sangat halus dan lembut. Bahan ini memiliki standar kualitas tinggi sehingga digunakan oleh banyak brand besar di Indonesia. Namun tentu saja label jenis ini tidak bisa diaplikasikan dengan jenis pakaian tertentu. Hasil dari woven damask memiliki keunggulan yaitu desainnya bisa dicetak sangat mendetail.</p>\r\n\r\n<p>Pada proses pembuatan label damask juga lebih rumit karena perhitungan harus benar-benar terperinci agar hasilnya bagus. Sehingga setiap milimeter ukuran label woven damask akan sangat mempengaruhi harga produksi. Dibuat menggunakan mesin berteknologi terkini, kami jamin label yang dihasilkan akan sangat berkualitas dan juga tahan lama.</p>\r\n\r\n<p>Bagi Anda yang masih dalam tahap awal membangun brand fashion, perlu diketahui bahwa desain label yang Anda buat akan sangat berpengaruh pada kemajuan brand Anda di masa yang akan datang. Pasalnya membuat desain label woven damask ini tidak bisa sembarangan, karena label adalah identitas produk Anda jadi harus memiliki nilai lebih.</p>\r\n\r\n<p>Pembuatan label woven damask di&nbsp;<strong>LABEL KLAMBI</strong>&nbsp;memiliki beberapa keunggulan diantaranya kami memberikan fasilitas gratis untuk desain label baju. Ini tentu saja akan menghemat budget Anda daripada harus menyewa jasa desain sendiri dengan biaya yang tidak murah.</p>\r\n\r\n<p>Jadi untuk mendapatkan label baju yang baik tidak harus mahal, karena kami hadir dan akan membantu Anda dalam melayani jasa pembuatan label baju woven damask atau rajut dengan harga yang sangat terjangkau, tentu saja ada harga spesial jika order dalam jumlah banyak. Berminat silahkan hubungi CS kami.</p>\r\n', '', '', 'woven-damask-34.jpeg', '40.000', 'Tidak', 0, '2021-02-15', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(58, 3, 2, 'Label Printing', 'label-printing', '', '', '', 'label-printing-14.jpeg', '25.000', 'Tidak', 0, '2021-02-15', 'Terbatas', NULL, NULL, NULL, 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `produk_kategori`
--

CREATE TABLE `produk_kategori` (
  `id_produk_kategori` int(11) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `judul_seo` varchar(400) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_kategori`
--

INSERT INTO `produk_kategori` (`id_produk_kategori`, `judul`, `judul_seo`, `deskripsi`) VALUES
(3, 'Label Printing', 'label-printing', NULL),
(4, 'Label Kertas ', 'label-kertas-', NULL),
(5, 'Label Rajut (woven)', 'label-rajut-woven', NULL),
(6, 'Label Sablon ', 'label-sablon-', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk_size`
--

CREATE TABLE `produk_size` (
  `id_produk_size` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga` varchar(400) NOT NULL,
  `judul` varchar(400) NOT NULL,
  `judul_seo` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_size`
--

INSERT INTO `produk_size` (`id_produk_size`, `id_produk`, `harga`, `judul`, `judul_seo`) VALUES
(1, 55, '50.000', '16 Meter', '16-meter'),
(2, 55, '70.000', '17 Meter', '17-meter'),
(3, 55, '100.000', '18 Meter', '18-meter'),
(8, 56, '60.000', '19 Meter', '19-meter'),
(9, 56, '75.000', '25 Meter', '25-meter'),
(10, 58, '50.000', '10 Meter', '10-meter'),
(11, 58, '65.000', '15 Meter', '15-meter'),
(12, 58, '80.000', '20 Meter', '20-meter');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(5) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `gambar` varchar(120) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `tgl_update` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `judul`, `deskripsi`, `nama`, `gambar`, `url`, `tgl_update`) VALUES
(1, 'BCA', '8465423478', 'EVA LUTHFINA ROHMATIKA', NULL, NULL, '2020-12-15'),
(3, 'BRI', '051401000255537', 'EVA LUTHFINA ROCHMATIKA', NULL, NULL, '2020-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(5) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(120) DEFAULT NULL,
  `gambar_mobile` varchar(400) NOT NULL,
  `url` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `judul`, `deskripsi`, `gambar`, `gambar_mobile`, `url`) VALUES
(67, 'Slider 1', NULL, 'slider-1-33.jpeg', 'slider-1.jpeg', NULL),
(68, 'Slider 2', NULL, 'slider-2-88.jpeg', 'slider-2.jpeg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `snapwidget`
--

CREATE TABLE `snapwidget` (
  `id` int(11) NOT NULL,
  `iframe_desktop` text NOT NULL,
  `iframe_mobile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `snapwidget`
--

INSERT INTO `snapwidget` (`id`, `iframe_desktop`, `iframe_mobile`) VALUES
(1, '<iframe src=\"https://snapwidget.com/embed/915897\" class=\"snapwidget-widget\" allowtransparency=\"true\" frameborder=\"0\" scrolling=\"no\" style=\"border:none; overflow:hidden;  width:100%; height:280px\"></iframe>', '<iframe src=\"https://snapwidget.com/embed/915898\" class=\"snapwidget-widget\" allowtransparency=\"true\" frameborder=\"0\" scrolling=\"no\" style=\"border:none; overflow:hidden;  width:380px; height:190px\"></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id_social_media` int(11) NOT NULL,
  `judul` varchar(400) NOT NULL,
  `link` text NOT NULL,
  `tgl_update` date DEFAULT NULL,
  `status` enum('on','off') NOT NULL DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id_social_media`, `judul`, `link`, `tgl_update`, `status`) VALUES
(1, 'Facebook', 'https://www.facebook.com/', '2020-08-07', 'on'),
(2, 'Twitter', 'https://twitter.com/', '2020-08-07', 'on'),
(3, 'Youtube', 'https://youtube.com/', '2020-08-07', 'on'),
(4, 'Instagram', 'https://www.instagram.com/nom_management/', '2020-08-07', 'on'),
(5, 'Pinterest', 'https://pinterest.com', '2020-08-07', 'on'),
(6, 'Email', 'admin@nommanagement.com', '2017-11-01', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `id` int(5) NOT NULL,
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL,
  `time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`id`, `ip`, `tanggal`, `hits`, `online`, `time`) VALUES
(1, '36.81.91.116', '2021-02-10', 177, '1612951303', '00:00:00'),
(2, '66.249.82.190', '2021-02-10', 6, '1612951339', '00:00:00'),
(3, '66.249.82.164', '2021-02-10', 1, '1612951335', '00:00:00'),
(4, '66.249.82.161', '2021-02-10', 1, '1612951339', '00:00:00'),
(5, '125.165.13.107', '2021-02-10', 3, '1612956288', '00:00:00'),
(6, '36.78.38.216', '2021-02-10', 7, '1612968694', '00:00:00'),
(7, '120.188.75.233', '2021-02-10', 5, '1612964618', '00:00:00'),
(8, '36.81.91.116', '2021-02-11', 7, '1613023816', '00:00:00'),
(9, '::1', '2021-02-15', 6063, '1613383491', '00:00:00'),
(10, '::1', '2021-02-16', 1002, '1613469787', '00:00:00'),
(11, '::1', '2021-02-17', 724, '1613557387', '00:00:00'),
(12, '::1', '2021-02-18', 316, '1613642737', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `nama` varchar(400) NOT NULL,
  `gambar` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `nama`, `gambar`) VALUES
(1, 'Testi 1', 'testi-1-14.jpeg'),
(2, 'Testi 2', 'testi-2-64.png'),
(3, 'Testi 3', 'testi-3-59.png'),
(4, 'Testi 4', 'testi-4-94.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `id` int(11) NOT NULL,
  `name` varchar(400) NOT NULL,
  `code` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `name`, `code`) VALUES
(1, 'navbarbg', 'skin2'),
(2, 'logobg', 'skin2'),
(3, 'sidebarbg', 'skin5');

-- --------------------------------------------------------

--
-- Table structure for table `z`
--

CREATE TABLE `z` (
  `id` int(5) NOT NULL,
  `z` text DEFAULT NULL,
  `d` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z`
--

INSERT INTO `z` (`id`, `z`, `d`) VALUES
(1, '', '2017-11-14 19:41:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id_email`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `gallery_produk`
--
ALTER TABLE `gallery_produk`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `kategorix`
--
ALTER TABLE `kategorix`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `keunggulan`
--
ALTER TABLE `keunggulan`
  ADD PRIMARY KEY (`id_keunggulan`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `orderan`
--
ALTER TABLE `orderan`
  ADD PRIMARY KEY (`id_orderan`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`id_portofolio`);

--
-- Indexes for table `portofolio_kategori`
--
ALTER TABLE `portofolio_kategori`
  ADD PRIMARY KEY (`id_portofolio_kategori`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
  ADD PRIMARY KEY (`id_produk_kategori`);

--
-- Indexes for table `produk_size`
--
ALTER TABLE `produk_size`
  ADD PRIMARY KEY (`id_produk_size`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `snapwidget`
--
ALTER TABLE `snapwidget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id_social_media`);

--
-- Indexes for table `statistik`
--
ALTER TABLE `statistik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z`
--
ALTER TABLE `z`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id_email` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gallery_produk`
--
ALTER TABLE `gallery_produk`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `kategorix`
--
ALTER TABLE `kategorix`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `keunggulan`
--
ALTER TABLE `keunggulan`
  MODIFY `id_keunggulan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `orderan`
--
ALTER TABLE `orderan`
  MODIFY `id_orderan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id_portofolio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `portofolio_kategori`
--
ALTER TABLE `portofolio_kategori`
  MODIFY `id_portofolio_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
  MODIFY `id_produk_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `produk_size`
--
ALTER TABLE `produk_size`
  MODIFY `id_produk_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `snapwidget`
--
ALTER TABLE `snapwidget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id_social_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `statistik`
--
ALTER TABLE `statistik`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `z`
--
ALTER TABLE `z`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
