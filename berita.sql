-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2025 at 01:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `isi_berita` longtext NOT NULL,
  `gambar_berita` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul_berita`, `isi_berita`, `gambar_berita`, `id_kategori`, `created_at`, `updated_at`, `total_views`) VALUES
(9, 'Lorem Ipsum Dolor Sit Amet Consen', '<h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', 'XB7Wy8IpetAAsGGyajumN86QwKC2NYIWk8LydfmD.jpg', 1, '2025-06-09 08:55:39', '2025-06-11 03:26:27', 11),
(10, 'Klub Sepak Bola Mars United Juara Antarplanet Cup 2099', '<h3>Mars City, 6 Juni 2099 – Tim sepak bola <i>Mars United</i> berhasil memenangkan final turnamen <strong>Antarplanet Cup 2099</strong> setelah mengalahkan <i>Jupiter Storm FC</i> dengan skor telak 4-0 di Stadion Orbit X.</h3><p>Pertandingan ini menjadi sejarah karena untuk pertama kalinya pertandingan final diselenggarakan di luar atmosfer Bumi, memanfaatkan gravitasi buatan dan teknologi VAR holografik.</p><p>Kapten tim Mars United, <strong>Reza Andromeda</strong>, mencetak hat-trick di babak pertama dan mencatatkan namanya sebagai pemain terbaik sepanjang turnamen.</p><p>“Kemenangan ini untuk semua koloni Mars yang mendukung kami tanpa henti,” ujar Reza dalam wawancara pasca-laga.</p>', 'YYC7Tw1puiOIgNCX1RIdorwMWmW5IbyQrjxL4JdR.jpg', 2, '2025-06-09 18:04:44', '2025-06-11 03:25:58', 6),
(11, 'Robot Cerdas “SARA” Diangkat Jadi Menteri Komunikasi di Indonesia 2075', '<p>Jakarta, 10 Juni 2075 – Pemerintah Indonesia mencatat sejarah baru dengan melantik <strong>SARA</strong> (Sistem Administrasi Robotik Autonom) sebagai <i>Menteri Komunikasi dan Teknologi Digital</i>. Ini merupakan kali pertama dalam sejarah dunia, kecerdasan buatan menduduki posisi kabinet.</p><p>SARA dirancang oleh tim ilmuwan dari <i>Institut Teknologi Nusantara</i> dan telah melalui 8 tahun pelatihan etika, kebijakan publik, serta komunikasi interaktif lintas-bahasa.</p><p>“SARA tidak hanya mampu menjawab pertanyaan dengan akurat, tapi juga merancang kebijakan berdasarkan analisis data jutaan sumber dalam hitungan detik,” ujar <strong>Presiden Neo-Indonesia</strong>, Dr. Arif Hadinata.</p><p>SARA akan fokus membangun infrastruktur komunikasi berbasis kuantum dan memperkuat literasi digital nasional melalui integrasi AI di seluruh sekolah.</p>', '7HKT2rZSrCLcd1GMILMSTDd8NubFKY1uedkFmuAW.jpg', 3, '2025-06-09 18:11:28', '2025-06-10 20:49:21', 7),
(12, 'QuantumAI Luncurkan Prosesor Terkecil di Dunia', '<p>Perusahaan rintisan QuantumAI berhasil meluncurkan prosesor kuantum terkecil yang pernah dibuat, dengan ukuran hanya sebutir pasir. Prosesor ini dikembangkan selama lima tahun terakhir oleh tim ilmuwan dari berbagai negara dan diklaim memiliki kecepatan pemrosesan 100 kali lipat dibandingkan prosesor konvensional saat ini.<br><br>Teknologi ini memungkinkan pengolahan data besar dalam waktu nyaris instan dan diprediksi akan membawa perubahan besar dalam bidang kecerdasan buatan, analisis prediktif, hingga sistem keamanan siber. Prosesor ini juga hemat energi dan dirancang untuk bekerja dalam perangkat portabel.<br><br>QuantumAI akan memulai uji coba massal ke sejumlah mitra industri di bidang teknologi medis dan transportasi. Inovasi ini memperkuat posisi perusahaan tersebut sebagai pionir dalam teknologi kuantum.</p>', 'fmK8eSbYz0ws61ngJZzNl0e9CZJxx0P8A6406ekB.jpg', 3, '2025-06-11 03:09:12', '2025-06-11 03:09:12', 0),
(13, 'Startup Indonesia Ciptakan Drone Pengirim Makanan Berbasis Suara', '<p>Sebuah startup asal Bandung memperkenalkan drone pintar yang dapat menerima perintah suara untuk mengantar makanan ke lokasi yang ditentukan. Teknologi ini dirancang untuk meningkatkan efisiensi pengantaran makanan di wilayah perkotaan yang padat dan sulit dijangkau oleh kendaraan darat.<br><br>Dengan menggunakan Natural Language Processing (NLP) dalam Bahasa Indonesia, pengguna cukup mengatakan lokasi dan jenis makanan yang dipesan. Drone kemudian akan menavigasi rute tercepat berdasarkan data lalu lintas dan cuaca terkini.&nbsp;<br><br>Teknologi ini sedang diuji coba terbatas di beberapa area kampus dan perkantoran, dan hasil awal menunjukkan efisiensi pengiriman meningkat hingga 40% dibandingkan pengiriman konvensional.</p>', 'RzI21iiL593wI5bSjVGUH7QVxrstZ5R0KyAYc3z5.jpg', 3, '2025-06-11 03:12:20', '2025-06-11 03:46:01', 5),
(14, 'Teknologi ARKini Ubah Jendela Jadi Layar Interaktif', '<p>Sebuah tim peneliti di Tokyo berhasil mengembangkan lapisan film transparan yang dapat mengubah jendela rumah atau gedung menjadi layar augmented reality interaktif. Teknologi ini dinamakan ARKini, dan memungkinkan pengguna menampilkan informasi cuaca, berita, bahkan panggilan video langsung di jendela mereka.<br><br>Film ini bekerja dengan menggunakan sensor cahaya dan proyeksi mikro yang terintegrasi ke dalam kaca. Pengguna dapat mengontrol layar menggunakan gestur tangan atau perintah suara. ARKini ditargetkan untuk pasar rumah pintar dan perkantoran modern.<br><br>Pakar teknologi menyebut ini sebagai langkah besar dalam integrasi antara dunia nyata dan digital, di mana setiap permukaan dapat menjadi media informasi.</p>', 'BAm43JwR3YZlBvGSlTPg605hvEBe24KtuZxr4h5V.jpg', 3, '2025-06-11 03:14:40', '2025-06-11 03:14:40', 0),
(15, 'NeuroLink Nusantara Berhasil Uji Coba Chip Otak Pertama di Asia Tenggara', '<p>NeuroLink Nusantara, sebuah tim riset gabungan dari beberapa universitas di Indonesia, mengumumkan keberhasilan uji coba pertama chip otak buatan lokal. Chip ini dirancang untuk membaca sinyal otak dan mengubahnya menjadi perintah elektronik, memungkinkan penderita kelumpuhan menggerakkan lengan robotik hanya dengan pikiran.<br><br>Uji coba dilakukan pada tiga pasien dengan hasil sangat menjanjikan. Teknologi ini membuka harapan baru dalam dunia rehabilitasi medis, khususnya bagi pasien pasca stroke atau cedera tulang belakang.<br><br>Proyek ini didukung oleh Kementerian Riset dan Teknologi, dan dalam waktu dekat akan melanjutkan uji coba lanjutan serta persiapan produksi skala kecil.</p>', 'wGvry3NdrojOeuapHtWYg80e0txJO3voWsGDvYZp.jpg', 3, '2025-06-11 03:16:20', '2025-06-11 03:16:20', 0),
(16, 'Game VR Lokal “Petualangan Nusantara” Tembus Pasar Eropa', '<p>Game Virtual Reality buatan developer Indonesia, \"Petualangan Nusantara\", sukses mencuri perhatian pasar Eropa dengan konsep unik yang menggabungkan petualangan, edukasi, dan kebudayaan lokal. Pemain diajak menjelajahi situs-situs bersejarah Indonesia seperti Candi Borobudur, Danau Toba, dan Taman Nasional Komodo dalam pengalaman imersif.<br><br>Game ini juga menyisipkan mini game dan teka-teki berbasis sejarah dan legenda rakyat, sehingga tidak hanya menghibur tapi juga mendidik. Dalam waktu satu bulan setelah peluncuran global, game ini telah diunduh lebih dari 2 juta kali.<br><br>Pemerintah Indonesia menyambut baik keberhasilan ini dan berencana memberikan dukungan pendanaan untuk ekspansi lebih lanjut.</p>', 'p42HKXTELa0FNlHxVtnYCtl1DsZAhMCq7o379XuC.jpg', 3, '2025-06-11 03:17:45', '2025-06-11 03:17:45', 0),
(17, 'SmartHelmet 5.0 Bisa Deteksi Kantuk dan Kirim Peringatan ke Keluarga', '<p>SmartHelmet 5.0, inovasi helm pintar terbaru dari tim mahasiswa teknik, dilengkapi sensor biometrik yang mampu mendeteksi tanda-tanda kantuk pada pengendara motor. Saat pengendara mulai mengantuk, helm akan memberikan peringatan melalui getaran dan suara, sekaligus mengirim pesan otomatis ke kontak darurat.<br><br>Helm ini juga terintegrasi dengan GPS dan sistem pemantauan cuaca untuk memberikan saran rute perjalanan yang aman. Teknologi ini telah diuji coba pada 50 pengendara selama dua bulan dengan hasil sangat positif.<br><br>SmartHelmet 5.0 diharapkan bisa menekan angka kecelakaan lalu lintas akibat mengantuk di jalan, yang menjadi salah satu penyebab utama kecelakaan di Indonesia.</p>', 'PFsCKBKvRZI1Gomf7ioLVios3sKOqSjk1QFmquii.jpg', 3, '2025-06-11 03:19:06', '2025-06-11 03:19:06', 0),
(18, 'Aplikasi “Hijauin” Bantu Pantau Jejak Karbon Harian Pengguna', '<p>SmartHelmet 5.0, inovasi helm pintar terbaru dari tim mahasiswa teknik, dilengkapi sensor biometrik yang mampu mendeteksi tanda-tanda kantuk pada pengendara motor. Saat pengendara mulai mengantuk, helm akan memberikan peringatan melalui getaran dan suara, sekaligus mengirim pesan otomatis ke kontak darurat.<br><br>Helm ini juga terintegrasi dengan GPS dan sistem pemantauan cuaca untuk memberikan saran rute perjalanan yang aman. Teknologi ini telah diuji coba pada 50 pengendara selama dua bulan dengan hasil sangat positif.<br><br>SmartHelmet 5.0 diharapkan bisa menekan angka kecelakaan lalu lintas akibat mengantuk di jalan, yang menjadi salah satu penyebab utama kecelakaan di Indonesia.</p>', 'e8TuQGktvl0XNIHO9SpEyaaa6DoWRnKzWMElWBun.jpg', 3, '2025-06-11 03:20:21', '2025-06-11 03:45:05', 4),
(19, 'Printer 4D Buatan Mahasiswa UPI Bisa Bentuk Objek Dinamis', '<p>Sekelompok mahasiswa dari Universitas Pendidikan Indonesia (UPI) menciptakan printer 4D pertama yang dikembangkan di kampus Indonesia. Berbeda dari printer 3D biasa, printer ini mampu mencetak objek yang dapat berubah bentuk ketika dipengaruhi suhu, air, atau tekanan.<br><br>Dalam demonya, tim mencetak model pipa yang melengkung otomatis saat terkena air panas, sangat potensial untuk sektor teknik sipil dan kesehatan. Teknologi ini juga bisa digunakan untuk mencetak perangkat medis yang menyesuaikan diri dengan tubuh pasien.<br><br>Penemuan ini mendapat perhatian dari investor luar negeri dan telah dipresentasikan dalam konferensi internasional teknologi pendidikan.</p>', 'hMHVZcNKFNVrxCM59AIWxbASxmmAfHZLK1p2ReX2.jpg', 3, '2025-06-11 03:21:34', '2025-06-11 03:21:34', 0),
(20, 'Algoritma DeepFake Terbaru Bisa Deteksi DeepFake Itu Sendiri', '<p>Tim ilmuwan komputer di Jerman merilis algoritma berbasis kecerdasan buatan yang dirancang khusus untuk mendeteksi konten deepfake dengan tingkat akurasi 98%. Menariknya, algoritma ini menggunakan teknologi yang mirip dengan cara deepfake dibuat, yaitu GAN (Generative Adversarial Network), namun dibalik fungsinya.<br><br>Algoritma ini mampu memindai ekspresi mikro dan ketidaksesuaian pencahayaan yang tak terlihat oleh mata manusia. Teknologi ini kini sedang diuji oleh lembaga penyiaran internasional dan platform media sosial besar.<br><br>Pengembangan ini menjadi langkah penting dalam memerangi penyebaran informasi palsu dan manipulasi visual digital.</p>', '9p8It1uuSmPIkBJpISPuSC4ZOBTG0BhTc6GS6l7g.jpg', 3, '2025-06-11 03:24:03', '2025-06-11 03:24:03', 0),
(21, 'Timnas U-23 Tampil Gemilang di Turnamen Asia', '<p>Tim nasional Indonesia U-23 berhasil mencetak sejarah dengan lolos ke babak semifinal Turnamen Asia setelah mengalahkan tim kuat Jepang U-23 dengan skor 2-1. Gol kemenangan dicetak oleh pemain muda berbakat, Reza Maulana, melalui tendangan bebas spektakuler di menit ke-87. Pelatih kepala mengapresiasi semangat juang anak asuhnya dan berjanji akan tampil maksimal di laga berikutnya.</p>', 'rvEKsgJLKXzXl6uGIg1dFkj4la0IHrbavs63glqv.jpg', 2, '2025-06-11 03:31:38', '2025-06-11 03:31:38', 0),
(22, 'Ganda Putri Bulutangkis Indonesia Sabet Gelar Juara Dunia', '<p>Pasangan ganda putri Indonesia, Ayu Lestari dan Dinda Putri, berhasil menjuarai Kejuaraan Dunia Bulutangkis setelah mengalahkan pasangan asal Korea Selatan dalam pertandingan final yang berlangsung sengit selama tiga set. Kemenangan ini disambut hangat oleh masyarakat Indonesia yang menonton dari layar kaca.</p>', 'TVDitibSDvgPbs23fHkkNVLoTsUf5uAGoe3i5XZt.jpg', 2, '2025-06-11 03:33:06', '2025-06-11 03:33:06', 0),
(23, 'PSSI Umumkan Renovasi Besar-Besaran untuk Stadion Utama', '<p>PSSI resmi mengumumkan proyek renovasi besar-besaran untuk Stadion Utama Gelora Bung Karno guna menyambut turnamen internasional tahun depan. Renovasi ini akan mencakup pembaruan rumput, pencahayaan, hingga sistem teknologi VAR untuk meningkatkan kualitas pertandingan yang digelar di Indonesia.</p>', '8d3DaUkcdCP63mwitVgTcTu3aQzkt8ckxJFm1odl.jpg', 2, '2025-06-11 03:34:10', '2025-06-11 03:34:10', 0),
(24, 'Marathon Nasional Hadirkan Ribuan Pelari dari 30 Provinsi', '<p>Ajang Marathon Nasional yang diadakan di Yogyakarta menarik lebih dari 10.000 peserta dari 30 provinsi di seluruh Indonesia. Ajang ini tidak hanya menjadi ajang olahraga, tetapi juga promosi pariwisata dan budaya lokal. Pemenang kategori umum berhasil menyelesaikan lomba 42 km dalam waktu kurang dari 2 jam 30 menit.</p>', 'Mmtk7EQEVCFuNP33AOGcQMA36z3HkkFND8KhMXxW.jpg', 2, '2025-06-11 03:34:56', '2025-06-11 03:44:27', 2),
(25, 'Atlet Panjat Tebing Indonesia Ukir Prestasi di Eropa', '<p>Atlet panjat tebing asal Bandung, Sinta Azzahra, berhasil meraih medali emas di kejuaraan panjat tebing internasional yang diselenggarakan di Austria. Ia mencatatkan waktu tercepat dalam kategori speed climbing dengan catatan waktu 6,98 detik.</p>', 'bSeMM3NjPl6Jmc221Ndzl7STs5yzHaJcCvaKVM0H.jpg', 2, '2025-06-11 03:35:41', '2025-06-11 03:35:41', 0),
(26, 'Liga Sepak Bola Nasional Kembali Digelar Setelah Rehat Panjang', '<p>Setelah jeda hampir dua bulan, Liga Sepak Bola Nasional akhirnya kembali digelar dengan protokol kesehatan ketat. Pertandingan perdana mempertemukan Persija Jakarta melawan Arema FC yang berakhir dengan skor imbang 1-1. Suporter menunjukkan antusiasme tinggi dengan tetap mematuhi aturan kapasitas stadion.</p>', 'aK9J8sb4lgI2hrm4hpd6joSsCBW9vSmzTTFO18IO.jpg', 2, '2025-06-11 03:37:44', '2025-06-11 03:37:44', 0),
(27, 'Indonesia Kirim Tim Junior ke Olimpiade Remaja', '<p>Indonesia secara resmi mengirimkan delegasi muda ke Olimpiade Remaja yang akan digelar di Paris tahun ini. Sebanyak 30 atlet muda dari berbagai cabang olahraga seperti renang, atletik, dan taekwondo dipersiapkan secara intensif melalui program pelatihan nasional yang ketat dan profesional.</p>', 'FQK1OKRi7HtfmEJ7nhRSU6MXF6teztXHgSjqlI60.jpg', 2, '2025-06-11 03:39:06', '2025-06-11 03:39:06', 0),
(28, 'Tim Basket Putra Indonesia Melaju ke Final ASEAN Cup', '<p>Tim basket putra Indonesia mencetak prestasi luar biasa dengan melaju ke babak final ASEAN Cup setelah mengalahkan Thailand di semifinal. Pertandingan berlangsung dramatis hingga menit terakhir dengan skor akhir 75-73. Pemain bintang, Andika Satria, menjadi penentu kemenangan dengan three-point buzzer beater.</p>', 'KLAgPnt1GOOOljrUN8ilnUogAYytBLWCqKUaz95W.jpg', 2, '2025-06-11 03:39:30', '2025-06-11 03:42:28', 0),
(29, 'Pelatih Baru Bawa Angin Segar untuk Tim Voli Putri', '<p>Pelatih baru tim voli putri Indonesia, Coach Lee Min-joon asal Korea Selatan, memberikan perubahan strategi signifikan dalam permainan tim. Dalam laga uji coba melawan tim Malaysia, tim Indonesia menang telak 3-0 dan menunjukkan kerja sama tim yang sangat solid serta komunikasi yang lebih efektif.</p>', 'DgsuiqmHRyFrRsdDDMBT899WERdxr3wgciXjy4l0.jpg', 2, '2025-06-11 03:40:36', '2025-06-11 03:40:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Nasional', 'nasional', NULL, '2025-06-09 17:18:25'),
(2, 'Olahraga', 'olahraga', '2025-06-09 16:26:08', '2025-06-09 17:18:25'),
(3, 'Teknologi', 'teknologi', '2025-06-09 16:26:15', '2025-06-09 17:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `jenis_menu` enum('url','page') NOT NULL,
  `url_menu` varchar(255) NOT NULL,
  `target_menu` varchar(255) NOT NULL,
  `urutan_menu` int(11) NOT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `status_menu` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `jenis_menu`, `url_menu`, `target_menu`, `urutan_menu`, `parent_menu`, `status_menu`, `created_at`, `updated_at`) VALUES
(2, 'Contact Us', 'page', '1', '_self', 3, NULL, 1, NULL, '2025-06-09 19:39:50'),
(4, 'HSR', 'url', 'https://hsr.hoyoverse.com/', '_blank', 1, 3, 1, NULL, '2025-06-09 19:40:57'),
(5, 'ZZZ', 'url', 'https://zenless.hoyoverse.com/', '_blank', 2, 3, 1, NULL, '2025-06-09 19:41:05'),
(7, 'HI3rd', 'url', 'https://honkaiimpact3.hoyoverse.com/', '_blank', 3, 3, 1, '2025-06-08 18:36:26', '2025-06-09 07:22:00'),
(11, 'GI', 'url', 'https://genshin.hoyoverse.com/', '_blank', 4, 3, 1, '2025-06-08 18:49:33', '2025-06-09 07:22:23'),
(13, 'About Us', 'page', '2', '_self', 1, NULL, 1, '2025-06-08 19:54:14', '2025-06-09 19:39:47'),
(16, 'Olahraga', 'page', '1', '_self', 1, 15, 1, '2025-06-09 16:30:23', '2025-06-09 16:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_06_04_003351_create_kategori_table', 1),
(6, '2025_06_04_231030_create_berita_table', 1),
(7, '2025_06_07_040829_create_page_table', 1),
(8, '2025_06_07_084351_create_menu_table', 1),
(9, '2025_06_09_025958_add_total_views_to_berita_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id_page` int(11) NOT NULL,
  `judul_page` varchar(255) NOT NULL,
  `isi_page` longtext NOT NULL,
  `status_page` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id_page`, `judul_page`, `isi_page`, `status_page`, `created_at`, `updated_at`) VALUES
(1, 'Contact Us', '<h2>Hubungi Kami</h2><p>Kami sangat menghargai pendapat, pertanyaan, atau masukan dari pembaca kami. Jika Anda memiliki pertanyaan tentang konten, ingin memberikan saran, atau memiliki keluhan, silakan hubungi kami melalui informasi kontak di bawah ini:</p><p>&nbsp;</p><h4>📍 Alamat Kantor</h4><p><strong>Website Berita Indonesia</strong><br>Jl. Pandanwangi No. 123,<br>Bandung, Jawa Barat 40123</p><p>&nbsp;</p><h4>📧 Email</h4><p>info@websiteberita.com<br><i>(Gunakan redaksi@websiteberita.com untuk urusan redaksi)</i></p><p>&nbsp;</p><h4>☎️ Telepon / WhatsApp</h4><p>+62 812 3456 7890<br><i>Senin – Jumat, 08.00 – 17.00 WIB</i></p><p>&nbsp;</p><h4>📝 Format Pesan</h4><p>Silakan gunakan format berikut untuk mengirimkan pesan kepada kami secara langsung. Kami akan merespons dalam waktu maksimal <strong>2x24 jam</strong> pada hari kerja.</p><ul><li>Nama Lengkap</li><li>Email</li><li>Subjek</li><li>Pesan</li></ul><p>Terima kasih atas perhatian dan dukungan Anda terhadap <strong>Website Berita</strong>. Bersama kita ciptakan media yang lebih informatif dan terpercaya.</p>', 1, NULL, '2025-06-09 17:58:32'),
(2, 'About Us', '<h2>About Us</h2><p>Welcome to <strong>Website Berita</strong>, your trusted source for the latest news, insights, and updates across various topics including technology, sports, entertainment, and more.</p><p>Founded in 2025, we are committed to delivering accurate and engaging content to our readers. Our editorial team is passionate about journalism and driven by curiosity, credibility, and integrity.</p><p>We believe in the power of information to inspire and empower. That’s why we work tirelessly to ensure that every article we publish meets the highest standards of quality and truthfulness.</p><h3>Our Mission</h3><ul><li>Provide up-to-date and relevant news.</li><li>Maintain a platform for free expression and knowledge sharing.</li><li>Support digital literacy and critical thinking.</li></ul><p>Thank you for visiting us!</p>', 1, '2025-06-08 19:46:25', '2025-06-09 17:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'Test Admin', 'test@example.com', '2025-06-07 02:01:48', '$2y$12$TYAlyJrilc8VsZbgBMfMGuBv1M7K/r1vbHcASk1Qn2j7bDX7x3GcG', 'JRwel1JC0iBwsSyDVzoK8AiEk4DeXFdrECUcbLpc7tVidtrcHlwr1cAZSIse', '2025-06-07 02:01:48', '2025-06-09 18:47:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `berita_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
