-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 25, 2019 at 11:59 AM
-- Server version: 10.0.38-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `konf8699_praktikum`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktivitas`
--

CREATE TABLE `aktivitas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_mk` bigint(20) UNSIGNED NOT NULL,
  `id_kelas` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aktivitas`
--

INSERT INTO `aktivitas` (`id`, `id_mk`, `id_kelas`, `created_at`, `updated_at`, `password`) VALUES
(1, 2, 1, NULL, NULL, '7g4636g'),
(2, 2, 2, NULL, NULL, 'fjf8793d'),
(3, 2, 3, NULL, NULL, '09772hg'),
(4, 2, 4, NULL, NULL, '7gdf35'),
(5, 2, 5, NULL, NULL, 'dj26eod'),
(6, 2, 6, NULL, NULL, 'dkjf872');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `created_at`, `updated_at`) VALUES
(1, 'S1TT-05-A', NULL, '2019-03-16 00:07:47'),
(2, 'S1TT-05-B', NULL, NULL),
(3, 'S1TT-05-C', NULL, NULL),
(4, 'S1TT-05-D', NULL, NULL),
(5, 'S1TT-05-E', NULL, NULL),
(6, 'S1TT-05-F', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_modul` bigint(20) UNSIGNED NOT NULL,
  `id_asisten` bigint(20) UNSIGNED NOT NULL,
  `tgl_praktikum` date NOT NULL,
  `pdf` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `id_user`, `id_modul`, `id_asisten`, `tgl_praktikum`, `pdf`, `pesan`, `created_at`, `updated_at`) VALUES
(7, 1, 5, 401, '2019-03-14', '15102007_TT6222311_5_86558.pdf', 'sdfdsf sdfsdfsdf sdf sd fds sf dsfsd sdf dsfdsfsdf', '2019-03-18 01:02:10', '2019-03-18 01:02:10'),
(8, 1, 4, 401, '2019-03-15', '15102007_TT6222311_4_83855.pdf', NULL, '2019-03-18 02:32:09', '2019-03-18 08:58:14'),
(9, 1, 6, 399, '2019-03-23', '15102007_TT6222311_6_45157.pdf', 'jkhk kjhj khk hkhk hkjh hkj jkhkj hjkh kjhkhk', '2019-03-18 08:45:25', '2019-03-18 08:45:25'),
(10, 244, 4, 399, '2019-03-11', '17101002_TT6222311_4_94594.pdf', 'Linknya baru dapat pak :)', '2019-03-18 12:10:04', '2019-03-18 12:10:04'),
(11, 249, 4, 403, '2019-03-11', '17101008_TT6222311_4_55978.pdf', 'Pengelompokan kabel lebih rapi agar praktikan tidak kesusahan dlm memilih kabel yg pas serta untuk efektifitas waktu', '2019-03-18 12:23:26', '2019-03-18 13:27:31'),
(12, 247, 4, 364, '2019-03-11', '17101005_TT6222311_4_1776.pdf', 'Untuk praktikum selanjutnya Saya harap pelaksanaannya tepat waktu dan apabila ada kesulitan dalam praktikum untuk aslab harap ikut membantu tidak hanya melihat saja. Terima Kasih', '2019-03-18 13:02:34', '2019-03-18 13:29:17'),
(13, 257, 4, 404, '2019-03-11', '17101016_TT6222311_4_21949.pdf', NULL, '2019-03-18 13:10:02', '2019-03-18 13:10:02'),
(14, 253, 4, 364, '2019-03-11', '17101012_TT6222311_4_81504.pdf', 'dalam melaksanakan praktikum berjalan dengan baik', '2019-03-18 13:40:25', '2019-03-18 13:40:25'),
(15, 241, 4, 403, '2019-03-11', '13101035_TT6222311_4_21315.pdf', NULL, '2019-03-18 13:53:53', '2019-03-18 13:53:53'),
(16, 255, 4, 403, '2019-03-11', '17101014_TT6222311_4_91446.pdf', 'lebih memperhatikan praktikan pada saat praktikum', '2019-03-18 13:58:29', '2019-03-18 13:58:29'),
(18, 293, 4, 401, '2019-03-12', '17101095_TT6222311_4_52117.pdf', 'semoga praktikum mikroprosesor bisa lebih baik lagi.', '2019-03-18 16:24:13', '2019-03-18 16:24:13'),
(19, 281, 4, 403, '2019-03-12', '17101083_TT6222311_4_69630.pdf', '1. Mohon aslab agar menjelaskan bagaimana script berjalan dan bagaimana langkah kerjanya secara rinci \r\n2. Dimohon sistem diperbaiki, aslab saya bernama rijal taufikurahman tetapi tidak ada pada sistem ini. Oleh ka indak disarankan menggunakan nama beliau. Tolong untuk di benahi lagi\r\n\r\nTerimakasih', '2019-03-18 16:28:50', '2019-03-18 16:28:50'),
(20, 246, 4, 364, '2019-03-11', '17101004_TT6222311_4_52165.pdf', 'Lebih bisa memahami materi mikroposesor supaya mudah dalam praktikan', '2019-03-18 17:32:55', '2019-03-18 17:32:55'),
(21, 258, 4, 364, '2019-03-11', '17101018_TT6222311_4_59559.pdf', 'lebih diperjelas cara menjelaskannya', '2019-03-18 18:24:42', '2019-03-18 18:24:42'),
(22, 250, 4, 404, '2019-03-11', '17101009_TT6222311_4_56449.pdf', NULL, '2019-03-18 20:03:15', '2019-03-18 20:03:15'),
(23, 243, 4, 403, '2019-03-11', '17101001_TT6222311_4_9298.pdf', 'Assalamualaikum wr.wb, Maaf atas keterlambatan pengiriman laporan nya pak, tertulis di sistematik laporan adalah 7 Hari kerja dan umumnya yang saya tahu hari Minggu tidak masuk hitungan hari kerja , Jadi maaf atas keterlambatan nya pak terimakasih..', '2019-03-18 22:23:43', '2019-03-18 22:27:12'),
(24, 245, 4, 404, '2019-03-11', '17101003_TT6222311_4_563.pdf', 'Mohon maaf demi kenyamanan kita bersama. Untuk link sesegera mungkin dibagikan. Terima kasih', '2019-03-19 00:48:57', '2019-03-19 00:48:57'),
(25, 292, 4, 403, '2019-03-12', '17101094_TT6222311_4_90291.pdf', 'Sudah baik dlam membimbing pratikum', '2019-03-19 01:06:08', '2019-03-19 01:06:08'),
(26, 292, 4, 403, '2019-03-12', '17101094_TT6222311_4_19779.pdf', 'Sudah baik dlam membimbing pratikum', '2019-03-19 01:06:22', '2019-03-19 01:06:22'),
(27, 254, 4, 403, '2019-03-11', '17101013_TT6222311_4_41912.pdf', 'Sebaiknya pada saat praktikum alatnya bisa untuk ditambahkan agar setiap mahasiswa menjadi lebih paham.', '2019-03-19 03:25:23', '2019-03-19 03:25:23'),
(28, 260, 4, 403, '2019-03-11', '17101020_TT6222311_4_85368.pdf', 'semoga praktikum mikroprosesor ini memiliki alat-alat yang memadai untuk para praktikan yang sedang praktikum.', '2019-03-19 05:46:42', '2019-03-19 05:46:42'),
(29, 393, 4, 402, '2019-03-11', '17101209_TT6222311_4_29137.pdf', 'Untuk Aslab semoga dalam penjelasan dapat menjelaskan dengan detail dan mudah dipahami untuk para praktikan', '2019-03-19 06:41:28', '2019-03-19 06:42:54'),
(30, 398, 4, 403, '2019-03-11', '17101217_TT6222311_4_29693.pdf', 'Kalau bisa tugasnya jangan terlalu banyak :)', '2019-03-19 07:01:11', '2019-03-19 07:01:11'),
(31, 391, 4, 401, '2019-03-11', '17101206_TT6222311_4_39245.pdf', NULL, '2019-03-19 07:16:47', '2019-03-19 07:16:47'),
(32, 390, 4, 403, '2019-03-10', '17101205_TT6222311_4_33773.pdf', 'SANGAT MEMBANTU MENGEMBANGKAN', '2019-03-19 08:12:29', '2019-03-19 08:12:29'),
(33, 288, 4, 401, '2019-03-12', '17101090_TT6222311_4_35947.pdf', NULL, '2019-03-19 09:19:09', '2019-03-19 09:19:09'),
(34, 282, 4, 401, '2019-03-12', '17101084_TT6222311_4_24633.pdf', NULL, '2019-03-19 10:42:05', '2019-03-19 10:42:05'),
(35, 368, 4, 350, '2019-03-12', '17101175_TT6222311_4_38800.pdf', 'Laporan mikro modul 1 \r\nElsa Nur Oktaviar Herawati\r\n17101175\r\nS1 TT 05E\r\nPesan untuk matkul mikro: lebih ditingkatkan sarana dan prasana untuk praktikum Mikro.', '2019-03-19 11:27:31', '2019-03-19 11:27:31'),
(36, 251, 4, 404, '2019-03-11', '17101010_TT6222311_4_25762.pdf', 'Waktu pengerjaan mungkin bisa ditambah lagi mengingat mahasiswa membutuhkan keringanan.', '2019-03-19 13:23:53', '2019-03-19 13:23:53'),
(37, 359, 4, 364, '2019-03-12', '17101165_TT6222311_4_76069.pdf', 'Jangan terlau cepat menjelaskan materi pada saat praktikum berlangsung', '2019-03-19 13:54:39', '2019-03-19 13:54:39'),
(38, 357, 4, 404, '2019-03-12', '17101163_TT6222311_4_27651.pdf', 'Tidak terlalu cept saat menyampaikan materi, karena kemampuan masiswa(i) untuk menyerap ilmu berbeda-beda, sehingga seluruh mahasiswa(i) bisa memahami materi dengan baik', '2019-03-19 14:03:06', '2019-03-19 14:03:06'),
(39, 294, 4, 401, '2019-03-12', '17101096_TT6222311_4_48777.pdf', 'Bismillahhirrahmannirrahim', '2019-03-19 14:38:23', '2019-03-19 14:38:23'),
(40, 395, 4, 403, '2019-03-11', '17101211_TT6222311_4_92451.pdf', NULL, '2019-03-19 14:48:02', '2019-03-19 14:48:02'),
(41, 297, 4, 403, '2019-03-12', '17101099_TT6222311_4_76260.pdf', 'terlalu cepat dalam penyampaian', '2019-03-19 15:05:41', '2019-03-19 15:05:41'),
(42, 392, 4, 403, '2019-03-11', '17101207_TT6222311_4_55788.pdf', 'Untuk waktu pembuatan laporan kelas karyawan agar di sesuaikan 7 hari kerja, weekend tidak dihitung terimakasih', '2019-03-19 15:06:46', '2019-03-19 15:06:46'),
(43, 371, 4, 364, '2019-03-12', '17101181_TT6222311_4_43914.pdf', 'alatnya sudah memadahi, mungkin percobaannya dikurangin agar tepat waktu', '2019-03-19 16:37:44', '2019-03-19 16:37:44'),
(44, 369, 4, 404, '2019-03-12', '17101178_TT6222311_4_33482.pdf', 'semoga hasilnya maksimal', '2019-03-19 16:40:39', '2019-03-19 16:40:39'),
(45, 284, 4, 403, '2019-03-12', '17101086_TT6222311_4_36950.pdf', 'Waktu pengumpulan laporan di beri jeda lebih supaya mahasiswa tidak mengerjakan banyak laporan dan tugas dalam waktu yang singkat', '2019-03-20 00:27:49', '2019-03-20 00:27:49'),
(46, 394, 4, 403, '2019-03-11', '17101210_TT6222311_4_54411.pdf', 'dalam praktikum selanjutnya penyampaianya lebih menarik lagi', '2019-03-20 00:48:13', '2019-03-20 00:48:13'),
(47, 280, 4, 405, '2019-03-12', '17101082_TT6222311_4_48852.pdf', 'tingkatkan perhatian kepada praktikan!!', '2019-03-20 09:35:17', '2019-03-20 09:35:17'),
(48, 337, 4, 364, '2019-03-12', '17101143_TT6222311_4_88203.pdf', NULL, '2019-03-20 10:49:38', '2019-03-20 10:49:38'),
(49, 207, 4, 400, '2019-03-12', '17101042_TT6222311_4_34125.pdf', NULL, '2019-03-20 14:27:18', '2019-03-20 14:27:18'),
(50, 360, 4, 350, '2019-03-12', '17101166_TT6222311_4_88854.pdf', 'Lanjutkan kinerjanya, sudah baik !', '2019-03-20 15:25:05', '2019-03-20 15:25:05'),
(51, 259, 4, 364, '2019-03-11', '17101019_TT6222311_4_5686.pdf', 'Memperbanyak alat agar mahasiswa bisa lebih bereksplorasi dalam praktikum mikroprosesor', '2019-03-20 16:46:53', '2019-03-20 16:46:53'),
(52, 397, 4, 403, '2019-03-11', '17101214_TT6222311_4_32.pdf', NULL, '2019-03-21 04:41:47', '2019-03-21 04:41:47'),
(53, 324, 4, 364, '2019-02-12', '17101128_TT6222311_4_55616.pdf', 'saran saya untuk praktikum kedepanya lebih untuk memperbaiki jika ada trouble . terimakasih', '2019-03-21 05:22:30', '2019-03-21 05:22:30'),
(54, 205, 4, 401, '2019-03-12', '14101046_TT6222311_4_1154.pdf', 'pak kalau bisa sebelum di mulai praktikum format praktikum sudah di tentukan saya sudah edit beberapa kali di karenakan format yang berubah ubah', '2019-03-21 06:15:22', '2019-03-21 06:15:22'),
(55, 215, 4, 399, '2019-03-12', '17101051_TT6222311_4_44978.pdf', 'Selamat sore Pak, berikut laporan praktikum modul 1 saya. Atas perhatiannya saya ucapkan Terimakasih.', '2019-03-21 09:54:05', '2019-03-21 09:54:05'),
(56, 319, 4, 364, '2019-03-12', '17101122_TT6222311_4_69873.pdf', NULL, '2019-03-21 11:20:31', '2019-03-21 11:20:31'),
(57, 336, 4, 364, '2019-03-12', '17101142_TT6222311_4_27176.pdf', NULL, '2019-03-21 11:22:12', '2019-03-21 11:22:12'),
(58, 332, 4, 368, '2019-03-12', '17101137_TT6222311_4_60162.pdf', 'Improvisasi untuk kedepannya semoga lebih baik terus, Terimakasih', '2019-03-21 11:25:41', '2019-03-21 11:25:41'),
(59, 213, 4, 400, '2019-03-12', '17101049_TT6222311_4_66881.pdf', 'waktu praktikum diperpanjang agar mahasiswa lebih bisa mendalami materi', '2019-03-21 11:31:43', '2019-03-21 11:31:43'),
(60, 214, 4, 399, '2019-03-12', '17101050_TT6222311_4_78455.pdf', 'Selamat malam,\r\nSaya Dania Anggraeni NIM 17101050 kelas S1TT-05B yang mengikuti perkuliahan praktikum Mikroprosesor. Dengan ini saya lampirkan laporan praktikum Mikroprosesor modul 1 saya yang telah saya buat sebagai laporan praktikum Sistem Digital dan Sistem Analog. Terimakasih atas perhatiannya.\r\n\r\nDania Anggraeni', '2019-03-21 11:43:38', '2019-03-21 11:43:38'),
(61, 328, 4, 350, '2019-03-12', '17101133_TT6222311_4_10625.pdf', 'alat dan bahan jangan sampai hilang atau rusak karna menyusahkan praktikan pada saat praktikum mulai', '2019-03-21 12:50:47', '2019-03-21 12:50:47'),
(62, 206, 4, 400, '2019-03-12', '17101041_TT6222311_4_110.pdf', 'sebelum alat digunkan untuk praktik sebaiknya di cek dahulu apakah alat tersebut berfungsi dengan baik atau tidak,agar tidak mengganggu saat praktikum berlangsung', '2019-03-21 13:07:53', '2019-03-21 13:07:53'),
(63, 222, 4, 401, '2019-03-12', '17101059_TT6222311_4_40007.pdf', 'Pengecekan kembali alat-alat untuk praktikum, sebab ada beberapa alat seperti LED dan kabel jumper yang tidak berjalan sebagaimana mestinya.', '2019-03-21 13:08:08', '2019-03-21 13:08:08'),
(64, 221, 4, 399, '2019-03-12', '17101058_TT6222311_4_64404.pdf', 'Baiknya asistensi tidak terlalu sore, apalagi malam', '2019-03-21 13:19:44', '2019-03-21 13:19:44'),
(65, 326, 4, 368, '2019-03-12', '17101131_TT6222311_4_65299.pdf', NULL, '2019-03-21 13:40:52', '2019-03-21 13:40:52'),
(66, 267, 4, 403, '2019-03-18', '17101030_TT6222311_4_3379.pdf', 'link tinkercad : https://www.tinkercad.com/things/hvO7jwMtx9v\r\n\r\nMohon maaf ada kesalahan penulisan nomer gambar bab 5. \r\nsebelumnya file telah di upload pada tanggal 22', '2019-03-21 13:54:25', '2019-03-23 12:39:13'),
(67, 295, 4, 401, '2019-03-12', '17101097_TT6222311_4_83936.pdf', 'lebih baiknya hari kerja laporan 7 hari kerja diwaktu sabtu dan minggu libur dikarenakan praktikum lebih dari 1.', '2019-03-21 13:56:45', '2019-03-21 13:56:45'),
(68, 279, 4, 403, '2019-03-12', '17101081_TT6222311_4_19269.pdf', 'Demi kemajuan ITTP bersama-sama kita harus mengerjakan hal-hal yang penting dan efisien.', '2019-03-21 13:56:53', '2019-03-21 13:56:53'),
(69, 366, 4, 364, '2019-03-12', '17101173_TT6222311_4_47751.pdf', 'tingkatkan kualitas modul praktikum beserta asisten praktikumnya', '2019-03-21 14:33:15', '2019-03-21 14:33:15'),
(70, 330, 4, 364, '2019-03-12', '17101135_TT6222311_4_82014.pdf', NULL, '2019-03-21 14:52:48', '2019-03-21 14:52:48'),
(71, 209, 4, 399, '2019-03-12', '17101044_TT6222311_4_64099.pdf', 'Silahkan dinilai pak, laporan ini sudah saya asistensi beberapa kali.', '2019-03-21 14:55:10', '2019-03-21 14:55:10'),
(72, 356, 4, 404, '2019-03-12', '14101083_TT6222311_4_74021.pdf', 'mohon diacc terimakasih ^^', '2019-03-21 15:09:47', '2019-03-21 15:09:47'),
(73, 289, 4, 401, '2019-03-12', '17101091_TT6222311_4_51106.pdf', 'praktikum terhambat karena komponen-komponen ada beberapa yang rusak.', '2019-03-21 15:13:22', '2019-03-21 15:13:22'),
(74, 321, 4, 368, '2019-03-12', '17101124_TT6222311_4_56072.pdf', 'alat lebih  di lengkpkan lagi, untuk tugas dimohon jangan terlalu berat agar mahasiswa bisa paham sedikit sedikit.', '2019-03-21 15:16:26', '2019-03-21 15:16:26'),
(75, 219, 4, 401, '2019-03-12', '17101056_TT6222311_4_12485.pdf', 'Pendalaman untuk pemahaman di script program', '2019-03-21 15:20:29', '2019-03-21 15:20:29'),
(76, 208, 4, 399, '2019-03-12', '17101043_TT6222311_4_39396.pdf', 'Masukan dari saya, dalam menyampaikan informasi waktu pengumpulan laporan atau informasi lainnya harus bisa lebih jelas lagi dan jangan mendadak dalam menginformasikannya.\r\nTerimakasih.', '2019-03-21 15:25:54', '2019-03-21 15:25:54'),
(77, 367, 4, 350, '2019-03-12', '17101174_TT6222311_4_2709.pdf', 'semoga kedepannya alat2 di laboratorium cukup memadai.', '2019-03-21 16:01:36', '2019-03-21 16:01:36'),
(78, 325, 4, 364, '2019-03-12', '17101130_TT6222311_4_46316.pdf', 'semoga lebik baik dari pratikum sebelum sebelumnya', '2019-03-21 16:10:57', '2019-03-21 16:38:15'),
(79, 220, 4, 399, '2019-03-12', '17101057_TT6222311_4_47627.pdf', 'Alatnya lebih diperbanyak :)', '2019-03-21 16:13:48', '2019-03-21 16:13:48'),
(80, 334, 4, 350, '2019-03-12', '17101140_TT6222311_4_14818.pdf', 'lebih dekat dengan praktikan, agar praktikan lebih nyaman dan lebih paham', '2019-03-21 16:17:29', '2019-03-21 16:17:29'),
(81, 372, 4, 364, '2019-03-12', '17101182_TT6222311_4_77361.pdf', 'Semoga Diterima dan di ACC', '2019-03-21 16:21:50', '2019-03-21 16:21:50'),
(82, 323, 4, 350, '2019-03-12', '17101127_TT6222311_4_67340.pdf', 'Semoga kedepannya lebih baik lagi.', '2019-03-21 16:25:53', '2019-03-21 16:25:53'),
(83, 333, 4, 368, '2019-03-12', '17101139_TT6222311_4_86544.pdf', 'semoga jangan ribet ribet', '2019-03-21 16:30:25', '2019-03-21 16:30:25'),
(84, 211, 4, 399, '2019-03-12', '17101047_TT6222311_4_7053.pdf', 'Mohon untuk infonya lebih diperjelas lagi, agar mahasiswa/praktikan tidak bingung dalam mengerjakan laporan terimakasih...', '2019-03-21 16:33:50', '2019-03-21 16:33:50'),
(85, 327, 4, 368, '2019-03-12', '17101132_TT6222311_4_35930.pdf', 'Ditingkatkan lagi kinerja asisten praktikum, agar dapat maksimal dalam membimbing praktikan ketika praktikum.', '2019-03-21 16:40:43', '2019-03-21 16:40:43'),
(86, 216, 4, 401, '2019-03-12', '17101052_TT6222311_4_98110.pdf', 'semoga perangkatnya dapat dibenahi karena ada beberapa yg tidak jadi. terimakasih', '2019-03-21 16:47:20', '2019-03-21 16:47:20'),
(87, 322, 4, 350, '2019-03-12', '17101126_TT6222311_4_8923.pdf', 'sudah baik dan sudah bagus', '2019-03-21 16:58:58', '2019-03-21 16:58:58'),
(88, 370, 4, 404, '2019-03-12', '17101180_TT6222311_4_69760.pdf', 'sudah baik dalam praktikum mikroprosesor. fasilitas alat dan bahan praktikum sudah lebih lengkap', '2019-03-21 17:03:04', '2019-03-21 17:03:04'),
(89, 358, 4, 364, '2019-03-12', '17101164_TT6222311_4_50882.pdf', NULL, '2019-03-21 17:08:57', '2019-03-21 17:08:57'),
(90, 218, 4, 400, '2019-03-12', '17101055_TT6222311_4_97745.pdf', NULL, '2019-03-21 17:12:24', '2019-03-21 17:12:24'),
(91, 320, 4, 368, '2019-03-12', '17101123_TT6222311_4_61002.pdf', 'Asisten mampu berkeliling tidak diam di satu tempat saja', '2019-03-21 17:46:48', '2019-03-21 17:46:48'),
(92, 276, 4, 364, '2019-03-18', '17101039_TT6222311_4_43630.pdf', 'Laporan Praktikum Mikroprosesor Unit I, Vi Bauty Riska Utami, S1 TT 05 A,', '2019-03-23 05:03:37', '2019-03-23 05:03:37'),
(93, 269, 4, 404, '2019-03-18', '17101032_TT6222311_4_42645.pdf', NULL, '2019-03-23 09:25:43', '2019-03-23 09:25:43'),
(94, 376, 4, 404, '2019-03-19', '17101190_TT6222311_4_549.pdf', 'sudah bagus pak tapi tugasnya dikurangin ya :)', '2019-03-23 11:23:42', '2019-03-23 11:23:42'),
(95, 283, 4, 401, '2019-03-12', '17101085_TT6222311_4_12289.pdf', '7 Hari kerja. Mikro sesi 1', '2019-03-24 02:57:33', '2019-03-24 02:57:33'),
(96, 261, 4, 403, '2019-03-18', '17101021_TT6222311_4_9129.pdf', NULL, '2019-03-24 06:20:22', '2019-03-24 06:20:22'),
(97, 299, 4, 405, '2019-03-19', '17101101_TT6222311_4_97748.pdf', 'lebih ditingkatkan lagi mengenai penjelasan-penjelasan dari fungsi komponen yang ada pada lab', '2019-03-24 12:05:38', '2019-03-24 12:05:38'),
(98, 275, 4, 404, '2019-03-18', '17101038_TT6222311_4_4511.pdf', NULL, '2019-03-24 13:40:52', '2019-03-24 13:40:52'),
(99, 286, 4, 401, '2019-03-12', '17101088_TT6222311_4_78485.pdf', 'laporan mikro modul 1', '2019-03-24 16:14:30', '2019-03-24 16:14:30'),
(100, 272, 4, 403, '2019-03-18', '17101035_TT6222311_4_43836.pdf', NULL, '2019-03-25 00:34:27', '2019-03-25 00:34:44'),
(101, 342, 4, 364, '2019-03-19', '17101148_TT6222311_4_63321.pdf', 'Mulai waktu praktikum harus tepat waktu', '2019-03-25 01:21:33', '2019-03-25 01:21:33'),
(102, 274, 4, 404, '2019-03-18', '17101037_TT6222311_4_51663.pdf', NULL, '2019-03-25 02:23:29', '2019-03-25 02:23:29'),
(103, 212, 4, 400, '2019-03-12', '17101048_TT6222311_4_95531.pdf', 'Maaf telat mengumpulkan karena keadaan laptop sedang rusak dan baru selesai diperbaiki hari minggu kemaren.', '2019-03-25 05:06:17', '2019-03-25 05:06:17'),
(106, 350, 4, 368, '2019-03-19', '17101157_TT6222311_4_58858.pdf', 'Semoga tempat praktikum nya lebih baik', '2019-03-25 11:30:56', '2019-03-25 11:30:56'),
(107, 271, 4, 364, '2019-03-18', '17101034_TT6222311_4_78135.pdf', 'Lanjutkan . Terima kasih', '2019-03-25 11:37:45', '2019-03-25 11:37:45'),
(108, 314, 4, 405, '2019-03-19', '17101121_TT6222311_4_38525.pdf', 'sebaiknya sebelum praktikum alat-alat yang akan digunakan dalam praktikum dicek terlebih dahulu kondisinya.', '2019-03-25 12:06:08', '2019-03-25 12:06:08'),
(109, 338, 4, 368, '2019-03-19', '17101144_TT6222311_4_63346.pdf', NULL, '2019-03-25 12:07:49', '2019-03-25 12:07:49'),
(110, 348, 4, 364, '2019-03-19', '17101155_TT6222311_4_28431.pdf', NULL, '2019-03-25 12:24:25', '2019-03-25 12:24:25'),
(111, 262, 4, 404, '2019-03-18', '17101022_TT6222311_4_4846.pdf', 'Saya M. Bilal sudah mengumpulkan Laporan Modul 1 pada tanggal 25 Maret 2019.', '2019-03-25 12:36:07', '2019-03-25 12:36:07'),
(112, 381, 4, 404, '2019-03-19', '17101196_TT6222311_4_74610.pdf', 'sebaiknya ditingkatkan lagi dalam pemahaman per baris program tiap mahasiswa dan penjelasan lebih di detail kan kembali.', '2019-03-25 12:40:38', '2019-03-25 12:40:38'),
(113, 277, 4, 364, '2019-03-18', '17101040_TT6222311_4_72010.pdf', NULL, '2019-03-25 12:55:08', '2019-03-25 12:55:08'),
(114, 309, 4, 405, '2019-03-19', '17101115_TT6222311_4_58972.pdf', 'Praktikum sudah berjalan dengan baik', '2019-03-25 12:56:45', '2019-03-25 12:56:45'),
(115, 229, 4, 401, '2019-03-19', '17101066_TT6222311_4_20463.pdf', 'Laporan Modul 1 Muhammad Alwi Adnan Amal', '2019-03-25 13:11:07', '2019-03-25 13:11:07'),
(116, 263, 4, 404, '2019-03-18', '17101024_TT6222311_4_54437.pdf', 'Sebaiknya kabel jumper dipisah sesuai dengan jenisnya, agar lebih cepat dalam praktikum', '2019-03-25 14:09:21', '2019-03-25 14:09:21'),
(117, 235, 4, 401, '2019-03-19', '17101073_TT6222311_4_64106.pdf', 'pesan : mohon untuk mempertimbangkan peralatan  kabel jumper, karena pada saat praktikum ada beberapa yang rusak, terimakasih', '2019-03-25 15:03:44', '2019-03-25 15:03:44'),
(118, 353, 4, 350, '2019-03-19', '17101160_TT6222311_4_65752.pdf', 'sebaiknya alat untuk digunakan saat praktikum ganti dengan yang baru agar lebih bagus dan tidak ada yang rusak.', '2019-03-25 15:07:31', '2019-03-25 15:07:31'),
(119, 266, 4, 403, '2019-03-12', '17101029_TT6222311_4_98595.pdf', 'penjelasan mudah di pahami', '2019-03-25 16:03:16', '2019-03-25 16:03:16'),
(120, 265, 4, 364, '2019-03-18', '17101028_TT6222311_4_9611.pdf', 'laporan praktikum ini memudahkan mahasiswa menghemat biaya karena dikumpulkan melalui soft file', '2019-03-25 16:53:38', '2019-03-25 16:53:38'),
(121, 223, 4, 401, '2019-03-19', '17101060_TT6222311_4_16463.pdf', 'Pesan saya , kalau bisa asisten praktikum nya tidak susah untuk asistensi laporan nya agar kami bisa kerjakan laporan tanpa dedline dan juga kalau bisa untuk asistensi laporan untuk tidak sesuai yang di kasih kalau bisa bebas mau kesiapa asistensi laporan nya , terimakasih', '2019-03-25 22:10:11', '2019-03-25 22:10:11'),
(122, 228, 4, 401, '2019-03-19', '17101065_TT6222311_4_87265.pdf', 'Semoga lebih baik lagi', '2019-03-26 01:12:25', '2019-03-26 01:12:25'),
(123, 308, 4, 405, '2019-03-19', '17101114_TT6222311_4_95966.pdf', 'Untuk mengetahui dasar-dasar pengoperasian Arduino', '2019-03-26 02:35:47', '2019-03-26 02:35:47'),
(124, 291, 4, 405, '2019-03-12', '17101093_TT6222311_4_3044.pdf', 'untuk memenuhi tugas praktikum mikroprosesor modul 1', '2019-03-26 02:43:14', '2019-03-26 02:43:14'),
(125, 285, 4, 403, '2019-03-12', '17101087_TT6222311_4_7720.pdf', 'Maaf tidak sesuai deadline', '2019-03-26 03:22:18', '2019-03-26 03:22:18'),
(126, 285, 4, 403, '2019-03-12', '17101087_TT6222311_4_40408.pdf', 'Maaf tidak sesuai deadline', '2019-03-26 03:22:24', '2019-03-26 03:22:24'),
(127, 285, 4, 403, '2019-03-12', '17101087_TT6222311_4_91043.pdf', 'Maaf tidak sesuai deadline', '2019-03-26 03:22:28', '2019-03-26 03:22:28'),
(128, 285, 4, 399, '2019-03-12', '17101087_TT6222311_4_1467.pdf', NULL, '2019-03-26 03:23:01', '2019-03-26 03:23:01'),
(129, 285, 4, 403, '2019-03-12', '17101087_TT6222311_4_77264.pdf', NULL, '2019-03-26 03:23:13', '2019-03-26 03:23:13'),
(130, 302, 4, 403, '2019-03-19', '17101105_TT6222311_4_27365.pdf', 'praktikum agar lebih efektif', '2019-03-26 04:36:29', '2019-03-26 04:36:29'),
(131, 307, 4, 401, '2019-03-19', '17101111_TT6222311_4_57122.pdf', 'Lebih di tingkatkan dan di maksimalkan', '2019-03-26 04:37:23', '2019-03-26 04:37:23'),
(132, 312, 4, 401, '2019-03-19', '17101119_TT6222311_4_39763.pdf', 'praktikum lebih ditingkatkan lagi', '2019-03-26 04:39:41', '2019-03-26 04:39:41'),
(133, 387, 4, 404, '2019-03-19', '17101202_TT6222311_4_55388.pdf', 'untuk lebih meningkatkan kevariasian rangkaian yang digunakan saat praktikum berlangsung', '2019-03-26 04:59:31', '2019-03-26 04:59:31'),
(134, 388, 4, 404, '2019-03-19', '17101203_TT6222311_4_6083.pdf', 'jangan terlalu banyak rangkaian nya,sedikit saja namun bisa membuat mahasiswa paham terhadap praktikum tersebut dari mulai merangkai hingga memahami program yang dijalankan', '2019-03-26 05:00:43', '2019-03-26 05:00:43'),
(135, 331, 4, 364, '2019-03-12', '17101136_TT6222311_4_15162.pdf', NULL, '2019-03-26 05:17:47', '2019-03-26 05:17:47'),
(136, 385, 4, 350, '2019-03-19', '17101200_TT6222311_4_94409.pdf', 'Aslabnya Menjelaskan Bergantian.', '2019-03-26 05:18:44', '2019-03-26 05:18:44'),
(137, 377, 4, 364, '2019-03-19', '17101191_TT6222311_4_29888.pdf', 'perlengkapan praktikumnya lebih disiapkan lagi', '2019-03-26 05:34:09', '2019-03-26 05:34:44'),
(138, 377, 4, 364, '2019-03-19', '17101191_TT6222311_4_29326.pdf', 'perlengkapan praktikumnya lebih disiapkan lagi', '2019-03-26 05:34:33', '2019-03-26 05:34:33'),
(139, 270, 4, 364, '2019-03-18', '17101033_TT6222311_4_7277.pdf', NULL, '2019-03-26 05:54:26', '2019-03-26 05:54:26'),
(140, 240, 4, 399, '2019-03-19', '17101208_TT6222311_4_70883.pdf', 'Perbarui peralatan praktikum yang rusak', '2019-03-26 06:14:01', '2019-03-26 06:14:01'),
(141, 300, 4, 401, '2019-03-19', '17101103_TT6222311_4_76546.pdf', 'Sebaiknya asisten memperbaiki diri menjadi lebih baik lagi, jadi waktu ditanya atau lagi error asisten bisa membantu praktikan dalam mengatasi errornya.', '2019-03-26 06:59:00', '2019-03-26 06:59:00'),
(142, 306, 4, 401, '2019-03-19', '17101110_TT6222311_4_92661.pdf', 'Praktikum pertama masih terlalu banyak materi jadi masih bingung untuk mengikuti', '2019-03-26 08:10:35', '2019-03-26 08:10:35'),
(144, 227, 4, 399, '2019-03-19', '17101064_TT6222311_4_35468.pdf', 'untuk modul ini masih bisa di pahami dengan mudah', '2019-03-26 08:55:23', '2019-03-26 08:55:23'),
(145, 227, 4, 399, '2019-03-19', '17101064_TT6222311_4_75897.pdf', 'untuk modul ini masih bisa di pahami dengan mudah', '2019-03-26 08:55:31', '2019-03-26 08:55:31'),
(146, 313, 4, 401, '2019-03-19', '17101120_TT6222311_4_52188.pdf', 'lebih semangat lagi untuk selanjutnya', '2019-03-26 09:27:10', '2019-03-26 09:27:10'),
(147, 378, 4, 364, '2019-03-19', '17101192_TT6222311_4_4275.pdf', 'sangat baik dalam menjelaskan dan membimbing praktikan saat praktikum berlangsung,terimakasih \r\nteruskan!', '2019-03-26 11:34:26', '2019-03-26 11:34:26'),
(148, 351, 4, 368, '2019-03-19', '17101158_TT6222311_4_46635.pdf', 'Sudah cukup baik.Asisten Lab sudah menguasai materi', '2019-03-26 11:35:11', '2019-03-26 11:35:11'),
(149, 296, 4, 403, '2019-03-12', '17101098_TT6222311_4_70814.pdf', 'Praktikum dengan penyampaian yang lebih baik lagi', '2019-03-26 12:21:42', '2019-03-26 12:21:42'),
(150, 380, 4, 350, '2019-03-19', '17101195_TT6222311_4_88403.pdf', 'asisten praktikum sangat membatu', '2019-03-26 12:34:34', '2019-03-26 12:34:34'),
(151, 233, 4, 399, '2019-03-19', '17101071_TT6222311_4_71665.pdf', 'Lebih jelas lagi dalam menyampaikan modul praktikum.', '2019-03-26 12:46:14', '2019-03-26 12:46:14'),
(152, 354, 4, 364, '2019-03-19', '17101161_TT6222311_4_54292.pdf', 'semoga kedepannya lebih baik lagi. aamiin', '2019-03-26 13:32:29', '2019-03-26 13:32:29'),
(153, 317, 4, 405, '2019-03-19', '17101188_TT6222311_4_26066.pdf', NULL, '2019-03-26 13:52:39', '2019-03-26 13:52:39'),
(154, 232, 4, 400, '2019-03-19', '17101069_TT6222311_4_64719.pdf', 'kabel jummper dan kabel power arduino yang ada masih ada yang kurang layak atau rusak, sehingga menghambat proses praktikum', '2019-03-26 14:36:47', '2019-03-26 14:36:47'),
(155, 374, 4, 364, '2019-03-19', '17101186_TT6222311_4_18860.pdf', NULL, '2019-03-26 14:52:30', '2019-03-26 14:52:30'),
(156, 347, 4, 350, '2019-03-19', '17101153_TT6222311_4_92332.pdf', 'Kabel male-to-malenya ditambah lagi atau diganti yang baru', '2019-03-26 14:56:20', '2019-03-26 14:56:20'),
(157, 310, 4, 405, '2019-03-19', '17101116_TT6222311_4_83025.pdf', 'Secara keseluruhan praktikum berjalan dengan baik, namun ada baiknya pada saat praktikum aslab lebih mengawasi praktikkan agar pada saat praktikkan tidak kebingungan pada saat percobaan praktikum, terima kasih.', '2019-03-26 15:00:34', '2019-03-26 15:00:34'),
(158, 339, 4, 368, '2019-03-19', '17101145_TT6222311_4_72628.pdf', 'Terimmakasih ya elsa :)', '2019-03-26 15:01:02', '2019-03-26 15:01:02'),
(159, 341, 4, 350, '2019-03-19', '17101147_TT6222311_4_50972.pdf', 'Lebih efisiensi dalam asistensi', '2019-03-26 15:01:52', '2019-03-26 15:01:52'),
(160, 311, 4, 405, '2019-03-19', '17101118_TT6222311_4_1142.pdf', 'peralatan di laboratorium di tambah banyak lagi', '2019-03-26 15:08:37', '2019-03-26 15:08:37'),
(161, 238, 4, 400, '2019-03-19', '17101078_TT6222311_4_37927.pdf', 'menurut saya praktikum mikroprosessor ini sudah baik. tolong ditingkatkan pengawasan terhadap kondisi peralatan jangan sampai rusak, jika rusak segera diganti.\r\n\r\ntolong tambahkan tugas berbasis IoT atau projek dengan wireless berupa bluetooth, esp wifi modul, infrared, dll', '2019-03-26 15:12:17', '2019-03-26 15:12:17'),
(162, 352, 4, 350, '2019-03-19', '17101159_TT6222311_4_44920.pdf', NULL, '2019-03-26 15:13:51', '2019-03-26 15:13:51'),
(163, 355, 4, 364, '2019-03-19', '17101162_TT6222311_4_58210.pdf', NULL, '2019-03-26 15:14:21', '2019-03-26 15:14:21'),
(164, 234, 4, 399, '2019-03-19', '17101072_TT6222311_4_12804.pdf', 'periksa kelengkapan peralatan praktikum, agar ketika praktikum berlangsung. praktikan tidak menemukan kendala/masalah dengan alat yang digunakan.', '2019-03-26 15:32:40', '2019-03-26 15:53:46'),
(165, 340, 4, 350, '2019-03-19', '17101146_TT6222311_4_41693.pdf', 'sudah baik, hanya saja tugas mungkin bisa dikurangi. terima kasih', '2019-03-26 15:43:49', '2019-03-26 15:43:49'),
(166, 304, 4, 405, '2019-03-19', '17101107_TT6222311_4_1167.pdf', 'Sudah bagus, komponen dan perangkat yang digunakan kemarin tidak ada kendala, mungkin rutin untuk melakukan pengecekan alat bisa membuat praktikum menjadi lebih optimal dan tidak memakan banyak waktu, terimakasih.', '2019-03-26 15:49:11', '2019-03-26 15:49:11'),
(168, 224, 4, 400, '2019-03-19', '17101061_TT6222311_4_35355.pdf', NULL, '2019-03-26 16:02:39', '2019-03-26 16:02:39'),
(169, 379, 4, 350, '2019-03-19', '17101194_TT6222311_4_12649.pdf', 'semoga kedepannya semakin lebih baik.', '2019-03-26 16:04:51', '2019-03-26 16:04:51'),
(170, 383, 4, 364, '2019-03-19', '17101198_TT6222311_4_80139.pdf', NULL, '2019-03-26 16:07:00', '2019-03-26 16:07:00'),
(171, 226, 4, 399, '2019-03-19', '17101063_TT6222311_4_4304.pdf', 'kabelnya diganti baru', '2019-03-26 16:12:12', '2019-03-26 16:12:12'),
(172, 316, 4, 405, '2019-03-19', '17101185_TT6222311_4_41849.pdf', 'Suasana kurang kodusif mungkin ketika praktikum suasana harus tenang supaya lebih paham', '2019-03-26 16:13:46', '2019-03-26 16:13:46'),
(173, 346, 4, 350, '2019-03-19', '17101152_TT6222311_4_74527.pdf', 'demi kemajuan praktikum alangkah baiknya itu tugas yang diberikan setelah praktikum itu tidak lebih susah dari apa yang di praktekan pada saat praktikum atau apa yang di praktikan pada saat praktikum itu tingkat kesulitannya sama dengan tugas yang diberikan karena praktikan akan mudah bertanya kepada asistan praktikum dengan demikian praktikan akan lebih mengerti apa yang meraka praktikumkan. cukup sekian pesan yang dapat sampaikan , adanya kata kata yg menyinggung harap dimaklumi. terimakasih', '2019-03-26 16:19:17', '2019-03-26 16:19:17'),
(174, 382, 4, 364, '2019-03-19', '17101197_TT6222311_4_92684.pdf', 'Semangat terus ngaslabnya', '2019-03-26 16:23:04', '2019-03-26 16:23:04'),
(175, 239, 4, 399, '2019-03-19', '17101079_TT6222311_4_85257.pdf', 'Lebih di jelaskan lagi untuk hal hal kecil yang mendasar, agar tau konsepnya dan mudah berkembang', '2019-03-26 16:34:00', '2019-03-26 16:34:00'),
(176, 231, 4, 400, '2019-03-19', '17101068_TT6222311_4_86235.pdf', 'kalo bisa alatnya yang rusak di ganti pak matur nuwun', '2019-03-26 16:48:02', '2019-03-26 16:48:02'),
(177, 315, 4, 403, '2019-03-19', '17101168_TT6222311_4_97297.pdf', 'Semoga praktikum Mikroprosesor bisa semakin lancar dalam pelaksanaannya.', '2019-03-26 16:49:32', '2019-03-26 16:49:32'),
(178, 349, 4, 364, '2019-03-19', '17101156_TT6222311_4_29202.pdf', 'selalu berusaha..., Ashiyaapp', '2019-03-26 16:56:28', '2019-03-26 16:56:28'),
(179, 349, 4, 364, '2019-03-19', '17101156_TT6222311_4_52957.pdf', 'selalu berusaha..., Ashiyaapp', '2019-03-26 16:57:22', '2019-03-26 16:57:22'),
(180, 290, 4, 405, '2019-03-12', '17101092_TT6222311_4_53080.pdf', 'Jika kelompok menjadi 2 orang per kelompok, alangkah baiknya jika diatur kembali', '2019-03-27 00:27:04', '2019-03-27 00:27:04'),
(181, 343, 4, 364, '2019-03-19', '17101149_TT6222311_4_48180.pdf', 'semoga kedepannya lebih maju lagi,', '2019-03-27 07:00:13', '2019-03-27 07:00:13'),
(182, 335, 4, 350, '2019-03-19', '17101141_TT6222311_4_70936.pdf', NULL, '2019-03-27 07:07:10', '2019-03-27 07:07:10'),
(183, 345, 4, 368, '2019-03-19', '17101151_TT6222311_4_67190.pdf', 'Asisten laboratorium sangat membatu dalam praktikum modul 1 ini.', '2019-03-27 07:57:53', '2019-03-27 07:57:53'),
(184, 225, 4, 400, '2019-03-19', '17101062_TT6222311_4_35011.pdf', 'aslab lebih disiapkan lagi sebelum memulai mengajar', '2019-03-27 15:56:18', '2019-03-27 15:56:18'),
(185, 225, 4, 400, '2019-03-19', '17101062_TT6222311_4_67228.pdf', 'aslab lebih disiapkan lagi sebelum memulai mengajar', '2019-03-27 15:56:18', '2019-03-27 15:56:18'),
(186, 210, 4, 399, '2019-03-12', '17101046_TT6222311_4_86991.pdf', 'praktikum terlalu terburu-buru menyebabkan mhasiswa sulit memahami dan alat yang digunakan tidak berfunsi', '2019-03-28 11:00:13', '2019-03-28 11:00:13'),
(187, 256, 5, 404, '2019-03-25', '17101015_TT6222311_5_93797.pdf', NULL, '2019-03-29 08:42:57', '2019-03-29 08:42:57'),
(188, 256, 4, 404, '2019-03-11', '17101015_TT6222311_4_74434.pdf', 'Maaf sebelum nya ,saya sebenar nya sudah jauh2 hari untuk mengirim modul satu ,tapi saya mengirim nya lewat ubah profil ,saya tidak tau .asalab nya juga tidak menjelaskan cara mengirim kan nya .mohon pengertian nya#Terimakasih', '2019-03-29 10:24:39', '2019-03-29 10:24:39'),
(189, 361, 4, 350, '2019-03-12', '17101167_TT6222311_4_83445.pdf', NULL, '2019-03-29 14:25:42', '2019-03-29 14:25:42'),
(190, 362, 4, 404, '2019-03-12', '17101169_TT6222311_4_80103.pdf', NULL, '2019-03-29 15:31:25', '2019-03-29 15:31:25'),
(191, 244, 5, 404, '2019-03-25', '17101002_TT6222311_5_26993.pdf', 'Sebaiknya diberi perpanjangan waktu', '2019-03-31 14:37:20', '2019-03-31 14:37:20'),
(192, 247, 5, 364, '2019-03-25', '17101005_TT6222311_5_38194.pdf', 'Pelaksanaan praktikum seharusnya sesuai jadwal (tepat waktu) agar praktikum tidak mulur yang mengakibatkan pulang terlambat', '2019-03-31 16:56:48', '2019-03-31 16:56:48'),
(193, 298, 4, 399, '2019-03-19', '17101100_TT6222311_4_98973.pdf', 'Praktikum sebaiknya di lakukan tepat waktu.', '2019-04-01 00:10:19', '2019-04-01 00:10:19'),
(194, 257, 5, 404, '2019-03-25', '17101016_TT6222311_5_11001.pdf', NULL, '2019-04-01 00:50:01', '2019-04-01 00:50:01'),
(195, 360, 5, 350, '2019-03-26', '17101166_TT6222311_5_94049.pdf', 'Berikut saya kumpulkan Laporan Modul II', '2019-04-01 04:21:24', '2019-04-01 04:21:58'),
(196, 258, 5, 364, '2019-03-25', '17101018_TT6222311_5_41524.pdf', NULL, '2019-04-01 04:27:48', '2019-04-01 04:27:48'),
(197, 344, 4, 368, '2019-03-19', '17101150_TT6222311_4_14681.pdf', NULL, '2019-04-01 11:08:09', '2019-04-01 11:08:09'),
(198, 250, 5, 404, '2019-03-25', '17101009_TT6222311_5_99511.pdf', NULL, '2019-04-01 12:30:53', '2019-04-01 12:30:53'),
(199, 281, 5, 405, '2019-03-26', '17101083_TT6222311_5_90195.pdf', 'Di mohon untuk menjelaskan fungsi dari masing-masing alat dan baris program', '2019-04-01 12:46:03', '2019-04-01 12:46:03'),
(200, 288, 5, 401, '2019-03-26', '17101090_TT6222311_5_82207.pdf', NULL, '2019-04-01 14:16:18', '2019-04-01 14:16:18'),
(201, 375, 4, 404, '2019-03-19', '17101187_TT6222311_4_60812.pdf', NULL, '2019-04-01 14:52:22', '2019-04-01 14:52:22'),
(202, 246, 5, 364, '2019-03-25', '17101004_TT6222311_5_67936.pdf', 'MODUL II : AKSES LCD KARAKTER 16X2 & ANALOD TO DIGITAL CONVERTER (ADC) , pemahan materi cukup dimengerti.', '2019-04-01 14:53:39', '2019-04-01 14:53:39'),
(203, 253, 5, 364, '2019-03-25', '17101012_TT6222311_5_52408.pdf', 'untuk praktikum selanjutnya, agar dapat berlangsung dengan cepat dan tepat waktu selesainya, programnya yang bisa langsung di copy paste aja, kasian yang praktikum sendirian eh scriptnya panjang.', '2019-04-01 15:37:39', '2019-04-01 15:37:39'),
(204, 251, 5, 404, '2019-03-25', '17101010_TT6222311_5_64370.pdf', 'Bismillah belum diasistensi katanya dikumpulin aja.', '2019-04-01 16:18:06', '2019-04-01 16:18:06'),
(205, 255, 5, 403, '2019-03-25', '17101014_TT6222311_5_30127.pdf', 'terlalu cepat dalam menerangkan', '2019-04-01 16:18:58', '2019-04-01 16:18:58'),
(206, 245, 5, 404, '2019-03-25', '17101003_TT6222311_5_25410.pdf', 'Dimohon untuk toleransi waktu dari pembuatan laporan. Jika dibandingkan antar permintaan yang harus dipenuhi dengan waktu yang disediakan belum selaras dalam pengumpulannya. Terima kasih.', '2019-04-01 16:32:20', '2019-04-01 16:32:20'),
(207, 359, 5, 364, '2019-03-26', '17101165_TT6222311_5_16532.pdf', NULL, '2019-04-01 16:36:34', '2019-04-01 16:36:34'),
(208, 249, 5, 403, '2019-03-25', '17101008_TT6222311_5_35369.pdf', 'Lebih efektif lagi dalam pelaksanaan praktikum agar tidak memakan waktu yang lama sehingga melewati batas waktu perkuliahan', '2019-04-01 22:54:23', '2019-04-01 22:54:23'),
(209, 254, 5, 403, '2019-03-25', '17101013_TT6222311_5_77201.pdf', 'waktu untuk praktikum seharusnya supaya ditambahkan dikarenakan waktu melebihi 2sks', '2019-04-02 00:25:44', '2019-04-02 00:25:44'),
(210, 368, 5, 350, '2019-03-26', '17101175_TT6222311_5_17094.pdf', 'Tingkatkan lagi sarana dan prasarana praktikum mikronya', '2019-04-02 01:11:49', '2019-04-02 01:11:49'),
(211, 282, 5, 401, '2019-03-26', '17101084_TT6222311_5_94629.pdf', 'nama: afif nur dzaki\r\nnim : 17101084', '2019-04-02 09:10:32', '2019-04-02 09:10:32'),
(212, 294, 5, 401, '2019-03-26', '17101096_TT6222311_5_45880.pdf', 'Bismillahirrahmanirrahim', '2019-04-02 09:25:20', '2019-04-02 09:25:20'),
(213, 319, 5, 364, '2019-03-26', '17101122_TT6222311_5_23051.pdf', NULL, '2019-04-02 10:34:21', '2019-04-02 10:34:21'),
(214, 220, 5, 399, '2019-03-26', '17101057_TT6222311_5_30027.pdf', 'Alatnya semoga bisa lebih baik lagi', '2019-04-02 13:13:04', '2019-04-02 13:13:04'),
(215, 367, 5, 350, '2019-03-26', '17101174_TT6222311_5_59645.pdf', 'Semoga dapat memfasilitasi sarana dan prasarana yang mahasiswa butuhkan dalam praktikum.', '2019-04-02 13:13:42', '2019-04-02 13:13:42'),
(216, 215, 5, 399, '2019-03-26', '17101051_TT6222311_5_46669.pdf', 'Pesan saya : Sebaiknya sebelum praktikum dimulai, semua alat harus di cek dulu dikarenakan beberapa alat yang tidak dapat digunakan mengakibat beberapa kelompok tidak bisa mengikuti praktikum dengan baik. Sekian, Terimakasih.', '2019-04-02 13:58:59', '2019-04-02 13:58:59'),
(217, 215, 5, 399, '2019-03-26', '17101051_TT6222311_5_39749.pdf', 'Pesan saya : Sebaiknya sebelum praktikum dimulai, semua alat harus di cek dulu dikarenakan beberapa alat yang tidak dapat digunakan mengakibat beberapa kelompok tidak bisa mengikuti praktikum dengan baik. Sekian, Terimakasih.', '2019-04-02 13:59:11', '2019-04-02 13:59:11'),
(218, 215, 5, 399, '2019-03-26', '17101051_TT6222311_5_23077.pdf', 'Pesan saya : Sebaiknya sebelum praktikum dimulai, semua alat harus di cek dulu dikarenakan beberapa alat yang tidak dapat digunakan mengakibat beberapa kelompok tidak bisa mengikuti praktikum dengan baik. Sekian, Terimakasih.', '2019-04-02 13:59:14', '2019-04-02 13:59:14'),
(219, 212, 5, 400, '2019-03-26', '17101048_TT6222311_5_20551.pdf', NULL, '2019-04-02 14:18:16', '2019-04-02 14:18:29'),
(220, 208, 5, 399, '2019-04-26', '17101043_TT6222311_5_32737.pdf', NULL, '2019-04-02 15:15:16', '2019-04-02 15:15:16'),
(221, 213, 5, 400, '2019-03-26', '17101049_TT6222311_5_74325.pdf', 'untuk modul tolong percobaanya lebih efektif lagi supaya menghemat waktu dan untuk alat praktikum tolong diperhatikan lagi', '2019-04-02 15:17:30', '2019-04-02 15:40:51'),
(222, 325, 5, 364, '2019-03-26', '17101130_TT6222311_5_85121.pdf', 'semoga nilai nya bagus AMIN,,, thank you :)', '2019-04-02 15:21:21', '2019-04-02 15:21:21'),
(223, 207, 5, 400, '2019-03-26', '17101042_TT6222311_5_74213.pdf', 'alat nya banyak yang rusak', '2019-04-02 15:28:45', '2019-04-02 15:28:45'),
(224, 295, 5, 401, '2019-03-26', '17101097_TT6222311_5_1049.pdf', NULL, '2019-04-02 16:12:07', '2019-04-02 16:12:07'),
(225, 336, 5, 364, '2019-03-26', '17101142_TT6222311_5_23097.pdf', NULL, '2019-04-02 16:15:36', '2019-04-02 16:15:36'),
(226, 214, 5, 399, '2019-03-26', '17101050_TT6222311_5_39816.pdf', 'Praktikum baik, namun kurang dijelaskan tentang penghitungan yang di tabel. Terimakasih..', '2019-04-02 16:15:50', '2019-04-02 16:15:50'),
(227, 211, 5, 401, '2019-03-26', '17101047_TT6222311_5_7079.pdf', 'Masukan: tolong pada praktikum, waktu durasi dengan jumlah percobaanya di logiskan , kenapa percobaan hanya 2 yang dapat dilakukan tapi semua percobaan harus di laporankan. Dan kenapa tabel tidak di beritahu cara mengerjakannya tapi praktikan diminta untuk mengerjakan. Terimakasih', '2019-04-02 16:26:44', '2019-04-02 16:26:44'),
(228, 328, 5, 350, '2019-03-26', '17101133_TT6222311_5_32156.pdf', 'Semoga............ AMINNNNNNNNN', '2019-04-02 16:32:42', '2019-04-02 16:32:42'),
(229, 334, 5, 350, '2019-03-26', '17101140_TT6222311_5_8855.pdf', 'praktikum lebih mengasyikan yang memudahkan untuk dipahami', '2019-04-02 16:41:52', '2019-04-02 16:41:52'),
(230, 286, 5, 401, '2019-03-26', '17101088_TT6222311_5_43422.pdf', 'MODUL II MIKROPROSESSOR', '2019-04-02 16:43:40', '2019-04-02 16:43:40'),
(231, 324, 5, 364, '2019-03-26', '17101128_TT6222311_5_73246.pdf', 'untuk praktikum kedepanya agar lebih mefokuskan untuk memodifikasi', '2019-04-02 16:45:02', '2019-04-02 16:45:02'),
(232, 332, 5, 368, '2019-03-26', '17101137_TT6222311_5_30028.pdf', 'lebih baik daripada sebelumnya good', '2019-04-02 16:47:38', '2019-04-02 16:47:38'),
(233, 358, 5, 364, '2019-03-26', '17101164_TT6222311_5_17090.pdf', NULL, '2019-04-02 16:53:29', '2019-04-02 16:53:29'),
(234, 371, 5, 364, '2019-03-26', '17101181_TT6222311_5_30708.pdf', 'Praktikum sudah berjalan dengan lancar', '2019-04-02 16:58:15', '2019-04-02 16:58:15'),
(235, 323, 5, 350, '2019-03-26', '17101127_TT6222311_5_47812.pdf', 'semangat buat semuanaya', '2019-04-02 16:58:27', '2019-04-02 16:58:27'),
(236, 337, 5, 364, '2019-03-26', '17101143_TT6222311_5_21004.pdf', NULL, '2019-04-02 16:58:42', '2019-04-02 16:59:27'),
(237, 321, 5, 368, '2019-03-26', '17101124_TT6222311_5_93405.pdf', 'OKE SUDAH BAIK PRAKTIKUMNYA', '2019-04-02 16:59:31', '2019-04-02 16:59:31'),
(238, 218, 5, 400, '2019-03-26', '17101055_TT6222311_5_27701.pdf', 'Perlu adanya pembaruan perangkat praktikum', '2019-04-02 17:00:16', '2019-04-02 17:00:16'),
(239, 320, 5, 368, '2019-03-26', '17101123_TT6222311_5_53606.pdf', 'maaf terlambat mengirim karena laptop tiba tiba mati hehe', '2019-04-02 17:56:39', '2019-04-02 17:56:39'),
(240, 216, 5, 401, '2019-03-26', '17101052_TT6222311_5_70576.pdf', 'peralatan untuk bisa lebih baik lagi', '2019-04-02 19:15:13', '2019-04-02 19:15:13'),
(241, 293, 5, 405, '2019-03-26', '17101095_TT6222311_5_36537.pdf', 'tingkatkan kembali praktikumnya.', '2019-04-02 19:40:06', '2019-04-02 19:40:06'),
(242, 293, 5, 405, '2019-03-26', '17101095_TT6222311_5_83990.pdf', 'tingkatkan kembali praktikumnya.', '2019-04-02 19:40:06', '2019-04-02 19:40:06'),
(243, 293, 5, 405, '2019-03-26', '17101095_TT6222311_5_13754.pdf', 'tingkatkan kembali praktikumnya.', '2019-04-02 19:41:01', '2019-04-02 19:41:01'),
(244, 293, 5, 405, '2019-03-26', '17101095_TT6222311_5_78500.pdf', 'tingkatkan kembali praktikumnya.', '2019-04-02 19:42:50', '2019-04-02 19:42:50'),
(245, 293, 5, 405, '2019-03-26', '17101095_TT6222311_5_53785.pdf', 'tingkatkan kembali praktikumnya.', '2019-04-02 19:42:59', '2019-04-02 19:42:59'),
(246, 293, 5, 405, '2019-03-26', '17101095_TT6222311_5_73454.pdf', 'tingkatkan kembali praktikumnya.', '2019-04-02 19:43:51', '2019-04-02 19:43:51'),
(247, 293, 5, 405, '2019-03-26', '17101095_TT6222311_5_65590.pdf', 'tingkatkan kembali praktikumnya.', '2019-04-02 19:44:49', '2019-04-02 19:44:49'),
(248, 322, 5, 350, '2019-03-26', '17101126_TT6222311_5_76727.pdf', 'TELAT NGIRIM dikarenakan server down saya sudah ngirim dari jam 11.30 tapi webnya gabisa di akses, setelah bisa di akses tidak bisa dikirim karena nama saya mengandung tanda \" \' \" . dan saya tidak tahu kalau nama documentnya tidak boleh di pakai karakter', '2019-04-03 00:27:48', '2019-04-03 00:27:48'),
(249, 209, 5, 399, '2019-03-26', '17101044_TT6222311_5_89212.pdf', 'Berikut saya lampirkan laporan praktikum mikroprosesor modul 2', '2019-04-03 02:59:40', '2019-04-03 02:59:40'),
(250, 221, 5, 399, '2019-03-26', '17101058_TT6222311_5_40521.pdf', NULL, '2019-04-03 10:52:00', '2019-04-03 10:52:00'),
(251, 283, 5, 401, '2019-03-25', '17101085_TT6222311_5_23562.pdf', 'masuk pak ekoooo....', '2019-04-03 12:03:22', '2019-04-03 12:03:22'),
(252, 279, 5, 403, '2019-03-26', '17101081_TT6222311_5_46106.pdf', 'batas submit diperpanjang dong 7 hari kerja', '2019-04-03 14:31:45', '2019-04-03 14:31:45'),
(253, 205, 5, 401, '2019-03-26', '14101046_TT6222311_5_63908.pdf', 'pusing pak pada bagian analisa dan lampiran', '2019-04-04 16:01:55', '2019-04-04 16:01:55'),
(254, 384, 4, 364, '2019-03-19', '17101199_TT6222311_4_41626.pdf', 'Alat yang rusak dipisah sama alat yang masih bagus', '2019-04-06 13:20:16', '2019-04-06 13:20:16'),
(255, 267, 5, 403, '2019-03-25', '17101030_TT6222311_5_50155.pdf', NULL, '2019-04-06 15:00:00', '2019-04-06 15:00:00'),
(256, 373, 4, 350, '2019-03-12', '17101183_TT6222311_4_2955.pdf', NULL, '2019-04-06 16:29:44', '2019-04-06 16:29:44'),
(258, 276, 5, 364, '2019-04-01', '17101039_TT6222311_5_77885.pdf', NULL, '2019-04-07 03:49:56', '2019-04-07 03:49:56'),
(259, 271, 5, 364, '2019-04-01', '17101034_TT6222311_5_15162.pdf', 'sebaiknya kalau modul praktikum mikroprosesor itu jangan di lock / dikunci , jd butuh waktu lama untuk menulis kembali program arduinonya + juga waktunya mepet tidak terlalu banyak. Terima kasih', '2019-04-07 12:01:02', '2019-04-07 12:01:02'),
(260, 292, 5, 405, '2019-03-26', '17101094_TT6222311_5_91161.pdf', 'Sudah baik dalam membimbing pratikan', '2019-04-07 13:16:48', '2019-04-07 13:16:48'),
(261, 274, 5, 404, '2019-04-01', '17101037_TT6222311_5_3463.pdf', 'kabel male male, male female ditambah', '2019-04-07 13:27:25', '2019-04-07 13:27:25'),
(262, 299, 5, 405, '2019-04-02', '17101101_TT6222311_5_86629.pdf', 'aslab sudah bekerja dengan baik', '2019-04-07 14:27:19', '2019-04-07 14:27:19'),
(263, 275, 5, 404, '2019-04-01', '17101038_TT6222311_5_83516.pdf', NULL, '2019-04-07 16:17:17', '2019-04-07 16:17:17'),
(264, 272, 5, 403, '2019-04-01', '17101035_TT6222311_5_63668.pdf', NULL, '2019-04-08 00:29:24', '2019-04-08 00:29:24'),
(265, 385, 5, 350, '2019-04-02', '17101200_TT6222311_5_92521.pdf', 'Aslab yang menjelaskan boleh bergantian.', '2019-04-08 03:06:28', '2019-04-08 03:06:28'),
(266, 383, 5, 364, '2019-04-02', '17101198_TT6222311_5_81266.pdf', 'Berikut saya lampirkan tugas modul 2 , terimakasih \"semangat \"', '2019-04-08 03:11:33', '2019-04-08 03:11:33'),
(267, 261, 5, 403, '2019-04-01', '17101021_TT6222311_5_10998.pdf', 'praktikum sebaiknya dilakukan lebih cepat, agar pulangnya tepat waktu', '2019-04-08 05:44:38', '2019-04-08 05:44:38'),
(268, 345, 5, 368, '2019-04-02', '17101151_TT6222311_5_51746.pdf', 'sudah bagus dalam penyampaian atau pendampingan terhadap praktikan, hanya saja lebih ditekankan dalam penjelasan pemrogramannya.', '2019-04-08 06:29:54', '2019-04-08 06:29:54'),
(269, 397, 5, 403, '2019-04-01', '17101214_TT6222311_5_97478.pdf', 'Berikut saya lampirkan laporan praktikum modul 2. Terima Kasih.\r\n\r\nSalam,\r\nSugeng W', '2019-04-08 06:42:20', '2019-04-08 06:42:20'),
(270, 376, 5, 404, '2019-04-02', '17101190_TT6222311_5_3009.pdf', 'tingkatkan kualitas nya', '2019-04-08 06:52:11', '2019-04-08 06:52:11'),
(271, 233, 5, 399, '2019-04-02', '17101071_TT6222311_5_21470.pdf', 'modul yang disampaikan kurang jelas', '2019-04-08 07:02:39', '2019-04-08 07:02:39'),
(272, 393, 5, 401, '2019-04-01', '17101209_TT6222311_5_28370.pdf', NULL, '2019-04-08 08:12:06', '2019-04-08 08:12:06'),
(273, 229, 5, 401, '2019-04-02', '17101066_TT6222311_5_68488.pdf', 'Untuk praktikum kedepannya alatnya diperbarui', '2019-04-08 08:25:47', '2019-04-08 08:25:47'),
(274, 352, 5, 350, '2019-04-02', '17101159_TT6222311_5_6792.pdf', NULL, '2019-04-08 10:24:08', '2019-04-08 10:24:08'),
(275, 235, 5, 401, '2019-04-02', '17101073_TT6222311_5_85826.pdf', 'sekarang tidak ada pesan', '2019-04-08 11:04:04', '2019-04-08 11:04:04'),
(276, 263, 5, 404, '2019-04-01', '17101024_TT6222311_5_41611.pdf', 'Untuk alat  yang digunakan harusnya dalam kondisi baik dan layak digunakan', '2019-04-08 12:52:12', '2019-04-08 12:52:12'),
(277, 348, 5, 364, '2019-04-02', '17101155_TT6222311_5_4807.pdf', NULL, '2019-04-08 13:41:32', '2019-04-08 13:41:32'),
(278, 381, 5, 404, '2019-04-02', '17101196_TT6222311_5_57940.pdf', 'sebaiknya dalam penjelasan tiap baris program lebih ditekankan lagi supaya praktikan tidak kesusahan memahami asal baris program tersebut', '2019-04-08 14:37:23', '2019-04-08 14:37:23'),
(279, 269, 5, 404, '2019-04-01', '17101032_TT6222311_5_47334.pdf', 'copy script agar mempermudah waktu praktikum dan mempersingkat waktu', '2019-04-08 16:30:59', '2019-04-08 16:30:59'),
(280, 241, 5, 403, '2019-04-01', '13101035_TT6222311_5_88768.pdf', NULL, '2019-04-08 16:35:21', '2019-04-08 16:35:21'),
(281, 265, 5, 364, '2019-04-01', '17101028_TT6222311_5_15499.pdf', 'Script dimodul harus bisa di copy agar dapat mempermudah praktikan', '2019-04-08 16:38:26', '2019-04-08 16:38:26'),
(282, 392, 5, 401, '2019-04-01', '17101207_TT6222311_5_35249.pdf', NULL, '2019-04-08 16:40:12', '2019-04-08 16:40:12'),
(283, 260, 5, 403, '2019-04-01', '17101020_TT6222311_5_15562.pdf', 'semoga kedepannya praktikum mikroprosesor scriptnya bisa di copy agar mudah dan efesien dalam melakukan praktikum dan juga semoga alat-alat untuk praktikum mikroprosesor lebih bagus dan kualitasnya baik lagi. susunan laporannya seperti ini saja karena ini bagus susunannya mengedukasi.', '2019-04-08 16:46:58', '2019-04-08 16:46:58'),
(284, 398, 5, 403, '2019-04-01', '17101217_TT6222311_5_38537.pdf', NULL, '2019-04-08 16:54:38', '2019-04-08 16:54:38'),
(285, 357, 5, 404, '2019-03-26', '17101163_TT6222311_5_44311.pdf', 'Memperhatikan Waktu agar percobaan dalam modul dapat diselesaikan dengan baik', '2019-04-08 16:58:32', '2019-04-08 16:58:32'),
(286, 327, 5, 368, '2019-03-26', '17101132_TT6222311_5_51140.pdf', 'Saran saat praktikum, waktu lebih dimaksimalkan untuk semua percobaan.', '2019-04-08 18:27:19', '2019-04-08 18:27:19'),
(287, 259, 5, 364, '2019-03-25', '17101019_TT6222311_5_73507.pdf', 'Saran agar waktu lebih dimaksimalkan pada saat praktikum.', '2019-04-08 18:31:44', '2019-04-08 18:31:44'),
(288, 223, 5, 401, '2019-04-02', '17101060_TT6222311_5_80255.pdf', 'untuk modul 2 lebih diperjelas materinya dan alatnya tidak rusak, karena dari asisten praktikum tidak menjelaskan semua materi sampai paham , hanya beberapa kelompok saja yang bisa alatnya berjalan , dan praktikan kesusahan membuat hasil data . terimakasih', '2019-04-08 20:25:57', '2019-04-08 20:25:57'),
(289, 262, 5, 404, '2019-04-01', '17101022_TT6222311_5_13821.pdf', 'M. Bilal sudah mengirimkan Modul 2, mohon maaf atas keterlambatan.', '2019-04-09 00:23:15', '2019-04-09 00:23:15'),
(290, 302, 5, 403, '2019-04-02', '17101105_TT6222311_5_61989.pdf', 'Praktikum berjalan baik, namun ada beberapa aslab ketika ditanya malah melempar pertanyaan tersebut ke aslab lain', '2019-04-09 00:31:54', '2019-04-09 00:31:54'),
(291, 307, 5, 401, '2019-04-02', '17101111_TT6222311_5_26889.pdf', 'praktikum berjalan kondusif', '2019-04-09 00:51:49', '2019-04-09 00:51:49');
INSERT INTO `laporan` (`id`, `id_user`, `id_modul`, `id_asisten`, `tgl_praktikum`, `pdf`, `pesan`, `created_at`, `updated_at`) VALUES
(292, 227, 5, 399, '2019-04-02', '17101064_TT6222311_5_67732.pdf', 'untuk alat alat yang di perlukan di upgrade agar lebih baik di praktikum selanjutnya', '2019-04-09 01:35:22', '2019-04-09 01:35:22'),
(293, 394, 5, 399, '2019-04-02', '17101210_TT6222311_5_77362.pdf', NULL, '2019-04-09 02:48:25', '2019-04-09 02:48:25'),
(294, 312, 5, 401, '2019-04-02', '17101119_TT6222311_5_49375.pdf', 'Mohon maaf jika banyak kesalahan dalam penulisan', '2019-04-09 03:39:27', '2019-04-09 03:39:27'),
(295, 342, 5, 364, '2019-04-02', '17101148_TT6222311_5_83093.pdf', 'Mulai waktu praktikum harus tepat waktu', '2019-04-09 04:24:32', '2019-04-09 04:24:32'),
(296, 377, 5, 364, '2019-04-02', '17101191_TT6222311_5_92159.pdf', 'alatnya dicek sebelum praktikum', '2019-04-09 05:26:09', '2019-04-09 05:26:09'),
(297, 300, 5, 401, '2019-04-02', '17101103_TT6222311_5_30958.pdf', NULL, '2019-04-09 05:32:57', '2019-04-09 05:32:57'),
(298, 353, 5, 350, '2019-04-02', '17101160_TT6222311_5_52818.pdf', 'alat yang digunakan sebaiknya menggunakan yang layak dipakai karena ketika alatnya jelek dan rusak itu menghambat praktikan dalam praktikum sehingga tidak full melakukan percobaan dan akhirnya yang dipelajari pun tidak maksimal,', '2019-04-09 09:53:32', '2019-04-09 09:53:32'),
(299, 315, 5, 403, '2019-04-02', '17101168_TT6222311_5_66182.pdf', 'Untuk jumlah percobaan mohon lebih dipersingkat, karena waktu yang disediakan untuk praktikum juga terbatas.', '2019-04-09 10:51:58', '2019-04-09 10:51:58'),
(300, 378, 5, 364, '2019-04-02', '17101192_TT6222311_5_2511.pdf', 'Saya sudah menyelesaikan laporan praktikum modul 2,terimakasih atas penjelasan materinya saat praktikum berlangsung', '2019-04-09 11:21:14', '2019-04-09 11:21:14'),
(301, 380, 5, 350, '2019-04-02', '17101195_TT6222311_5_10397.pdf', 'sudah baik tidak buruk', '2019-04-09 11:28:45', '2019-04-09 11:28:45'),
(302, 228, 5, 401, '2019-04-02', '17101065_TT6222311_5_79949.pdf', 'Mohon diperhatikan setiap alat yang digunakan untuk praktikum, karena untuk modul ini saya cukup kesulitan untuk menganalisa dan mengerjakan hasil data karena alat praktikum tidak berjalan dan waktu sudah habis, mungkin untuk kedepannya setiap modul 2 sampai 3 saja percobaan, karena jika praktikum tidak berhasil maka tidak dapat hasil data dan sulit untuk menganalisa, mungkin sebagai solusi dapat menggunakan tinkercad, \r\n\r\ndan terakhir dari saya, jgn hanya menuntut mahasiswa untuk mengerjalan laporan 5 hari tetapi tidak memperhatikan kondisi alat praktikum', '2019-04-09 11:45:17', '2019-04-09 11:45:17'),
(303, 266, 5, 403, '2019-04-01', '17101029_TT6222311_5_90079.pdf', NULL, '2019-04-09 11:49:46', '2019-04-09 11:49:46'),
(304, 338, 5, 368, '2019-04-02', '17101144_TT6222311_5_98531.pdf', NULL, '2019-04-09 11:55:01', '2019-04-09 11:55:01'),
(305, 339, 5, 368, '2019-04-02', '17101145_TT6222311_5_99618.pdf', 'alhamdulillah laporan bisa dikerjakan dengan baik, terima kasih :)', '2019-04-09 12:06:32', '2019-04-09 12:06:32'),
(306, 240, 5, 399, '2019-04-02', '17101208_TT6222311_5_15759.pdf', 'Pesan buat modul 2 ini, mungkin materi yang dipralktikumin jangan banyak banyak dulu kalo misalnya materinya susah kayak praktikum modul ini banyak yang gagal dan bingung saat mengisi hasil data pada laporan, sehingga ada beberapa anak yang telat mengumpulkan laporan karena bingung.', '2019-04-09 12:31:43', '2019-04-09 12:31:43'),
(307, 240, 5, 399, '2019-04-02', '17101208_TT6222311_5_835.pdf', 'Pesan buat modul 2 ini, mungkin materi yang dipralktikumin jangan banyak banyak dulu kalo misalnya materinya susah kayak praktikum modul ini banyak yang gagal dan bingung saat mengisi hasil data pada laporan, sehingga ada beberapa anak yang telat mengumpulkan laporan karena bingung.', '2019-04-09 12:34:18', '2019-04-09 12:34:18'),
(308, 340, 5, 350, '2019-04-02', '17101146_TT6222311_5_4897.pdf', 'Waktunya kurang efektif sehingga banyak yang di percobaan terakhir tidak praktikum.', '2019-04-09 13:31:52', '2019-04-09 13:31:52'),
(309, 297, 5, 403, '2019-03-26', '17101099_TT6222311_5_66254.pdf', 'praktikum terlalu terburu-buru sehingga praktikan tidak dapat menangkap ilmu yang sudah diajarkan dengan benar dan membuat pengerjaan laporan menjadi terlambat', '2019-04-09 13:56:02', '2019-04-09 13:56:02'),
(310, 351, 5, 368, '2019-04-02', '17101158_TT6222311_5_88303.pdf', 'Untuk alat tolong diperbaiki,banyak yang tidak fungi', '2019-04-09 14:08:43', '2019-04-09 14:08:43'),
(311, 270, 5, 364, '2019-04-01', '17101033_TT6222311_5_59273.pdf', NULL, '2019-04-09 14:11:36', '2019-04-09 14:11:36'),
(312, 379, 5, 350, '2019-04-02', '17101194_TT6222311_5_48154.pdf', 'terimakasih atas ilmunya', '2019-04-09 14:30:07', '2019-04-09 14:30:07'),
(313, 354, 5, 364, '2019-04-02', '17101161_TT6222311_5_53748.pdf', 'Semoga ilmu yang diberikan bermanfaat. terima kasih', '2019-04-09 14:57:35', '2019-04-09 14:57:35'),
(314, 355, 5, 364, '2019-04-02', '17101162_TT6222311_5_60748.pdf', NULL, '2019-04-09 15:07:35', '2019-04-09 15:07:35'),
(315, 341, 5, 350, '2019-04-02', '17101147_TT6222311_5_84605.pdf', NULL, '2019-04-09 15:21:25', '2019-04-09 15:21:25'),
(316, 350, 5, 368, '2019-04-02', '17101157_TT6222311_5_78426.pdf', 'Multimeter yang digunakan bergantian membuat durasi praktikum lebih lama.', '2019-04-09 15:28:17', '2019-04-09 15:28:17'),
(317, 388, 5, 404, '2019-04-02', '17101203_TT6222311_5_49143.pdf', NULL, '2019-04-09 15:40:23', '2019-04-09 15:40:23'),
(318, 349, 5, 364, '2019-04-02', '17101156_TT6222311_5_22482.pdf', 'asiyap chandra mantap ya', '2019-04-09 15:49:38', '2019-04-09 15:49:38'),
(319, 387, 5, 404, '2019-04-02', '17101202_TT6222311_5_15347.pdf', 'untuk lebih memvariasikan komponen saat pengujian', '2019-04-09 15:58:38', '2019-04-09 15:58:38'),
(320, 374, 5, 364, '2019-04-02', '17101186_TT6222311_5_66237.pdf', 'Chandra si Mbah mantull(Mantap Betul)!!', '2019-04-09 16:04:55', '2019-04-09 16:04:55'),
(321, 222, 5, 401, '2019-04-02', '17101059_TT6222311_5_73209.pdf', 'Perbaikan, penggantian dan pemeliharaan alat-alat praktikum lebih diperhatikan.', '2019-04-09 16:32:52', '2019-04-09 16:32:52'),
(322, 389, 4, 364, '2019-03-19', '17101204_TT6222311_4_47665.pdf', NULL, '2019-04-09 16:51:26', '2019-04-09 16:51:26'),
(323, 347, 5, 350, '2019-04-02', '17101153_TT6222311_5_32233.pdf', 'sudah bagus. semoga kabel diperbanyalk', '2019-04-09 16:59:11', '2019-04-09 16:59:11'),
(324, 347, 5, 350, '2019-04-02', '17101153_TT6222311_5_77369.pdf', 'sudah bagus. semoga kabel diperbanyak dan waktu di perpanjang', '2019-04-09 16:59:23', '2019-04-09 16:59:23'),
(325, 224, 5, 400, '2019-04-02', '17101061_TT6222311_5_33728.pdf', NULL, '2019-04-09 17:01:28', '2019-04-09 17:01:28'),
(326, 224, 5, 400, '2019-04-02', '17101061_TT6222311_5_42504.pdf', NULL, '2019-04-09 17:01:42', '2019-04-09 17:01:42'),
(327, 232, 5, 399, '2019-04-02', '17101069_TT6222311_5_34165.pdf', 'assalamu\'alaikum wa rahmatullah wa barakatuh, maaf pak saya yang bernama muhammad sidik yang kemarin minta dispensasi apabila terjadi kesalahan dalam segi format dari laporan saya di karenakan mengikuti POM rayon 3 di tegal\r\nterimakasih', '2019-04-09 17:03:08', '2019-04-09 17:03:08'),
(328, 391, 5, 401, '2019-04-01', '17101206_TT6222311_5_55948.pdf', NULL, '2019-04-10 03:17:21', '2019-04-10 03:17:21'),
(329, 284, 5, 401, '2019-03-26', '17101086_TT6222311_5_2342.pdf', 'Laporan Modul 2 Mikroprosessor 17101086', '2019-04-10 04:30:48', '2019-04-10 04:30:48'),
(330, 234, 5, 399, '2019-04-02', '17101072_TT6222311_5_77246.pdf', 'Kelengkapan dan kesiapan peralatan praktikum mohon di persiapkan dengan lebih baik lagi. lakukan cek sebelum praktikum dimulai, agar praktikum berjalan dengan lancar', '2019-04-10 10:33:47', '2019-04-10 10:33:47'),
(331, 239, 5, 399, '2019-04-02', '17101079_TT6222311_5_83872.pdf', 'lumayan susah itung\"annya', '2019-04-10 14:52:17', '2019-04-10 14:52:17'),
(332, 219, 5, 401, '2019-03-26', '17101056_TT6222311_5_45925.pdf', 'Alat di pastikan berfungsi dengan baik', '2019-04-10 14:58:57', '2019-04-10 14:58:57'),
(333, 309, 5, 405, '2019-04-02', '17101115_TT6222311_5_58719.pdf', 'saya harap praktikum modul 3 bisa lebih cepat mulainya', '2019-04-10 14:59:10', '2019-04-10 14:59:10'),
(334, 238, 5, 400, '2019-04-02', '17101078_TT6222311_5_42522.pdf', 'maaf telat pak. saya terima konsekuensinya.', '2019-04-10 18:08:36', '2019-04-10 18:08:36'),
(335, 277, 5, 364, '2019-04-01', '17101040_TT6222311_5_47603.pdf', 'Pergunakan waktu praktikum sesuai dengan yang telah ditentukan', '2019-04-11 05:47:46', '2019-04-11 05:47:46'),
(336, 310, 5, 405, '2019-04-02', '17101116_TT6222311_5_97545.pdf', 'Dimohon untuk alat dan bahan praktikumnya lebih diperhatikan lagi, diharapkan agar diperbanyak lagi, terima kasih.', '2019-04-11 11:16:48', '2019-04-11 11:16:48'),
(337, 389, 5, 364, '2019-04-02', '17101204_TT6222311_5_78794.pdf', NULL, '2019-04-11 12:27:38', '2019-04-11 12:27:38'),
(338, 390, 5, 403, '2019-04-01', '17101205_TT6222311_5_1388.pdf', 'modul 2 mikroprosessor', '2019-04-12 06:22:40', '2019-04-12 06:22:40'),
(339, 344, 5, 368, '2019-04-02', '17101150_TT6222311_5_28890.pdf', 'Sudah cukup baik dalam menjelaskan. Kedepannya agar lebih aktif lagi dalam menjadi asisten', '2019-04-12 19:13:09', '2019-04-12 19:13:09'),
(340, 319, 6, 364, '2019-04-09', '17101122_TT6222311_6_47619.pdf', NULL, '2019-04-13 12:51:10', '2019-04-13 12:51:10'),
(341, 317, 5, 405, '2019-04-02', '17101188_TT6222311_5_46741.pdf', NULL, '2019-04-14 11:03:14', '2019-04-14 11:03:14'),
(342, 316, 5, 405, '2019-04-02', '17101185_TT6222311_5_15983.pdf', NULL, '2019-04-15 05:20:23', '2019-04-15 05:20:23'),
(343, 397, 6, 403, '2019-04-08', '17101214_TT6222311_6_98277.pdf', 'Berikut saya lampirkan laporan praktikum modul 3. Terima kasih.', '2019-04-15 08:23:44', '2019-04-15 08:23:44'),
(344, 244, 6, 404, '2019-04-08', '17101002_TT6222311_6_36855.pdf', 'Sebaiknya praktikum ditambahin waktu :)', '2019-04-15 12:20:46', '2019-04-15 14:19:00'),
(345, 256, 6, 404, '2019-04-08', '17101015_TT6222311_6_22075.pdf', NULL, '2019-04-15 13:35:48', '2019-04-15 13:35:48'),
(346, 226, 5, 399, '2019-04-02', '17101063_TT6222311_5_77816.pdf', 'Kabel jumper tolong diganti karena sudah banyak yang rusak sehingga membuat rangkaian tidak berhasil bekerja sehingga dalam membuat analisa laporan bingung karena tidak tahu cara kerja rangkaian yang sudah dirangkai.', '2019-04-15 14:38:25', '2019-04-15 14:38:25'),
(347, 311, 5, 405, '2019-04-02', '17101118_TT6222311_5_16061.pdf', NULL, '2019-04-15 14:47:52', '2019-04-15 14:47:52'),
(348, 393, 6, 402, '2019-04-08', '17101209_TT6222311_6_8932.pdf', NULL, '2019-04-15 15:07:32', '2019-04-15 15:07:32'),
(349, 250, 6, 404, '2019-04-08', '17101009_TT6222311_6_22836.pdf', NULL, '2019-04-15 15:12:32', '2019-04-15 15:12:32'),
(350, 370, 5, 404, '2019-03-26', '17101180_TT6222311_5_56664.pdf', 'Sudah baik dalam hal peralatan yang cukup memadai dan lengkap', '2019-04-15 15:50:37', '2019-04-15 15:50:37'),
(351, 247, 6, 364, '2019-04-08', '17101005_TT6222311_6_82114.pdf', 'Untuk asisten laboratarium harap menyediakan laptop tambahan barangkali ada praktikan yang tidak membawa laptop', '2019-04-15 15:52:35', '2019-04-15 15:52:35'),
(352, 255, 6, 403, '2019-04-08', '17101014_TT6222311_6_40330.pdf', 'Terlalu cepat saat menerangkan materi praktikum', '2019-04-15 15:54:01', '2019-04-15 15:54:01'),
(353, 398, 6, 403, '2019-04-08', '17101217_TT6222311_6_8446.pdf', NULL, '2019-04-15 16:39:38', '2019-04-15 16:39:38'),
(354, 254, 6, 403, '2019-04-08', '17101013_TT6222311_6_18488.pdf', 'cukup memahami pada praktikum ke tiga. dan waktu durasi membuat laporan kurang', '2019-04-15 16:40:13', '2019-04-15 16:40:13'),
(355, 253, 6, 364, '2019-04-08', '17101012_TT6222311_6_10977.pdf', 'programnya bisa langsung dicopy', '2019-04-15 16:50:39', '2019-04-15 16:50:39'),
(356, 257, 6, 404, '2019-04-08', '17101016_TT6222311_6_98986.pdf', NULL, '2019-04-15 17:06:14', '2019-04-15 17:06:14'),
(357, 246, 6, 364, '2019-04-08', '17101004_TT6222311_6_12003.pdf', 'cukup dimengerti praktikumke3', '2019-04-15 17:17:16', '2019-04-15 17:17:16'),
(358, 245, 6, 404, '2019-04-08', '17101003_TT6222311_6_51023.pdf', 'Permintaan modul untuk memenuhi data semakin banyak dan belum sesuai dengan akurasi waktu pengumpulan. Sehingga untuk kedepannya agar lebih diperbaiki lagi sistematikannya.', '2019-04-15 18:11:21', '2019-04-15 18:11:21'),
(359, 258, 6, 364, '2019-04-08', '17101018_TT6222311_6_70819.pdf', 'cukup dipahami di praktikum 3', '2019-04-15 18:45:24', '2019-04-15 18:45:24'),
(360, 372, 5, 404, '2019-03-26', '17101182_TT6222311_5_57028.pdf', 'i hope be better ....', '2019-04-16 05:32:45', '2019-04-16 05:32:45'),
(361, 368, 6, 350, '2019-04-09', '17101175_TT6222311_6_98586.pdf', 'sudah ok, ditingkatkan lagi.', '2019-04-16 12:37:57', '2019-04-16 12:37:57'),
(362, 362, 5, 404, '2019-03-26', '17101169_TT6222311_5_75960.pdf', NULL, '2019-04-16 13:09:28', '2019-04-16 13:09:28'),
(363, 336, 6, 364, '2019-04-09', '17101142_TT6222311_6_59082.pdf', NULL, '2019-04-16 13:12:09', '2019-04-16 13:12:09'),
(364, 325, 6, 364, '2019-04-09', '17101130_TT6222311_6_79935.pdf', 'alhamdulillah hirabil alamin akhirnya kelar juga :)', '2019-04-16 13:19:42', '2019-04-16 13:19:42'),
(365, 308, 5, 405, '2019-04-02', '17101114_TT6222311_5_76546.pdf', 'untuk mengetahui output LCD 16x2 dan cara pengaplikasiannya', '2019-04-16 13:56:31', '2019-04-16 13:56:31'),
(366, 360, 6, 350, '2019-04-09', '17101166_TT6222311_6_69229.pdf', 'materi udah mantab, saya paham meski sedikit', '2019-04-16 14:25:11', '2019-04-16 14:27:40'),
(367, 324, 6, 364, '2019-04-09', '17101128_TT6222311_6_19373.pdf', 'semakin baik dan maju', '2019-04-16 14:52:31', '2019-04-16 14:52:31'),
(368, 371, 6, 364, '2019-04-09', '17101181_TT6222311_6_29924.pdf', 'Alatnya terdapat beberapa yang kurang pas pada modul 3, jadi agak memperlambat praktikum', '2019-04-16 14:56:46', '2019-04-16 14:56:46'),
(369, 281, 6, 405, '2019-04-09', '17101083_TT6222311_6_27616.pdf', 'Mohon untuk dijelaskan perbaris program', '2019-04-16 15:11:34', '2019-04-16 15:11:34'),
(370, 321, 6, 368, '2019-04-09', '17101124_TT6222311_6_47510.pdf', 'untuk praktikum selanjutnya fasilitasnya lebih diperbaiki lagi , demi kelancaran praktikan dalam melakukan praktikum. serta lebih di rangkul lagi bagi para praktikan yang belum paham. terimakasih', '2019-04-16 15:11:54', '2019-04-16 15:11:54'),
(371, 211, 6, 401, '2019-04-09', '17101047_TT6222311_6_68906.pdf', 'tolong untuk tugasnya dipermudah karena I2C di tinkercad itu tidah ada, DHT 11 tidak ada dan lainnya. Untuk aslab nya kurang menguasai materi terus ditingkatkan. Terimakasih', '2019-04-16 15:16:56', '2019-04-16 15:16:56'),
(372, 322, 6, 350, '2019-04-09', '17101126_TT6222311_6_87616.pdf', 'amin..amin...amin...aminn kumlot', '2019-04-16 15:46:36', '2019-04-16 15:46:36'),
(373, 328, 6, 350, '2019-04-09', '17101133_TT6222311_6_70438.pdf', 'semogaa yang disemogakann aminnnnnnn', '2019-04-16 15:48:55', '2019-04-16 15:48:55'),
(374, 213, 6, 400, '2019-04-09', '17101049_TT6222311_6_33118.pdf', 'untuk script program penjelasanya kurang dari aslab', '2019-04-16 15:56:38', '2019-04-16 15:56:38'),
(375, 294, 6, 401, '2019-04-09', '17101096_TT6222311_6_10400.pdf', 'pada saat praktikum lebih baik, dijelaskan setiap programnya', '2019-04-16 16:05:39', '2019-04-16 16:05:39'),
(376, 358, 6, 364, '2019-04-09', '17101164_TT6222311_6_52647.pdf', NULL, '2019-04-16 16:08:57', '2019-04-16 16:08:57'),
(377, 215, 6, 399, '2019-04-09', '17101051_TT6222311_6_98261.pdf', 'Sebaiknya alat yang dibutuhkan oleh praktikan sudah disediakan seperti obeng agar praktikan tidak harus meminjam ke kelompok lain dan mengganggu konsentrasi kelompok lain. Terimakasih.', '2019-04-16 16:17:21', '2019-04-16 16:17:21'),
(378, 286, 6, 401, '2019-04-09', '17101088_TT6222311_6_2141.pdf', 'LAPORAN PRAKTIKUM MODUL III', '2019-04-16 16:26:03', '2019-04-16 16:26:03'),
(379, 377, 6, 364, '2019-04-09', '17101191_TT6222311_6_77937.pdf', 'Tukar jadwal dengan Ahda Istyana Nabila karena yg bersangkutan mengikuti kunjungan industri', '2019-04-16 16:39:55', '2019-04-16 16:39:55'),
(380, 323, 6, 350, '2019-04-09', '17101127_TT6222311_6_85678.pdf', 'sebaik baik perhiasan di dunia adalah wanita solehah\r\nterimakasih kaka asleb', '2019-04-16 16:47:27', '2019-04-16 16:47:27'),
(381, 361, 5, 350, '2019-03-26', '17101167_TT6222311_5_97529.pdf', NULL, '2019-04-16 17:56:11', '2019-04-16 17:56:11'),
(382, 209, 6, 399, '2019-04-09', '17101044_TT6222311_6_86012.pdf', 'Silahkan dinilai, ini hasil kerja saya sendiri', '2019-04-16 18:06:51', '2019-04-16 18:06:51'),
(383, 221, 6, 399, '2019-04-09', '17101058_TT6222311_6_11724.pdf', NULL, '2019-04-17 02:01:51', '2019-04-17 02:01:51'),
(384, 290, 5, 405, '2019-03-26', '17101092_TT6222311_5_28051.pdf', 'Alat yang dibutuhkan sebaiknya lebih diperbanyak', '2019-04-17 08:45:40', '2019-04-17 08:45:40'),
(385, 382, 5, 364, '2019-04-02', '17101197_TT6222311_5_9934.pdf', 'Semangat terus Ngaslabnya', '2019-04-17 10:22:13', '2019-04-17 10:22:13'),
(386, 249, 6, 403, '2019-04-08', '17101008_TT6222311_6_95477.pdf', 'Lebih efektif dalam praktikum agar tidak banyak waktu terbuang', '2019-04-17 15:10:25', '2019-04-17 15:10:25'),
(387, 212, 6, 400, '2019-04-09', '17101048_TT6222311_6_59074.pdf', NULL, '2019-04-17 15:51:41', '2019-04-17 15:51:41'),
(388, 288, 6, 401, '2019-04-09', '17101090_TT6222311_6_5401.pdf', NULL, '2019-04-17 19:00:36', '2019-04-17 19:00:36'),
(389, 208, 6, 399, '2019-04-09', '17101043_TT6222311_6_9098.pdf', NULL, '2019-04-17 19:07:08', '2019-04-17 19:07:08'),
(390, 313, 5, 401, '2019-04-02', '17101120_TT6222311_5_88302.pdf', 'semoga banyak alat yang tidak rusak kedepannya', '2019-04-18 06:44:46', '2019-04-18 06:44:46'),
(391, 343, 5, 368, '2019-04-02', '17101149_TT6222311_5_31326.pdf', 'semangat terus buat kaka aslebnya', '2019-04-19 02:30:18', '2019-04-19 02:30:18'),
(392, 297, 6, 403, '2019-04-09', '17101099_TT6222311_6_53608.pdf', 'penjelasan mengenai tugas kurang jelas sehingga dalam pengerjaan nya tidak dapat terselesaikan', '2019-04-19 10:03:37', '2019-04-19 10:03:37'),
(393, 334, 6, 350, '2019-04-09', '17101140_TT6222311_6_41735.pdf', 'maaf terlambat mengumpulkan', '2019-04-19 12:58:40', '2019-04-19 12:58:40'),
(394, 293, 6, 405, '2019-04-09', '17101095_TT6222311_6_29562.pdf', NULL, '2019-04-19 15:57:47', '2019-04-19 15:57:47'),
(395, 241, 6, 403, '2019-04-08', '13101035_TT6222311_6_58635.pdf', NULL, '2019-04-20 06:05:40', '2019-04-20 06:05:40'),
(396, 292, 6, 405, '2019-04-09', '17101094_TT6222311_6_52280.pdf', 'Sudah cukup baik dalam  meberika pengarahan', '2019-04-20 13:26:27', '2019-04-20 13:26:27'),
(397, 370, 6, 404, '2019-04-09', '17101180_TT6222311_6_2009.pdf', 'Peralatan dalam praktikum sudah memadai dan bagus', '2019-04-21 15:13:36', '2019-04-21 15:13:36'),
(398, 390, 6, 403, '2019-04-08', '17101205_TT6222311_6_2783.pdf', 'modul 3 mikroprosessor', '2019-04-22 16:03:52', '2019-04-22 16:03:52'),
(399, 357, 6, 404, '2019-04-08', '17101163_TT6222311_6_82283.pdf', 'Ketepatan Waktu saat memulai Praktikum', '2019-04-23 06:08:37', '2019-04-23 06:08:37'),
(400, 284, 6, 401, '2019-04-09', '17101086_TT6222311_6_85411.pdf', 'pada praktikum ke 3 sudah mulai bagus', '2019-04-23 11:38:29', '2019-04-23 11:38:29'),
(401, 218, 6, 400, '2019-03-26', '17101055_TT6222311_6_57737.pdf', 'terimakasih dan mohon maaf atas keterlambatanya', '2019-04-24 04:24:11', '2019-04-24 04:24:11'),
(402, 219, 6, 401, '2019-04-09', '17101056_TT6222311_6_54127.pdf', 'butuh waktu lebih banyak untuk membahas script', '2019-04-24 09:04:28', '2019-04-24 09:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kd_mk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_mk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id`, `kd_mk`, `nama_mk`, `created_at`, `updated_at`) VALUES
(2, 'TT6222311', 'PRAKTIKUM MIKROPROSESOR', NULL, '2019-03-15 23:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_12_084908_create_mata_kuliah_table', 1),
(4, '2019_03_12_090800_create_kelas_table', 1),
(5, '2019_03_12_224025_create_aktivitas_table', 1),
(6, '2019_03_12_225138_create_modul_table', 1),
(7, '2019_03_12_225443_create_laporan_table', 1),
(8, '2019_03_13_023518_create_asisten_table', 1),
(9, '2019_03_13_113326_add_column_to_users', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_modul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_mk` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id`, `nama_modul`, `id_mk`, `created_at`, `updated_at`) VALUES
(4, 'Modul 1', 2, NULL, NULL),
(5, 'Modul 2', 2, NULL, NULL),
(6, 'Modul 3', 2, NULL, NULL),
(7, 'Modul 4', 2, NULL, NULL),
(8, 'Modul 5', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_aktivitas` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `as_asisten` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id`, `id_user`, `id_aktivitas`, `created_at`, `updated_at`, `as_asisten`) VALUES
(9, 205, 2, '2019-03-17 23:36:44', '2019-03-17 23:36:44', 0),
(10, 206, 2, '2019-03-17 23:36:44', '2019-03-17 23:36:44', 0),
(11, 207, 2, '2019-03-17 23:36:44', '2019-03-17 23:36:44', 0),
(12, 208, 2, '2019-03-17 23:36:45', '2019-03-17 23:36:45', 0),
(13, 209, 2, '2019-03-17 23:36:45', '2019-03-17 23:36:45', 0),
(14, 210, 2, '2019-03-17 23:36:45', '2019-03-17 23:36:45', 0),
(15, 211, 2, '2019-03-17 23:36:45', '2019-03-17 23:36:45', 0),
(16, 212, 2, '2019-03-17 23:36:45', '2019-03-17 23:36:45', 0),
(17, 213, 2, '2019-03-17 23:36:46', '2019-03-17 23:36:46', 0),
(18, 214, 2, '2019-03-17 23:36:46', '2019-03-17 23:36:46', 0),
(19, 215, 2, '2019-03-17 23:36:46', '2019-03-17 23:36:46', 0),
(20, 216, 2, '2019-03-17 23:36:46', '2019-03-17 23:36:46', 0),
(21, 217, 2, '2019-03-17 23:36:46', '2019-03-17 23:36:46', 0),
(22, 218, 2, '2019-03-17 23:36:47', '2019-03-17 23:36:47', 0),
(23, 219, 2, '2019-03-17 23:36:47', '2019-03-17 23:36:47', 0),
(24, 220, 2, '2019-03-17 23:36:47', '2019-03-17 23:36:47', 0),
(25, 221, 2, '2019-03-17 23:36:47', '2019-03-17 23:36:47', 0),
(26, 222, 2, '2019-03-17 23:36:48', '2019-03-17 23:36:48', 0),
(27, 223, 2, '2019-03-17 23:36:48', '2019-03-17 23:36:48', 0),
(28, 224, 2, '2019-03-17 23:36:48', '2019-03-17 23:36:48', 0),
(29, 225, 2, '2019-03-17 23:36:48', '2019-03-17 23:36:48', 0),
(30, 226, 2, '2019-03-17 23:36:48', '2019-03-17 23:36:48', 0),
(31, 227, 2, '2019-03-17 23:36:49', '2019-03-17 23:36:49', 0),
(32, 228, 2, '2019-03-17 23:36:49', '2019-03-17 23:36:49', 0),
(33, 229, 2, '2019-03-17 23:36:49', '2019-03-17 23:36:49', 0),
(34, 230, 2, '2019-03-17 23:36:49', '2019-03-17 23:36:49', 0),
(35, 231, 2, '2019-03-17 23:36:49', '2019-03-17 23:36:49', 0),
(36, 232, 2, '2019-03-17 23:36:50', '2019-03-17 23:36:50', 0),
(37, 233, 2, '2019-03-17 23:36:50', '2019-03-17 23:36:50', 0),
(38, 234, 2, '2019-03-17 23:36:50', '2019-03-17 23:36:50', 0),
(39, 235, 2, '2019-03-17 23:36:50', '2019-03-17 23:36:50', 0),
(40, 236, 2, '2019-03-17 23:36:50', '2019-03-17 23:36:50', 0),
(41, 237, 2, '2019-03-17 23:36:51', '2019-03-17 23:36:51', 0),
(42, 238, 2, '2019-03-17 23:36:51', '2019-03-17 23:36:51', 0),
(43, 239, 2, '2019-03-17 23:36:51', '2019-03-17 23:36:51', 0),
(44, 240, 2, '2019-03-17 23:36:51', '2019-03-17 23:36:51', 0),
(45, 241, 1, '2019-03-17 23:36:51', '2019-03-17 23:36:51', 0),
(46, 242, 1, '2019-03-17 23:36:52', '2019-03-17 23:36:52', 0),
(47, 243, 1, '2019-03-17 23:36:52', '2019-03-17 23:36:52', 0),
(48, 244, 1, '2019-03-17 23:36:52', '2019-03-17 23:36:52', 0),
(49, 245, 1, '2019-03-17 23:36:52', '2019-03-17 23:36:52', 0),
(50, 246, 1, '2019-03-17 23:36:53', '2019-03-17 23:36:53', 0),
(51, 247, 1, '2019-03-17 23:36:53', '2019-03-17 23:36:53', 0),
(52, 248, 1, '2019-03-17 23:36:53', '2019-03-17 23:36:53', 0),
(53, 249, 1, '2019-03-17 23:36:53', '2019-03-17 23:36:53', 0),
(54, 250, 1, '2019-03-17 23:36:53', '2019-03-17 23:36:53', 0),
(55, 251, 1, '2019-03-17 23:36:54', '2019-03-17 23:36:54', 0),
(56, 252, 1, '2019-03-17 23:36:54', '2019-03-17 23:36:54', 0),
(57, 253, 1, '2019-03-17 23:36:54', '2019-03-17 23:36:54', 0),
(58, 254, 1, '2019-03-17 23:36:54', '2019-03-17 23:36:54', 0),
(59, 255, 1, '2019-03-17 23:36:54', '2019-03-17 23:36:54', 0),
(60, 256, 1, '2019-03-17 23:36:55', '2019-03-17 23:36:55', 0),
(61, 257, 1, '2019-03-17 23:36:55', '2019-03-17 23:36:55', 0),
(62, 258, 1, '2019-03-17 23:36:55', '2019-03-17 23:36:55', 0),
(63, 259, 1, '2019-03-17 23:36:55', '2019-03-17 23:36:55', 0),
(64, 260, 1, '2019-03-17 23:36:55', '2019-03-17 23:36:55', 0),
(65, 261, 1, '2019-03-17 23:36:56', '2019-03-17 23:36:56', 0),
(66, 262, 1, '2019-03-17 23:36:56', '2019-03-17 23:36:56', 0),
(67, 263, 1, '2019-03-17 23:36:56', '2019-03-17 23:36:56', 0),
(68, 264, 1, '2019-03-17 23:36:57', '2019-03-17 23:36:57', 0),
(69, 265, 1, '2019-03-17 23:36:57', '2019-03-17 23:36:57', 0),
(70, 266, 1, '2019-03-17 23:36:57', '2019-03-17 23:36:57', 0),
(71, 267, 1, '2019-03-17 23:36:57', '2019-03-17 23:36:57', 0),
(72, 268, 1, '2019-03-17 23:36:57', '2019-03-17 23:36:57', 0),
(73, 269, 1, '2019-03-17 23:36:58', '2019-03-17 23:36:58', 0),
(74, 270, 1, '2019-03-17 23:36:58', '2019-03-17 23:36:58', 0),
(75, 271, 1, '2019-03-17 23:36:58', '2019-03-17 23:36:58', 0),
(76, 272, 1, '2019-03-17 23:36:58', '2019-03-17 23:36:58', 0),
(77, 273, 1, '2019-03-17 23:36:58', '2019-03-17 23:36:58', 0),
(78, 274, 1, '2019-03-17 23:36:59', '2019-03-17 23:36:59', 0),
(79, 275, 1, '2019-03-17 23:36:59', '2019-03-17 23:36:59', 0),
(80, 276, 1, '2019-03-17 23:36:59', '2019-03-17 23:36:59', 0),
(81, 277, 1, '2019-03-17 23:36:59', '2019-03-17 23:36:59', 0),
(82, 278, 3, '2019-03-17 23:37:00', '2019-03-17 23:37:00', 0),
(83, 279, 3, '2019-03-17 23:37:00', '2019-03-17 23:37:00', 0),
(84, 280, 3, '2019-03-17 23:37:00', '2019-03-17 23:37:00', 0),
(85, 281, 3, '2019-03-17 23:37:00', '2019-03-17 23:37:00', 0),
(86, 282, 3, '2019-03-17 23:37:00', '2019-03-17 23:37:00', 0),
(87, 283, 3, '2019-03-17 23:37:01', '2019-03-17 23:37:01', 0),
(88, 284, 3, '2019-03-17 23:37:01', '2019-03-17 23:37:01', 0),
(89, 285, 3, '2019-03-17 23:37:01', '2019-03-17 23:37:01', 0),
(90, 286, 3, '2019-03-17 23:37:01', '2019-03-17 23:37:01', 0),
(91, 287, 3, '2019-03-17 23:37:01', '2019-03-17 23:37:01', 0),
(92, 288, 3, '2019-03-17 23:37:02', '2019-03-17 23:37:02', 0),
(93, 289, 3, '2019-03-17 23:37:02', '2019-03-17 23:37:02', 0),
(94, 290, 3, '2019-03-17 23:37:02', '2019-03-17 23:37:02', 0),
(95, 291, 3, '2019-03-17 23:37:02', '2019-03-17 23:37:02', 0),
(96, 292, 3, '2019-03-17 23:37:03', '2019-03-17 23:37:03', 0),
(97, 293, 3, '2019-03-17 23:37:03', '2019-03-17 23:37:03', 0),
(98, 294, 3, '2019-03-17 23:37:03', '2019-03-17 23:37:03', 0),
(99, 295, 3, '2019-03-17 23:37:03', '2019-03-17 23:37:03', 0),
(100, 296, 3, '2019-03-17 23:37:03', '2019-03-17 23:37:03', 0),
(101, 297, 3, '2019-03-17 23:37:04', '2019-03-17 23:37:04', 0),
(102, 298, 3, '2019-03-17 23:37:04', '2019-03-17 23:37:04', 0),
(103, 299, 3, '2019-03-17 23:37:04', '2019-03-17 23:37:04', 0),
(104, 300, 3, '2019-03-17 23:37:04', '2019-03-17 23:37:04', 0),
(105, 301, 3, '2019-03-17 23:37:04', '2019-03-17 23:37:04', 0),
(106, 302, 3, '2019-03-17 23:37:05', '2019-03-17 23:37:05', 0),
(107, 303, 3, '2019-03-17 23:37:05', '2019-03-17 23:37:05', 0),
(108, 304, 3, '2019-03-17 23:37:05', '2019-03-17 23:37:05', 0),
(109, 305, 3, '2019-03-17 23:37:05', '2019-03-17 23:37:05', 0),
(110, 306, 3, '2019-03-17 23:37:06', '2019-03-17 23:37:06', 0),
(111, 307, 3, '2019-03-17 23:37:06', '2019-03-17 23:37:06', 0),
(112, 308, 3, '2019-03-17 23:37:06', '2019-03-17 23:37:06', 0),
(113, 309, 3, '2019-03-17 23:37:06', '2019-03-17 23:37:06', 0),
(114, 310, 3, '2019-03-17 23:37:06', '2019-03-17 23:37:06', 0),
(115, 311, 3, '2019-03-17 23:37:07', '2019-03-17 23:37:07', 0),
(116, 312, 3, '2019-03-17 23:37:07', '2019-03-17 23:37:07', 0),
(117, 313, 3, '2019-03-17 23:37:07', '2019-03-17 23:37:07', 0),
(118, 314, 3, '2019-03-17 23:37:07', '2019-03-17 23:37:07', 0),
(119, 315, 3, '2019-03-17 23:37:08', '2019-03-17 23:37:08', 0),
(120, 316, 3, '2019-03-17 23:37:08', '2019-03-17 23:37:08', 0),
(121, 317, 3, '2019-03-17 23:37:08', '2019-03-17 23:37:08', 0),
(122, 318, 4, '2019-03-17 23:37:09', '2019-03-17 23:37:09', 0),
(123, 319, 4, '2019-03-17 23:37:09', '2019-03-17 23:37:09', 0),
(124, 320, 4, '2019-03-17 23:37:09', '2019-03-17 23:37:09', 0),
(125, 321, 4, '2019-03-17 23:37:09', '2019-03-17 23:37:09', 0),
(126, 322, 4, '2019-03-17 23:37:09', '2019-03-17 23:37:09', 0),
(127, 323, 4, '2019-03-17 23:37:10', '2019-03-17 23:37:10', 0),
(128, 324, 4, '2019-03-17 23:37:10', '2019-03-17 23:37:10', 0),
(129, 325, 4, '2019-03-17 23:37:10', '2019-03-17 23:37:10', 0),
(130, 326, 4, '2019-03-17 23:37:10', '2019-03-17 23:37:10', 0),
(131, 327, 4, '2019-03-17 23:37:11', '2019-03-17 23:37:11', 0),
(132, 328, 4, '2019-03-17 23:37:11', '2019-03-17 23:37:11', 0),
(133, 329, 4, '2019-03-17 23:37:11', '2019-03-17 23:37:11', 0),
(134, 330, 4, '2019-03-17 23:37:12', '2019-03-17 23:37:12', 0),
(135, 331, 4, '2019-03-17 23:37:12', '2019-03-17 23:37:12', 0),
(136, 332, 4, '2019-03-17 23:37:12', '2019-03-17 23:37:12', 0),
(137, 333, 4, '2019-03-17 23:37:12', '2019-03-17 23:37:12', 0),
(138, 334, 4, '2019-03-17 23:37:13', '2019-03-17 23:37:13', 0),
(139, 335, 4, '2019-03-17 23:37:13', '2019-03-17 23:37:13', 0),
(140, 336, 4, '2019-03-17 23:37:13', '2019-03-17 23:37:13', 0),
(141, 337, 4, '2019-03-17 23:37:13', '2019-03-17 23:37:13', 0),
(142, 338, 4, '2019-03-17 23:37:14', '2019-03-17 23:37:14', 0),
(143, 339, 4, '2019-03-17 23:37:14', '2019-03-17 23:37:14', 0),
(144, 340, 4, '2019-03-17 23:37:14', '2019-03-17 23:37:14', 0),
(145, 341, 4, '2019-03-17 23:37:15', '2019-03-17 23:37:15', 0),
(146, 342, 4, '2019-03-17 23:37:15', '2019-03-17 23:37:15', 0),
(147, 343, 4, '2019-03-17 23:37:15', '2019-03-17 23:37:15', 0),
(148, 344, 4, '2019-03-17 23:37:15', '2019-03-17 23:37:15', 0),
(149, 345, 4, '2019-03-17 23:37:15', '2019-03-17 23:37:15', 0),
(150, 346, 4, '2019-03-17 23:37:16', '2019-03-17 23:37:16', 0),
(151, 347, 4, '2019-03-17 23:37:16', '2019-03-17 23:37:16', 0),
(152, 348, 4, '2019-03-17 23:37:16', '2019-03-17 23:37:16', 0),
(153, 349, 4, '2019-03-17 23:37:16', '2019-03-17 23:37:16', 0),
(154, 350, 4, '2019-03-17 23:37:17', '2019-03-17 23:37:17', 0),
(155, 351, 4, '2019-03-17 23:37:17', '2019-03-17 23:37:17', 0),
(156, 352, 4, '2019-03-17 23:37:17', '2019-03-17 23:37:17', 0),
(157, 353, 4, '2019-03-17 23:37:17', '2019-03-17 23:37:17', 0),
(158, 354, 4, '2019-03-17 23:37:18', '2019-03-17 23:37:18', 0),
(159, 355, 4, '2019-03-17 23:37:18', '2019-03-17 23:37:18', 0),
(160, 356, 5, '2019-03-17 23:37:18', '2019-03-17 23:37:18', 0),
(161, 357, 5, '2019-03-17 23:37:18', '2019-03-17 23:37:18', 0),
(162, 358, 5, '2019-03-17 23:37:18', '2019-03-17 23:37:18', 0),
(163, 359, 5, '2019-03-17 23:37:19', '2019-03-17 23:37:19', 0),
(164, 360, 5, '2019-03-17 23:37:19', '2019-03-17 23:37:19', 0),
(165, 361, 5, '2019-03-17 23:37:19', '2019-03-17 23:37:19', 0),
(166, 362, 5, '2019-03-17 23:37:19', '2019-03-17 23:37:19', 0),
(167, 363, 5, '2019-03-17 23:37:20', '2019-03-17 23:37:20', 0),
(168, 364, 5, '2019-03-17 23:37:20', '2019-03-17 23:37:20', 0),
(169, 365, 5, '2019-03-17 23:37:20', '2019-03-17 23:37:20', 0),
(170, 366, 5, '2019-03-17 23:37:20', '2019-03-17 23:37:20', 0),
(171, 367, 5, '2019-03-17 23:37:21', '2019-03-17 23:37:21', 0),
(172, 368, 5, '2019-03-17 23:37:21', '2019-03-17 23:37:21', 0),
(173, 369, 5, '2019-03-17 23:37:21', '2019-03-17 23:37:21', 0),
(174, 370, 5, '2019-03-17 23:37:21', '2019-03-17 23:37:21', 0),
(175, 371, 5, '2019-03-17 23:37:22', '2019-03-17 23:37:22', 0),
(176, 372, 5, '2019-03-17 23:37:22', '2019-03-17 23:37:22', 0),
(177, 373, 5, '2019-03-17 23:37:22', '2019-03-17 23:37:22', 0),
(178, 374, 5, '2019-03-17 23:37:23', '2019-03-17 23:37:23', 0),
(179, 375, 5, '2019-03-17 23:37:23', '2019-03-17 23:37:23', 0),
(180, 376, 5, '2019-03-17 23:37:23', '2019-03-17 23:37:23', 0),
(181, 377, 5, '2019-03-17 23:37:23', '2019-03-17 23:37:23', 0),
(182, 378, 5, '2019-03-17 23:37:24', '2019-03-17 23:37:24', 0),
(183, 379, 5, '2019-03-17 23:37:24', '2019-03-17 23:37:24', 0),
(184, 380, 5, '2019-03-17 23:37:24', '2019-03-17 23:37:24', 0),
(185, 381, 5, '2019-03-17 23:37:24', '2019-03-17 23:37:24', 0),
(186, 382, 5, '2019-03-17 23:37:24', '2019-03-17 23:37:24', 0),
(187, 383, 5, '2019-03-17 23:37:25', '2019-03-17 23:37:25', 0),
(188, 384, 5, '2019-03-17 23:37:25', '2019-03-17 23:37:25', 0),
(189, 385, 5, '2019-03-17 23:37:25', '2019-03-17 23:37:25', 0),
(190, 386, 5, '2019-03-17 23:37:25', '2019-03-17 23:37:25', 0),
(191, 387, 5, '2019-03-17 23:37:26', '2019-03-17 23:37:26', 0),
(192, 388, 5, '2019-03-17 23:37:26', '2019-03-17 23:37:26', 0),
(193, 389, 5, '2019-03-17 23:37:26', '2019-03-17 23:37:26', 0),
(194, 390, 6, '2019-03-17 23:37:26', '2019-03-17 23:37:26', 0),
(195, 391, 6, '2019-03-17 23:37:27', '2019-03-17 23:37:27', 0),
(196, 392, 6, '2019-03-17 23:37:27', '2019-03-17 23:37:27', 0),
(197, 393, 6, '2019-03-17 23:37:27', '2019-03-17 23:37:27', 0),
(198, 394, 6, '2019-03-17 23:37:28', '2019-03-17 23:37:28', 0),
(199, 395, 6, '2019-03-17 23:37:28', '2019-03-17 23:37:28', 0),
(200, 396, 6, '2019-03-17 23:37:28', '2019-03-17 23:37:28', 0),
(201, 397, 6, '2019-03-17 23:37:28', '2019-03-17 23:37:28', 0),
(202, 398, 6, '2019-03-17 23:37:29', '2019-03-17 23:37:29', 0),
(203, 6, 1, NULL, NULL, 0),
(204, 6, 2, NULL, NULL, 0),
(205, 6, 3, NULL, NULL, 0),
(206, 6, 4, NULL, NULL, 0),
(207, 6, 5, NULL, NULL, 0),
(208, 6, 6, NULL, NULL, 0),
(209, 399, 1, '2019-03-18 00:23:16', '2019-03-18 00:23:16', 1),
(210, 399, 2, '2019-03-18 00:23:16', '2019-03-18 00:23:16', 1),
(211, 399, 3, '2019-03-18 00:23:16', '2019-03-18 00:23:16', 1),
(212, 399, 4, '2019-03-18 00:23:16', '2019-03-18 00:23:16', 1),
(213, 399, 5, '2019-03-18 00:23:16', '2019-03-18 00:23:16', 1),
(214, 399, 6, '2019-03-18 00:23:16', '2019-03-18 00:23:16', 1),
(215, 400, 1, '2019-03-18 00:23:17', '2019-03-18 00:23:17', 1),
(216, 400, 2, '2019-03-18 00:23:17', '2019-03-18 00:23:17', 1),
(217, 400, 3, '2019-03-18 00:23:17', '2019-03-18 00:23:17', 1),
(218, 400, 4, '2019-03-18 00:23:17', '2019-03-18 00:23:17', 1),
(219, 400, 5, '2019-03-18 00:23:17', '2019-03-18 00:23:17', 1),
(220, 400, 6, '2019-03-18 00:23:17', '2019-03-18 00:23:17', 1),
(221, 401, 1, '2019-03-18 00:23:17', '2019-03-18 00:23:17', 1),
(222, 401, 2, '2019-03-18 00:23:17', '2019-03-18 00:23:17', 1),
(223, 401, 3, '2019-03-18 00:23:17', '2019-03-18 00:23:17', 1),
(224, 401, 4, '2019-03-18 00:23:17', '2019-03-18 00:23:17', 1),
(225, 401, 5, '2019-03-18 00:23:17', '2019-03-18 00:23:17', 1),
(226, 401, 6, '2019-03-18 00:23:17', '2019-03-18 00:23:17', 1),
(227, 402, 1, '2019-03-18 00:23:17', '2019-03-18 00:23:17', 1),
(228, 402, 2, '2019-03-18 00:23:17', '2019-03-18 00:23:17', 1),
(229, 402, 3, '2019-03-18 00:23:18', '2019-03-18 00:23:18', 1),
(230, 402, 4, '2019-03-18 00:23:18', '2019-03-18 00:23:18', 1),
(231, 402, 5, '2019-03-18 00:23:18', '2019-03-18 00:23:18', 1),
(232, 402, 6, '2019-03-18 00:23:18', '2019-03-18 00:23:18', 1),
(233, 403, 1, '2019-03-18 00:23:18', '2019-03-18 00:23:18', 1),
(234, 403, 2, '2019-03-18 00:23:18', '2019-03-18 00:23:18', 1),
(235, 403, 3, '2019-03-18 00:23:18', '2019-03-18 00:23:18', 1),
(236, 403, 4, '2019-03-18 00:23:18', '2019-03-18 00:23:18', 1),
(237, 403, 5, '2019-03-18 00:23:18', '2019-03-18 00:23:18', 1),
(238, 403, 6, '2019-03-18 00:23:18', '2019-03-18 00:23:18', 1),
(239, 404, 1, '2019-03-18 00:23:18', '2019-03-18 00:23:18', 1),
(240, 404, 2, '2019-03-18 00:23:18', '2019-03-18 00:23:18', 1),
(241, 404, 3, '2019-03-18 00:23:18', '2019-03-18 00:23:18', 1),
(242, 404, 4, '2019-03-18 00:23:18', '2019-03-18 00:23:18', 1),
(243, 404, 5, '2019-03-18 00:23:18', '2019-03-18 00:23:18', 1),
(244, 404, 6, '2019-03-18 00:23:19', '2019-03-18 00:23:19', 1),
(245, 350, 1, '2019-03-18 00:31:30', '2019-03-18 00:31:30', 1),
(246, 364, 1, '2019-03-18 00:31:30', '2019-03-18 00:31:30', 1),
(247, 368, 1, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(248, 350, 2, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(249, 364, 2, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(250, 368, 2, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(251, 350, 3, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(252, 364, 3, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(253, 368, 3, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(254, 350, 4, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(255, 364, 4, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(256, 368, 4, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(257, 350, 5, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(258, 364, 5, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(259, 368, 5, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(260, 350, 6, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(261, 364, 6, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(262, 368, 6, '2019-03-18 00:31:31', '2019-03-18 00:31:31', 1),
(266, 1, 1, '2019-03-18 04:29:57', '2019-03-18 04:29:57', 0),
(267, 405, 1, NULL, NULL, 1),
(268, 405, 2, NULL, NULL, 1),
(269, 405, 3, NULL, NULL, 1),
(270, 405, 4, NULL, NULL, 1),
(271, 405, 5, NULL, NULL, 1),
(272, 405, 6, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `NIM` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_asisten` int(1) DEFAULT '0',
  `is_dosen` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `photo`, `phone`, `role`, `NIM`, `is_asisten`, `is_dosen`) VALUES
(1, 'Alhamda Adisoka Bimantara', 'alhamdadisoka@gmail.com', NULL, '$2y$10$c0j/PnYaGAKoOX85GCjqjOE8Se69w5w0HsY.10uvagY7daEYQUcPK', 'TIgiqGptsD8leWZjTVdUwEj5FBchBLcIZFsvdTC8ZoXXhatbXuelA5iECqLt', '2019-03-13 04:45:44', '2019-03-18 02:30:32', '15102007_9993.png', '+62821327694012', 3, '15102007', 0, 0),
(6, 'SIGIT PRAMONO, S.T., M.T', 'sigit@ittelkom-pwt.ac.id', NULL, '$2y$10$vzrr9Ku2aVA3nMCn2dUtme5s2QkF9U8Zr07UGdNJRAtwJLm1CEXTO', NULL, '2019-03-13 22:15:08', '2019-03-13 22:15:08', '15102007_5413.png', '+6282223274321', 1, '0622058005', 0, 1),
(205, 'BOBBY BAYU SETIAWAN', '14101046@ittelkom-pwt.ac.id', NULL, '$2y$10$ShsxmqF2IFtzj4ylvT8OkePJ9V0fI2G2XawbusK6cXmbygDy7zD6O', NULL, '2019-03-17 23:36:44', '2019-03-17 23:36:44', '14101046_3472.png', NULL, 3, '14101046', 0, 0),
(206, 'YUSUF NURHADI FIRDAUS', '17101041@ittelkom-pwt.ac.id', NULL, '$2y$10$cKPFrxFJ/fcvnXyOEGBBzucO41eKEOdKLtvnh3UvZqlDtKU2vm9Uq', NULL, '2019-03-17 23:36:44', '2019-03-17 23:36:44', '17101041_6411.png', NULL, 3, '17101041', 0, 0),
(207, 'ABDUL HAMIM TOHARI', '17101042@ittelkom-pwt.ac.id', NULL, '$2y$10$ZN/1sM.OSsom9mEzRNc9iOQxirjhl.MoIoCSzHdmljIyWsczN8/Dm', '2m4cKa1MlaMOioysGzHlv3nbyNAwrQVZI1FIobVbGkSkwzBQIvGB2Q8Z0x1m', '2019-03-17 23:36:44', '2019-03-17 23:36:44', '17101042_5743.png', NULL, 3, '17101042', 0, 0),
(208, 'ADITYA WIDIYANTI', '17101043@ittelkom-pwt.ac.id', NULL, '$2y$10$OM1dapvSmqyqj3ixv4hz6OJbExJ87JlJN3MuW4FOiPGfVqbI6RHCq', NULL, '2019-03-17 23:36:44', '2019-03-17 23:36:44', '17101043_4378.png', NULL, 3, '17101043', 0, 0),
(209, 'AHMAD FAUZZAN MAGHRIBI', '17101044@ittelkom-pwt.ac.id', NULL, '$2y$10$gE/CVIDbBmA61OKZxHTuJeXfPT8uVHgeNJxXFrHvANbdMmo.KSaFW', NULL, '2019-03-17 23:36:45', '2019-03-20 14:15:15', '17101044_1943.jpg', '+628984096771', 3, '17101044', 0, 0),
(210, 'ALIF HIDAYATULLAH', '17101046@ittelkom-pwt.ac.id', NULL, '$2y$10$hFD5qoFba4b5slEUa1qK4.RZ5Ed8UF0ZI3jtxyKSFxdLDy7D6sdue', NULL, '2019-03-17 23:36:45', '2019-03-17 23:36:45', '17101046_2817.png', NULL, 3, '17101046', 0, 0),
(211, 'ANANTA FEBRIANSYAH', '17101047@ittelkom-pwt.ac.id', NULL, '$2y$10$VmNhdInW8YWngsULPdQs0.QYo.Ef851gBvNFDJJ9EGbj0L/5uK9.u', NULL, '2019-03-17 23:36:45', '2019-03-17 23:36:45', '17101047_9517.png', NULL, 3, '17101047', 0, 0),
(212, 'ARIFIANTO REFANI', '17101048@ittelkom-pwt.ac.id', NULL, '$2y$10$9QEtTpEEiX.CK7Ty8xbwRO09Yw71JapnKFK60EYCjhfd0BnUS/ViG', NULL, '2019-03-17 23:36:45', '2019-03-17 23:36:45', '17101048_1266.png', NULL, 3, '17101048', 0, 0),
(213, 'BAGAS DWI ARIFANY', '17101049@ittelkom-pwt.ac.id', NULL, '$2y$10$kfIceQpze.t5xFemcE3KyOQHh98/zVyXvk4lzSbd4EQwzBuzwkKly', NULL, '2019-03-17 23:36:46', '2019-03-17 23:36:46', '17101049_3543.png', NULL, 3, '17101049', 0, 0),
(214, 'DANIA ANGGRAENI', '17101050@ittelkom-pwt.ac.id', NULL, '$2y$10$fa2bB1XbBk5X/J3CcKynVOsja8bPU3mljbCAOvN8/z.wIHXfQAjK.', 'sdxNKapP2nFkwjgNanZCJKXgu9fwD5TUH6Ibc38CtpYwehCQwJx9XfB60vNW', '2019-03-17 23:36:46', '2019-03-17 23:36:46', '17101050_8918.png', NULL, 3, '17101050', 0, 0),
(215, 'DHINY ANGGRAENI', '17101051@ittelkom-pwt.ac.id', NULL, '$2y$10$diMVK6LURpF9mdvC3inWq.en6M8kZOhr5En5HiDpS9d03ARwTyu1O', NULL, '2019-03-17 23:36:46', '2019-03-17 23:36:46', '17101051_8557.png', NULL, 3, '17101051', 0, 0),
(216, 'DION DIFENDER TIPARO', '17101052@ittelkom-pwt.ac.id', NULL, '$2y$10$lBIcPLJrw4MTUQg56POATOd4w23ZovQ3xU29N2T8TBSzuIxVTRgJC', NULL, '2019-03-17 23:36:46', '2019-03-17 23:36:46', '17101052_3393.png', NULL, 3, '17101052', 0, 0),
(217, 'ERIK ANDRIAN', '17101054@ittelkom-pwt.ac.id', NULL, '$2y$10$crsEiaPXxDe/h51ZTNpAi.4CfKEakjmARIRTLf2eMGBTkJMV5yuKu', NULL, '2019-03-17 23:36:46', '2019-03-17 23:36:46', '17101054_8331.png', NULL, 3, '17101054', 0, 0),
(218, 'FAQIH AMATYA HENDRAYAN', '17101055@ittelkom-pwt.ac.id', NULL, '$2y$10$Gb/7/O0TbFnw8hCt.n9S7uGnLDhI88LV1Bo46yCr2uC1SObVvpfM6', 'PoW74JcOOUuDHHPEdYMn4hBkGgB0SIvOiY4T8ZoVau1uvh98ChcroSfNyrHy', '2019-03-17 23:36:47', '2019-03-17 23:36:47', '17101055_8477.png', NULL, 3, '17101055', 0, 0),
(219, 'FERDINANTA KARO KARO', '17101056@ittelkom-pwt.ac.id', NULL, '$2y$10$HtgNTYaIPdpiCA3ENoZ12eNHRHcDTUxXqqtDzLTWklrpo8Yu5nnr.', NULL, '2019-03-17 23:36:47', '2019-03-17 23:36:47', '17101056_9681.png', NULL, 3, '17101056', 0, 0),
(220, 'GABRIELLA CAROLINE SINULINGGA', '17101057@ittelkom-pwt.ac.id', NULL, '$2y$10$uuHW8BqDpj8zVeE8H5l/peijeAyQL6giO6ltz1y.GEcNQbCJcMrFu', NULL, '2019-03-17 23:36:47', '2019-03-17 23:36:47', '17101057_438.png', NULL, 3, '17101057', 0, 0),
(221, 'GUNAWAN ARIYOGA', '17101058@ittelkom-pwt.ac.id', NULL, '$2y$10$yhKRF8mUGfR2kDNyVIgUJu1Z2cPsV7nJFgZyMYHgnzMcy3z52qmpS', NULL, '2019-03-17 23:36:47', '2019-03-17 23:36:47', '17101058_6782.png', NULL, 3, '17101058', 0, 0),
(222, 'HENDRA EKA SAPUTRA', '17101059@ittelkom-pwt.ac.id', NULL, '$2y$10$q.xEHNywTGp48GEjO4jCg.nAUNXlm2dqpT0buIFvyuWXbv8aPDsQW', 'tBvFm0To77m1p944olsSLWf6O8OqL4z3l173AOIgbw7irKaumglAYWQc29VE', '2019-03-17 23:36:48', '2019-03-17 23:36:48', '17101059_1697.png', NULL, 3, '17101059', 0, 0),
(223, 'INDRA MAULANA MARBUN', '17101060@ittelkom-pwt.ac.id', NULL, '$2y$10$cnQtknaFB4wmdJtp/llhy.qeiPgmfDbzWl6GsCrmt/rDndOZs3OeG', NULL, '2019-03-17 23:36:48', '2019-03-17 23:36:48', '17101060_6851.png', NULL, 3, '17101060', 0, 0),
(224, 'KARUNIA LARASATI', '17101061@ittelkom-pwt.ac.id', NULL, '$2y$10$qXP4ap7is7Nqa4l4BXANEuArTrhLhGGO/msaLr7At8FfvDUyNMFOa', NULL, '2019-03-17 23:36:48', '2019-03-17 23:36:48', '17101061_6559.png', NULL, 3, '17101061', 0, 0),
(225, 'LINDU WAHYU AJI NUGROHO', '17101062@ittelkom-pwt.ac.id', NULL, '$2y$10$.DyobXDN04c3bH3iEv..FOoCom3oYzCbNpM3B3JjWS1QTXBGi242C', NULL, '2019-03-17 23:36:48', '2019-03-17 23:36:48', '17101062_290.png', NULL, 3, '17101062', 0, 0),
(226, 'M. HADI BISMA SEBAYANG', '17101063@ittelkom-pwt.ac.id', NULL, '$2y$10$oCF8r3g2YIYH3G31nnmfZ.LQjYecgq16ggK4RWIOKLDzwUtIYPxR6', 'OIukGqHkngNgHkGX19Xs1Tvbe0HVonwJ8Q6WqCnz4kM31qcDHA14vqTrSnXM', '2019-03-17 23:36:48', '2019-03-17 23:36:48', '17101063_5670.png', NULL, 3, '17101063', 0, 0),
(227, 'MAYANG KARMILA SARI', '17101064@ittelkom-pwt.ac.id', NULL, '$2y$10$O6HtOKgDYHoyaqDF.ZP1JuZcCflnUqUMu0BZIKb4fwHSN8QIxeMiG', NULL, '2019-03-17 23:36:49', '2019-03-25 10:23:47', '17101064_5860.png', '+6282251512387', 3, '17101064', 0, 0),
(228, 'MOHAMAD FAIZAL SATRIO NUGROHO', '17101065@ittelkom-pwt.ac.id', NULL, '$2y$10$QUdZpvbG1Uix62LYVZvh5.5U9gvsr7IGYBTQAvsDSCBxwYNwKjPDm', 'CntfzakwZpjPTv4Ove4FaUvgbE3IT24ICePGIHKnQHykb22IE4mwWRHRskHY', '2019-03-17 23:36:49', '2019-03-17 23:36:49', '17101065_160.png', NULL, 3, '17101065', 0, 0),
(229, 'MUHAMMAD ALWI ADNAN AMAL', '17101066@ittelkom-pwt.ac.id', NULL, '$2y$10$b8LBS3fVugS4ERj7/gs.iuP7gsoFOqFGB0mDjy.nurd4S2S3cJcjG', NULL, '2019-03-17 23:36:49', '2019-03-17 23:36:49', '17101066_8304.png', NULL, 3, '17101066', 0, 0),
(230, 'MUHAMMAD DZULHAIDAR', '17101067@ittelkom-pwt.ac.id', NULL, '$2y$10$hlOStxmGwEyCCq1vArzY/.FOlzsn7zty44W6ZPLP2/mD17xCD5Idq', NULL, '2019-03-17 23:36:49', '2019-03-17 23:36:49', '17101067_5203.png', NULL, 3, '17101067', 0, 0),
(231, 'MUHAMMAD NANDI AZIZ MOCHTAR', '17101068@ittelkom-pwt.ac.id', NULL, '$2y$10$jc06JVe7CnOfsiVITjzGqOCo1xkkVG2zuwnVKQIRRB0WApZQavFeS', NULL, '2019-03-17 23:36:49', '2019-03-17 23:36:49', '17101068_1673.png', NULL, 3, '17101068', 0, 0),
(232, 'MUHAMMAD SIDIK', '17101069@ittelkom-pwt.ac.id', NULL, '$2y$10$LSrn8Z4jB36cswNTC4eoVuaCTw4rpw8sO68eIb2PZjNwKN3kOml/.', NULL, '2019-03-17 23:36:50', '2019-03-17 23:36:50', '17101069_6133.png', NULL, 3, '17101069', 0, 0),
(233, 'NORMA YUKI PRATIKA', '17101071@ittelkom-pwt.ac.id', NULL, '$2y$10$M6TP90XmnmiOL2aYXCVisuPqXjYhfxAKtSNG4xPqn/yXtk1ZAVqLe', NULL, '2019-03-17 23:36:50', '2019-03-17 23:36:50', '17101071_8499.png', NULL, 3, '17101071', 0, 0),
(234, 'OKKY JANFRIANTA SEMBIRING', '17101072@ittelkom-pwt.ac.id', NULL, '$2y$10$dfGJhqMUkIGV6JGc3huhT.2MijEMQc1QFjhQZavXxoMDRfYeHEHki', '7GENTEZadQmPsarwrb7Us2En4MZdXXpPeA11v0HsKYeLxNCbxGacPj1BnyT1', '2019-03-17 23:36:50', '2019-03-17 23:36:50', '17101072_7779.png', NULL, 3, '17101072', 0, 0),
(235, 'PHYRIGIANT RICHO ALBARZANI', '17101073@ittelkom-pwt.ac.id', NULL, '$2y$10$k.a4O8cB7qRuiBKRxZP77ubiyRyBXzZnzwxXg9/aeECxK0XC.4Ve.', NULL, '2019-03-17 23:36:50', '2019-03-17 23:36:50', '17101073_2719.png', NULL, 3, '17101073', 0, 0),
(236, 'RIZAL AL AZHAR', '17101076@ittelkom-pwt.ac.id', NULL, '$2y$10$TnR9D99xAjX7Ykp8gJ/CEeKbk76jJHXCaZiNp0HYQg.raEiRSjMbm', NULL, '2019-03-17 23:36:50', '2019-03-17 23:36:50', '17101076_733.png', NULL, 3, '17101076', 0, 0),
(237, 'ROY JHOSUA BONATAON TAMBUNAN', '17101077@ittelkom-pwt.ac.id', NULL, '$2y$10$SmX.uyU/WIwP7YlVUW.PGORkZ7B2KFyo.IgF6XHsBERGY7MKQGc6y', NULL, '2019-03-17 23:36:51', '2019-03-17 23:36:51', '17101077_6006.png', NULL, 3, '17101077', 0, 0),
(238, 'SHIDQI NAUFAL MUSYAFFA', '17101078@ittelkom-pwt.ac.id', NULL, '$2y$10$6fkmxmw6m9QmYVGKU8lZVunUcFN0B/WcJ0rqiVPFKJYwjGWSgxxG.', NULL, '2019-03-17 23:36:51', '2019-03-17 23:36:51', '17101078_2087.png', NULL, 3, '17101078', 0, 0),
(239, 'SYNATRIA SUBEKTI', '17101079@ittelkom-pwt.ac.id', NULL, '$2y$10$md1v3gTTd5CIF6E6sSaYieaq6nlQinqEz7TFgQUeY4Pezu.A5ktvq', NULL, '2019-03-17 23:36:51', '2019-03-17 23:36:51', '17101079_1609.png', NULL, 3, '17101079', 0, 0),
(240, 'KIKI AMELIA', '17101208@ittelkom-pwt.ac.id', NULL, '$2y$10$bsoTmlyvoXJPLbM8KZiU/OmyI0LziSsf3tzEZlH1a186ye5oN573O', NULL, '2019-03-17 23:36:51', '2019-03-17 23:36:51', '17101208_6804.png', NULL, 3, '17101208', 0, 0),
(241, 'TUAH JIHAN MANULLANG', '13101035@ittelkom-pwt.ac.id', NULL, '$2y$10$/Wzi.AVd.cQOjTAohko1Xeqv74LJ0CxqKkCA3d7rCi/45Y79JujB2', NULL, '2019-03-17 23:36:51', '2019-03-17 23:36:51', '13101035_8605.png', NULL, 3, '13101035', 0, 0),
(242, 'ANDI MUHAMMAD FACHMI MALLOMBASANG', '16101005@ittelkom-pwt.ac.id', NULL, '$2y$10$CtPZ8VhreziqKTD3mVdg8ON5qSw0f3MBDPqyvuJ2DI1tDAGwcE26.', NULL, '2019-03-17 23:36:52', '2019-03-17 23:36:52', '16101005_1972.png', NULL, 3, '16101005', 0, 0),
(243, 'A MIRZA FALAH', '17101001@ittelkom-pwt.ac.id', NULL, '$2y$10$UHmTAIrF..nFX0LRrMnNKODqZPv7s5GvKJar6a0j6oqCRaz0px5/.', NULL, '2019-03-17 23:36:52', '2019-03-17 23:36:52', '17101001_1214.png', NULL, 3, '17101001', 0, 0),
(244, 'ADELIA KENCANA PUTRI', '17101002@ittelkom-pwt.ac.id', NULL, '$2y$10$8YBy8eEIENdyXi1W3.3L2eUsB5JQI0fF6K1j7dR2y52DEdNEFIZgO', NULL, '2019-03-17 23:36:52', '2019-03-17 23:36:52', '17101002_8238.png', NULL, 3, '17101002', 0, 0),
(245, 'AHMAD FAHRIZAL RAMADHAN', '17101003@ittelkom-pwt.ac.id', NULL, '$2y$10$H4IqA.qY/zBzlPSDHpnnL.jgA8tw/oydRFUdlxGPB/VAiZAvDTgCS', NULL, '2019-03-17 23:36:52', '2019-03-17 23:36:52', '17101003_4940.png', NULL, 3, '17101003', 0, 0),
(246, 'AISYAH AYU WULANDARI', '17101004@ittelkom-pwt.ac.id', NULL, '$2y$10$hzdFfqxXjUZIF5WsFVkPkObgYt0ICuIqXf9qeBVA3HHmin3eRtFmK', NULL, '2019-03-17 23:36:53', '2019-03-17 23:36:53', '17101004_6088.png', NULL, 3, '17101004', 0, 0),
(247, 'ALFIANY NUR SAFITRI', '17101005@ittelkom-pwt.ac.id', NULL, '$2y$10$vfzx1q345bLYKb4GAfj2nu0ORBostdV21yT3Qu76QXMBjsJOwNrMm', NULL, '2019-03-17 23:36:53', '2019-03-17 23:36:53', '17101005_6158.png', NULL, 3, '17101005', 0, 0),
(248, 'ANANG BAGUS ROMADHONI', '17101006@ittelkom-pwt.ac.id', NULL, '$2y$10$fhNQdxZuC4oGfz1UprIZg.d3E4W1cpXXLybBjXIMSHOOUPdqlOPOu', NULL, '2019-03-17 23:36:53', '2019-03-17 23:36:53', '17101006_1128.png', NULL, 3, '17101006', 0, 0),
(249, 'ATWATAN MALIK MAHARDI', '17101008@ittelkom-pwt.ac.id', NULL, '$2y$10$Dv330.EgUwLHkn.n1Kx7IOowUMG0okKee.HUnkrFiQ/qIPv.1Dhfm', NULL, '2019-03-17 23:36:53', '2019-03-17 23:36:53', '17101008_1091.png', NULL, 3, '17101008', 0, 0),
(250, 'CINDY TIO HELENA MANURUNG', '17101009@ittelkom-pwt.ac.id', NULL, '$2y$10$4VESHSMliXhrnGFFsmZ6lOiXEwqQlZ8gm7XKFxaHEE9k9HBuRbcOu', 'ZdAhpqoVr6xmA1eyh3pnU3zAky96p9q66afXBfUQ514fo2rzXUgLrhwSKIhV', '2019-03-17 23:36:53', '2019-03-17 23:36:53', '17101009_9905.png', NULL, 3, '17101009', 0, 0),
(251, 'DHIA FIKRI ZAM ZAMI', '17101010@ittelkom-pwt.ac.id', NULL, '$2y$10$V5N3NGDvIUcpnalC.4QCg.fuPnjmibP7U8Ln/LXi13XOM6SV/0KDW', NULL, '2019-03-17 23:36:54', '2019-03-17 23:36:54', '17101010_4515.png', NULL, 3, '17101010', 0, 0),
(252, 'DIMAS RYANDI', '17101011@ittelkom-pwt.ac.id', NULL, '$2y$10$5p2UFHOfJ4BThaTGBsStFO496w1m07RT9XfWXXBWeXMJEOMpgDyX6', NULL, '2019-03-17 23:36:54', '2019-03-17 23:36:54', '17101011_6660.png', NULL, 3, '17101011', 0, 0),
(253, 'DYAH HAYU RETNOSARI WAHYUNINGTYAS', '17101012@ittelkom-pwt.ac.id', NULL, '$2y$10$RzXzf6mCNjTUpWwEXaPtWOthVm56X7s2lkAMImuKqufSqlmTsDQpu', NULL, '2019-03-17 23:36:54', '2019-03-17 23:36:54', '17101012_4075.png', NULL, 3, '17101012', 0, 0),
(254, 'ENDAH NOVITA SARI', '17101013@ittelkom-pwt.ac.id', NULL, '$2y$10$zhmL3jres820yKp7SH/OOOrzhj4pecJEJdKOEV6l982B63gX7x5ZC', NULL, '2019-03-17 23:36:54', '2019-03-17 23:36:54', '17101013_8938.png', NULL, 3, '17101013', 0, 0),
(255, 'FANUR HAYATI', '17101014@ittelkom-pwt.ac.id', NULL, '$2y$10$C2DGsOqDT/qAXSsIu9iN2O8p7sjYQFDnPVH4nrW2DN9TVWwyWll2i', NULL, '2019-03-17 23:36:54', '2019-03-17 23:36:54', '17101014_5044.png', NULL, 3, '17101014', 0, 0),
(256, 'FENI PERIWANTI SARAGIH', '17101015@ittelkom-pwt.ac.id', NULL, '$2y$10$dF4p50CJWuOJSMBFOaPEvOuh.u9jVP6WmDFdA2pNGUdoDBN9rhham', NULL, '2019-03-17 23:36:55', '2019-03-19 11:36:29', '17101015_6501.png', '+62082386932492', 3, '17101015', 0, 0),
(257, 'FRIDA SALMA HIJRYA', '17101016@ittelkom-pwt.ac.id', NULL, '$2y$10$yAKUE18wfvFf.Nb0Q8Rhr.Tb8cSFntq/srAOwz/dRF2ILTWQg1AP2', 'uMN0Zpqtq1IYg4uF9wQUbMOTX7xBQeLmKSY8ZTiONAGyM3F36LY8aUlYnh7D', '2019-03-17 23:36:55', '2019-03-17 23:36:55', '17101016_4857.png', NULL, 3, '17101016', 0, 0),
(258, 'HAZIA RIFKA MAULIDA', '17101018@ittelkom-pwt.ac.id', NULL, '$2y$10$uAqAHIqmVB0QmDnommq48uDBpCxVgMZ6WXNzAT1reJNEhKGy2tkSa', 'sLve6Ru5AcmDSuuvgLmwD6wBmKluhNymmsw1gLc5UPNn3aS7lh8dpKwhSBRA', '2019-03-17 23:36:55', '2019-03-17 23:36:55', '17101018_5185.png', NULL, 3, '17101018', 0, 0),
(259, 'IKRAM MUH. AASIF', '17101019@ittelkom-pwt.ac.id', NULL, '$2y$10$mVal0SgKvSSkDwF./F6ItOxaYRCuLNnNq172RC5o5NABr0az.bP4W', 'IgExizZseAUoS9fcSeQZEQ6n4K2hBa8bEYbdnU8RoTWV9pbmXaSZ3TkIPNx8', '2019-03-17 23:36:55', '2019-03-17 23:36:55', '17101019_6520.png', NULL, 3, '17101019', 0, 0),
(260, 'IVAN PRATAMA SUDIRMAN', '17101020@ittelkom-pwt.ac.id', NULL, '$2y$10$JUzMG.ZBgpmysaEhaFlYLOzopmNKa9HZmklgOHeNSefdkxvl6kqDC', NULL, '2019-03-17 23:36:55', '2019-03-17 23:36:55', '17101020_263.png', NULL, 3, '17101020', 0, 0),
(261, 'LATIFAH ZAIN NUR AINI', '17101021@ittelkom-pwt.ac.id', NULL, '$2y$10$ljGWB1V6T73nqh/0g4Jl2uXP/Cu4DNhdPBalet9a1AUEZzBGo6mfa', NULL, '2019-03-17 23:36:56', '2019-03-17 23:36:56', '17101021_7466.png', NULL, 3, '17101021', 0, 0),
(262, 'M. BILAL', '17101022@ittelkom-pwt.ac.id', NULL, '$2y$10$tyYH7SF3Xv2gy03tVHInKOhA5Hm4LrEfT52NjBW.i7plHfWvdBaDu', NULL, '2019-03-17 23:36:56', '2019-03-17 23:36:56', '17101022_2475.png', NULL, 3, '17101022', 0, 0),
(263, 'MIFTAKHUDIN YUSUF', '17101024@ittelkom-pwt.ac.id', NULL, '$2y$10$5ivPr2QqCEQHivrNOJynIeTLKP.jT4x8BJus.w9ApCjZ9WOIK5zMW', 'VlT5v0k5Pj4XqINh8OTIAinMle4ccdwJMDpMnpXj29ub0zMeARynqE1opCsf', '2019-03-17 23:36:56', '2019-03-17 23:36:56', '17101024_6705.png', NULL, 3, '17101024', 0, 0),
(264, 'MUHAMAD ZULFATON LUHUR PRATAMA', '17101025@ittelkom-pwt.ac.id', NULL, '$2y$10$gQRnpdEOaEwvGbJNvSOg9OraU/WevWj2Fa47C4fZK7akvXCmEhAdu', NULL, '2019-03-17 23:36:56', '2019-03-17 23:36:56', '17101025_7908.png', NULL, 3, '17101025', 0, 0),
(265, 'MUHAMMAD RIZKY CHOIRMAN', '17101028@ittelkom-pwt.ac.id', NULL, '$2y$10$vp8.s8LR9sF4mH58SjXrtewNFyINzNFRVvioL36JbjgGd8xPpRFDC', NULL, '2019-03-17 23:36:57', '2019-03-17 23:36:57', '17101028_6229.png', NULL, 3, '17101028', 0, 0),
(266, 'MUHAMMAD ZUKHRUF ABIDI', '17101029@ittelkom-pwt.ac.id', NULL, '$2y$10$YoCYq95rl9NaPSOJ.0nrfOVkiqk.mRzn9idDwPx63JDWJNq3XV3o6', NULL, '2019-03-17 23:36:57', '2019-03-17 23:36:57', '17101029_8596.png', NULL, 3, '17101029', 0, 0),
(267, 'NAUFAL ALAUDDIN YUSUF', '17101030@ittelkom-pwt.ac.id', NULL, '$2y$10$ecR.iWg2DdW1DD9B8jnfuOboU6k2Rpz0Xmi2lw6u/RdpiVt24zn5q', 'UjtvKpBFSMj7QyJXlXzG7KA9zuENuccE3OUvRQjkMScRnEXsuPDhmDFIxSsW', '2019-03-17 23:36:57', '2019-04-02 03:23:52', '17101030_927.png', '+6289519132778', 3, '17101030', 0, 0),
(268, 'OBED JUNIFER HUTAPEA', '17101031@ittelkom-pwt.ac.id', NULL, '$2y$10$5AFwpLKax1PRn2rynTWtE.D4bpWwNtPHMEtknYdAVEwCkRCT/5Yiu', NULL, '2019-03-17 23:36:57', '2019-03-17 23:36:57', '17101031_4861.png', NULL, 3, '17101031', 0, 0),
(269, 'PEBRIADI .S', '17101032@ittelkom-pwt.ac.id', NULL, '$2y$10$.lgBtbe68uD7mPNaluCznuYNjTMWpz8U5alZ0fbe13M1QTNW.G.aq', NULL, '2019-03-17 23:36:58', '2019-03-17 23:36:58', '17101032_1756.png', NULL, 3, '17101032', 0, 0),
(270, 'RAHADIAN AGSIS DARMAWAN', '17101033@ittelkom-pwt.ac.id', NULL, '$2y$10$4akDMDXygdwfgcdnQI4y4u/MiLmLeTDOOyKoSxhoyd6tH40LE00xa', NULL, '2019-03-17 23:36:58', '2019-03-17 23:36:58', '17101033_4797.png', NULL, 3, '17101033', 0, 0),
(271, 'REZA KURNIAWAN', '17101034@ittelkom-pwt.ac.id', NULL, '$2y$10$nXVOsKhYKbNPISKvRKlTh.GaoUhsdray.duA5J7UR4Tp5bmXeH/J6', NULL, '2019-03-17 23:36:58', '2019-03-27 03:41:36', '17101034_2813.png', '+6282251512331', 3, '17101034', 0, 0),
(272, 'RIFQI FAUZAN', '17101035@ittelkom-pwt.ac.id', NULL, '$2y$10$9t27hqsLlBLkV2jmQn4T5.zVXTOyYa/JOur/jNkv4XF68FHwf67Da', 'iCFYjS5pkoAzt8UQ9SWd8DMRCbNelAUBMX9oIr7A8IjHwOPhimamqIgswBub', '2019-03-17 23:36:58', '2019-04-07 12:14:56', '17101035_7642.png', '+62895322548100', 3, '17101035', 0, 0),
(273, 'RORY ARYA PERMANA', '17101036@ittelkom-pwt.ac.id', NULL, '$2y$10$W0zVnX9ydcqxcwkRLvsBQekOa2k9CS63RetM49nPVRXqBgMbc29xe', NULL, '2019-03-17 23:36:58', '2019-03-17 23:36:58', '17101036_5759.png', NULL, 3, '17101036', 0, 0),
(274, 'SAS NURHIDAYATI BR TARIGAN', '17101037@ittelkom-pwt.ac.id', NULL, '$2y$10$e5osJ6LAuHfh8KmMzo602ucGunvSaNEjCCRqnqP1herexxB0GyC0W', NULL, '2019-03-17 23:36:59', '2019-03-17 23:36:59', '17101037_1007.png', NULL, 3, '17101037', 0, 0),
(275, 'SYARIFAH NURJANNAH', '17101038@ittelkom-pwt.ac.id', NULL, '$2y$10$fi97OMyMSDhcrjQXZ43QjuMtQQZWYCjrQf5FzKUMSsq7AdpaqA/I6', NULL, '2019-03-17 23:36:59', '2019-03-17 23:36:59', '17101038_7145.png', NULL, 3, '17101038', 0, 0),
(276, 'VI BAUTY RISKA UTAMI', '17101039@ittelkom-pwt.ac.id', NULL, '$2y$10$TqjcnjfUoVSRDw1XOzZd.OSub2w2PI9e3WE0BaPonAxZyxAtTeQCe', NULL, '2019-03-17 23:36:59', '2019-03-17 23:36:59', '17101039_8340.png', NULL, 3, '17101039', 0, 0),
(277, 'YOGA ADI PERMANA', '17101040@ittelkom-pwt.ac.id', NULL, '$2y$10$geIjcoK4DQYxqCpZHM67TOQsTZU2wOMGW8t7yvIBD2mgmlCdrWrDO', NULL, '2019-03-17 23:36:59', '2019-03-25 12:49:18', '17101040_2966.jpg', '+6282280672090', 3, '17101040', 0, 0),
(278, 'YUSUF BUDI SETYOSO', '14101117@ittelkom-pwt.ac.id', NULL, '$2y$10$20Ssi31mv7Nv2Mqlct0edO0hZQQHsog7YJ1nCBbEPpOkxbOrDz1QK', NULL, '2019-03-17 23:36:59', '2019-03-17 23:36:59', '14101117_7921.png', NULL, 3, '14101117', 0, 0),
(279, 'YOLANDA FHEBYOLA PANGARIBUAN', '17101081@ittelkom-pwt.ac.id', NULL, '$2y$10$5NwN028lxN7nJEFGYMIpyuUUTgkdguSzyJJg5hwT/B.j4B8zsyva2', NULL, '2019-03-17 23:37:00', '2019-03-17 23:37:00', '17101081_5121.png', NULL, 3, '17101081', 0, 0),
(280, 'ACHMAD KIRANG', '17101082@ittelkom-pwt.ac.id', NULL, '$2y$10$02R/C60AmiiB0l4eRYX/herZctu0EU48jgun.BpfKvfEYED4ws5vS', NULL, '2019-03-17 23:37:00', '2019-03-17 23:37:00', '17101082_769.png', NULL, 3, '17101082', 0, 0),
(281, 'ZUHAIR YAHYA', '17101083@ittelkom-pwt.ac.id', NULL, '$2y$10$51lmx8tjtQ5wYW8XsXqzX.2RX17GKq2jBvHjiRH957FPIOiFVEM6G', NULL, '2019-03-17 23:37:00', '2019-03-17 23:37:00', '17101083_4948.png', NULL, 3, '17101083', 0, 0),
(282, 'AFIF NUR DZAKI', '17101084@ittelkom-pwt.ac.id', NULL, '$2y$10$EqLp.NlCeHZdRP.v1c9Lv.Rwzj.WwhhpCzFK5uVzwNDzMWr97Xrgq', NULL, '2019-03-17 23:37:00', '2019-03-17 23:37:00', '17101084_6744.png', NULL, 3, '17101084', 0, 0),
(283, 'AHMAD LUTHFI', '17101085@ittelkom-pwt.ac.id', NULL, '$2y$10$waDY8PluxYHqO9g7bJEb2.vmQUYX.z0sJEBm.P.t67cOB3DJgSeXy', NULL, '2019-03-17 23:37:01', '2019-03-17 23:37:01', '17101085_4225.png', NULL, 3, '17101085', 0, 0),
(284, 'AKHMAD SABIAS KHAMDANI', '17101086@ittelkom-pwt.ac.id', NULL, '$2y$10$DC92hFd6W0KmgqzcoLN5wObXsHpwafWif/1lo3Oj2THadFUWB0Xyq', NULL, '2019-03-17 23:37:01', '2019-03-17 23:37:01', '17101086_7399.png', NULL, 3, '17101086', 0, 0),
(285, 'ALMASY SYAHIDAH', '17101087@ittelkom-pwt.ac.id', NULL, '$2y$10$EpB037EN4Nwyo7oAwXvwhuKHSHHWTVg1poN/YnovTI8LVFeAmkNeq', NULL, '2019-03-17 23:37:01', '2019-03-17 23:37:01', '17101087_4319.png', NULL, 3, '17101087', 0, 0),
(286, 'ANDI PRASETYO', '17101088@ittelkom-pwt.ac.id', NULL, '$2y$10$hdC9F4Hs6cRMQ4tVZHXBgO/AxuakTHi02cP7uM5sftSxp9wBWbLMu', NULL, '2019-03-17 23:37:01', '2019-03-17 23:37:01', '17101088_5546.png', NULL, 3, '17101088', 0, 0),
(287, 'ARIQ MUHAMMAD RIZQY', '17101089@ittelkom-pwt.ac.id', NULL, '$2y$10$TLq35a0tW9zvUHokzSnwb.D1ER/vx7R9TTP98x5JTdBmsEaPwPjJi', NULL, '2019-03-17 23:37:01', '2019-03-17 23:37:01', '17101089_404.png', NULL, 3, '17101089', 0, 0),
(288, 'BAGUS ARDIANSYAH', '17101090@ittelkom-pwt.ac.id', NULL, '$2y$10$a/wiW.y1DJLLYpbfc.4nPesvuLS7UJYaR6SQPGNV5E/AbHsQrX21S', 'nazYj7NJE3s4JC8z5id5GPasr1VciroPFJldWV2VtHIqA0voxPzw5zgAtiYP', '2019-03-17 23:37:02', '2019-03-17 23:37:02', '17101090_3867.png', NULL, 3, '17101090', 0, 0),
(289, 'DANIERA SHIFNA TAQIYYA', '17101091@ittelkom-pwt.ac.id', NULL, '$2y$10$lCBbbwdrHF9Ga6ZJnxVRMODjLrGaiOnuKLsSp/u4AWOKvCW2J7cGC', 'qPlTwrK4lebOodiQvdLQuPfDKeALOk4PpnaFyAFd6MYIG0UPr2PfForcLqrg', '2019-03-17 23:37:02', '2019-03-17 23:37:02', '17101091_938.png', NULL, 3, '17101091', 0, 0),
(290, 'DIAZ BAGUS RENALDY', '17101092@ittelkom-pwt.ac.id', NULL, '$2y$10$MK21vmtcRxU1kn8kk30Hm.7ksFwUHrzRGeVxNpvBa86Cy3S5BHBBy', NULL, '2019-03-17 23:37:02', '2019-03-17 23:37:02', '17101092_6810.png', NULL, 3, '17101092', 0, 0),
(291, 'DIYAH FEMILIA', '17101093@ittelkom-pwt.ac.id', NULL, '$2y$10$Ip/ZYFi.ygHDtWIZZuoDyOqzIBPWcNe0BaHFNYNpaIiYF8tE8KM7i', NULL, '2019-03-17 23:37:02', '2019-03-17 23:37:02', '17101093_719.png', NULL, 3, '17101093', 0, 0),
(292, 'EKA YUNI ARSIH', '17101094@ittelkom-pwt.ac.id', NULL, '$2y$10$a.KvCYXoceQvQUyrTHH6VOgHZ1Cba5unNo/DvyXgy579OYRvsZiAe', 'M1Xwzsn3pArI4TdzvYI19Me05cEorerkYv0YrtOdWtyQO69xROyUyaGRFqBY', '2019-03-17 23:37:02', '2019-03-17 23:37:02', '17101094_7307.png', NULL, 3, '17101094', 0, 0),
(293, 'ERVAN FAJAR', '17101095@ittelkom-pwt.ac.id', NULL, '$2y$10$/14c0SbdJVAVI9pFpzZ/xewFr43wdLbTYUlCha4khNLLXun.7YY.y', 'd8B08cVK5XKgdDTtcQlRN27rTHvli0BrVMab5QgYbuhMAsITBaLBwTVBTA5Q', '2019-03-17 23:37:03', '2019-03-17 23:37:03', '17101095_8612.png', NULL, 3, '17101095', 0, 0),
(294, 'FATHURROZAQ FADLAN', '17101096@ittelkom-pwt.ac.id', NULL, '$2y$10$CxbGTSCp/TCi7LkTVipJGuKeWOxNA/PyGvsbXNfomuFvCnwx2AoA.', NULL, '2019-03-17 23:37:03', '2019-03-17 23:37:03', '17101096_8145.png', NULL, 3, '17101096', 0, 0),
(295, 'FERRY ERWANTO', '17101097@ittelkom-pwt.ac.id', NULL, '$2y$10$JgJ/ogPWRdsjejHpsnh0DOBXIjhuW8BCRsXJGGzg7Pt2dmBPruis2', NULL, '2019-03-17 23:37:03', '2019-03-17 23:37:03', '17101097_6044.png', NULL, 3, '17101097', 0, 0),
(296, 'GANTENG SIGIT LAZUARDI', '17101098@ittelkom-pwt.ac.id', NULL, '$2y$10$8KpzBBQJ5CmNgEEx8RV9IOlQq4JCzA6tLrmbAWmSUbh0m4LAvic8y', NULL, '2019-03-17 23:37:03', '2019-03-17 23:37:03', '17101098_8878.png', NULL, 3, '17101098', 0, 0),
(297, 'HAIDAR NASHIRUDDIN', '17101099@ittelkom-pwt.ac.id', NULL, '$2y$10$t6WWp9QLuGDKursmt1BR5.68orbPTISPk90bHBGSox5BmQYmZ/kba', 'XjhNsGJF4daVaHzL1flLsQqzpFMp5TZzooeqyKXZOfVhj2D9f6Rpua6dJ7g5', '2019-03-17 23:37:04', '2019-03-17 23:37:04', '17101099_8803.png', NULL, 3, '17101099', 0, 0),
(298, 'HERLINA SITOMPUL', '17101100@ittelkom-pwt.ac.id', NULL, '$2y$10$lN0WD32U4mQHOYYvbiexDOCHaxtjiTVpXcr70PBwhtBo3VDIo/G1a', NULL, '2019-03-17 23:37:04', '2019-03-17 23:37:04', '17101100_4637.png', NULL, 3, '17101100', 0, 0),
(299, 'IRWANSYAH SOLEHUDDIN', '17101101@ittelkom-pwt.ac.id', NULL, '$2y$10$t23ZYQX1Cr9K8ZQ7j65XxeINjMzRdsq.xpeCbE7i.OdBXxa8hLNVq', 'ueUlAJMyegbZb3Z9Mx4HU6cPTlkBxohqwVGMUYZTtSogXTXZHlYfphE9hbGY', '2019-03-17 23:37:04', '2019-03-17 23:37:04', '17101101_9474.png', NULL, 3, '17101101', 0, 0),
(300, 'LISA PANGESTI', '17101103@ittelkom-pwt.ac.id', NULL, '$2y$10$aLegJACFiSSDjW4SuuMtNOzzFdu6OrvGK2KP7vwzJXqZBAkZQ6/du', NULL, '2019-03-17 23:37:04', '2019-03-17 23:37:04', '17101103_8506.png', NULL, 3, '17101103', 0, 0),
(301, 'M. ALVIN PUTRA RAHMAN', '17101104@ittelkom-pwt.ac.id', NULL, '$2y$10$ftTFY3504TBwxHc.mYSh..jNRTBU//TiL6feoh.jMOwEWg/z0Ppd6', NULL, '2019-03-17 23:37:04', '2019-03-17 23:37:04', '17101104_1274.png', NULL, 3, '17101104', 0, 0),
(302, 'MEGA SAFIRA NURAENI', '17101105@ittelkom-pwt.ac.id', NULL, '$2y$10$u8skhr41/reFxTPYzW4u7.UfolWzv5xPqlhCogj3UKjTRijxgfv.2', NULL, '2019-03-17 23:37:05', '2019-03-17 23:37:05', '17101105_3643.png', NULL, 3, '17101105', 0, 0),
(303, 'MOHAMAD IBNU FADILLAH', '17101106@ittelkom-pwt.ac.id', NULL, '$2y$10$iHmlb/kxPH2UBxyu9Q0lkus7E379KC7BB2lBX2lPN/lmuXWv1zmd.', NULL, '2019-03-17 23:37:05', '2019-03-17 23:37:05', '17101106_187.png', NULL, 3, '17101106', 0, 0),
(304, 'MUHAMMAD ARLI FAUZI', '17101107@ittelkom-pwt.ac.id', NULL, '$2y$10$dErUY/zKppnlYlgc2RzrkeJGMQXFQv93tqb4gYzRLffBtWqyf5CWq', '3RhB4UGEIcqisVOSVCewqXmURZWkUYVVPaNHf5P64FoN8B9mbHmyDrN7izpe', '2019-03-17 23:37:05', '2019-03-26 15:34:03', '17101107_9941.png', '+6281227253933', 3, '17101107', 0, 0),
(305, 'MUHAMMAD NAUFAL AMMAR', '17101109@ittelkom-pwt.ac.id', NULL, '$2y$10$UYNc4CuxWu1ZivzkwFwmW.0XytvRfkqoHq8LXQQPvwVH9e9qF54oa', NULL, '2019-03-17 23:37:05', '2019-03-26 03:44:48', '17101109_2321.png', '+6289601606706', 3, '17101109', 0, 0),
(306, 'MUHAMMAD SYAHID AL AZIZ', '17101110@ittelkom-pwt.ac.id', NULL, '$2y$10$KlVKiYNchtFINflkNs17Ke5cbNs0oopiqYrxm7m1TApsj9BP6EMnG', 'K1UIxDW0L0xUov6qWrxVBEughzvDLL00RBsSczLG9v9ORQNPgKMjGXwgvSPD', '2019-03-17 23:37:06', '2019-03-24 09:16:24', '17101110_5891.png', '+6281332226233', 3, '17101110', 0, 0),
(307, 'NADA FEBIOLA NUR AZIZAH', '17101111@ittelkom-pwt.ac.id', NULL, '$2y$10$1W3i7Q5htZGH.RUyjf/K7umq0TUhF7f0CItd7kYp2LJQewJGpS9Iy', NULL, '2019-03-17 23:37:06', '2019-03-17 23:37:06', '17101111_4773.png', NULL, 3, '17101111', 0, 0),
(308, 'PUTRI INTAN DIAS ANGGIARTI', '17101114@ittelkom-pwt.ac.id', NULL, '$2y$10$4dKeBDJrO8bSsWZUemU.fevafdFkGROIhN8chJzmntRFP4pwHKatu', NULL, '2019-03-17 23:37:06', '2019-03-17 23:37:06', '17101114_3708.png', NULL, 3, '17101114', 0, 0),
(309, 'RAMA PANJI PRAKOSO', '17101115@ittelkom-pwt.ac.id', NULL, '$2y$10$9CP6APmJFcBGuq6MzICZlObymLMmxjPnc8ddEKCuTg2S7aX9l2Unm', '1TPnGwoBQvLS7NDt0zxLg0ETasnmLkL5UtkrVveGfrJaww9ijMMae1i4fHwb', '2019-03-17 23:37:06', '2019-03-17 23:37:06', '17101115_246.png', NULL, 3, '17101115', 0, 0),
(310, 'RIBKA ANGGRIANI SIDABUTAR', '17101116@ittelkom-pwt.ac.id', NULL, '$2y$10$ucj1/yfgpO8ivOu4gofvzeYwP21TDD/LhNaqNuIT8n2cnxJZ/vZFi', NULL, '2019-03-17 23:37:06', '2019-03-17 23:37:06', '17101116_8188.png', NULL, 3, '17101116', 0, 0),
(311, 'RYAN ANDRE APRILLIAN', '17101118@ittelkom-pwt.ac.id', NULL, '$2y$10$WhaXzgV9ErD/RFz.77/uXO2M7G5FrdUJUBBRU8VFRXMPqcIwt4E/q', NULL, '2019-03-17 23:37:07', '2019-03-17 23:37:07', '17101118_6975.png', NULL, 3, '17101118', 0, 0),
(312, 'SHOFIA FAUZIYAH', '17101119@ittelkom-pwt.ac.id', NULL, '$2y$10$iLMQZqqNcYb6OVf/WgxWPOQ.v1vXA3sxoJ5xESqdyiCeSQlBAI33e', 'Le07m0HidpkX0p3khUXqGiBeJ0j7RFCwhoBNJJlh1zkrLxC1Z1UsH0JlQ2D3', '2019-03-17 23:37:07', '2019-03-17 23:37:07', '17101119_5446.png', NULL, 3, '17101119', 0, 0),
(313, 'TEUKU MUDA MAHUZZA FITRAH', '17101120@ittelkom-pwt.ac.id', NULL, '$2y$10$4I1Rfmoz4eHMaHWBlOmU4uKIAYa6q/kobtpbQsbucdVOK.kZjvJmu', NULL, '2019-03-17 23:37:07', '2019-03-17 23:37:07', '17101120_6344.png', NULL, 3, '17101120', 0, 0),
(314, 'WAHYU JUNIANTO', '17101121@ittelkom-pwt.ac.id', NULL, '$2y$10$/C75FqqNWeh5Q/Ki5qheD.Hb725EmD1QRpIeTFeTAygYOWRy9XsjK', NULL, '2019-03-17 23:37:07', '2019-03-17 23:37:07', '17101121_4960.png', NULL, 3, '17101121', 0, 0),
(315, 'AMOR WAHYU JUMANTORO', '17101168@ittelkom-pwt.ac.id', NULL, '$2y$10$mX9hbJmkro7JhyFGLTP0M.XUT1za5P8fVeBHb1DnBlhAiy0t664i6', NULL, '2019-03-17 23:37:08', '2019-03-17 23:37:08', '17101168_208.png', NULL, 3, '17101168', 0, 0),
(316, 'MAULANA WAHYU PUTRA MALIANDANU', '17101185@ittelkom-pwt.ac.id', NULL, '$2y$10$445bcY/krhS5EcxEZHhb4uGRSO15YrWXuZkTGu4s.Zno7lU.8zlUG', NULL, '2019-03-17 23:37:08', '2019-03-17 23:37:08', '17101185_6381.png', NULL, 3, '17101185', 0, 0),
(317, 'MUHAMMAD BIMA SETYA DEWANTARA', '17101188@ittelkom-pwt.ac.id', NULL, '$2y$10$gC4IwAQsMuKv8OkWfs5SNeLbMDlm.quFavhcFOmXwfmPkO.U3m332', NULL, '2019-03-17 23:37:08', '2019-03-17 23:37:08', '17101188_3974.png', NULL, 3, '17101188', 0, 0),
(318, 'AZIZ MUHAMAD NADZIR', '14101043@ittelkom-pwt.ac.id', NULL, '$2y$10$B1RQjzj.DAfnEAY2UgJMEuJ2MxdwxqG7KklRie51rwIuFU5HkAT7a', NULL, '2019-03-17 23:37:08', '2019-03-17 23:37:08', '14101043_6956.png', NULL, 3, '14101043', 0, 0),
(319, 'YORDHANA FAHADT KUSUMA', '17101122@ittelkom-pwt.ac.id', NULL, '$2y$10$.2rWSGM5RXU3N8AubWZfT.WJfd0YTCfinaJDmlSm5kdinV3KBEN4m', NULL, '2019-03-17 23:37:09', '2019-03-17 23:37:09', '17101122_8885.png', NULL, 3, '17101122', 0, 0),
(320, 'AGUNG KURNIAWAN TARUNO', '17101123@ittelkom-pwt.ac.id', NULL, '$2y$10$rlpZ0cvYARN.7g7Pncv8HeKsl6QtBGbOsDz4m8Y49CZZNAv.5M2vy', NULL, '2019-03-17 23:37:09', '2019-03-17 23:37:09', '17101123_1688.png', NULL, 3, '17101123', 0, 0),
(321, 'ADE KURNIAWAN', '17101124@ittelkom-pwt.ac.id', NULL, '$2y$10$dSkHngRyi3hCYed8Xmk6CeDkP2YN0TXowTb5azDPOzhp4P6uE6mOK', NULL, '2019-03-17 23:37:09', '2019-03-17 23:37:09', '17101124_9194.png', NULL, 3, '17101124', 0, 0),
(322, 'AHMAD TAN\'GI SUHAIRI TARIGAN', '17101126@ittelkom-pwt.ac.id', NULL, '$2y$10$NY/aSrQkgwMaFyduRvQinO4ZBXL1JNn61a6ebPahk8HeWHgbCyoX2', NULL, '2019-03-17 23:37:09', '2019-03-17 23:37:09', '17101126_4485.png', NULL, 3, '17101126', 0, 0),
(323, 'AKHMAD SAEFUL PRAYITNO', '17101127@ittelkom-pwt.ac.id', NULL, '$2y$10$3Bs3nj5uEVlahO.muZm45edmcCLCPUmPU7MRojIDZEpytevahqy.6', NULL, '2019-03-17 23:37:10', '2019-03-17 23:37:10', '17101127_1655.png', NULL, 3, '17101127', 0, 0),
(324, 'ALVIN ADI ISWANTO', '17101128@ittelkom-pwt.ac.id', NULL, '$2y$10$AF94daTrZDqk.MFKkFfWV.fot84lY9bHITSUwG.GPCQOdMljeEcsC', NULL, '2019-03-17 23:37:10', '2019-03-17 23:37:10', '17101128_3534.png', NULL, 3, '17101128', 0, 0),
(325, 'ARVY ALIF PRAMUDYO RACHMAN', '17101130@ittelkom-pwt.ac.id', NULL, '$2y$10$gzTi8yMnGnXUE7X2auuj6eUGWIjIaMsHyORPW6Di8CPQNFpMEPUw.', NULL, '2019-03-17 23:37:10', '2019-03-17 23:37:10', '17101130_2638.png', NULL, 3, '17101130', 0, 0),
(326, 'CAHYADI SEPTIAN PONTOH BESLAR', '17101131@ittelkom-pwt.ac.id', NULL, '$2y$10$P2db1cu0FMAx2IucPWYCa.ll2FPfCZYc1T3gaEgfjEdRBZ9SZb5ke', NULL, '2019-03-17 23:37:10', '2019-03-17 23:37:10', '17101131_9168.png', NULL, 3, '17101131', 0, 0),
(327, 'DEARA DWI RAHMADANI', '17101132@ittelkom-pwt.ac.id', NULL, '$2y$10$AiwinHIXD9WUEE6DbqWr5uhK9GTPQWvB7M0qRU5cU1VLjTYSQxLvi', NULL, '2019-03-17 23:37:11', '2019-03-17 23:37:11', '17101132_6594.png', NULL, 3, '17101132', 0, 0),
(328, 'DIKKO PRAMUDYA', '17101133@ittelkom-pwt.ac.id', NULL, '$2y$10$JXZk8bumZhUXO.hojmyLu.Nh37UjjxPIbOQRIvxSPt6RD42F4K9pm', NULL, '2019-03-17 23:37:11', '2019-03-17 23:37:11', '17101133_5329.png', NULL, 3, '17101133', 0, 0),
(329, 'DONNY ARIEF OKTAVIAN', '17101134@ittelkom-pwt.ac.id', NULL, '$2y$10$Om9R.zVWdifK8Yp2JhHAwu698u/HcDS.Dnqca7T..sR7k6ypKmPwG', NULL, '2019-03-17 23:37:11', '2019-03-17 23:37:11', '17101134_7107.png', NULL, 3, '17101134', 0, 0),
(330, 'EKO BAYU GALIH SETIAWAN', '17101135@ittelkom-pwt.ac.id', NULL, '$2y$10$kjlooPutc.UoBQjkalFeWO7V4420hRecL805V8D7NTZ8j6Isbt9tu', '5GvuMlVeXo5FxQeU3qqRP4elWW9Wg7vuBchu5TDjA24ifZnX7T3bfXJCtWXL', '2019-03-17 23:37:11', '2019-03-17 23:37:11', '17101135_6919.png', NULL, 3, '17101135', 0, 0),
(331, 'ERWIN STEVE FERNANDO SIHOMBING', '17101136@ittelkom-pwt.ac.id', NULL, '$2y$10$hXJEJ6Ety9Y4kD6E2V85P.9hVrnpqlcEdyY.0n5INuKkvamc80Fmy', NULL, '2019-03-17 23:37:12', '2019-03-17 23:37:12', '17101136_2696.png', NULL, 3, '17101136', 0, 0),
(332, 'FAUZUHRI SAEFUL MANAF', '17101137@ittelkom-pwt.ac.id', NULL, '$2y$10$67OaTv8m.zjm8SKKkU/Vn.Sn/ht0MJOk99yODjRPrtxay8D2/ZsJS', NULL, '2019-03-17 23:37:12', '2019-03-17 23:37:12', '17101137_115.png', NULL, 3, '17101137', 0, 0),
(333, 'GERALD KENCANA SRI BUANA', '17101139@ittelkom-pwt.ac.id', NULL, '$2y$10$sNv6JYhPmCE/TIpeIW3NwuHEsy7hOD6kHGz7kQKEwbEJqMI7AhEkm', NULL, '2019-03-17 23:37:12', '2019-03-17 23:37:12', '17101139_8331.png', NULL, 3, '17101139', 0, 0),
(334, 'HANAFI RIZAL RAIS', '17101140@ittelkom-pwt.ac.id', NULL, '$2y$10$3m9SLnXBapdy1u.Tjgm2RO9wYsty9eJQqNpL1Fq4I.1.9eRGKom.C', NULL, '2019-03-17 23:37:12', '2019-03-17 23:37:12', '17101140_290.png', NULL, 3, '17101140', 0, 0),
(335, 'HUMUL RIZAL FAUZI', '17101141@ittelkom-pwt.ac.id', NULL, '$2y$10$e7VCijA3fvMwbnLcuOOWGO.mNYQlLUBI1RVweAeFot/q0YLCQ0gKW', 'tNFoIlaq5P2fUEGNrWMUGABBW1XXzWSb9zBq22unIPd4MOZS4hymPs8DqRzg', '2019-03-17 23:37:13', '2019-03-17 23:37:13', '17101141_7757.png', NULL, 3, '17101141', 0, 0),
(336, 'ISLAMIANTO HUDAN RAHARJO', '17101142@ittelkom-pwt.ac.id', NULL, '$2y$10$hnXBUPGg5Ojgzsl1XEnBLeyEOnSlkRJaSR0eTd9sG7GhMHI.whcUe', NULL, '2019-03-17 23:37:13', '2019-03-17 23:37:13', '17101142_3701.png', NULL, 3, '17101142', 0, 0),
(337, 'KHANSA NABILAH', '17101143@ittelkom-pwt.ac.id', NULL, '$2y$10$Irtik90MKd/mBoT8Sr.QkeT4SERA4Wy4.vqTGoroqmoLwzC/G8duC', 'MCKAPGblSmkOdS7HUqkLE29gprFlDzeZcVqaxyIXV0SeyWt9Ahe4cPZW27Nv', '2019-03-17 23:37:13', '2019-03-17 23:37:13', '17101143_9806.png', NULL, 3, '17101143', 0, 0),
(338, 'LU\'LU\' HASNA\' MAHDIYAH', '17101144@ittelkom-pwt.ac.id', NULL, '$2y$10$mgp2F7H.TT9RJfYbw2aS1ehXqr1ZgRCSUsPP.kyZA.7D0FSTo5brq', NULL, '2019-03-17 23:37:14', '2019-04-19 15:59:35', '17101144_3258.png', '+6281286991715', 3, '17101144', 0, 0),
(339, 'M.RAFIE BAYU PRATAMA', '17101145@ittelkom-pwt.ac.id', NULL, '$2y$10$vTNJ2QvXRpAn8W8zi6aBlu0v4iCcqdWY/Ka6FrQmPYa0HBAbofKq2', NULL, '2019-03-17 23:37:14', '2019-03-17 23:37:14', '17101145_9652.png', NULL, 3, '17101145', 0, 0),
(340, 'MELIA MISPRIATIN', '17101146@ittelkom-pwt.ac.id', NULL, '$2y$10$4CNu73rFYHMspnmvaopH9enqHNaENkFPWSRwJ9uSTFAkoMNDB.3BK', NULL, '2019-03-17 23:37:14', '2019-03-17 23:37:14', '17101146_1546.png', NULL, 3, '17101146', 0, 0),
(341, 'MUHAMAD IQBAL', '17101147@ittelkom-pwt.ac.id', NULL, '$2y$10$wx8oZhkg6XN66hFMw9joue85LpZ.nSyAlFlToFkSc9Hm1D0VK.kRG', NULL, '2019-03-17 23:37:14', '2019-03-17 23:37:14', '17101147_6116.png', NULL, 3, '17101147', 0, 0),
(342, 'MUHAMMAD AULIA BAIHAQY', '17101148@ittelkom-pwt.ac.id', NULL, '$2y$10$3eOPNzUKyKD3MVISCndnPeCGnCTFa145D5ZIejxyc7dCPADCH8xla', 'qtWNYcyIRiYt00Seyz7bzFCXEw2HwpGpIfhzbJuosCDMAbUD3MsG93WiIX4L', '2019-03-17 23:37:15', '2019-03-17 23:37:15', '17101148_9513.png', NULL, 3, '17101148', 0, 0),
(343, 'MUHAMMAD HUDA ALFASHA', '17101149@ittelkom-pwt.ac.id', NULL, '$2y$10$9AgyAw23CPIhBu42LNlE4.DXXiEYQCp5imklWJFi0b1QlciEOVY6G', NULL, '2019-03-17 23:37:15', '2019-03-17 23:37:15', '17101149_5761.png', NULL, 3, '17101149', 0, 0),
(344, 'MUHAMMAD NOVIANTO ADITYA PUTRA', '17101150@ittelkom-pwt.ac.id', NULL, '$2y$10$FIk.XGhahYjCYUJ92LInIuyGo9e2FSKcFTre4xUyUL7BfNFOElYfS', 'A40erMgvrFQwvUup0yOEQdPYZNVuNlmKSHYxtBePadB21Duo5AS5AVRhXGM4', '2019-03-17 23:37:15', '2019-03-17 23:37:15', '17101150_7107.png', NULL, 3, '17101150', 0, 0),
(345, 'MUHAMMAD SYAHRUL IKHSAN', '17101151@ittelkom-pwt.ac.id', NULL, '$2y$10$5agtrLWNN5.KM8OV41QKI.0GU.XK/iRLj7L1I6DH1lM/L29c4kJxG', NULL, '2019-03-17 23:37:15', '2019-03-17 23:37:15', '17101151_7079.png', NULL, 3, '17101151', 0, 0),
(346, 'NAJIB MA\'RUF', '17101152@ittelkom-pwt.ac.id', NULL, '$2y$10$5MP.Yv2Jt7YHhmi97zr2hut4KMX4qV.UkR/ttn1BX4xfuKxFKtQ2e', NULL, '2019-03-17 23:37:16', '2019-03-17 23:37:16', '17101152_7345.png', NULL, 3, '17101152', 0, 0),
(347, 'NURHAJIAWATI PATADUNGAN', '17101153@ittelkom-pwt.ac.id', NULL, '$2y$10$dWHQtucGpYf5PbkMf8.xneypuFbpleKLog.9EGW2H9zR0eGn1YKuC', NULL, '2019-03-17 23:37:16', '2019-03-17 23:37:16', '17101153_722.png', NULL, 3, '17101153', 0, 0),
(348, 'QUEENTA PARADISSA RAMADHANI', '17101155@ittelkom-pwt.ac.id', NULL, '$2y$10$fDARe5EEub5cTUGxO31FCebWLRx0qrmepQSSjYxFQs6qCmitMZ.m.', NULL, '2019-03-17 23:37:16', '2019-03-17 23:37:16', '17101155_8771.png', NULL, 3, '17101155', 0, 0),
(349, 'RAMZI ALIY AFIF', '17101156@ittelkom-pwt.ac.id', NULL, '$2y$10$dtJJDdy1iJqJ6t0Upf2sduvuhAce6OQs1uZC8nfW.GkbeujI4UVei', 'KxfE06VhMLIdp0ehb2wtNMgUj9S0JRZuSexdFayvImIA9U9FlSHZZzWPCQpb', '2019-03-17 23:37:16', '2019-03-17 23:37:16', '17101156_6488.png', NULL, 3, '17101156', 0, 0),
(350, 'RIFANI AULIANA', '17101157@ittelkom-pwt.ac.id', NULL, '$2y$10$e.PDHnyGZp/ORoMGQ.Egeec72Rxx.stjps71dDDejBs9AmdDb.K0e', NULL, '2019-03-17 23:37:17', '2019-03-17 23:37:17', '17101157_12.png', NULL, 3, '17101157', 1, 0),
(351, 'RIZQI MULYA ISKANDAR', '17101158@ittelkom-pwt.ac.id', NULL, '$2y$10$i.t7opqqQZ4P9U0kVRGPCu1RxlGOvpSjiA7Wx06iPRVvBCYxsoFeS', NULL, '2019-03-17 23:37:17', '2019-03-17 23:37:17', '17101158_7403.png', NULL, 3, '17101158', 0, 0),
(352, 'SALSABILA ZAIN GUNAWAN', '17101159@ittelkom-pwt.ac.id', NULL, '$2y$10$0CJU8jyhQQNrN/5Cs27DwuD.WVQgUn9Z2BioszYiyDka4pIGxeNCG', '7P9PXLEzcMXoGcbyaGO2M9KMFgVMjZ8a1EjwBKJWERjgQieUUkEV543Dk7MO', '2019-03-17 23:37:17', '2019-03-17 23:37:17', '17101159_9527.png', NULL, 3, '17101159', 0, 0),
(353, 'SILVI NURANDI', '17101160@ittelkom-pwt.ac.id', NULL, '$2y$10$Cpk9h.rsGAL9Oj74Vmp2nu68LjemD9B6B2Pbhk2XU14uMcFiM53fK', NULL, '2019-03-17 23:37:17', '2019-03-17 23:37:17', '17101160_7084.png', NULL, 3, '17101160', 0, 0),
(354, 'VASSA METAYASHA', '17101161@ittelkom-pwt.ac.id', NULL, '$2y$10$prrS4S.XxP5UX7iXVuqbkON9ax/hsjxroQrchsTz8q6jLiK40Xu6G', NULL, '2019-03-17 23:37:17', '2019-03-17 23:37:17', '17101161_4554.png', NULL, 3, '17101161', 0, 0),
(355, 'WISNU SATRIO MUSLIM', '17101162@ittelkom-pwt.ac.id', NULL, '$2y$10$Os2w8un4AF6.SSuUCax54.esuwXwnBYzmjTfM6XnuMIfIZVoh2KWi', '3gp3zwoDvNzrTqxmAdk098z4evaULxbO9xl4lUAKSWTCaugwDgCHz6AsvQ4Q', '2019-03-17 23:37:18', '2019-03-17 23:37:18', '17101162_9627.png', NULL, 3, '17101162', 0, 0),
(356, 'BIMO KUSDAMARSASI LANZA', '14101083@ittelkom-pwt.ac.id', NULL, '$2y$10$B/uPwIyF9KGw1jeND5t8xeXt8VlbBq/bVs9FA2Z4a5AC..QR13CBa', NULL, '2019-03-17 23:37:18', '2019-03-17 23:37:18', '14101083_5847.png', NULL, 3, '14101083', 0, 0),
(357, 'YUNINDA DWIANTI MARIMBUN', '17101163@ittelkom-pwt.ac.id', NULL, '$2y$10$XrymwysT/UBcMDEBPIxLiuFaJg76Qe9SVRK8yjOGTwAxVANeJi68G', 'vhdDTUjuaEceNOmBNJeuP1i7RLw8zLuGxdDemhTyj6pYuEmMl51fnKPFfrOE', '2019-03-17 23:37:18', '2019-03-17 23:37:18', '17101163_4724.png', NULL, 3, '17101163', 0, 0),
(358, 'ADE RAIS HAMBALI', '17101164@ittelkom-pwt.ac.id', NULL, '$2y$10$.VeUxBDXfJUXA2H86b3nrOKIqfwMGkh5MUA0fnEpBs1E.mx4RTViy', NULL, '2019-03-17 23:37:18', '2019-03-17 23:37:18', '17101164_2392.png', NULL, 3, '17101164', 0, 0),
(359, 'AHDA ISTIANA BILLA', '17101165@ittelkom-pwt.ac.id', NULL, '$2y$10$OR1pFiP8FbjTiv51Uqb7COe0KQLpVJESvSzb/pdOHItegtgcn0BmO', NULL, '2019-03-17 23:37:19', '2019-03-17 23:37:19', '17101165_5044.png', NULL, 3, '17101165', 0, 0),
(360, 'AHMAD TSAURI SAJAYA', '17101166@ittelkom-pwt.ac.id', NULL, '$2y$10$Bbgu9MgXc/Lch2Qml7q0QeKQkcZ/cJAm1J4xsj9BP3LAvQ6wWc/s.', 'kT7NSI7hD8NuSsb6hhwopKGkKaDeMVLio3eJ5xH3Gteiu3qHChWXn4uXpdCd', '2019-03-17 23:37:19', '2019-03-17 23:37:19', '17101166_5510.png', NULL, 3, '17101166', 0, 0),
(361, 'ALFALAH BECUS WICAKSONO', '17101167@ittelkom-pwt.ac.id', NULL, '$2y$10$I4RiedkIamjc2FXx54NN0.jQ8Lh3VySD2z5BRhi5DFh2t6i9lVIRe', NULL, '2019-03-17 23:37:19', '2019-03-17 23:37:19', '17101167_4752.png', NULL, 3, '17101167', 0, 0),
(362, 'ANUGERAH NOTATEMA GEA', '17101169@ittelkom-pwt.ac.id', NULL, '$2y$10$QcyKukXMlvOFQAYYwwLWZ.n0OpxVMsorEs59jgi6a3Bxxqn6XByuu', NULL, '2019-03-17 23:37:19', '2019-03-17 23:37:19', '17101169_9049.png', NULL, 3, '17101169', 0, 0),
(363, 'ARYO WIDIGDO', '17101170@ittelkom-pwt.ac.id', NULL, '$2y$10$RKM9B311Oi9OWIIMHBtlA.kAGkyFb8giY7hkC3SG2ZCYnkqlke6.S', NULL, '2019-03-17 23:37:20', '2019-03-17 23:37:20', '17101170_9248.png', NULL, 3, '17101170', 0, 0),
(364, 'CHANDRA MAULANA', '17101171@ittelkom-pwt.ac.id', NULL, '$2y$10$QA2Boq27nJRNaRUuI9jG/eAiynb6CdH7NN5um1ypok/qMvEojW7EW', NULL, '2019-03-17 23:37:20', '2019-03-21 02:01:26', '17101171_945.png', '+6282321376118', 3, '17101171', 1, 0),
(365, 'DHARMA SAKTI PRAMUDYA', '17101172@ittelkom-pwt.ac.id', NULL, '$2y$10$iL0Q8GluYRQ7OQgHagS5D.ButscO0FRicqxzA.JUBPd7.peqk5J4C', NULL, '2019-03-17 23:37:20', '2019-03-17 23:37:20', '17101172_5999.png', NULL, 3, '17101172', 0, 0),
(366, 'DIMAS FASQI FAHREZI', '17101173@ittelkom-pwt.ac.id', NULL, '$2y$10$RnJJB7pjBEEHrV1xHj3o8eKBh7QmYnysj2qpV9Gmr.LEtC3kuAUt2', NULL, '2019-03-17 23:37:20', '2019-03-17 23:37:20', '17101173_2336.png', NULL, 3, '17101173', 0, 0),
(367, 'DWI PRASETYO', '17101174@ittelkom-pwt.ac.id', NULL, '$2y$10$TGzWV6oZpvsK3nKmKejn7eVpbpVWk7dqNJ66M.PmL63TCPQRJgM/u', 'rGVhQQAYi25Og1dV5esbEhofK9ihhyE0SrmJtojwRTTzct824p4ZQzDWBAKN', '2019-03-17 23:37:21', '2019-03-17 23:37:21', '17101174_4166.png', NULL, 3, '17101174', 0, 0),
(368, 'ELSA NUR OKTAVIAR HERAWATI', '17101175@ittelkom-pwt.ac.id', NULL, '$2y$10$HRI8Yto8sPv.aIAvcU9etOv67X4diXNnu2gzvGtkDOFQJmFQ5MED2', 'IvrQKZnWrQek7WfxYUA0PGnYoANmp1SyhzsDe4ERVzmLaLYjjlFgLJtEVoT8', '2019-03-17 23:37:21', '2019-03-17 23:37:21', '17101175_1353.png', NULL, 3, '17101175', 1, 0),
(369, 'FREDRENICO PENGGABEAN', '17101178@ittelkom-pwt.ac.id', NULL, '$2y$10$4QB35KE9M9gEBzT9yP7pY.fhcbHY5cfR/pFGxPl/8nUzj6WmWkK3O', NULL, '2019-03-17 23:37:21', '2019-03-17 23:37:21', '17101178_3734.png', NULL, 3, '17101178', 0, 0),
(370, 'HANIF ADHITAMA', '17101180@ittelkom-pwt.ac.id', NULL, '$2y$10$ruezKhTuUEv.SWzxR2nm2.Q1DgfJ4uj0KaQ/84l.tyEQRP6q304TO', NULL, '2019-03-17 23:37:21', '2019-03-17 23:37:21', '17101180_495.png', NULL, 3, '17101180', 0, 0),
(371, 'IJMA\'U RIZKI', '17101181@ittelkom-pwt.ac.id', NULL, '$2y$10$z.V6cgPEkXErAI/JNlem5uJNoLC8kvsB4eho.rRI855o8FiyPStmm', NULL, '2019-03-17 23:37:22', '2019-03-17 23:37:22', '17101181_6972.png', NULL, 3, '17101181', 0, 0),
(372, 'ISNU FADKHUL ROIS', '17101182@ittelkom-pwt.ac.id', NULL, '$2y$10$xP9YunmoLW5If.1858DjNO2CWHGZb9HI7PP2N5h2yagLckOLVFjp2', NULL, '2019-03-17 23:37:22', '2019-03-17 23:37:22', '17101182_8260.png', NULL, 3, '17101182', 0, 0),
(373, 'KURNIAWAN FAJAR YULIANTO', '17101183@ittelkom-pwt.ac.id', NULL, '$2y$10$BUdn2b4HtFdCaPaD7n7NYeEUpS5S3Smv0oNWyXGKjlk9PQznzbrzG', NULL, '2019-03-17 23:37:22', '2019-03-17 23:37:22', '17101183_1030.png', NULL, 3, '17101183', 0, 0),
(374, 'MICHAEL CHARLOS SIBARANI', '17101186@ittelkom-pwt.ac.id', NULL, '$2y$10$JrohWLCtUNkoD6VRItLETuPqckpl9NzHitR5JfCV2Dau4gXerq4VG', NULL, '2019-03-17 23:37:22', '2019-03-17 23:37:22', '17101186_7334.png', NULL, 3, '17101186', 0, 0),
(375, 'MUHAMAD RIFKI FAUZI', '17101187@ittelkom-pwt.ac.id', NULL, '$2y$10$RfHLnUxsyZwqk4LkIpSFT.xsTwos0zJBrlVxSMex5UiIuZrxODgce', NULL, '2019-03-17 23:37:23', '2019-03-17 23:37:23', '17101187_6853.png', NULL, 3, '17101187', 0, 0),
(376, 'MUHAMMAD RICO MULIA SIHOMBING', '17101190@ittelkom-pwt.ac.id', NULL, '$2y$10$M.ZxqbLpFNKw9K7TI0TObeL1m9hIXIwSpSxMIHRHPzh6Dgcm4oc7O', NULL, '2019-03-17 23:37:23', '2019-03-17 23:37:23', '17101190_1516.png', NULL, 3, '17101190', 0, 0),
(377, 'MUHAMMAD YUSRIL IHZA', '17101191@ittelkom-pwt.ac.id', NULL, '$2y$10$.8MH0AlKArYaq.1XDbVYRey3CNynnrEA0B2islQiU4bQRUufDYyo.', 'jelrgUQAiHJZ04I47UhFEsezTMQiRdJpZsyKDd4rQ28RHti2jExKumsQk66V', '2019-03-17 23:37:23', '2019-03-17 23:37:23', '17101191_2613.png', NULL, 3, '17101191', 0, 0),
(378, 'NAJMILHANA SUKROENI', '17101192@ittelkom-pwt.ac.id', NULL, '$2y$10$dV.anl0IolqekW3H/GYffOs4Bls4zfiMCyRIKbUE0gwgRXsGiBeam', '4XKBy2qbszYd1Xhmifzbtbj8Kxivu3IGenoYloYWo8kXrk7YZoEIaDcPWBTN', '2019-03-17 23:37:23', '2019-03-17 23:37:23', '17101192_7499.png', NULL, 3, '17101192', 0, 0),
(379, 'PARAMA HUTAMA HEMAS SAKA PRIADI', '17101194@ittelkom-pwt.ac.id', NULL, '$2y$10$JDoOjJlpNdzbCsNXaO.12.ZsrZgZ0Bzwprgz.iKha1y7udIFFjrYa', NULL, '2019-03-17 23:37:24', '2019-03-17 23:37:24', '17101194_2409.png', NULL, 3, '17101194', 0, 0),
(380, 'RAAFI MUHAMMAD ADLI', '17101195@ittelkom-pwt.ac.id', NULL, '$2y$10$sct7DONxmsnXnEaPHpND7uAnGmxa2Jg0bnnKrOrpaxvJAZVi1mt8u', NULL, '2019-03-17 23:37:24', '2019-03-17 23:37:24', '17101195_1664.png', NULL, 3, '17101195', 0, 0),
(381, 'RESI AMALIA UTAMI', '17101196@ittelkom-pwt.ac.id', NULL, '$2y$10$AZwSJwUlh8HUwjL1QkjMGuUjpP4I.7llp7IzuYnUr9RChgnmrGqGm', '9RifzvSeEiwdzSIchzSTrKzFRbsHOKYPmkz98CSjuOP6oYaydjGAi23HGQ4j', '2019-03-17 23:37:24', '2019-03-17 23:37:24', '17101196_5709.png', NULL, 3, '17101196', 0, 0),
(382, 'RIFKY ADZIE SATRIO', '17101197@ittelkom-pwt.ac.id', NULL, '$2y$10$DaIO2CHbyqW3fuLM4d9Oz..WP5q3R4XDv1n7YNGeTPNRsgG.8waR2', NULL, '2019-03-17 23:37:24', '2019-03-17 23:37:24', '17101197_3787.png', NULL, 3, '17101197', 0, 0),
(383, 'RIZQI PRATAMA', '17101198@ittelkom-pwt.ac.id', NULL, '$2y$10$H/lRoajCnfbJfMk8iseF5.YGOIrRTmTdetSOkTrej6m2NnEeNNyHG', 'v6sRHhw4Y214oUMIF5r2LmyDf73XvPsYY6Ui6echspxXFQVQ5PUczjlQIAvr', '2019-03-17 23:37:25', '2019-03-17 23:37:25', '17101198_8584.png', NULL, 3, '17101198', 0, 0),
(384, 'SAMUEL TEGUH ANUGRAHKO', '17101199@ittelkom-pwt.ac.id', NULL, '$2y$10$IUUVO93xSLCtjbVmj05x5OsKr.AHwmmUaete4cFUkiVLw/vl6m5ja', NULL, '2019-03-17 23:37:25', '2019-03-17 23:37:25', '17101199_1202.png', NULL, 3, '17101199', 0, 0),
(385, 'STEVANI BR BARUTU', '17101200@ittelkom-pwt.ac.id', NULL, '$2y$10$J5P7vZ3CObkSm.njCX6xHudCSnhu6h8T7vPyKI/yovnSm2y0aFxZi', NULL, '2019-03-17 23:37:25', '2019-03-17 23:37:25', '17101200_3081.png', NULL, 3, '17101200', 0, 0),
(386, 'VEREN DEARDO ANGGORA PURBA', '17101201@ittelkom-pwt.ac.id', NULL, '$2y$10$tN3U5QNNMZB4Iv9ldQ7dpOyxlrlVKVIpJrQLJ4yTYzBErDoX5nKai', NULL, '2019-03-17 23:37:25', '2019-03-17 23:37:25', '17101201_6892.png', NULL, 3, '17101201', 0, 0),
(387, 'WIWIT INDAH SARI', '17101202@ittelkom-pwt.ac.id', NULL, '$2y$10$gib3m64nmYd98qKREpC7Nud2hqzRp.xMv3IC/pqtb9Yyo/Dd29R9W', NULL, '2019-03-17 23:37:25', '2019-03-17 23:37:25', '17101202_7791.png', NULL, 3, '17101202', 0, 0),
(388, 'YUSUF HIDAYAT', '17101203@ittelkom-pwt.ac.id', NULL, '$2y$10$khjtB3HAPTMmgP.n1c/r9eH2UCz95BgX2jO2VvR8/OM0fLk2EoL8e', NULL, '2019-03-17 23:37:26', '2019-03-17 23:37:26', '17101203_1520.png', NULL, 3, '17101203', 0, 0),
(389, 'JHON BRYAN T', '17101204@ittelkom-pwt.ac.id', NULL, '$2y$10$Miuq5nUwIl4KX0ZGfPS4VuUG9ZvMBvfVxUy9JdYCmK7UZZ.9b2ExG', NULL, '2019-03-17 23:37:26', '2019-03-17 23:37:26', '17101204_6973.png', NULL, 3, '17101204', 0, 0),
(390, 'AULIA IBNU FAHMI', '17101205@ittelkom-pwt.ac.id', NULL, '$2y$10$Ec9AQFqYpHaTOoXZ26I/TOJHf/eB1RG6ulTdVlODcEkRebQV8baK6', NULL, '2019-03-17 23:37:26', '2019-03-17 23:37:26', '17101205_7513.png', NULL, 3, '17101205', 0, 0),
(391, 'GALANG ALIF WICAKSONO', '17101206@ittelkom-pwt.ac.id', NULL, '$2y$10$PvAEe1b5L9gah4No3XbNvu/rOeALoGlhPqi80Enykc8ViS5lyT1Ni', NULL, '2019-03-17 23:37:26', '2019-03-17 23:37:26', '17101206_3595.png', NULL, 3, '17101206', 0, 0),
(392, 'DHEA CHANDRA KESUMA', '17101207@ittelkom-pwt.ac.id', NULL, '$2y$10$d0kx5/yNhM05U9Kk1Ckyl.bZz5.w5rcOKh6BtZgo3.4QT80FMv6ku', 'fWv40VVZdBpKMSiIAcyhzayU3Qp1WTIQrQrz9Fy2ghO4fehBTrmPJJZ0vWlk', '2019-03-17 23:37:27', '2019-03-17 23:37:27', '17101207_8118.png', NULL, 3, '17101207', 0, 0),
(393, 'MUHAMAD RIFQI MUBAROK', '17101209@ittelkom-pwt.ac.id', NULL, '$2y$10$j2NWiraeTAt43aeoRfDBR.UiFlxC5P5UDJhchi1ZwcF59psyX91/i', NULL, '2019-03-17 23:37:27', '2019-03-17 23:37:27', '17101209_4330.png', NULL, 3, '17101209', 0, 0),
(394, 'MUKTI RAMADHAN', '17101210@ittelkom-pwt.ac.id', NULL, '$2y$10$jPoTEG88ed6kQXvFgBPzleW5y2WGKpMEjzjgLcodwttwercii8jWu', 'q6EajU5wIsiQ6DTr7496rJ1NOfIqQm6x3DM7eFY3In6s83sbyUpam6O1Nf4T', '2019-03-17 23:37:27', '2019-03-17 23:37:27', '17101210_8306.png', NULL, 3, '17101210', 0, 0),
(395, 'PRILIA APTA ARISTAWIDYA', '17101211@ittelkom-pwt.ac.id', NULL, '$2y$10$7YaUAcr38RDbwpM5rnb2E./G2uWmL4Z4EwX1Xvj511wTmONXYX/w.', NULL, '2019-03-17 23:37:28', '2019-03-17 23:37:28', '17101211_1711.png', NULL, 3, '17101211', 0, 0),
(396, 'SIGIT MAULANA', '17101213@ittelkom-pwt.ac.id', NULL, '$2y$10$wt/5i9qQ2yaiulihngXqLO0oK4bIBMlHkpLrOEou3f9OuDVJVNmK2', NULL, '2019-03-17 23:37:28', '2019-03-17 23:37:28', '17101213_77.png', NULL, 3, '17101213', 0, 0),
(397, 'SUGENG WAISAL', '17101214@ittelkom-pwt.ac.id', NULL, '$2y$10$d1yhQoxz/KueIQubkUydoO/cPfdGU1bwGE9vsuEbzw4LrR4/xVtDa', NULL, '2019-03-17 23:37:28', '2019-03-17 23:37:28', '17101214_2158.png', NULL, 3, '17101214', 0, 0),
(398, 'YUSTIKA ARINIL HAQ', '17101217@ittelkom-pwt.ac.id', NULL, '$2y$10$vu8D.jdLlqsPRAricUEDt.Lx0pjws5c0T1ie2BvJ57IXF1jhWWE0u', 'PtxXz56ZYTosfmF2fzcHI1DJlVsrFprfYDDLe4Z7kbTIdibsOoKAQXJdVocl', '2019-03-17 23:37:29', '2019-03-17 23:37:29', '17101217_6539.png', NULL, 3, '17101217', 0, 0),
(399, 'ANGGORO YUDHA PRATAMA', '17107004@ittelkom-pwt.ac.id', NULL, '$2y$10$YCgJ.JemBopwUDoHWIuhROOjPaLr7UG0nhZ5hlDUByRQiB3GMrTOu', NULL, '2019-03-18 00:23:16', '2019-03-18 00:23:16', '17107004_5118.png', NULL, 2, '17107004', 1, 0),
(400, 'WAHYU UTORO SAPUTRO', '17107011@ittelkom-pwt.ac.id', NULL, '$2y$10$Rl1AZjbGOLzOpscAit.Wne3m8.6ZBd/YjWzI1IftVzlsGR5XH6nAC', NULL, '2019-03-18 00:23:17', '2019-03-18 00:23:17', '17107011_4397.png', NULL, 2, '17107011', 1, 0),
(401, 'DWI ELBA WAHYU AJI', '16101127@ittelkom-pwt.ac.id', NULL, '$2y$10$juutKxrsAwEHuknhbbprZuNShvFNYL8NP0gFXlrk12PhluGgv4vQS', NULL, '2019-03-18 00:23:17', '2019-03-18 00:23:17', '16101127_3017.png', NULL, 2, '16101127', 1, 0),
(402, 'FAISHAL MUHAMMAD ZHAFRAN', '16101014@ittelkom-pwt.ac.id', NULL, '$2y$10$CETasLzfDVn8MxLM7oK9fuXze0AWggyneEOviiSyhwf80X9prkpvK', NULL, '2019-03-18 00:23:17', '2019-03-18 00:23:17', '16101014_8648.png', NULL, 2, '16101014', 1, 0),
(403, 'INDAK DANIL MABAR', '16101134@ittelkom-pwt.ac.id', NULL, '$2y$10$C8D14ZnrPa2R669NnZIzZOQt5.gATln9yK8TXqEyRv8DKvvk9Bidm', NULL, '2019-03-18 00:23:18', '2019-03-18 00:23:18', '16101134_3308.png', NULL, 2, '16101134', 1, 0),
(404, 'FIKRI NIZAR GUSTIYANA', '17201035@ittelkom-pwt.ac.id', NULL, '$2y$10$5fWKoFXI5lJ/nIldzJ.dV.5nP3jCI8QEMaAttvPIvwwyEoizHoilW', NULL, '2019-03-18 00:23:18', '2019-03-18 00:23:18', '17201035_589.png', NULL, 2, '17201035', 1, 0),
(405, 'RIJAL TAUFIKKURRAHMAN', '17201048@ittelkom-pwt.ac.id', NULL, '$2y$10$c0j/PnYaGAKoOX85GCjqjOE8Se69w5w0HsY.10uvagY7daEYQUcPK', NULL, NULL, NULL, NULL, NULL, 2, '17201048', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aktivitas_id_mk_foreign` (`id_mk`),
  ADD KEY `aktivitas_id_kelas_foreign` (`id_kelas`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laporan_id_user_foreign` (`id_user`),
  ADD KEY `laporan_id_modul_foreign` (`id_modul`),
  ADD KEY `laporan_id_asisten_foreign` (`id_asisten`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mata_kuliah_kd_mk_unique` (`kd_mk`(50));

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modul_id_mk_foreign` (`id_mk`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peserta_id_user_foreign` (`id_user`),
  ADD KEY `peserta_id_aktivitas_foreign` (`id_aktivitas`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`(100));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktivitas`
--
ALTER TABLE `aktivitas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD CONSTRAINT `aktivitas_id_kelas_foreign` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `aktivitas_id_mk_foreign` FOREIGN KEY (`id_mk`) REFERENCES `mata_kuliah` (`id`);

--
-- Constraints for table `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_id_asisten_foreign` FOREIGN KEY (`id_asisten`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `laporan_id_modul_foreign` FOREIGN KEY (`id_modul`) REFERENCES `modul` (`id`),
  ADD CONSTRAINT `laporan_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `modul`
--
ALTER TABLE `modul`
  ADD CONSTRAINT `modul_id_mk_foreign` FOREIGN KEY (`id_mk`) REFERENCES `mata_kuliah` (`id`);

--
-- Constraints for table `peserta`
--
ALTER TABLE `peserta`
  ADD CONSTRAINT `peserta_id_aktivitas_foreign` FOREIGN KEY (`id_aktivitas`) REFERENCES `aktivitas` (`id`),
  ADD CONSTRAINT `peserta_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
