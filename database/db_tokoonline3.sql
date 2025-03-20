-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2025 at 06:58 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokoonline3`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `user_id`, `google_id`, `google_token`, `alamat`, `pos`, `created_at`, `updated_at`) VALUES
(1, 3, '106981826931293618253', 'ya29.a0AXeO80RqqCzp7vegTDoUwexD7_JOT7iYE4NprLRXV29jok094nRXYqVS0pZ9PQJODs0vct9Ve-USyqNc3yVioZPPvMGyyIE5H_SQLyoLMW0hMqVehL8I6-UDM3e5PTWlIvebBvs8MeI-5D02odaTz4FtiwW9lVSfnQ2RP645aCgYKATQSARASFQHGX2Miiv-8f0demO3-DYJP_ytytg0175', 'Jl. Tegal No.3', '12345', '2025-02-23 03:19:20', '2025-02-23 18:54:26'),
(2, 4, '108477367004040862463', 'ya29.a0AXeO80Rz5upg_CwHZJa_CIb8V8UBlcCRI_Y4jdooXSDgJDYQ9VEbtQ2hgO0uN0YiVJ_4cr4xAXH2rq0qiAM0xZboUkjTFRXiuT2CF5dKalTlQrMCYUIJ_2twaFluK1rqZIGb9PvA0qZYEAlXlc4EZOEWY32rp0DWpAF7pn0sqgaCgYKAUoSARMSFQHGX2Mifj6qKlSibO0PP_rDWyWYdg0177', 'Jl. Tegal No.4', '12346', '2025-02-23 03:55:25', '2025-02-23 03:55:25'),
(3, 5, '109679015468373001836', 'ya29.a0AeXRPp7yc4xT1-4-RuHKf7PWxjLz5Zd0RukzORTL6xkrhhRu9X_UO9D1RmnbLS2k-Fu9V6Hqo-SW1p94F_W6iBZWy2k9ixPWMHN6mnXnzaahLwi99dLowFd6p9ndLttIK5bEnw-5mat3pAW8FzCO_nqErJ-RVch-VrB22-BAugaCgYKATkSARASFQHGX2Mik3vhdLvnk6KZLh-qlj9ymQ0177', NULL, NULL, '2025-02-24 23:34:47', '2025-02-24 23:34:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foto_produk`
--

CREATE TABLE `foto_produk` (
  `id` bigint UNSIGNED NOT NULL,
  `produk_id` bigint UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(1, 'Brownies'),
(2, 'Combro'),
(3, 'Dawet'),
(4, 'Mochi'),
(5, 'Wingko');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_user_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_12_19_123428_create_kategori_table', 1),
(6, '2024_12_19_133151_create_customer_table', 1),
(7, '2025_01_09_124225_create_produk_table', 1),
(8, '2025_02_16_071142_create_foto_produk_table', 1),
(9, '2025_02_23_205819_create_foto_order_table', 2),
(10, '2025_02_23_230052_create_order_table', 3),
(11, '2025_02_23_230155_create_order_item_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noresi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kurir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layanan_ongkir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biaya_ongkir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimasi_ongkir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_berat` int DEFAULT NULL,
  `total_harga` double NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `pos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `customer_id`, `user_id`, `status`, `noresi`, `kurir`, `layanan_ongkir`, `biaya_ongkir`, `estimasi_ongkir`, `total_berat`, `total_harga`, `alamat`, `pos`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 228000, NULL, NULL, '2025-02-23 20:01:20', '2025-02-24 13:19:45'),
(2, 3, NULL, 'pending', NULL, 'jne', 'JTR', '40000', '3-4', 6600, 112000, 'Jl. Rambutan No.1, <br>Jakarta Barat, <br>DKI Jakarta', '1234', '2025-02-24 23:37:37', '2025-03-10 18:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `produk_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `harga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `produk_id`, `quantity`, `harga`, `created_at`, `updated_at`) VALUES
(3, 1, 8, 3, 28000, '2025-02-23 22:20:46', '2025-02-24 13:19:45'),
(4, 1, 6, 2, 30000, '2025-02-24 08:29:28', '2025-02-24 12:08:04'),
(6, 2, 8, 2, 28000, '2025-02-24 23:37:37', '2025-02-24 23:55:44'),
(7, 2, 4, 2, 28000, '2025-02-24 23:55:50', '2025-03-10 18:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` double NOT NULL,
  `stok` int NOT NULL,
  `berat` double(8,2) NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `user_id`, `status`, `nama_produk`, `detail`, `harga`, `stok`, `berat`, `foto`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 'Dawet Daun Singkong', '<p>Dawet Daun Singkong Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 8000, 50, 3000.00, '20250221014318_67b7da361ced1.jpeg', '2025-02-19 21:34:18', '2025-02-20 18:43:18'),
(2, 2, 1, 1, 'Comro Frozen isi Oncom + Ikan Cakalang', '<p>Comro Frozen isi Oncom + Ikan Cakalang Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 35000, 50, 580.00, '20250220043619_67b6b1438cb09.jpeg', '2025-02-19 21:36:19', '2025-02-20 00:11:34'),
(3, 5, 1, 1, 'Wingko Singkong Cokelat', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 28000, 50, 660.00, '20250221014253_67b7da1d8a7bd.jpeg', '2025-02-19 21:38:25', '2025-02-20 18:42:53'),
(4, 5, 1, 1, 'Wingko Singkong Keju', '<p>Mochi Singkong Keju Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 28000, 100, 3000.00, '20250221014230_67b7da06d8d30.jpeg', '2025-02-19 23:00:23', '2025-02-22 02:26:07'),
(5, 4, 1, 0, 'Mochi Singkong Kacang', '<p>Mochi Singkong Kacang Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 30000, 50, 300.00, '20250221014217_67b7d9f9b16b7.jpg', '2025-02-20 18:42:17', '2025-02-20 18:46:10'),
(6, 4, 1, 1, 'Mochi Singkong Coklas', '<p>Mochi Singkong Coklat Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 30000, 50, 300.00, '20250221014439_67b7da871e300.jpg', '2025-02-20 18:44:39', '2025-02-20 18:44:48'),
(7, 4, 1, 1, 'Mochi Singkong Keju', '<p>Mochi Singkong Keju Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 30000, 50, 300.00, '20250222092216_67b99748cd96d.jpg', '2025-02-22 02:22:17', '2025-02-22 02:22:59'),
(8, 5, 1, 1, 'Wingko Singkong Keju Cokelat', '<p>Wingko Singkong Keju Cokelat Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 28000, 50, 300.00, '20250222092613_67b9983578a60.jpeg', '2025-02-22 02:26:13', '2025-02-22 02:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `role`, `status`, `password`, `hp`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', '1', 1, '$2y$10$rBDX4NFhullJKaU/7toVWuUtTUVyiXl.aU6M/wxC.EyTw5LF6CpkK', '0812345678901', NULL, '2025-02-23 03:18:30', '2025-02-23 03:18:30'),
(2, 'Aji', 'aji@gmail.com', '0', 0, '$2y$10$VGOcDH04RWaYl80VV9C7N.78scTdXkCM3pWaUsP/QrzrLnlu/fdci', '0812345678902', NULL, '2025-02-23 03:18:30', '2025-02-23 03:18:30'),
(3, 'Sopian Aji', 'sopian4ji@gmail.com', '2', 1, '$2y$10$xZ.Dk6J6KgbGAGhLMnh8gu/2wNC7yYEmjmS6E1Lmel4VydBawBvnu', '081234567801', NULL, '2025-02-23 03:19:20', '2025-02-23 18:54:08'),
(4, 'Sopian Aji', 'sopian.sop@bsi.ac.id', '2', 1, '$2y$10$oCE4lFxM2WAqK7BKUtw79.us2NyfvE14p3Cpb98IZ9jKk.kzHjebm', NULL, NULL, '2025-02-23 03:55:25', '2025-02-23 03:55:25'),
(5, 'Hero Akang', 'heroakang@gmail.com', '2', 1, '$2y$10$3Vg19c9vHLQq/u7GSB7wne6c3C9raxodcjRI2mPFeqAes.fnhP.ES', NULL, NULL, '2025-02-24 23:34:47', '2025-02-24 23:34:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `foto_produk`
--
ALTER TABLE `foto_produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foto_produk_produk_id_foreign` (`produk_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_customer_id_foreign` (`customer_id`),
  ADD KEY `order_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_item_order_id_foreign` (`order_id`),
  ADD KEY `order_item_produk_id_foreign` (`produk_id`);

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
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_kategori_id_foreign` (`kategori_id`),
  ADD KEY `produk_user_id_foreign` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foto_produk`
--
ALTER TABLE `foto_produk`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `foto_produk`
--
ALTER TABLE `foto_produk`
  ADD CONSTRAINT `foto_produk_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_item_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `produk_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
