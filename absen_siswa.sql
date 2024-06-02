-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2024 at 04:59 AM
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
-- Database: `absen_siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `absens`
--

CREATE TABLE `absens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pertemuan_id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `keterangan` enum('H','S','I','A','T') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nip` bigint(20) DEFAULT NULL,
  `nuptk` bigint(20) DEFAULT NULL,
  `jk` enum('L','P') NOT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `name`, `nip`, `nuptk`, `jk`, `telepon`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', NULL, NULL, 'L', '082481793480', 'Mlati, Sleman', '2023-08-10 03:16:58', '2024-05-31 15:39:39');

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
-- Table structure for table `gurus`
--

CREATE TABLE `gurus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nip` bigint(20) DEFAULT NULL,
  `nuptk` bigint(20) DEFAULT NULL,
  `jk` enum('L','P') NOT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gurus`
--

INSERT INTO `gurus` (`id`, `user_id`, `name`, `nip`, `nuptk`, `jk`, `telepon`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 2, 'Isnan Abadi,S.Pd.,M.Pd', 196804301989011001, NULL, 'L', NULL, 'Mlati, Sleman', '2023-08-10 03:16:58', '2024-05-31 15:50:41'),
(2, 5, 'Magdalena Dwi S, S. Pd', 196506181987032004, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 15:51:37', '2024-05-31 15:51:37'),
(3, 6, 'Wahyuni, S. Pd', 196507111984122002, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 15:52:41', '2024-05-31 15:52:41'),
(4, 7, 'Y. Mei Setyanta, S. Pd, M. Hum', 196605221990031006, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 15:53:48', '2024-05-31 15:53:48'),
(5, 8, 'Sri Wahyuni, S. Pd', 196605241989032008, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 15:54:25', '2024-05-31 15:54:25'),
(6, 9, 'Dra. Rita Supriyatmi', 196805101997032001, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 15:55:05', '2024-05-31 15:55:05'),
(7, 10, 'Wachidyastuti, S.Pd', 196909031997022004, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 15:55:49', '2024-05-31 15:55:49'),
(8, 11, 'Endang Prasetyo, S. Pd', 197307162000122003, NULL, 'L', NULL, 'Mlati, Sleman', '2024-05-31 15:56:20', '2024-05-31 15:56:20'),
(9, 12, 'Ary Yanto, S. Pd T', 198112182009021001, NULL, 'L', NULL, 'Mlati, Sleman', '2024-05-31 15:56:58', '2024-05-31 15:56:58'),
(10, 13, 'Herlinda Pranandari, S. Pd', 198212182010012011, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 15:57:27', '2024-05-31 15:57:27'),
(11, 14, 'Ernawati, S.Ag, M.Pd.', 197205152006042021, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 15:58:03', '2024-05-31 15:58:03'),
(12, 15, 'Kuntari Enipurwanti,S.Pd', 197602232014062001, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 15:58:40', '2024-05-31 15:58:40'),
(13, 16, 'Sri Lestari,S.Pd', 198107252009032001, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 15:59:22', '2024-05-31 15:59:22'),
(14, 17, 'Siwi Swandari, S. Ag', 197707142003122002, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 16:00:05', '2024-05-31 16:00:05'),
(15, 18, 'Guntur Bayu Asmoro, S. Pd', 198505172022211019, NULL, 'L', NULL, 'Mlati, Sleman', '2024-05-31 16:00:52', '2024-05-31 16:00:52'),
(16, 19, 'Rizqa Putri Nastiti,S.Pd', 199404212022212016, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 16:01:31', '2024-05-31 16:01:31'),
(17, 20, 'Rista Nurul Hidayah,S.Pd', 199210112022212014, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 16:02:12', '2024-05-31 16:02:12'),
(18, 21, 'Ilham Nur Mukhammad,S.Pd', 199703312022211001, NULL, 'L', NULL, 'Mlati, Sleman', '2024-05-31 16:02:45', '2024-05-31 16:02:45'),
(19, 22, 'Arya Djodipati,S.Pd', 199804082023211002, NULL, 'L', NULL, 'Mlati, Sleman', '2024-05-31 16:03:30', '2024-05-31 16:03:30'),
(20, 23, 'Mufidatu L.N ,S.Pd', NULL, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 16:05:10', '2024-05-31 16:05:10'),
(21, 24, 'Erwin Joko Purnomo,S.Pd', NULL, NULL, 'L', NULL, 'Mlati, Sleman', '2024-05-31 16:05:47', '2024-05-31 16:05:47'),
(22, 25, 'Rivan Amri,S.Pd', NULL, NULL, 'L', NULL, 'Mlati, Sleman', '2024-05-31 16:06:15', '2024-05-31 16:06:15'),
(23, 26, 'Agustina Suhartini', NULL, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 16:06:40', '2024-05-31 16:06:40'),
(24, 27, 'Anindita Lusiani, S. Pd', NULL, NULL, 'P', NULL, 'Mlati, Sleman', '2024-05-31 16:07:00', '2024-05-31 16:07:00'),
(25, 28, 'Basuki, S.Pd.K', NULL, NULL, 'L', NULL, 'Mlati, Sleman', '2024-05-31 16:07:28', '2024-05-31 16:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tapel_id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `tingkat` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `tapel_id`, `guru_id`, `tingkat`, `name`, `created_at`, `updated_at`) VALUES
(1, 2, 8, 8, 'VIII A', '2023-08-10 03:16:58', '2024-05-31 16:08:00'),
(2, 2, 2, 8, 'VIII B', '2024-05-31 16:08:20', '2024-05-31 16:08:20'),
(3, 2, 11, 8, 'VIII C', '2024-05-31 16:08:39', '2024-05-31 16:08:39'),
(4, 2, 12, 8, 'VIII D', '2024-05-31 16:08:57', '2024-05-31 16:08:57'),
(5, 2, 5, 8, 'VIII E', '2024-05-31 16:09:19', '2024-05-31 16:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `mapels`
--

CREATE TABLE `mapels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `singkatan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapels`
--

INSERT INTO `mapels` (`id`, `name`, `singkatan`, `created_at`, `updated_at`) VALUES
(1, 'Bahasa Inggris', 'B. Ing', '2024-05-31 16:09:36', '2024-05-31 16:09:36'),
(2, 'Bahasa Indonesia', 'B. Indo', '2024-05-31 16:09:53', '2024-05-31 16:09:53'),
(3, 'Bahasa Jawa', 'B. Jawa', '2024-05-31 16:10:06', '2024-05-31 16:10:06'),
(4, 'Ilmu Pengetahuan Alam', 'IPA', '2024-05-31 16:10:19', '2024-05-31 16:10:19'),
(5, 'Ilmu Pengetahuan Sosial', 'IPS', '2024-05-31 16:10:32', '2024-05-31 16:10:32'),
(6, 'Pendidikan Agama Islam', 'PA Islam', '2024-05-31 16:10:46', '2024-05-31 16:10:46'),
(7, 'Pendidikan Agama Kristen', 'PA Kristen', '2024-05-31 16:11:00', '2024-05-31 16:11:00'),
(8, 'Pendidikan Agama Katolik', 'PA Katolik', '2024-05-31 16:11:17', '2024-05-31 16:11:17'),
(9, 'Pendidikan Agama Hindu', 'PA Hindu', '2024-05-31 16:11:31', '2024-05-31 16:11:31'),
(10, 'Pendidikan Kewarganegaraan', 'PKn', '2024-05-31 16:11:48', '2024-05-31 16:11:48'),
(11, 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'PJOK', '2024-05-31 16:12:02', '2024-05-31 16:12:02'),
(12, 'Matematika', 'MTK', '2024-05-31 16:12:26', '2024-05-31 16:12:26'),
(13, 'Teknologi Informasi dan Komunikasi', 'TIK', '2024-05-31 16:12:38', '2024-05-31 16:12:38'),
(14, 'Seni Budaya', 'SenBud', '2024-05-31 16:12:56', '2024-05-31 16:12:56');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_28_112929_create_tapels_table', 1),
(6, '2023_06_28_112930_create_admins_table', 1),
(7, '2023_06_28_112950_create_gurus_table', 1),
(8, '2023_06_28_122839_create_kelas_table', 1),
(9, '2023_06_28_132719_create_siswas_table', 1),
(10, '2023_06_28_132902_create_sekolahs_table', 1),
(11, '2023_06_28_133004_create_mapels_table', 1),
(12, '2023_06_28_133027_create_pembelajarans_table', 1),
(13, '2023_06_28_133055_create_pertemuans_table', 1),
(14, '2023_06_28_133116_create_absens_table', 1),
(15, '2023_07_08_142057_create_notifikasis_table', 1),
(16, '2024_05_31_215442_create_siswas_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasis`
--

CREATE TABLE `notifikasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengirim_id` bigint(20) UNSIGNED NOT NULL,
  `penerima_id` bigint(20) UNSIGNED DEFAULT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `kategori` enum('Informasi','Peringatan') NOT NULL,
  `dibaca` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelajarans`
--

CREATE TABLE `pembelajarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pertemuans`
--

CREATE TABLE `pertemuans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `pertemuan_ke` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `dari_pukul` time NOT NULL,
  `sampai_pukul` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sekolahs`
--

CREATE TABLE `sekolahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `npsn` bigint(20) DEFAULT NULL,
  `nss` bigint(20) DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `kodepos` bigint(20) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `kepsek` varchar(255) NOT NULL,
  `nipkepsek` varchar(255) NOT NULL,
  `logo` text DEFAULT 'logo.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sekolahs`
--

INSERT INTO `sekolahs` (`id`, `name`, `npsn`, `nss`, `telepon`, `email`, `alamat`, `kodepos`, `website`, `kepsek`, `nipkepsek`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'SMPN 2 MLATI', 20401079, NULL, '081234567899', 'smpn2mlati@gmail.com', 'Mranggen Tegal', 55284, 'smpn2mlati.sch.id', 'Isnan Abadi,S.Pd.,M.Pd', '19680430 198901 1 001', 'logo1717170227g7n9saAFZN.png', '2023-08-10 03:16:58', '2024-05-31 15:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nipd` varchar(255) DEFAULT NULL,
  `jk` enum('L','P') NOT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `user_id`, `kelas_id`, `name`, `nipd`, `jk`, `telepon`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'ADIRAY DWI KUNCORO', '5949', 'L', NULL, 'Karanganyar', '2024-05-31 15:35:26', '2024-05-31 16:14:58'),
(2, 29, 3, 'ADNAN WILIANTO SAPUTRO', '6016', 'L', NULL, 'Jombor Lor', '2024-06-01 01:27:24', '2024-06-01 02:49:54'),
(3, 30, 1, 'ALMIRA AZNII AZIZAH', '5951', 'P', NULL, 'Jl banteng Utama 9', '2024-06-01 01:28:21', '2024-06-01 01:28:21'),
(4, 31, 1, 'ALTAIR MAHYA PUTRI HAKIM', '5952', 'P', NULL, 'Perum. Sendangadi Permai B 1', '2024-06-01 01:29:18', '2024-06-01 01:29:18'),
(5, 32, 3, 'ADIL KURNIAWAN', '6015', 'L', NULL, 'Ngaglik', '2024-06-01 01:30:04', '2024-06-01 02:49:12'),
(6, 33, 2, 'AIRA FARADILA RAMADHANI', '5983', 'P', NULL, 'Karangjati', '2024-06-01 01:30:47', '2024-06-01 02:44:15'),
(7, 34, 2, 'ALIF NUR ISYA\'I', '5984', 'L', NULL, 'JL. MAGELANG KM 6', '2024-06-01 01:31:37', '2024-06-01 02:44:59'),
(8, 35, 2, 'ALIF RAIHAN TAUFIQURROHMAN', '5985', 'L', NULL, 'JONGKE', '2024-06-01 01:32:12', '2024-06-01 02:45:41'),
(9, 36, 2, 'ALIFIA QUEENSA AZ-ZAHRA', '5986', 'P', NULL, 'JL. MAGELANG KM 6', '2024-06-01 01:32:56', '2024-06-01 02:46:19'),
(10, 37, 3, 'ABRORA HASNA TALITHA', '6014', 'P', NULL, 'Mayangan', '2024-06-01 01:33:39', '2024-06-01 02:48:21'),
(11, 38, 1, 'IBRAHIM ACHMAD NURYANTO', '5959', 'L', NULL, 'SANGGRAHAN VIII RT.01/16', '2024-06-01 01:40:44', '2024-06-01 01:40:44'),
(12, 39, 1, 'Jesica Thazar Win Zaz', '5960', 'P', NULL, 'Kragilan', '2024-06-01 01:41:26', '2024-06-01 01:41:26'),
(13, 40, 1, 'JESSYCA EKA SURYA PUTRI', '5961', 'P', NULL, 'Mranggen Kidul', '2024-06-01 01:44:42', '2024-06-01 01:44:42'),
(14, 41, 1, 'JOVITA ELYSIA PUTRI', '5962', 'P', NULL, 'SANGGRAHAN', '2024-06-01 01:46:09', '2024-06-01 01:46:09'),
(15, 42, 1, 'JULIUS TORAMARIO SUSANTO', '5963', 'L', NULL, 'DUWET', '2024-06-01 01:46:54', '2024-06-01 01:46:54'),
(16, 43, 1, 'LOUISA ALTA EDYA DELVI', '5964', 'P', NULL, 'KRONGGAHAN II', '2024-06-01 01:47:43', '2024-06-01 01:47:43'),
(17, 44, 1, 'MAGHFIRA RAUDYATUZZAHRA RAHMADANY', '5965', 'P', NULL, 'Karanglo', '2024-06-01 01:48:30', '2024-06-01 01:48:30'),
(18, 45, 1, 'Marcha Aulia Khoirunisa', '5966', 'P', NULL, 'Denggung Tridadi Sleman', '2024-06-01 01:49:28', '2024-06-01 01:49:28'),
(34, 61, 2, 'AIRA ARSY FADHILLA', '5982', 'P', NULL, 'Pojok', '2024-06-01 02:37:57', '2024-06-01 02:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `tapels`
--

CREATE TABLE `tapels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_pelajaran` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tapels`
--

INSERT INTO `tapels` (`id`, `tahun_pelajaran`, `semester`, `created_at`, `updated_at`) VALUES
(1, '2023/2024', '1', '2023-08-10 03:16:58', '2023-08-10 03:16:58'),
(2, '2023/2024', '2', '2024-05-31 15:45:13', '2024-05-31 15:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','guru','siswa') NOT NULL,
  `password` text NOT NULL,
  `foto` text DEFAULT 'profile.jpg',
  `is_aktif` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `role`, `password`, `foto`, `is_aktif`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, 'admin', '$2y$10$xqQZUKn.r2tc23Z.DTMSL.nqKUTVvzEF86sNM/lb9zejT.NI5g4tu', 'profile.jpg', 1, NULL, '2023-08-10 03:16:58', '2024-05-31 15:39:02'),
(2, 'isnankepsek', 'budiguru@gmail.com', NULL, 'guru', '$2y$10$0N.t4/OMyxHIoGqK3WZNHOhFjoVDyAo4vOma1zJXk/wNDt.2cn4J.', 'profile.jpg', 1, NULL, '2023-08-10 03:16:58', '2024-05-31 15:50:41'),
(3, 'elfansiswa', 'elfansiswa@gmail.com', NULL, 'siswa', '$2y$10$twzC4DSoFHz2krr6OkpVAeeouUyoVoHROjShIizETAgVe3AJJ6Ywy', 'profile.jpg', 1, NULL, '2023-08-10 03:16:58', '2023-08-10 03:16:58'),
(4, 'adiray', NULL, NULL, 'siswa', '$2y$10$gMh18misuDGKW71R2Wj9K.fTFQg5Te8msdEQRg72OxvgsY5SC6Ity', 'profile.jpg', 1, NULL, '2024-05-31 15:35:26', '2024-05-31 16:14:58'),
(5, 'magdalena', NULL, NULL, 'guru', '$2y$10$DGPeZ33073jdehyaC9APC.jXoqJUY3NyKxdCWbJ/Zip.zR/DHHYaS', 'profile.jpg', 1, NULL, '2024-05-31 15:51:37', '2024-05-31 15:51:37'),
(6, 'wahyuni', NULL, NULL, 'guru', '$2y$10$wBH12AB3ov95bL/wi3xhPOhVcJmZwOTQEmZQs/qhcuyOA1uyywNKO', 'profile.jpg', 1, NULL, '2024-05-31 15:52:41', '2024-05-31 15:52:41'),
(7, 'meisetyanta', NULL, NULL, 'guru', '$2y$10$SmXtv7.NUDg8d0Uv3tv.AO126FlrLFhq/kTkE/ZuCCP.Cl6pkYVbq', 'profile.jpg', 1, NULL, '2024-05-31 15:53:48', '2024-05-31 15:53:48'),
(8, 'sriwahyuni', NULL, NULL, 'guru', '$2y$10$PswUF2T1QoEvPJmedUBIaubxlpA1RfIsjr.lmFDEtiO7G3eY3o7GG', 'profile.jpg', 1, NULL, '2024-05-31 15:54:25', '2024-05-31 15:54:25'),
(9, 'ritasupriyatmi', NULL, NULL, 'guru', '$2y$10$p.AtFuDR5NNj1MGFJOYU5OhKxHsOk/83eQL6fwRn.oPl4Zm8A4LhO', 'profile.jpg', 1, NULL, '2024-05-31 15:55:05', '2024-05-31 15:55:05'),
(10, 'wachidyastuti', NULL, NULL, 'guru', '$2y$10$UdlNnOEXFyAY9OORjP2WWO/EsMN6Swk9aM/ksjQGMR1vBwo/lxWyS', 'profile.jpg', 1, NULL, '2024-05-31 15:55:49', '2024-05-31 15:55:49'),
(11, 'endang', NULL, NULL, 'guru', '$2y$10$/Rle1lz.x8sit.44xhzb0O42nx43ZCA1CKW2lfRepoDEpAxJDCuwa', 'profile.jpg', 1, NULL, '2024-05-31 15:56:20', '2024-05-31 15:56:20'),
(12, 'aryyanto', NULL, NULL, 'guru', '$2y$10$2qsftinTs1gsmVoR5qcl6.mhuTmsoaUX3eyna6KaWjKQhHQe1fN1i', 'profile.jpg', 1, NULL, '2024-05-31 15:56:58', '2024-05-31 15:56:58'),
(13, 'herlinda', NULL, NULL, 'guru', '$2y$10$EeeWa8Pr5ii15uWd2IovdetzpJgAsOPhFHyJTpPXMlcsCekI.oW72', 'profile.jpg', 1, NULL, '2024-05-31 15:57:27', '2024-05-31 15:57:27'),
(14, 'ernawati', NULL, NULL, 'guru', '$2y$10$8LsxlLSI2HIo9InQjcZRieYfGyVjyZfUkssKfJ5gnhWL9h82e3ska', 'profile.jpg', 1, NULL, '2024-05-31 15:58:03', '2024-05-31 15:58:03'),
(15, 'kuntari', NULL, NULL, 'guru', '$2y$10$pSiBam3lODuYIdOBFH8jROY8/DZasm6Bd6clyZYQrHqPdn5WK1/Iu', 'profile.jpg', 1, NULL, '2024-05-31 15:58:40', '2024-05-31 15:58:40'),
(16, 'srilestari', NULL, NULL, 'guru', '$2y$10$saFKxdNnAH4lOfnBXQkdtev2Fk79nvkH.0KHv0DrgMRk7/w/nyRCy', 'profile.jpg', 1, NULL, '2024-05-31 15:59:22', '2024-05-31 15:59:22'),
(17, 'siwiswandari', NULL, NULL, 'guru', '$2y$10$VShaokcygUZx01NAbBJE0ehVQlq5goBlSA.JD26RJIMlxlO70uxVq', 'profile.jpg', 1, NULL, '2024-05-31 16:00:05', '2024-05-31 16:00:05'),
(18, 'gunturbayu', NULL, NULL, 'guru', '$2y$10$d0y/UCrVY6QXIsEO472E.ut1hMjlQxDVecQh9JU4s1ZupqfAY.Uma', 'profile.jpg', 1, NULL, '2024-05-31 16:00:52', '2024-05-31 16:00:52'),
(19, 'rizqaputri', NULL, NULL, 'guru', '$2y$10$qSLXXVJI92hG82ltALaFpuFkxWmo6Vdbta5wUWLx.sNTbdPIRT1t2', 'profile.jpg', 1, NULL, '2024-05-31 16:01:31', '2024-05-31 16:01:31'),
(20, 'ristanurul', NULL, NULL, 'guru', '$2y$10$WTCm1naYmxCHpPiujdBbJ.4rhIILixgJK6Leu.18JJF5x4tJcwkJi', 'profile.jpg', 1, NULL, '2024-05-31 16:02:12', '2024-05-31 16:02:12'),
(21, 'ilhamnur', NULL, NULL, 'guru', '$2y$10$4yo.ivzWsa6g8anb5JbI1eiEo2..fw1CubAsHD9D7/zzzXJH9PJtO', 'profile.jpg', 1, NULL, '2024-05-31 16:02:45', '2024-05-31 16:02:45'),
(22, 'aryadjodipati', NULL, NULL, 'guru', '$2y$10$K9VuVaI0GAhl97IzZHxMfuUAkLEMMtR.qvEbYp4xrLJrP3PF.o4R.', 'profile.jpg', 1, NULL, '2024-05-31 16:03:30', '2024-05-31 16:03:30'),
(23, 'mufidatu', NULL, NULL, 'guru', '$2y$10$FgekXe2y0HqeXd/NReQLSelRIMevhwrflXXuf49OrjI1KabTawS5i', 'profile.jpg', 1, NULL, '2024-05-31 16:05:10', '2024-05-31 16:05:10'),
(24, 'erwinjoko', NULL, NULL, 'guru', '$2y$10$Z86I5Dmzy4sURpDtQ014xuxkGdrdstFfmZixgK2svPK.13TRJUPY2', 'profile.jpg', 1, NULL, '2024-05-31 16:05:47', '2024-05-31 16:05:47'),
(25, 'rivanamri', NULL, NULL, 'guru', '$2y$10$ZrOge2QzSFSA1Xpm1qpUpO.9d2Vwf2YpCzTlA/8QC6BGkJTQq3Wsq', 'profile.jpg', 1, NULL, '2024-05-31 16:06:15', '2024-05-31 16:06:15'),
(26, 'agustina', NULL, NULL, 'guru', '$2y$10$iVKbapzTIG7JcGvpP2Qoju3sWsN9qOeeDD0n8Z9EOQLTa9CujpLXG', 'profile.jpg', 1, NULL, '2024-05-31 16:06:40', '2024-05-31 16:06:40'),
(27, 'anindita', NULL, NULL, 'guru', '$2y$10$7yks4PZwIdylsa5A6J102ONIDawVuplQA9CM1zOqRzbZIO5CDcDTq', 'profile.jpg', 1, NULL, '2024-05-31 16:07:00', '2024-05-31 16:07:00'),
(28, 'basuki', NULL, NULL, 'guru', '$2y$10$i6C5xPXFh0mra.8y4etk8uh9n1y25B9.MRly5FWuq9IIPvhfNvQea', 'profile.jpg', 1, NULL, '2024-05-31 16:07:28', '2024-05-31 16:07:28'),
(29, 'adnan', NULL, NULL, 'siswa', '$2y$10$hRPDR3kb8czq0ihvbLfqaeb0I4afqBnhrdIwUwoYx9FUXWSNVOpM2', 'profile.jpg', 1, NULL, '2024-06-01 01:27:24', '2024-06-01 02:49:54'),
(30, 'almira', NULL, NULL, 'siswa', '$2y$10$g.UA7xYOwZKEELRFmG/KAu9XNMnoqg2E33.76j8wPpmSo58RBoomq', 'profile.jpg', 1, NULL, '2024-06-01 01:28:21', '2024-06-01 01:28:21'),
(31, 'altair', NULL, NULL, 'siswa', '$2y$10$lqm53v0SAiIJzPWkyBsUzu5mYmDl4GJwlL0fSiZdqtfZeM/.2kQcW', 'profile.jpg', 1, NULL, '2024-06-01 01:29:18', '2024-06-01 01:29:18'),
(32, 'adil', NULL, NULL, 'siswa', '$2y$10$cba5zyC2VW359Ohsq9ShJOZitnpkC8K1hxPjA1wJhj93rOUP9MA2S', 'profile.jpg', 1, NULL, '2024-06-01 01:30:04', '2024-06-01 02:49:12'),
(33, 'airafaradila', NULL, NULL, 'siswa', '$2y$10$OIgtRQg1CWNwaj0jGIcjPOED5PhuALbHZTs84mfecfEgDvchkJLuq', 'profile.jpg', 1, NULL, '2024-06-01 01:30:47', '2024-06-01 02:44:15'),
(34, 'alifnur', NULL, NULL, 'siswa', '$2y$10$RiOYWkh94ZV2wnu2UQu9nu8.vMW2hF0pln.0kmiZgI.Ma1gHQurm6', 'profile.jpg', 1, NULL, '2024-06-01 01:31:37', '2024-06-01 02:44:59'),
(35, 'alifraihan', NULL, NULL, 'siswa', '$2y$10$I/Wy2hvsgXNHkv1AJ4z7E.cxPtYFxHct7xpCuTTOOSIFtKJZ/zDFG', 'profile.jpg', 1, NULL, '2024-06-01 01:32:12', '2024-06-01 02:45:41'),
(36, 'alifia', NULL, NULL, 'siswa', '$2y$10$79cquAsQhQW1ngaiT63/Ou94021vYDhe1VUhGNOVDm6xYY0iNcXlm', 'profile.jpg', 1, NULL, '2024-06-01 01:32:56', '2024-06-01 02:46:19'),
(37, 'abrora', NULL, NULL, 'siswa', '$2y$10$aeqidtbZSfALdGGVZKUlau2VneKqNMvEWIl7G0t0BifBkd3ngVzem', 'profile.jpg', 1, NULL, '2024-06-01 01:33:39', '2024-06-01 02:48:21'),
(38, 'ibrahim', NULL, NULL, 'siswa', '$2y$10$8o/2rX4nX0.Mj1Pq2RvoiOK4iTksyIDLTno5M4zrc9uboIXIZ.TeC', 'profile.jpg', 1, NULL, '2024-06-01 01:40:44', '2024-06-01 01:40:44'),
(39, 'jesica', NULL, NULL, 'siswa', '$2y$10$A.w6oCjqenwRCmOsPSAIduGscoV8FqJ3paSnFXoN4saoMbvhnFFoy', 'profile.jpg', 1, NULL, '2024-06-01 01:41:26', '2024-06-01 01:41:26'),
(40, 'jessyca', NULL, NULL, 'siswa', '$2y$10$LGAZTiDOLQPiH4bkaO/.3.DmOFaR8vWfz0S1CpCemV3sghXSBEq6.', 'profile.jpg', 1, NULL, '2024-06-01 01:44:42', '2024-06-01 01:44:42'),
(41, 'jovita', NULL, NULL, 'siswa', '$2y$10$bUotlthsS9Qrqk11CjIo4u.9eg1CP243RI1oiDCVX6VB0gAYnyYGm', 'profile.jpg', 1, NULL, '2024-06-01 01:46:09', '2024-06-01 01:46:09'),
(42, 'julius', NULL, NULL, 'siswa', '$2y$10$p5OSsu6lyVkhmi0UmesOqOeWW7P40.tc2hofyBMPiPX7TaLMnxiDW', 'profile.jpg', 1, NULL, '2024-06-01 01:46:54', '2024-06-01 01:46:54'),
(43, 'louisa', NULL, NULL, 'siswa', '$2y$10$9mqZLairH2F3OjaJEphc1eE2.TxBOLPSPUa4K8D22DbnYV3jTYdLe', 'profile.jpg', 1, NULL, '2024-06-01 01:47:43', '2024-06-01 01:47:43'),
(44, 'maghfira', NULL, NULL, 'siswa', '$2y$10$2AblXCqY9M8XEGSIT5hruOKNNFHwICLdRKaspAk9lqaVWFYhGbu.m', 'profile.jpg', 1, NULL, '2024-06-01 01:48:30', '2024-06-01 01:48:30'),
(45, 'marcha', NULL, NULL, 'siswa', '$2y$10$7dPvhWIqRTjIzwuegeqJduHiUOOfXPvz3irESJouCRN5k9zlAK0VW', 'profile.jpg', 1, NULL, '2024-06-01 01:49:28', '2024-06-01 01:49:28'),
(61, 'airaarsy', NULL, NULL, 'siswa', '$2y$10$Q0ZdbORd99dRVZuvyxqFPu1bJP9l.WaS2B6dKhNuGkhB/I90UPAcO', 'profile.jpg', 1, NULL, '2024-06-01 02:37:57', '2024-06-01 02:37:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absens`
--
ALTER TABLE `absens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absens_pertemuan_id_foreign` (`pertemuan_id`),
  ADD KEY `absens_siswa_id_foreign` (`siswa_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gurus`
--
ALTER TABLE `gurus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gurus_user_id_foreign` (`user_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_tapel_id_foreign` (`tapel_id`),
  ADD KEY `kelas_guru_id_foreign` (`guru_id`);

--
-- Indexes for table `mapels`
--
ALTER TABLE `mapels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasis`
--
ALTER TABLE `notifikasis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifikasis_pengirim_id_foreign` (`pengirim_id`),
  ADD KEY `notifikasis_penerima_id_foreign` (`penerima_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pembelajarans`
--
ALTER TABLE `pembelajarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembelajarans_kelas_id_foreign` (`kelas_id`),
  ADD KEY `pembelajarans_guru_id_foreign` (`guru_id`),
  ADD KEY `pembelajarans_mapel_id_foreign` (`mapel_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pertemuans`
--
ALTER TABLE `pertemuans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pertemuans_pembelajaran_id_foreign` (`pembelajaran_id`);

--
-- Indexes for table `sekolahs`
--
ALTER TABLE `sekolahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswas_user_id_foreign` (`user_id`),
  ADD KEY `siswas_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `tapels`
--
ALTER TABLE `tapels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absens`
--
ALTER TABLE `absens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gurus`
--
ALTER TABLE `gurus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mapels`
--
ALTER TABLE `mapels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notifikasis`
--
ALTER TABLE `notifikasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelajarans`
--
ALTER TABLE `pembelajarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pertemuans`
--
ALTER TABLE `pertemuans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sekolahs`
--
ALTER TABLE `sekolahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tapels`
--
ALTER TABLE `tapels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absens`
--
ALTER TABLE `absens`
  ADD CONSTRAINT `absens_pertemuan_id_foreign` FOREIGN KEY (`pertemuan_id`) REFERENCES `pertemuans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `absens_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gurus`
--
ALTER TABLE `gurus`
  ADD CONSTRAINT `gurus_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `gurus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kelas_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifikasis`
--
ALTER TABLE `notifikasis`
  ADD CONSTRAINT `notifikasis_penerima_id_foreign` FOREIGN KEY (`penerima_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifikasis_pengirim_id_foreign` FOREIGN KEY (`pengirim_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pembelajarans`
--
ALTER TABLE `pembelajarans`
  ADD CONSTRAINT `pembelajarans_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `gurus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pembelajarans_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pembelajarans_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pertemuans`
--
ALTER TABLE `pertemuans`
  ADD CONSTRAINT `pertemuans_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajarans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `siswas`
--
ALTER TABLE `siswas`
  ADD CONSTRAINT `siswas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `siswas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
