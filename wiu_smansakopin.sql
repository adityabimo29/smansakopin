-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2021 at 09:05 AM
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
(80, 2, 'Curabitur non risus ut odio faucibus rhoncus convallis id risus', 'curabitur-non-risus-ut-odio-faucibus-rhoncus-convallis-id-risus', 'curabitur-non-risus-ut-odio-faucibus-rhoncus-convallis-id-risus-12.jpeg', '<p>Ut rutrum urna hendrerit dolor mattis, tempus tempor magna tristique. Praesent ante ipsum, imperdiet ac justo ac, pharetra porttitor elit. Suspendisse potenti. Integer luctus, mi vitae porta efficitur, orci nulla egestas purus, quis tempus eros ipsum quis sem. Nam imperdiet lacus tellus. Praesent consequat lacus a risus faucibus congue. Donec at dolor malesuada, efficitur dolor non, tristique diam. Mauris et enim convallis, pharetra lorem ut, rutrum dui. Cras vitae nisl quis purus maximus sagittis. Sed consectetur ultrices nisi id molestie. Aliquam faucibus sed ex vitae laoreet. Curabitur sollicitudin dignissim laoreet. Proin facilisis mauris diam, eu condimentum mauris interdum non. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec porttitor dapibus tempus.</p>\r\n\r\n<p>Nunc sagittis eros eget luctus placerat. Nam facilisis arcu in tellus mollis, et consequat ipsum tincidunt. Aliquam elementum erat vitae nunc ornare, euismod eleifend ipsum consectetur. Nulla facilisi. Vestibulum scelerisque nibh quam, interdum gravida mi bibendum nec. Nullam placerat cursus sem, sit amet congue ante dapibus quis. Vestibulum tortor neque, facilisis ut metus in, venenatis molestie erat.</p>\r\n\r\n<p>Nulla facilisi. Integer eu ante pellentesque, fringilla purus sed, volutpat tellus. Phasellus non ornare lectus. In at ex rutrum, dictum odio ut, posuere nunc. Nullam vel efficitur dolor. Fusce id orci tincidunt dui scelerisque laoreet. Donec nec molestie ipsum. Fusce id enim quis ipsum efficitur venenatis a eu metus. Aenean vitae quam nisl. Maecenas ac risus et magna finibus convallis. Integer in justo eleifend, tristique sem non, dignissim metus. Ut dignissim urna ornare, convallis sem ac, commodo dolor. Maecenas molestie at ligula ac varius.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam vitae mollis tellus. Quisque mattis magna neque, et imperdiet mi lobortis ac. Praesent eget eros nec lacus sollicitudin efficitur. Curabitur eu lacus maximus, egestas risus fermentum, vestibulum nunc. Aliquam quis ex ac ex pulvinar faucibus eget sit amet sapien. Etiam a dui urna. Maecenas ligula est, dapibus sed malesuada laoreet, semper eu mauris. Sed egestas varius ornare. In pharetra mattis pretium. Mauris nibh dui, sollicitudin at tortor non, laoreet gravida libero. Sed faucibus, elit at ullamcorper porta, dolor libero vehicula massa, et pellentesque ipsum diam sit amet ligula. Ut auctor ut dolor sit amet ultrices. Curabitur non risus ut odio faucibus rhoncus convallis id risus. Curabitur arcu erat, volutpat bibendum ullamcorper at, hendrerit sit amet nisi.</p>\r\n\r\n<p>Aliquam hendrerit risus et nulla imperdiet, vitae facilisis libero fermentum. Mauris sed placerat urna. Donec sit amet scelerisque ipsum. Phasellus ultricies laoreet ipsum, vitae posuere felis hendrerit id. Aliquam tincidunt dictum mi in pharetra. Nulla condimentum mi rhoncus, efficitur nibh et, tristique ligula. Proin tincidunt ac neque eu porta. Nullam sollicitudin justo diam. Ut vitae ultrices libero, a bibendum urna. Sed eget massa quis enim scelerisque molestie sed ornare diam. Etiam sapien ipsum, auctor quis augue non, vestibulum tincidunt est.</p>\r\n', '', '', '2021-02-15', 'aktif', 'No', 9),
(81, 2, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra', 'class-aptent-taciti-sociosqu-ad-litora-torquent-per-conubia-nostra', 'class-aptent-taciti-sociosqu-ad-litora-torquent-per-conubia-nostra-90.jpeg', '<p>Nunc euismod nulla a odio pharetra aliquam. Aliquam semper arcu ac enim iaculis, sit amet lobortis magna scelerisque. Sed viverra risus sit amet mi fermentum, quis sagittis enim euismod. Integer condimentum urna et elit iaculis, quis gravida ante aliquet. Donec velit velit, sodales id massa eu, fringilla aliquet turpis. Aliquam erat volutpat. Curabitur at turpis blandit, finibus sapien vulputate, cursus magna. Nulla facilisi. Nam egestas arcu accumsan, egestas ante id, accumsan urna. In molestie, massa sed ultrices semper, mauris sapien laoreet sem, sed elementum tellus lectus ac libero. Nulla risus leo, dignissim tempus congue sit amet, finibus vitae felis. Phasellus pellentesque lacus in diam consectetur vestibulum. Cras sit amet ex bibendum, consectetur ante lobortis, rhoncus nunc. Nunc congue eleifend elit quis porttitor.</p>\r\n\r\n<p>Suspendisse imperdiet nulla eu lorem posuere rhoncus. Ut laoreet porta mi. Nulla pulvinar fermentum mauris, quis ullamcorper nibh viverra eget. Praesent id nisl et tortor pretium finibus eget non ex. Curabitur pellentesque a purus vitae consectetur. Sed hendrerit lacus purus, ullamcorper eleifend ipsum pretium gravida. Suspendisse a consectetur elit, in placerat leo. Nunc nunc massa, imperdiet a molestie ut, luctus non diam. Nullam eu felis lobortis, sodales est at, maximus tellus. Morbi ornare erat non turpis lacinia varius. Aenean nec consectetur odio. Integer nibh ipsum, eleifend a ornare et, consequat et ligula. Nunc at aliquam enim. Sed laoreet dictum nisl, non lobortis justo.</p>\r\n\r\n<p>Nunc sem arcu, sodales sit amet ullamcorper nec, lobortis eu leo. Donec ultricies magna et commodo accumsan. Fusce porttitor tristique lacus, ac vestibulum diam porta a. Aliquam erat volutpat. Nam ut porttitor ligula. Etiam ut consequat nibh. In quis vestibulum ipsum. Vestibulum iaculis ac ex id auctor. Nullam bibendum quam ut nunc pellentesque, in aliquet ante molestie.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam placerat justo est, a condimentum sapien tempor ut. Nam accumsan erat quis dui elementum, eu aliquet arcu dignissim. Donec hendrerit nisl quis massa volutpat maximus a ultricies purus. In vitae pharetra odio, et lobortis quam. Fusce semper ex quis felis rhoncus viverra. Curabitur gravida vitae leo et hendrerit.</p>\r\n\r\n<p>Phasellus ac pretium nisl. Suspendisse ante mauris, maximus sed vehicula volutpat, facilisis nec augue. In aliquet nibh lobortis, accumsan ligula venenatis, posuere nibh. Vestibulum in purus interdum, scelerisque magna a, semper lectus. Pellentesque mattis egestas mi, eget commodo eros volutpat sed. Curabitur in convallis risus, aliquam fermentum lectus. Praesent porttitor sem et enim commodo bibendum eget tristique velit. Aenean vel congue elit. Sed arcu nisl, sodales ac aliquam et, eleifend a diam. Integer vitae libero vel eros mattis rutrum eu sed nisl.</p>\r\n\r\n<p>Pellentesque finibus turpis in facilisis dictum. Nullam maximus orci sit amet tellus vehicula rutrum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla condimentum, mi sit amet sagittis rhoncus, leo nibh pellentesque massa, a pharetra nisi enim vel lacus. Sed at tellus lectus. Cras laoreet ligula non eros suscipit, non hendrerit augue pellentesque. Aenean non ullamcorper neque, ac mollis metus.</p>\r\n', '', '', '2021-02-15', 'aktif', 'No', 18),
(82, 2, ' Praesent vel sem a mauris ornare dictum sed vel est viverra risus id porta', '-praesent-vel-sem-a-mauris-ornare-dictum-sed-vel-est-viverra-risus-id-porta', '-praesent-vel-sem-a-mauris-ornare-dictum-sed-vel-est-73.jpeg', '<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse aliquet pharetra posuere. Aliquam erat volutpat. Etiam tellus augue, laoreet sed euismod vitae, porta nec neque. Proin sed massa vel dui efficitur tempor. Suspendisse eget velit molestie, ornare neque quis, finibus leo. Phasellus volutpat, est vitae dignissim posuere, diam sapien semper nisi, nec imperdiet nunc ante vitae augue. Mauris rhoncus quam blandit quam ullamcorper, eget convallis libero tincidunt. Quisque laoreet, dolor ut porttitor placerat, eros urna hendrerit ex, at ullamcorper sem nunc id quam. Proin tincidunt porta consequat. In hac habitasse platea dictumst. Donec dignissim lacus eget aliquet hendrerit. Etiam vitae enim ullamcorper, vestibulum lorem tristique, ornare lectus. Nulla euismod justo vel dignissim feugiat. Morbi viverra risus id vestibulum porta.</p>\r\n\r\n<p>In in enim vel sem eleifend finibus. Vivamus scelerisque massa vel ex lacinia, vitae vestibulum odio molestie. Duis congue elit et neque mattis, eget scelerisque tortor tincidunt. Ut dapibus, elit in consequat bibendum, nibh tellus tempor lectus, sit amet iaculis ante diam ultrices dui. Vivamus fermentum pharetra commodo. Phasellus et ipsum sit amet quam dictum aliquam. Sed dictum nibh sapien, id suscipit quam blandit at. Nulla in convallis arcu. Nunc suscipit, felis et tincidunt tempor, neque dui sollicitudin eros, non sagittis lacus ante eu lectus. Proin quis massa vehicula mauris pretium ornare id quis orci. Nunc congue nulla quis lectus porta ornare. Donec sed condimentum mauris, sit amet faucibus erat. Proin scelerisque condimentum risus, vitae hendrerit metus molestie ut. Ut maximus scelerisque quam sed maximus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc rhoncus libero et dui venenatis, sit amet pharetra orci semper.</p>\r\n\r\n<p>Mauris scelerisque tempus suscipit. Praesent egestas, ipsum vitae porttitor egestas, augue erat porta eros, et rhoncus mauris ex et ex. Phasellus massa lacus, laoreet sed orci lobortis, vestibulum dignissim mauris. Nunc quis magna leo. Nullam dapibus, leo nec molestie varius, purus arcu posuere orci, nec dapibus ligula ipsum sit amet sapien. Integer fringilla quam urna, at tempor tellus interdum quis. In nec odio sollicitudin, efficitur nisi sit amet, mollis magna. Duis vitae leo eu elit rhoncus pellentesque id vitae risus. Sed semper faucibus magna, finibus vehicula justo pellentesque vulputate.</p>\r\n\r\n<p>Cras accumsan velit nec eros scelerisque, congue ullamcorper nulla facilisis. Praesent vel sem a mauris ornare dictum sed vel est. Mauris interdum nunc justo, vel euismod lectus placerat egestas. Praesent in arcu leo. Nullam congue sollicitudin turpis pellentesque dictum. Mauris at sollicitudin enim, ac egestas enim. Sed augue lacus, rutrum at feugiat sed, luctus at purus. Fusce turpis dui, commodo in mi eu, pharetra euismod urna. Morbi mattis in ligula quis tincidunt. Mauris in lectus sed quam faucibus dignissim ac et tellus. Etiam molestie massa non nisi pellentesque congue. Proin sodales euismod dignissim. Aliquam erat volutpat. Mauris pulvinar ipsum id urna interdum placerat id ut neque.</p>\r\n', '', '', '2021-02-15', 'aktif', 'No', 2),
(83, 2, 'The generated Lorem Ipsum is therefore always free from repetition', 'the-generated-lorem-ipsum-is-therefore-always-free-from-repetition', '-this-book-is-a-treatise-on-the-theory-of-ethics-very-popular-during-the-renaissance-45.jpeg', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '2021-02-19', 'aktif', 'No', 7),
(84, 2, 'The standard chunk of Lorem Ipsum used since the 1500s', 'the-standard-chunk-of-lorem-ipsum-used-since-the-1500s', 'the-standard-chunk-of-lorem-ipsum-used-since-the-1500s-85.jpeg', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '', '', '2021-02-20', 'aktif', 'No', 5);

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
(1, 'Video 1', 'https://www.youtube.com/watch?v=ZEirUKmLauc', 'banner-1-17.jpeg'),
(2, 'Video 2', 'https://www.youtube.com/watch?v=ZEirUKmLauc', 'video-2-8.jpeg'),
(3, 'Video 3', 'https://www.youtube.com/watch?v=ZEirUKmLauc', 'video-3-26.jpeg'),
(4, 'Video 4', 'https://www.youtube.com/watch?v=ZEirUKmLauc', 'video-4-42.jpeg');

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
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `id_foto_kategori` int(11) DEFAULT NULL,
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
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`id_foto`, `id_foto_kategori`, `id_admin`, `judul`, `judul_seo`, `deskripsi`, `keyword`, `description`, `gambar`, `harga`, `unggulan`, `dilihat`, `tgl`, `stok`, `berat`, `kode_produk`, `harga_diskon`, `promo`) VALUES
(1, NULL, 2, 'Sosialisasi Literasi Media Jurnalistik', 'sosialisasi-literasi-media-jurnalistik', NULL, '', '', 'sosialisasi-literasi-media-jurnalistik-53.jpeg', NULL, 'Tidak', 0, '2021-02-19', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(2, NULL, 2, 'Ruang Kelas', 'ruang-kelas', NULL, '', '', 'ruang-kelas-43.jpeg', NULL, 'Tidak', 0, '2021-02-19', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(3, NULL, 2, 'Rapat Guru', 'rapat-guru', NULL, '', '', 'rapat-guru-77.jpeg', NULL, 'Tidak', 0, '2021-02-19', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(4, NULL, 2, 'Praktek Prakarya', 'praktek-prakarya', NULL, '', '', 'praktek-prakarya-15.jpeg', NULL, 'Tidak', 0, '2021-02-19', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(5, NULL, 2, 'Perpustakaan', 'perpustakaan', NULL, '', '', 'perpustakaan-75.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(6, NULL, 2, 'Paskibraka', 'paskibraka', NULL, '', '', 'paskibraka-21.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(7, NULL, 2, 'Laboratorium Komputer', 'laboratorium-komputer', NULL, '', '', 'laboratorium-komputer-52.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(8, NULL, 2, 'Kunjungan Rs Umum', 'kunjungan-rs-umum', NULL, '', '', 'kunjungan-rs-umum-55.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(9, NULL, 2, 'Kunjungan Pabrik', 'kunjungan-pabrik', NULL, '', '', 'kunjungan-pabrik-51.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(10, NULL, 2, 'Foto Sekolah', 'foto-sekolah', NULL, '', '', 'foto-sekolah-20.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(11, NULL, 2, 'Pembelajaran di Kelas', 'pembelajaran-di-kelas', NULL, '', '', 'pembelajaran-di-kelas-18.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(12, NULL, 2, 'Bazaar', 'bazaar', NULL, '', '', 'bazaar-45.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak');

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
-- Table structure for table `gallery_foto`
--

CREATE TABLE `gallery_foto` (
  `id_gallery` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `id_foto` int(11) NOT NULL,
  `judul` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_foto`
--

INSERT INTO `gallery_foto` (`id_gallery`, `gambar`, `id_foto`, `judul`) VALUES
(1, 'sosialisasi-literasi-media-jurnalistik23.jpeg', 1, 'Gambar 2'),
(2, 'sosialisasi-literasi-media-jurnalistik87.jpeg', 1, 'Gambar 3'),
(3, 'sosialisasi-literasi-media-jurnalistik30.jpeg', 1, 'Gambar  4'),
(4, 'sosialisasi-literasi-media-jurnalistik38.jpeg', 1, 'Gambar 5'),
(6, 'ruang-kelas88.jpeg', 2, 'Gambar 2'),
(8, 'ruang-kelas17.jpeg', 2, 'Gambar 4'),
(9, 'ruang-kelas81.jpeg', 2, 'Gambar 5'),
(10, 'rapat-guru11.jpeg', 3, 'Gambar 2'),
(11, 'praktek-prakarya18.jpeg', 4, 'Gambar 2'),
(12, 'praktek-prakarya85.jpeg', 4, 'Gambar 3'),
(13, 'praktek-prakarya92.jpeg', 4, 'Gambar 4'),
(14, 'praktek-prakarya77.jpeg', 4, 'Gambar 5'),
(15, 'perpustakaan6.jpeg', 5, 'Gambar 2'),
(16, 'perpustakaan33.jpeg', 5, 'Gambar 3'),
(17, 'paskibraka42.jpeg', 6, 'Gambar 2'),
(18, 'paskibraka92.jpeg', 6, 'Gambar 3'),
(19, 'paskibraka14.jpeg', 6, 'Gambar 4'),
(20, 'paskibraka46.jpeg', 6, 'Gambar 5'),
(21, 'paskibraka65.jpeg', 6, 'Gambar 6'),
(22, 'paskibraka21.jpeg', 6, 'Gambar 7'),
(23, 'paskibraka61.jpeg', 6, 'Gambar 8'),
(24, 'paskibraka32.jpeg', 6, 'Gambar  9'),
(25, 'laboratorium-komputer6.jpeg', 7, 'Gambar 2'),
(26, 'laboratorium-komputer37.jpeg', 7, 'Gambar 3'),
(27, 'kunjungan-rs-umum53.jpeg', 8, 'Gambar 2'),
(28, 'kunjungan-rs-umum24.jpeg', 8, 'Gambar 3'),
(29, 'kunjungan-rs-umum12.jpeg', 8, 'Gambar 4'),
(30, 'kunjungan-rs-umum92.jpeg', 8, 'Gambar 5'),
(31, 'kunjungan-rs-umum27.jpeg', 8, 'Gambar 6'),
(32, 'kunjungan-rs-umum76.jpeg', 8, 'Gambar 7'),
(33, 'kunjungan-rs-umum34.jpeg', 8, 'Gambar 8'),
(34, 'kunjungan-rs-umum40.jpeg', 8, 'Gambar 9'),
(35, 'kunjungan-pabrik99.jpeg', 9, '1'),
(36, 'kunjungan-pabrik61.jpeg', 9, '2'),
(37, 'kunjungan-pabrik88.jpeg', 9, '3'),
(38, 'kunjungan-pabrik53.jpeg', 9, '4'),
(39, 'kunjungan-pabrik54.jpeg', 9, '5'),
(40, 'kunjungan-pabrik1.jpeg', 9, '6'),
(41, 'foto-sekolah42.jpeg', 10, 'Gambar 2'),
(42, 'foto-sekolah41.jpeg', 10, 'Gambar 3'),
(43, 'foto-sekolah48.jpeg', 10, 'Gambar 4'),
(44, 'foto-sekolah37.jpeg', 10, 'Gambar 5'),
(45, 'foto-sekolah1.jpeg', 10, 'Gambar 6'),
(46, 'pembelajaran-di-kelas40.jpeg', 11, 'Gambar 2'),
(47, 'pembelajaran-di-kelas58.jpeg', 11, 'Gambar 3'),
(48, 'pembelajaran-di-kelas11.jpeg', 11, 'Gambar 4'),
(49, 'pembelajaran-di-kelas35.jpeg', 11, 'Gambar 5'),
(50, 'bazaar51.jpeg', 12, 'Gambar 2'),
(51, 'bazaar1.jpeg', 12, 'Gambar 3'),
(52, 'bazaar44.jpeg', 12, 'Gambar 4');

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
(0, 'Nama Web', 'nama-web', '', 'SMANSA KOPIN,smansakopin,smansakopin,smansakopin', 'No', '', '2017-11-01 02:22:09', 'Tidak', 'On', 0),
(1, 'Logo Web', 'logo-web', '60LOGO.png', '', 'No', 'Images', '2021-02-22 00:00:00', 'Ya', 'On', 1),
(2, 'Kota', NULL, NULL, '501', 'No', 'Select', '2020-10-27 00:00:00', 'Tidak', 'On', 5),
(3, 'Footer Information', 'home-footer', '', '<p>Sakya Label</p>\r\n\r\n<p>Hubungi Kami :<br />\r\n(WA / SMS / Telp)<br />\r\n085-729-585-548<br />\r\nEmail :&nbsp;<a href=\"mailto:evalutfina@gmail.com\">evalutfina@gmail.com</a></p>\r\n\r\n<p>Jl. Brojogaten Raya No. 25&nbsp;Baturetno, Banguntapan, Bantul&nbsp;Yogyakarta 55197</p>\r\n', 'No', 'Textarea', '2020-11-14 00:00:00', 'Tidak', 'Off', 3),
(7, 'No WA', 'no-wa', '', '6281329001631', 'No', 'Text', '2021-02-17 00:00:00', 'Ya', 'On', 7),
(9, 'Email', 'email', '', 'evalutfina@gmail.com', 'No', 'Text', '2020-11-16 00:00:00', 'Tidak', 'On', 9),
(10, 'Twitter', 'email', '', 'https://twitter.com', 'No', 'Text', '2020-10-16 00:00:00', 'Tidak', 'On', 3),
(18, 'Footer Information', 'visitor-embed', '', '<p><span style=\"font-size:14px\">SMAN 1 Kotapinang&nbsp;menghasilkan Peserta Didik Yang&nbsp;Bermutu&nbsp;,&nbsp;Berbudaya,&nbsp;bermartabat mampu menguasai&nbsp;Ilmu Pengetahuan dan&nbsp;Teknologi Informasi&nbsp; Komunikasi Yang Tinggi Dengan Dilandasi Iman dan Taqwa&nbsp;dengan nilai-nilai karakter budaya bangsa.</span></p>\r\n', 'No', 'Textarea', '2021-02-20 00:00:00', 'Ya', 'On', 3),
(19, 'Footer Pengiriman', 'visitor-counter', '', '<p><img alt=\"\" src=\"https://1.bp.blogspot.com/-fwtVBbL9r94/XnHvo7K4ZCI/AAAAAAAAAZI/ieK4XnQPR8M_9ZTiUEOKgg8I5mVVtFHeACLcBGAsYHQ/s1600/logo-jasa-kirim-pos-jne-tiki-jnt-jne.png\" style=\"width:100%\" /></p>\r\n', 'No', 'Textarea', '2021-02-17 00:00:00', 'Ya', 'On', 3),
(20, 'Tawkto Script', 'fb', '', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/602cea799c4f165d47c4200b/1eunn7ujr\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 'No', 'Text', '2021-02-17 00:00:00', 'Ya', 'On', 3),
(22, 'Logo WEB Small', 'logo-web-small', '', 'logo_new@2x.png', 'No', 'Images', '2017-11-21 22:56:16', 'Tidak', 'Off', 0),
(77, 'Title', 'title', '', 'Jomblang Cave Tour', 'No', '', '2017-10-26 06:07:05', 'Tidak', 'Off', 0),
(78, 'Keywords', 'keywords', '', 'Keyword Adisukma', 'No', 'Text', '2017-12-20 00:07:46', 'Tidak', 'Off', 0),
(79, 'Description', 'description', '', 'Deskripsi Adisukma', 'No', 'Text', '2017-12-20 00:07:55', 'Tidak', 'Off', 0),
(80, 'Footer Contact', NULL, '', '<p>Workshop Label Klambi<br />\r\nGunungan RT 04, Gunungan, Pleret, Bantul Yogyakarta<br />\r\n(banner www.labelklambi.com)<br />\r\n<br />\r\nKonsultasi &amp; Pemesanan&nbsp;hubungi:<br />\r\n0813-2900-1631&nbsp;(WA/SMS/Tlp)<br />\r\nLine id : Labelklambi<br />\r\n<a href=\"mailto:labelklambi@gmail.com\">labelklambi@gmail.com</a></p>\r\n', NULL, 'Textarea', '2021-02-17 00:00:00', 'Ya', 'On', 2),
(81, 'Google Map', NULL, '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3987.6251506235553!2d100.05615641409067!3d1.8998402600923354!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x302d055f8b30e097%3A0x6b6297e360a30f53!2sSMA%201%20Kota%20Pinang!5e0!3m2!1sid!2sid!4v1613795673054!5m2!1sid!2sid\" width=\"100%\" height=\"210\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'No', 'Text', '2021-02-20 00:00:00', 'Ya', 'On', 8),
(82, 'No telp', NULL, '', '(0619) 0624', 'No', 'Text', '2021-02-19 00:00:00', 'Ya', 'On', 4),
(83, 'Pesan Promo', NULL, '', 'Kami menerima pesanan dan pengiriman label dari dan ke seluruh wilayah di Indonesia. Jadi tunggu apa lagi? segera buat label usaha fashion anda disini', 'No', 'Text', '2021-02-17 00:00:00', 'Ya', 'On', NULL),
(84, 'Script Head', NULL, '', '<!-- Global site tag (gtag.js) - Google Ads: 694515717 -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=AW-694515717\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'AW-694515717\');\r\n</script>\r\n\r\n\r\n\r\n		\r\n		<!-- Global site tag (gtag.js) - Google Ads: 598387016 -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=AW-598387016\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'AW-598387016\');\r\n</script>\r\n<!-- Event snippet for Kunjungan halaman conversion page -->\r\n<script>\r\n  gtag(\'event\', \'conversion\', {\'send_to\': \'AW-598387016/HR-zCPTa5d0BEMjSqp0C\'});\r\n</script>\r\n		<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-W72WTLW\');</script>\r\n<!-- End Google Tag Manager --> \r\n		\r\n		<meta name=\"google-site-verification\" content=\"g-x_R9sZtd6uuHmFqCKoGdbLN7RzIiLxzlIgXeLxzrM\" />', 'No', 'Text', '2020-12-30 00:00:00', 'Tidak', 'On', 5),
(85, 'Script Body', NULL, '', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-W72WTLW\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->\r\n		<!-- Navigation -->', 'No', 'Text', '2020-12-30 00:00:00', 'Tidak', 'On', 5);

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
(0, 'Label Klambi', '', 'enom-management-40.jpeg', '', 'No', 'SEO', 'On', 'Ya', 'Home', '', '', '2021-02-19 00:00:00', 0),
(1, 'About NOM', '', 'about-us-18.jpeg', '<p><span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">Enom diambil dari bahasa Jawa yang memiliki arti &ldquo;muda.&rdquo; Muda disini adalah Jiwa muda yang memiliki semangat tangguh dan penuh energi, yang tanpa letih selalu berinovasi dan berkreasi untuk terus bergerak maju dan memberi kontribusi bagi masyarakat.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">Spirit itulah yang menjadi dasar nama management kami. Di tahun 2018 Enom management dibentuk dan memulai aktivitas kreatifnya dengan berbagai event yang terus berlangsung hingga hari ini. Berbagai event profesional yang telah kami organisir melingkupi event budaya, seminar, gathering, bazaar juga pameran seni. Dengan perencanaan matang dan team yang solid Enom management selalu berusaha menghadirkan konsep acara yang unik, menarik dan tertata rapi sehingga acara berjalan lancar dan membuat audiens merasa nyaman dan betah mengikuti rangkaian kegiatan dari awal hingga akhir.</span></span></span></p>\r\n\r\n<p><strong><span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">Event event:</span></span></span></strong><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">1. Galenismara, Galeria Mall Yogyakarta</span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">2. Bazaar UMKM Untuk Negeri, Taman Budaya Yogyakarta 2019</span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">3. Event Pasar Kangen tahunan, Taman Budaya Yogyakarta,</span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">4. Event kolaborasi Pasar Kangen dan Prambanan Jazz Festival, Candi Prambanan</span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">5. Balkojazz Festival, Borobudur, Jawa Tengah</span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">6. Ataraxia &ndash; art exhibition, MayinArt Gallery Singapore, Jogja Gallery</span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">7. Bersama Bangkitkan Jogja, UMKM, Yogyakarta</span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"line-height:115%\"><span style=\"font-family:Arial,sans-serif\">8. Jogja Music Week, Yogyakarta</span></span></span></p>\r\n', 'No', 'Textarea', 'Off', 'Tidak', 'About', 'enom management,  e-nom, event profesional, event organizer,', 'enom management merupakan event organizer yang melingkupi event budaya, seminar, gathering, bazaar juga pameran seni', '2021-02-10 00:00:00', 0),
(2, 'Portofolio', 'portofolio', 'catalogue-11.jpeg', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><strong>Sususan Redaksi&nbsp;</strong></span><br />\r\nPimpinan Redaksi :<br />\r\nDwijo Suyono</p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<span style=\"font-size:14px\"><strong>Staf Redaksi/Reporter :</strong></span><br />\r\nDwijo Suyono<br />\r\nN Sukardi<br />\r\nArif Wicaksono<br />\r\nNadia Sekar Arum&nbsp;</p>\r\n', 'No', 'Textarea', 'On', 'Ya', 'Portofolio', 'enom management,  e-nom, event profesional, event organizer,', 'enom management merupakan event organizer yang melingkupi event budaya, seminar, gathering, bazaar juga pameran seni', '2020-10-06 00:00:00', 0),
(3, 'Prakata', 'event', 'prakata-84.jpeg', '<h1><span style=\"font-size:28px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Selamat Datang di Website SMAN 1 KOTAPINANG</strong></span></span><br />\r\n<span style=\"font-size:14px\">SMAN 1 KOTAPINANG mendidik siswa dalam bidang ekstrakurikuler, yang meliputi bidang olah raga, seni budaya, PMR, Paskibra,&nbsp; Pramuka dan&nbsp;penerapan ilmu pengetahuan dan teknologi, terutama dalam bidang sains dan teknologi dan&nbsp;</span><span style=\"font-size:12.0pt\">dalam menerapan nilai-nilai karakter budaya&nbsp; bangsa yang religious,jujur,mandiri,semangat nasionalisme dan cinta damai.</span></h1>\r\n', 'No', 'Textarea Images', 'Off', 'Tidak', '', '', '', '2021-02-22 00:00:00', 0),
(4, 'Foto', 'seo-galeri', 'foto-99.jpeg', '', 'No', 'Images SEO', 'Off', 'Tidak', 'Foto', '', '', '2021-02-20 00:00:00', 0),
(8, 'Kontak Kami', '', 'kontak-kami-87.jpeg', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original for</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', 'No', 'Textarea Images', 'On', 'Tidak', 'Kontak', '', '', '2021-02-19 00:00:00', 0),
(9, 'Berita', 'cara-order', 'berita-28.jpeg', '', 'No', 'Images SEO', 'On', 'Ya', 'Berita', '', '', '2021-02-20 00:00:00', 0),
(10, 'Visi Misi', 'syarat--ketentuan', 'visi-misi-69.jpeg', '<p style=\"margin-left:24px; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Kami memilih visi ini untuk tujuan jangka panjang, jangka menengah dan jangka pendek. Visi ini menjiwai warga sekolah kami untuk selalu mewujudkannya setiap saat dan berkelanjutan dalam mencapai tujuan sekolah.&nbsp;&nbsp; </span></span></p>\r\n\r\n<p style=\"margin-left:24px; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><em>Visi</em></strong> tersebut mencerminkan profil dan cita-cita sekolah yang:</span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Unggul dalam kegiatan keagamaan dan kepedulian sekolah terhadap lingkungan masyarakat,</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Unggul dalam prestasi akademik lulusan yang terlihat dari perolehan nilai Ujian Nasional,</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Unggul dalam persaingan masuk ke jenjang Perguruan tinggi ternama baik nasional maupun international.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Unggul dalam penerapan ilmu pengetahuan dan teknologi, terutama dalam bidang sains dan teknologi.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Unggul dalam bidang ekstrakurikuler, yang meliputi bidang olah raga, seni budaya, PMR, Paskibra,&nbsp; Pramuka, dll.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Unggul dalam bidang, kebersihan, kesehatan (UKS), dan penghijauan sekolah.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Unggul dalam kemampuan ber-Bahasa Inggris.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Unggul dalam menerapan nilai-nilai karakter budaya&nbsp; bangsa yang religious,jujur,mandiri,semangat nasionalisme dan cinta damai.</span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:24px; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Untuk mencapai visi tersebut, perlu dilakukan suatu misi berupa kegiatan jangka panjang dengan arah yang jelas. Berikut ini merupakan misi yang dirumuskan berdasarkan visi di atas.</span></span></p>\r\n\r\n<h4 style=\"margin-left:23px; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"line-height:150%\"><span style=\"font-family:Arial,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Misi SMA NEGERI 1 KOTAPINANG</span></span></span></span></h4>\r\n\r\n<p style=\"margin-left:23px; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Di setiap kerja komunitas pendidikan, kami selalu menumbuhkan disiplin sesuai aturan <em>&nbsp;</em>bidang kerja masing-masing, saling menghormati dan saling percaya dan tetap menjaga hubungan kerja yang harmonis dengan berdasarkan pelayanan prima, kerjasama, dan silaturahmi. Penjabaran misi di atas meliputi: </span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Membentuk peserta didik yang berakhlak dan berbudi pekerti luhur,</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Meningkatkan prestasi akademik lulusan secara terencana,bertahap dan berkelanjutan,</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Melaksanakan pembelajaran dan bimbingan secara efektif sehingga setiap siswa berkembang secara optimal, sesuai dengan potensi yang dimilikinya,</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Menumbuhkan dan mendorong keunggulan dalam penerapan ilmu pengetahuan, teknologi dan seni di landasi keimanan dan ketakwaan.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Mewujudkan sekolah yang berwawasan lingkungan dan berbudaya.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Meningkatkan prestasi pada bidang ekstra kurikuler,</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Menumbuhkan dan meningkatkan minat baca siswa,</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Meningkatkan kemampuan ber-Bahasa Inggris,</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Meningkatkan wawasan pengetahuan, serta penguasaan teknologi informasi</span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:76px; margin-right:3px; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">dan komunikasi.</span></span></p>\r\n\r\n<ol start=\"10\">\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Mewujudkan sekolah yang berbudaya dan berkarakter.</span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:28px; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Misi merupakan kegiatan jangka panjang yang masih perlu diuraikan menjadi beberapa kegiatan yang memiliki tujuan lebih detil dan lebih jelas. Berikut ini jabaran tujuan yang diuraikan dari visi dan misi di atas.</span></span></p>\r\n\r\n<p style=\"margin-left:28px; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;</span></span></p>\r\n\r\n<ol start=\"3\" style=\"list-style-type:upper-alpha\">\r\n	<li style=\"text-align:justify\"><span style=\"font-size:8pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Tujuan SMA NEGERI 1 KOTAPINANG</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:24px; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Tujuan sekolah kami merupakan jabaran dari visi dan misi sekolah agar komunikatif dan bisa diukur sebagai berikut:</span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Unggul dalam kegiatan keagamaan dan kepedulian sekolah.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Unggul dalam persaingan masuk ke Perguruan Tinggi Favorit</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Unggul dalam penerapan ilmu pengetahuan dan teknologi, terutama bidang sains dan matematika.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Unggul dalam lomba olah raga, kesenian, PMR, Paskibra, dan Pramuka.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Unggul dalam kebersihan dan penghijauan sekolah.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Unggul dalam menerapkan budaya dan karekter bangsa.</span></span></li>\r\n</ol>\r\n', 'No', 'Textarea Images', 'On', 'Ya', 'Visi Misi', '', '', '2021-02-20 00:00:00', 0),
(11, 'Profile Sekolah', 'tentang-kami', 'profile-sekolah-76.jpeg', '<table cellspacing=\"0\" class=\"table table-bordered\" style=\"border-collapse:collapse; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"9\" style=\"background-color:black; border-bottom:none; border-left:none; border-right:none; border-top:none; height:20px; text-align:left; vertical-align:middle; white-space:nowrap; width:682px\"><span style=\"font-size:14px\"><span style=\"color:white\"><strong><span style=\"font-family:Calibri\">1. Identitas Sekolah</span></strong></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">1</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Nama Sekolah</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">SMAN 1 KOTAPINANG</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">2</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">NPSN</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">10205379</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">3</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Jenjang Pendidikan</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">SMA</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">4</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Status Sekolah</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:&nbsp;</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Negeri</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">5</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Alamat Sekolah</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">JL. BEDAGAI NO.25 KOTA PINANG</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">RT / RW</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">0</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; text-align:center; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">/</span></span></span></td>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">0</span></span></span></td>\r\n			<td colspan=\"3\" style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; text-align:left; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Kode Pos</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">21464</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Kelurahan</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Kota Pinang</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Kecamatan</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Kec. Kota Pinang</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Kabupaten/Kota</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Kab. Labuhan Batu Selatan</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Provinsi</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Prov. Sumatera Utara</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Negara</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:&nbsp;</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Indonesia</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">6</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Posisi Geografis</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"3\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">1.8985</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Lintang</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:20px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td colspan=\"3\" style=\"border-bottom:none; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">100.0854</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Bujur</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"9\" style=\"background-color:black; border-bottom:none; border-left:none; border-right:none; border-top:none; height:20px; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:white\"><strong><span style=\"font-family:Calibri\">3. Kontak Sekolah</span></strong></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">1</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Nomor Telepon</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">0624</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">2</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Nomor Fax</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:&nbsp;</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">95146</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">3</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Email</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">smansa_kopin@yahoo.com</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">4</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Website</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:&nbsp;</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">http://www.smansakopin.com</span></span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'No', 'Textarea Images', 'On', 'Ya', 'Profile Sekolah', '', '', '2021-02-22 00:00:00', 0),
(12, 'Video', 'info-iklan', 'galeri-4.jpeg', '', 'No', 'Images SEO', 'On', 'Ya', 'Galeri Video', '', '', '2021-02-22 00:00:00', 0),
(13, 'Quote', 'prakata', '', '<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">&rdquo;</span></span><strong><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Menghasilkan Peserta Didik Yang </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Bermutu</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"> , </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Berbudaya,</span></span> <span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">bermartabat mampu menguasai</span></span> <span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Ilmu Pengetahuan dan </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Teknologi Informasi&nbsp; Komunikasi Yang Tinggi Dengan Dilandasi Iman dan Taqwa</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"> dengan nilai-nilai karakter budaya bangsa</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">&rdquo;</span></span></em></strong></p>\r\n', NULL, 'Textarea', 'On', 'Ya', 'Sakya Label Jogja | Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju ', 'Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', 'Sakya Label Jogja menyediakan jasa cetak undangan, guestbook, tag souvenir, roller belt, hangtag, pricetag, label baju serta berbagai kebutuhan cetak anda baik untuk kepentingan pribadi maupun branding sebuah produk. Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', '2021-02-19 00:00:00', 0),
(14, 'Profile Video', '', 'profile-video-92.jpeg', 'https://www.youtube.com/watch?v=ZEirUKmLauc', NULL, 'Images & Link', 'On', 'Ya', '', '', '', '2021-02-19 00:00:00', 0),
(15, 'Sarana Prasarana', '', 'sarana-prasarana-29.jpeg', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', 'No', 'Textarea Images', 'On', 'Ya', 'Sarana Prasarana', '', '', '2021-02-20 00:00:00', 0),
(16, 'Prestasi', '', 'prestasi-7.jpeg', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', 'No', 'Textarea Images', 'On', 'Ya', 'Prestasi', '', '', '2021-02-22 00:00:00', 0),
(17, 'Guru & Staff', '', 'guru--staff-72.jpeg', '<div class=\"table-responsive\">\r\n<table class=\"table table-bordered\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">JABATAN</th>\r\n			<th scope=\"col\">NAMA</th>\r\n			<th scope=\"col\">NIP</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>KEPALA SEKOLAH</td>\r\n			<td>SOLIKHIN,MPd</td>\r\n			<td>196602041994121001&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>OPERATOR SEKOLAH</td>\r\n			<td>NOVITA BR LIMBONG&nbsp;</td>\r\n			<td>198410062014032001</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WAKASEK KURIKULUM</td>\r\n			<td>Harlen Damanik</td>\r\n			<td>196405171989031007</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WAKASEK SARPRAS</td>\r\n			<td>Billem Marpaung</td>\r\n			<td>196606071998011002</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WAKASEK KESISWAAN</td>\r\n			<td>Rukita Hasmaita Hasan</td>\r\n			<td>197112302002122001</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BENDAHARA</td>\r\n			<td>Khairiyah</td>\r\n			<td>197010241994122001&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KEPALA TATA USAHA&nbsp;</td>\r\n			<td>Suwimih</td>\r\n			<td>197212142014082002&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<p>&nbsp;</p>', 'No', 'Textarea Images', 'On', 'Ya', 'Guru & Staff', '', '', '2021-02-20 00:00:00', 0);

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
(67, 'Slider 1', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</p>\r\n', 'slider-1-62.jpeg', 'slider-1.jpeg', NULL),
(68, 'Slider 2', '<p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text</p>\r\n', 'slider-2-65.jpeg', 'slider-2.jpeg', NULL),
(69, 'Slider 3', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form</p>\r\n', 'slider-3-99.jpeg', '', NULL);

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
(3, 'Youtube', 'https://www.youtube.com/channel/UCGd_KqBBB-37OKCHCRzBiHA', '2020-08-07', 'on'),
(4, 'Instagram', 'https://www.instagram.com/', '2020-08-07', 'on'),
(5, 'Pinterest', 'https://pinterest.com', '2020-08-07', 'off'),
(6, 'Email', 'smansa_kopin@yahoo.com', '2017-11-01', 'on');

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
(12, '::1', '2021-02-18', 316, '1613642737', '00:00:00'),
(13, '::1', '2021-02-19', 1475, '1613729243', '00:00:00'),
(14, '127.0.0.1', '2021-02-19', 1, '1613707680', '00:00:00'),
(15, '::1', '2021-02-20', 774, '1613804646', '00:00:00'),
(16, '::1', '2021-02-22', 885, '1613981063', '00:00:00');

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
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `gallery_foto`
--
ALTER TABLE `gallery_foto`
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
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`);

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
  MODIFY `id_artikel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

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
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gallery_foto`
--
ALTER TABLE `gallery_foto`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id_social_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `statistik`
--
ALTER TABLE `statistik`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
