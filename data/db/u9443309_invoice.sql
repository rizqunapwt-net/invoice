/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.14-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u9443309_invoice
-- ------------------------------------------------------
-- Server version	10.11.14-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `u9443309_invoice`
--


--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jawaban_postes`
--

DROP TABLE IF EXISTS `jawaban_postes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jawaban_postes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seminar_id` int(11) NOT NULL,
  `postes_id` int(11) NOT NULL,
  `pilihanpostes_id` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `unik` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jawaban_postes`
--

LOCK TABLES `jawaban_postes` WRITE;
/*!40000 ALTER TABLE `jawaban_postes` DISABLE KEYS */;
/*!40000 ALTER TABLE `jawaban_postes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jawaban_pretes`
--

DROP TABLE IF EXISTS `jawaban_pretes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jawaban_pretes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seminar_id` int(11) NOT NULL,
  `pretes_id` int(11) NOT NULL,
  `pilihanpretes_id` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `unik` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jawaban_pretes`
--

LOCK TABLES `jawaban_pretes` WRITE;
/*!40000 ALTER TABLE `jawaban_pretes` DISABLE KEYS */;
/*!40000 ALTER TABLE `jawaban_pretes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `katpengeluaran`
--

DROP TABLE IF EXISTS `katpengeluaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `katpengeluaran` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `namakategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `katpengeluaran`
--

LOCK TABLES `katpengeluaran` WRITE;
/*!40000 ALTER TABLE `katpengeluaran` DISABLE KEYS */;
/*!40000 ALTER TABLE `katpengeluaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logcetak`
--

DROP TABLE IF EXISTS `logcetak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `logcetak` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `yangdicetak` varchar(255) NOT NULL,
  `keteraangan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logcetak`
--

LOCK TABLES `logcetak` WRITE;
/*!40000 ALTER TABLE `logcetak` DISABLE KEYS */;
/*!40000 ALTER TABLE `logcetak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materi`
--

DROP TABLE IF EXISTS `materi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `materi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `seminar_id` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materi`
--

LOCK TABLES `materi` WRITE;
/*!40000 ALTER TABLE `materi` DISABLE KEYS */;
/*!40000 ALTER TABLE `materi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2020_06_02_161531_table_seminar',2),
(5,'2020_06_02_164004_update_tanggal_seminar',3),
(6,'2020_06_03_024010_table_peserta',4),
(7,'2020_06_03_031211_tambah_peserta',5),
(8,'2020_06_06_204802_table_materi_seminar',6),
(9,'2020_06_06_212607_tambah_unik_peserta',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paket`
--

DROP TABLE IF EXISTS `paket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `paket` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `namapaket` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `diskon` int(11) NOT NULL DEFAULT 0,
  `status` varchar(10) NOT NULL DEFAULT 'aktif',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `recommended` varchar(10) DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paket`
--

LOCK TABLES `paket` WRITE;
/*!40000 ALTER TABLE `paket` DISABLE KEYS */;
/*!40000 ALTER TABLE `paket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES ('albar.hebat015@gmail.com','$2y$10$DHFp58nrY4IL5O6ShcyfvOZP6SEWtU9Jgy1j0zy78EAMvDAJEzCj2','2020-10-08 13:29:57'),
('suprisdiantoko1@gmail.com','$2y$10$y0X88klv1bKIOuwKqZmJre/Zx4zreWBP6hgTyolt7gdfCDXUUowO6','2020-10-08 14:01:34');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pemesanan`
--

DROP TABLE IF EXISTS `pemesanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pemesanan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `nama_produk` text DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT 'dibuka',
  `satuan` varchar(255) DEFAULT 'no',
  `htm` varchar(255) NOT NULL DEFAULT '0',
  `slug` text DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `diskon` int(11) NOT NULL DEFAULT 0,
  `statusbayar` varchar(10) NOT NULL DEFAULT 'belum',
  `paket_id` int(5) DEFAULT NULL,
  `tanggal` datetime NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kodeinvoice` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1780 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemesanan`
--

LOCK TABLES `pemesanan` WRITE;
/*!40000 ALTER TABLE `pemesanan` DISABLE KEYS */;
INSERT INTO `pemesanan` (`id`, `nama`, `user_id`, `nama_produk`, `jumlah`, `satuan`, `htm`, `slug`, `harga`, `diskon`, `statusbayar`, `paket_id`, `tanggal`, `remember_token`, `created_at`, `updated_at`, `kodeinvoice`) VALUES (2,'TIPD IAIN Purwokerto',NULL,'Cetak buku SPSS','80','eks','0',NULL,12500,0,'lunas',NULL,'2020-08-25 00:00:00',NULL,'2020-09-03 05:52:16','2020-12-31 02:14:30','2-gqq-09-2020'),
(5,'Adi',NULL,'Cetak dan jilid buku','2','eks','0',NULL,120000,0,'lunas',NULL,'2020-09-04 00:00:00',NULL,'2020-09-04 08:57:04','2020-09-04 08:57:12','4-opo-09-2020'),
(6,'RKWK Publisher',NULL,'Cetak Buku Strategi Pembelajaran Bahasa Arab','50','eks','0',NULL,24800,40000,'lunas',NULL,'2020-09-05 00:00:00',NULL,'2020-09-05 15:05:43','2020-09-05 15:16:42','6-ebq-09-2020'),
(7,'IAIN Purwokerto',NULL,'Cetak Renstra Kemenag RI (Full Color)','15','eks','0',NULL,400000,0,'lunas',NULL,'2020-09-07 00:00:00',NULL,'2020-09-07 06:29:23','2020-10-15 08:29:24','7-waf-09-2020'),
(8,'Madin Nurul Qur\'an Salebu',NULL,'Stopmap Full color Ivory laminasi Glossy','50','eks','0',NULL,6000,0,'lunas',NULL,'2020-09-07 00:00:00',NULL,'2020-09-07 07:03:09','2020-09-07 11:07:06','8-ymi-09-2020'),
(9,'Madin Nurul Qur\'an Salebu',NULL,'Ongkos Kirim','1','eks','0',NULL,23000,0,'lunas',NULL,'2020-09-07 00:00:00',NULL,'2020-09-07 09:47:40','2020-09-07 11:07:06','8-ymi-09-2020'),
(10,'TIPD IAIN Purwokerto',NULL,'Cetak Buku Panduan Ms Word','80','eks','0',NULL,17500,0,'lunas',NULL,'2020-09-07 00:00:00',NULL,'2020-09-07 11:51:02','2020-12-31 02:14:37','10-qni-09-2020'),
(11,'Sirbini',NULL,'Kaos LPanjang + bendera','17','Buah','0',NULL,77000,0,'lunas',NULL,'2020-09-07 00:00:00',NULL,'2020-09-07 12:28:31','2020-09-09 11:41:18','11-psf-09-2020'),
(12,'Sirbini',NULL,'Kaos LPendek + bendera','13','eks','0',NULL,72000,0,'lunas',NULL,'2020-09-07 00:00:00',NULL,'2020-09-07 12:29:26','2020-09-09 11:41:18','11-psf-09-2020'),
(13,'RKWK Publisher',NULL,'Cetak Buku Sosiologi Pendidikan','13','eks','0',NULL,36000,0,'lunas',NULL,'2020-09-08 00:00:00',NULL,'2020-09-08 04:13:26','2020-10-15 08:28:55','13-kai-09-2020'),
(14,'RKWK Publisher',NULL,'Cetak Buku Strategi  Pembelajaran Bahasa Arab','3','eks','0',NULL,24800,0,'lunas',NULL,'2020-09-08 00:00:00',NULL,'2020-09-08 04:14:22','2020-10-15 08:28:55','13-kai-09-2020'),
(15,'Ustadz Masdar',NULL,'Cetak KItab Safinah','70','eks','0',NULL,20600,600,'belum',NULL,'2020-09-09 00:00:00',NULL,'2020-09-09 01:04:51','2020-09-09 01:06:38','15-who-09-2020'),
(16,'Ustadz Masdar',NULL,'Cetak KItab Nashaihul \"ibad','49','eks','0',NULL,23600,600,'belum',NULL,'2020-09-09 00:00:00',NULL,'2020-09-09 01:06:11','2020-09-09 01:06:11','15-who-09-2020'),
(17,'Redaktur Dwija Inspira',NULL,'Layout dan cetak Jurnal Dwija Inspira','16','eks','0',NULL,60000,0,'lunas',NULL,'2020-09-10 00:00:00',NULL,'2020-09-10 03:43:53','2020-10-15 08:29:11','17-uya-09-2020'),
(18,'PP DARUSSALAM DUKUHWALUH',NULL,'Cetak Kitab Al Wajiz','7','eks','0',NULL,52000,0,'lunas',NULL,'2020-09-11 00:00:00',NULL,'2020-09-11 13:23:47','2020-12-31 02:14:48','18-aiw-09-2020'),
(19,'Ahmad Muttaqin',NULL,'Sertifikat 2 muka','47','eks','0',NULL,5000,0,'lunas',NULL,'2020-09-14 00:00:00',NULL,'2020-09-14 07:56:21','2020-10-15 08:29:03','19-lnu-09-2020'),
(20,'RKWK Publisher',NULL,'Cetak Buku Pengajaran Menulis Puisi','63','eks','0',NULL,37400,25000,'lunas',NULL,'2020-09-15 00:00:00',NULL,'2020-09-15 07:20:57','2020-10-15 08:28:55','13-kai-09-2020'),
(21,'RKWK Publisher',NULL,'Cetak Buku Secercah Harapan','28','eks','0',NULL,15000,0,'lunas',NULL,'2020-09-15 00:00:00',NULL,'2020-09-15 07:22:21','2020-10-15 08:28:55','13-kai-09-2020'),
(22,'RKWK Publisher',NULL,'Cetak Buku Pengajaran Menulis Puisi','5','eksemplar','0',NULL,37400,7000,'lunas',NULL,'2020-09-19 00:00:00',NULL,'2020-09-19 08:14:09','2020-09-19 13:40:23','22-mnf-09-2020'),
(23,'RKWK Publisher',NULL,'Cetak Buku Sosiologi Pendidikan A5','200','eks','0',NULL,23500,280000,'lunas',NULL,'2020-09-19 00:00:00',NULL,'2020-09-19 08:14:57','2020-09-19 13:40:23','22-mnf-09-2020'),
(24,'PP. Atthohiriyah',NULL,'Cetak Kitab','300','eks','0',NULL,5500,50000,'lunas',NULL,'2020-09-25 00:00:00',NULL,'2020-09-25 06:44:53','2020-09-25 06:44:57','24-rzy-09-2020'),
(25,'MI Muhammadiyah Beji',NULL,'FC SOAL','1856','lembar','0',NULL,150,0,'lunas',NULL,'2020-09-26 00:00:00',NULL,'2020-09-26 05:32:29','2021-05-01 16:42:27','25-mon-09-2020'),
(26,'MI Muhammadiyah Beji',NULL,'FC lembar jawab','1152','lembar','0',NULL,100,0,'lunas',NULL,'2020-09-26 00:00:00',NULL,'2020-09-26 05:32:57','2021-05-01 16:42:27','25-mon-09-2020'),
(28,'RKWK Publisher',NULL,'Cetak Proposal','8','eks','0',NULL,25000,0,'lunas',NULL,'2020-10-08 00:00:00',NULL,'2020-10-08 14:06:47','2020-10-08 14:07:40','28-aqg-10-2020'),
(29,'RKWK Publisher',NULL,'Cetak Hujan dan Rindu','5','eks','0',NULL,14500,0,'lunas',NULL,'2020-10-09 00:00:00',NULL,'2020-10-09 08:10:04','2020-10-15 08:28:40','29-rhb-10-2020'),
(30,'RKWK Publisher',NULL,'Cetak Buku Pendidikan Era Revolusi + 2 eks','12','eks','0',NULL,12700,0,'lunas',NULL,'2020-10-09 00:00:00',NULL,'2020-10-09 08:11:55','2020-10-15 08:28:40','29-rhb-10-2020'),
(31,'RKWK Publisher',NULL,'Cetak Buku Pembelajaran Bercerita + 2','12','eks','0',NULL,17000,0,'lunas',NULL,'2020-10-09 00:00:00',NULL,'2020-10-09 08:13:54','2020-10-15 08:28:40','29-rhb-10-2020'),
(32,'RKWK Publisher',NULL,'Cetak Buku Unlimited Teacher + 2','12','eks','0',NULL,16300,0,'lunas',NULL,'2020-10-09 00:00:00',NULL,'2020-10-09 08:15:22','2020-10-15 08:28:40','29-rhb-10-2020'),
(33,'RKWK Publisher',NULL,'Cetak Buku Lamhatun Nuriyah A5','1','eks','0',NULL,24700,0,'lunas',NULL,'2020-10-09 00:00:00',NULL,'2020-10-09 08:17:15','2020-10-15 08:28:40','29-rhb-10-2020'),
(34,'RKWK Publisher',NULL,'Cetak Buku Lamhatun Nuriyah Saku','1','eks','0',NULL,12500,0,'lunas',NULL,'2020-10-09 00:00:00',NULL,'2020-10-09 08:17:36','2020-10-15 08:28:40','29-rhb-10-2020'),
(35,'RKWK Publisher',NULL,'Cetak Buku Perjalananku dan Dia','23','eks','0',NULL,17000,0,'lunas',NULL,'2020-10-15 00:00:00',NULL,'2020-10-15 08:27:43','2020-10-30 14:46:14','35-pdo-10-2020'),
(36,'PC GP ANSOR BANYUMAS',NULL,'Sertifikat','500','eks','0',NULL,3000,0,'lunas',NULL,'2020-10-17 00:00:00',NULL,'2020-10-17 06:18:03','2020-12-05 01:53:17','36-nes-10-2020'),
(37,'Panitia Mosba PPM Elfira',NULL,'Sertifikat','458','Lembar','0',NULL,2500,0,'lunas',NULL,'2020-10-24 00:00:00',NULL,'2020-10-24 07:39:14','2020-10-30 14:46:05','37-bwy-10-2020'),
(38,'RKWK Publisher',NULL,'Cetak Buku Pengajaran Puisi','12','eks','0',NULL,37400,0,'lunas',NULL,'2020-10-27 00:00:00',NULL,'2020-10-27 04:54:04','2020-10-30 14:45:57','38-bfo-10-2020'),
(39,'RKWK Publisher',NULL,'Ceta Buku Ela Langkah Nabastala','25','eks','0',NULL,17000,0,'lunas',NULL,'2020-10-27 00:00:00',NULL,'2020-10-27 04:54:38','2020-10-30 14:45:57','38-bfo-10-2020'),
(40,'RKWK Publisher',NULL,'Cetak Buku Analisis Swot','15','eks','0',NULL,28560,0,'lunas',NULL,'2020-10-27 00:00:00',NULL,'2020-10-27 04:55:24','2020-10-30 14:45:57','38-bfo-10-2020'),
(41,'KBIH NU AROFAT BANYUMAS',NULL,'cetak dan jilid laporan KBIH NU','8','eks','0',NULL,48000,0,'lunas',NULL,'2020-10-30 00:00:00',NULL,'2020-10-30 14:45:49','2020-11-04 07:25:07','41-svh-10-2020'),
(42,'RKWK Publisher',NULL,'Cetak Buku Tarekat','28','eks','0',NULL,15000,0,'lunas',NULL,'2020-11-04 00:00:00',NULL,'2020-11-04 07:26:37','2020-11-09 01:59:35','42-gbh-11-2020'),
(43,'WKP Publisher',NULL,'Ceta Buku Ela Langkah Nabastala','5','eks','0',NULL,15000,0,'lunas',NULL,'2020-11-09 00:00:00',NULL,'2020-11-09 01:59:15','2020-11-12 07:39:15','43-fxd-11-2020'),
(44,'WKP Publisher',NULL,'Tarekat','25','eks','0',NULL,15000,0,'lunas',NULL,'2020-11-09 00:00:00',NULL,'2020-11-09 02:00:05','2020-11-12 07:39:15','43-fxd-11-2020'),
(45,'WKP Publisher',NULL,'Martabak Coklat','10','eks','0',NULL,21000,0,'lunas',NULL,'2020-11-09 00:00:00',NULL,'2020-11-09 02:00:49','2020-11-12 07:39:15','43-fxd-11-2020'),
(46,'WKP Publisher',NULL,'Pengembangan Bahasa','25','eks','0',NULL,19650,0,'lunas',NULL,'2020-11-09 00:00:00',NULL,'2020-11-09 02:01:26','2020-11-12 07:39:15','43-fxd-11-2020'),
(47,'Koperasi Amanah',NULL,'Cetak Banner dan desain flyer','1','eks','0',NULL,250000,0,'lunas',NULL,'2020-11-12 00:00:00',NULL,'2020-11-12 07:40:16','2020-11-18 04:36:14','47-mgs-11-2020'),
(48,'Bapak Zaenal Abidin',NULL,'Penerbitan dan Percetakan Buku','50','eks','0',NULL,58000,0,'lunas',NULL,'2020-11-12 00:00:00',NULL,'2020-11-12 08:43:53','2020-11-18 04:35:58','48-zyg-11-2020'),
(49,'STAIS MAJENANG',NULL,'Cetak BORANG IIIA Hard Cover','2','eks','0',NULL,71250,0,'lunas',NULL,'2020-11-18 00:00:00',NULL,'2020-11-18 04:35:52','2020-11-18 08:25:26','49-npp-11-2020'),
(50,'STAIS MAJENANG',NULL,'Cetak Borang IIIB Hard Cover','2','eks','0',NULL,39250,0,'lunas',NULL,'2020-11-18 00:00:00',NULL,'2020-11-18 04:37:19','2020-11-18 08:25:26','49-npp-11-2020'),
(51,'STAIS MAJENANG',NULL,'Cetak Evaluasi Diri Hard Cover','2','eks','0',NULL,45500,0,'lunas',NULL,'2020-11-18 00:00:00',NULL,'2020-11-18 04:38:10','2020-11-18 08:25:26','49-npp-11-2020'),
(52,'STAIS MAJENANG',NULL,'Cetak Jurnal','12','eks','0',NULL,40000,0,'lunas',NULL,'2020-11-18 00:00:00',NULL,'2020-11-18 04:39:17','2020-11-18 08:25:26','49-npp-11-2020'),
(53,'Firdaus',NULL,'Jilid Skripsi','17','eks','0',NULL,25000,0,'lunas',NULL,'2020-11-18 00:00:00',NULL,'2020-11-18 07:33:26','2020-12-31 02:14:14','53-iak-11-2020'),
(54,'RKWK Publisher',NULL,'Cetak Buku Lamhatun Nuriyah saku','444','eks','0',NULL,12000,0,'lunas',NULL,'2020-11-26 00:00:00',NULL,'2020-11-26 10:48:24','2020-12-01 12:51:40','54-urm-11-2020'),
(56,'RKWK Publisher',NULL,'Cetak Buku Lamhatun Nuriyah A5','5','eks','0',NULL,24700,0,'lunas',NULL,'2020-11-26 00:00:00',NULL,'2020-11-26 10:50:12','2020-12-01 12:51:40','54-urm-11-2020'),
(57,'MI Muhammadiyah Beji',NULL,'Foto Copy Soal Bolak Balik','4730','lembar','0',NULL,150,0,'lunas',NULL,'2020-11-29 00:00:00',NULL,'2020-11-29 06:32:33','2020-11-29 06:33:42','57-syi-11-2020'),
(58,'MI Muhammadiyah Beji',NULL,'Cetak Lembar Jawab 1 muka','2060','eks','0',NULL,100,0,'lunas',NULL,'2020-11-29 00:00:00',NULL,'2020-11-29 06:33:00','2020-11-29 06:33:42','57-syi-11-2020'),
(59,'Sirbini',NULL,'Kaos lengan panjang+bendera','8','eks','0',NULL,77000,0,'lunas',NULL,'2020-11-30 00:00:00',NULL,'2020-11-30 02:03:18','2020-12-05 01:53:36','59-iye-11-2020'),
(60,'Sirbini',NULL,'Kaos lengan pendek+bendera','7','eks','0',NULL,72000,0,'lunas',NULL,'2020-11-30 00:00:00',NULL,'2020-11-30 02:03:40','2020-12-05 01:53:36','59-iye-11-2020'),
(61,'RKWK Publisher',NULL,'Memang Mengapa?','13','eks','0',NULL,11000,0,'lunas',NULL,'2020-12-01 00:00:00',NULL,'2020-12-01 12:51:32','2020-12-05 01:53:07','61-kzi-12-2020'),
(62,'RKWK Publisher',NULL,'Lamhatun Saku','6','eks','0',NULL,12000,0,'lunas',NULL,'2020-12-01 00:00:00',NULL,'2020-12-01 12:52:31','2020-12-05 01:53:07','61-kzi-12-2020'),
(63,'RKWK Publisher',NULL,'Cetak buku Tuhan Aku Tersesat','30','eks','0',NULL,18700,0,'lunas',NULL,'2020-12-05 00:00:00',NULL,'2020-12-05 01:55:07','2020-12-08 03:15:41','63-dfr-12-2020'),
(64,'SMP DIPONEGORO CIMANGGU',NULL,'Cetak BLANGKO RAPORT','1','Rim','0',NULL,150000,0,'lunas',NULL,'2020-12-08 00:00:00',NULL,'2020-12-08 03:16:32','2020-12-08 03:16:36','64-bpm-12-2020'),
(65,'RKWK Publisher',NULL,'Buku Kelas 1','18','eks','0',NULL,14200,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 01:59:16','2020-12-23 06:40:02','65-kfw-12-2020'),
(66,'RKWK Publisher',NULL,'Buku Kelas 2','18','eks','0',NULL,13800,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 01:59:44','2020-12-23 06:40:02','65-kfw-12-2020'),
(67,'RKWK Publisher',NULL,'Buku Kelas 3','20','eks','0',NULL,13000,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 02:00:13','2020-12-23 06:40:02','65-kfw-12-2020'),
(68,'RKWK Publisher',NULL,'Buku Kelas 4','19','eks','0',NULL,15000,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 02:00:47','2020-12-23 06:40:02','65-kfw-12-2020'),
(69,'RKWK Publisher',NULL,'Buku Kelas 5','21','eks','0',NULL,15200,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 02:01:10','2020-12-23 06:40:02','65-kfw-12-2020'),
(70,'RKWK Publisher',NULL,'Buku Kelas 6','19','eks','0',NULL,15400,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 02:02:03','2020-12-23 06:40:02','65-kfw-12-2020'),
(71,'RKWK Publisher',NULL,'BUku PJOK','18','eks','0',NULL,13400,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 02:05:03','2020-12-23 06:40:02','65-kfw-12-2020'),
(72,'RKWK Publisher',NULL,'BUku PAI','18','eks','0',NULL,14800,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 02:05:22','2020-12-23 06:40:02','65-kfw-12-2020'),
(73,'RKWK Publisher',NULL,'Belajar dari Menggaleh','5','eks','0',NULL,16600,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 02:07:15','2020-12-23 06:40:02','65-kfw-12-2020'),
(74,'RKWK Publisher',NULL,'Martabak Coklat','4','eks','0',NULL,21000,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 02:08:20','2020-12-23 06:40:02','65-kfw-12-2020'),
(75,'RKWK Publisher',NULL,'Unlimted teacher','2','eks','0',NULL,16300,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 02:09:07','2020-12-23 06:40:02','65-kfw-12-2020'),
(76,'RKWK Publisher',NULL,'TUhan Aku Tersesat','5','eks','0',NULL,18700,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 02:09:40','2020-12-23 06:40:02','65-kfw-12-2020'),
(78,'RKWK Publisher',NULL,'Salam Kepada Sisyphus','5','eks','0',NULL,15500,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 02:10:28','2020-12-23 06:40:02','65-kfw-12-2020'),
(79,'RKWK Publisher',NULL,'24 jam Yang Putih','5','eks','0',NULL,15400,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 02:10:50','2020-12-23 06:40:02','65-kfw-12-2020'),
(80,'RKWK Publisher',NULL,'Ketika Kesepian Pecah','5','eks','0',NULL,16550,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 02:11:17','2020-12-23 06:40:02','65-kfw-12-2020'),
(81,'RKWK Publisher',NULL,'Panduan Kompre FEBI','5','eks','0',NULL,14600,0,'lunas',NULL,'2020-12-19 00:00:00',NULL,'2020-12-19 02:11:39','2020-12-23 06:40:02','65-kfw-12-2020'),
(82,'Dr. Hj. Naqiyah, M.Ag.',NULL,'Al isyarat 1','1','eks','0',NULL,63000,0,'lunas',NULL,'2020-12-23 00:00:00',NULL,'2020-12-23 06:41:57','2020-12-29 05:50:14','82-vjc-12-2020'),
(83,'Dr. Hj. Naqiyah, M.Ag.',NULL,'Al-isyarat 2','1','eks','0',NULL,75000,0,'lunas',NULL,'2020-12-23 00:00:00',NULL,'2020-12-23 06:42:15','2020-12-29 05:50:14','82-vjc-12-2020'),
(84,'Dr. Hj. Naqiyah, M.Ag.',NULL,'Tafsir Ibnu Arabiy 1','1','eks','0',NULL,145000,0,'lunas',NULL,'2020-12-23 00:00:00',NULL,'2020-12-23 06:43:41','2020-12-29 05:50:14','82-vjc-12-2020'),
(85,'Dr. Hj. Naqiyah, M.Ag.',NULL,'2 Tafsir Ibnu Arabiy 2','1','eks','0',NULL,135000,0,'lunas',NULL,'2020-12-23 00:00:00',NULL,'2020-12-23 06:44:02','2020-12-29 05:50:14','82-vjc-12-2020'),
(86,'Mbak Fatma',NULL,'Buku Kumpulan Doa-doa','120','eks','0',NULL,10000,200000,'lunas',NULL,'2020-12-26 00:00:00',NULL,'2020-12-26 03:12:08','2020-12-29 05:50:09','86-nfe-12-2020'),
(87,'RKWK Publisher',NULL,'Cetak Buku Masa Depan Koin','60','eks','0',NULL,30800,0,'lunas',NULL,'2020-12-29 00:00:00',NULL,'2020-12-29 05:50:02','2020-12-31 02:13:55','87-thk-12-2020'),
(88,'Polresta Banyumas',NULL,'Undangan Kulo Nuwun','200','eks','0',NULL,8500,0,'lunas',NULL,'2021-01-05 00:00:00',NULL,'2021-01-05 06:39:58','2021-01-05 06:40:05','88-tap-01-2021'),
(89,'RKWK Publisher',NULL,'Than Aku Tersesat','5','eks','0',NULL,18700,0,'lunas',NULL,'2021-01-06 00:00:00',NULL,'2021-01-06 04:27:56','2021-01-12 01:00:41','89-pxw-01-2021'),
(90,'RKWK Publisher',NULL,'Mass Depan Koin','5','eks','0',NULL,30800,0,'lunas',NULL,'2021-01-06 00:00:00',NULL,'2021-01-06 04:28:47','2021-01-12 01:00:41','89-pxw-01-2021'),
(91,'MI Muhammadiyah Beji',NULL,'Print RPS','650','lembar','0',NULL,300,0,'lunas',NULL,'2021-01-11 00:00:00',NULL,'2021-01-12 01:00:33','2021-01-12 01:00:45','91-lbz-01-2021'),
(92,'PAC GP ANSOR KARANG JATI',NULL,'Cetak Buku PO PDPRT','10','eks','0',NULL,46500,0,'lunas',NULL,'2021-01-15 00:00:00',NULL,'2021-01-15 10:50:58','2021-01-26 00:48:47','92-yms-01-2021'),
(93,'Yayasan Al Ikhwan Cimanggu',NULL,'Banner ukuran 100 x 60','3','buah','0',NULL,48000,0,'lunas',NULL,'2021-01-26 00:00:00',NULL,'2021-01-26 00:48:43','2021-02-05 04:50:49','93-cse-01-2021'),
(94,'Yayasan Al Ikhwan Cimanggu',NULL,'Banner 300x150','1','buah','0',NULL,135000,0,'lunas',NULL,'2021-01-26 00:00:00',NULL,'2021-01-26 00:50:41','2021-02-05 04:50:49','93-cse-01-2021'),
(95,'Yayasan Al Ikhwan Cimanggu',NULL,'Benner 400x150','1','buah','0',NULL,180000,0,'lunas',NULL,'2021-01-26 00:00:00',NULL,'2021-01-26 00:51:34','2021-02-05 04:50:49','93-cse-01-2021'),
(96,'Yayasan Al Ikhwan Cimanggu',NULL,'Banner 300x150','1','eks','0',NULL,135000,0,'lunas',NULL,'2021-01-26 00:00:00',NULL,'2021-01-26 04:53:20','2021-02-05 04:50:49','93-cse-01-2021'),
(97,'Madin Al Mubaroq',NULL,'Cetak Buku Raport','100','eks','0',NULL,6500,0,'lunas',NULL,'2021-02-03 00:00:00',NULL,'2021-02-03 06:18:27','2021-02-03 06:18:32','97-oep-02-2021'),
(98,'Yayasan Al Ichwan',NULL,'Banner 300 x 150','1','lembar','0',NULL,135000,0,'lunas',NULL,'2021-02-03 00:00:00',NULL,'2021-02-03 06:21:31','2021-02-05 04:50:41','98-lbr-02-2021'),
(99,'Toko Berkah',NULL,'Banner 150 x 600','1','lembar','0',NULL,315000,0,'lunas',NULL,'2021-02-03 00:00:00',NULL,'2021-02-03 06:22:52','2021-02-05 04:50:32','99-xke-02-2021'),
(100,'SMP Diponegoro Cimanggu',NULL,'Banner 300 x 150','2','lembar','0',NULL,135000,0,'lunas',NULL,'2021-02-03 00:00:00',NULL,'2021-02-03 06:24:01','2021-03-11 07:21:59','100-aou-02-2021'),
(101,'KSU EL-SEJAHTERA CIPARI',NULL,'Laporan RAT KSU 2020','50','eks','0',NULL,25000,0,'lunas',NULL,'2021-02-05 00:00:00',NULL,'2021-02-05 04:49:56','2021-02-06 08:11:30','101-yxi-02-2021'),
(102,'KSU EL-SEJAHTERA CIPARI',NULL,'Banner 2 x 4 m','1','Buah','0',NULL,240000,0,'lunas',NULL,'2021-02-05 00:00:00',NULL,'2021-02-05 08:51:34','2021-02-06 08:11:30','101-yxi-02-2021'),
(103,'WKRI/FATAYAT NU',NULL,'Cetak dan Terbit Buku Mamake Curhat','100','eks','0',NULL,25000,0,'lunas',NULL,'2021-02-06 00:00:00',NULL,'2021-02-06 08:10:30','2021-02-08 10:19:57','103-wli-02-2021'),
(104,'Jurnal Maghza',NULL,'Maghza edisi 1','40','eks','0',NULL,42000,0,'lunas',NULL,'2021-02-08 00:00:00',NULL,'2021-02-08 10:18:57','2021-02-13 09:26:55','104-diy-02-2021'),
(105,'Jurnal Maghza',NULL,'Maghza edisi','40','eks','0',NULL,40000,0,'lunas',NULL,'2021-02-08 00:00:00',NULL,'2021-02-08 10:19:46','2021-02-13 09:26:55','104-diy-02-2021'),
(106,'Fakultas Dakwah IAIN Purwokerto',NULL,'Cetak Buku Panduan PPL','440','eks','0',NULL,11000,0,'lunas',NULL,'2021-02-13 00:00:00',NULL,'2021-02-13 09:26:03','2021-02-17 02:08:45','106-pec-02-2021'),
(107,'IAIN Purwokerto',NULL,'Copy F4','2002','halaman','0',NULL,250,0,'lunas',NULL,'2021-02-17 00:00:00',NULL,'2021-02-17 02:10:16','2021-02-22 12:06:43','107-off-02-2021'),
(108,'IAIN Purwokerto',NULL,'Jilid Hard Cover','3','buah','0',NULL,70000,0,'lunas',NULL,'2021-02-17 00:00:00',NULL,'2021-02-17 02:11:02','2021-02-22 12:06:43','107-off-02-2021'),
(109,'IAIN Purwokerto',NULL,'Jilid Soft Cover','6','buah','0',NULL,8000,0,'lunas',NULL,'2021-02-17 00:00:00',NULL,'2021-02-17 02:11:38','2021-02-22 12:06:43','107-off-02-2021'),
(111,'dwija Inspira',NULL,'Layout dan Cetak Jurnal','15','eks','0',NULL,50000,0,'lunas',NULL,'2021-02-18 00:00:00',NULL,'2021-02-18 03:38:27','2021-02-19 07:39:33','110-asl-02-2021'),
(112,'RKWK',NULL,'Cetak Buku','13','eks','0',NULL,13000,0,'lunas',NULL,'2021-02-19 00:00:00',NULL,'2021-02-19 07:39:27','2021-02-22 12:06:27','112-bqd-02-2021'),
(113,'FTIK IAIN Purwokerto',NULL,'Cetak Renstra FTIK','10','eks','0',NULL,24000,0,'lunas',NULL,'2021-02-19 00:00:00',NULL,'2021-02-19 07:45:04','2021-03-11 07:22:08','113-wzl-02-2021'),
(114,'SMP Diponegoro Cimanggu',NULL,'Banner 1.3 * 4.1','7','eks','0',NULL,186000,0,'lunas',NULL,'2021-02-19 00:00:00',NULL,'2021-02-19 07:57:59','2021-03-11 07:21:59','100-aou-02-2021'),
(115,'SMP Diponegoro Cimanggu',NULL,'Rontek','35','eks','0',NULL,15750,0,'lunas',NULL,'2021-02-19 00:00:00',NULL,'2021-02-19 07:59:08','2021-03-11 07:21:59','100-aou-02-2021'),
(116,'FTIK IAIN Purwokerto',NULL,'Cetak Renstra FTIK','10','eks','0',NULL,25000,0,'lunas',NULL,'2021-02-22 00:00:00',NULL,'2021-02-22 12:07:59','2021-02-26 07:56:28','116-emq-02-2021'),
(117,'TIPD IAIN PURWOKERTO',NULL,'Foto Copy A4','5960','Halaman','0',NULL,250,0,'lunas',NULL,'2021-02-24 00:00:00',NULL,'2021-02-24 08:59:39','2021-03-11 07:21:19','117-tbj-02-2021'),
(118,'TIPD IAIN PURWOKERTO',NULL,'Jilid Hard Cover','18','Buah','0',NULL,50000,0,'lunas',NULL,'2021-02-24 00:00:00',NULL,'2021-02-24 09:00:20','2021-03-11 07:21:19','117-tbj-02-2021'),
(119,'TIPD IAIN PURWOKERTO',NULL,'Jilid Soft Cover','16','Buah','0',NULL,15000,0,'lunas',NULL,'2021-02-24 00:00:00',NULL,'2021-02-24 09:00:57','2021-03-11 07:21:19','117-tbj-02-2021'),
(120,'LPPM IAIN PURWOKERTO',NULL,'Cetak Buku RIP Penelitian','30','eks','0',NULL,26000,0,'lunas',NULL,'2021-02-24 00:00:00',NULL,'2021-02-24 09:03:38','2021-03-11 07:20:58','120-jcj-02-2021'),
(121,'STAIS Majenang',NULL,'Copy laporan','1946','Lembar','0',NULL,250,0,'lunas',NULL,'2021-02-24 00:00:00',NULL,'2021-02-24 09:09:31','2021-03-11 07:21:13','121-bci-02-2021'),
(122,'STAIS Majenang',NULL,'Jilid Laporan','3','eks','0',NULL,60000,0,'lunas',NULL,'2021-02-24 00:00:00',NULL,'2021-02-24 09:10:05','2021-03-11 07:21:13','121-bci-02-2021'),
(123,'STAIS Majenang',NULL,'Cetak penelitian dan Pengabdian','3940','eks','0',NULL,250,0,'lunas',NULL,'2021-02-24 00:00:00',NULL,'2021-02-24 09:11:09','2021-03-11 07:21:13','121-bci-02-2021'),
(124,'STAIS Majenang',NULL,'Jilid Soft Cover','30','eks','0',NULL,8000,0,'lunas',NULL,'2021-02-24 00:00:00',NULL,'2021-02-24 09:11:44','2021-03-11 07:21:13','121-bci-02-2021'),
(125,'KBIHU NU BANYUMAS',NULL,'Stiker','450','Buah','0',NULL,2500,0,'lunas',NULL,'2021-02-24 00:00:00',NULL,'2021-02-24 14:22:36','2021-03-11 07:21:05','125-jfy-02-2021'),
(126,'KBIHU NU BANYUMAS',NULL,'Cutting besar','35','Lembar','0',NULL,10000,0,'lunas',NULL,'2021-02-24 00:00:00',NULL,'2021-02-24 14:24:30','2021-03-11 07:21:05','125-jfy-02-2021'),
(127,'KBIHU NU BANYUMAS',NULL,'Cutting kecil','50','Lembar','0',NULL,8000,0,'lunas',NULL,'2021-02-24 00:00:00',NULL,'2021-02-24 14:25:07','2021-03-11 07:21:05','125-jfy-02-2021'),
(128,'STMIK KOMPUTAMA MAJENANG',NULL,'STANDAR PENGELOLAAN SUMBER DAYA MANUSIA (SDM)','3','eks','0',NULL,12500,0,'lunas',NULL,'2021-02-26 00:00:00',NULL,'2021-02-26 08:34:19','2021-03-11 07:20:46','128-joc-02-2021'),
(129,'STMIK KOMPUTAMA MAJENANG',NULL,'Pedoman Penyusunan Laopran Kinerja PT','3','eks','0',NULL,17250,0,'lunas',NULL,'2021-02-26 00:00:00',NULL,'2021-02-26 08:36:01','2021-03-11 07:20:46','128-joc-02-2021'),
(130,'STMIK KOMPUTAMA MAJENANG',NULL,'Laporan Evaluasi Diri PT - Hard Cover','3','eks','0',NULL,85600,0,'lunas',NULL,'2021-02-26 00:00:00',NULL,'2021-02-26 08:37:12','2021-03-11 07:20:46','128-joc-02-2021'),
(131,'STMIK KOMPUTAMA MAJENANG',NULL,'Renstra PT','3','eks','0',NULL,20500,0,'lunas',NULL,'2021-02-26 00:00:00',NULL,'2021-02-26 08:37:47','2021-03-11 07:20:46','128-joc-02-2021'),
(132,'STMIK KOMPUTAMA MAJENANG',NULL,'RIP PT','3','eks','0',NULL,17000,0,'lunas',NULL,'2021-02-26 00:00:00',NULL,'2021-02-26 08:38:33','2021-03-11 07:20:46','128-joc-02-2021'),
(133,'STMIK KOMPUTAMA MAJENANG',NULL,'Statuta','3','eks','0',NULL,16250,0,'lunas',NULL,'2021-02-26 00:00:00',NULL,'2021-02-26 08:39:13','2021-03-11 07:20:46','128-joc-02-2021'),
(134,'STMIK KOMPUTAMA MAJENANG',NULL,'Pedoman akademik','3','eks','0',NULL,27500,0,'lunas',NULL,'2021-02-26 00:00:00',NULL,'2021-02-26 08:41:26','2021-03-11 07:20:46','128-joc-02-2021'),
(135,'STMIK KOMPUTAMA MAJENANG',NULL,'Pedoman Pengembangan Kurikulum','3','eks','0',NULL,13000,0,'lunas',NULL,'2021-02-26 00:00:00',NULL,'2021-02-26 08:42:28','2021-03-11 07:20:46','128-joc-02-2021'),
(136,'STMIK KOMPUTAMA MAJENANG',NULL,'Pedoman Skripsi','3','eks','0',NULL,16250,0,'lunas',NULL,'2021-02-26 00:00:00',NULL,'2021-02-26 08:43:47','2021-03-11 07:20:46','128-joc-02-2021'),
(137,'STMIK KOMPUTAMA MAJENANG',NULL,'Pedoman Dosen','3','eks','0',NULL,13250,0,'lunas',NULL,'2021-02-26 00:00:00',NULL,'2021-02-26 08:45:43','2021-03-11 07:20:46','128-joc-02-2021'),
(138,'STMIK KOMPUTAMA MAJENANG',NULL,'Dokumen SMPI','3','eks','0',NULL,51250,0,'lunas',NULL,'2021-02-26 00:00:00',NULL,'2021-02-26 08:47:14','2021-03-11 07:20:46','128-joc-02-2021'),
(139,'RKWK Publisher',NULL,'Analisis swot','3','eks','0',NULL,23800,0,'lunas',NULL,'2021-03-08 00:00:00',NULL,'2021-03-08 01:33:34','2021-03-11 07:20:39','139-auz-03-2021'),
(140,'RKWK Publisher',NULL,'Ada rindu di langit dan Bumi','5','eks','0',NULL,15500,0,'lunas',NULL,'2021-03-08 00:00:00',NULL,'2021-03-08 01:35:17','2021-03-11 07:20:39','139-auz-03-2021'),
(141,'RKWK Publisher',NULL,'Ketika Kesepian Pecah','2','eks','0',NULL,14400,0,'lunas',NULL,'2021-03-08 00:00:00',NULL,'2021-03-08 01:36:11','2021-03-11 07:20:39','139-auz-03-2021'),
(142,'RKWK Publisher',NULL,'24 Jam yg putih','8','eks','0',NULL,15400,0,'lunas',NULL,'2021-03-08 00:00:00',NULL,'2021-03-08 01:37:17','2021-03-11 07:20:39','139-auz-03-2021'),
(143,'RKWK Publisher',NULL,'Galas series 2-6','2','eks','0',NULL,72400,0,'lunas',NULL,'2021-03-08 00:00:00',NULL,'2021-03-08 01:38:32','2021-03-11 07:20:39','139-auz-03-2021'),
(144,'RKWK Publisher',NULL,'Si Supus','2','eks','0',NULL,15500,0,'lunas',NULL,'2021-03-08 00:00:00',NULL,'2021-03-08 01:39:04','2021-03-11 07:20:39','139-auz-03-2021'),
(145,'RKWK Publisher',NULL,'Membangun Budaya Literasi','3','eks','0',NULL,27400,0,'lunas',NULL,'2021-03-08 00:00:00',NULL,'2021-03-08 01:40:00','2021-03-11 07:20:39','139-auz-03-2021'),
(146,'RKWK Publisher',NULL,'KOmunikasi Efektif','3','eks','0',NULL,13600,0,'lunas',NULL,'2021-03-08 00:00:00',NULL,'2021-03-08 01:40:29','2021-03-11 07:20:39','139-auz-03-2021'),
(147,'RKWK Publisher',NULL,'LPJ','4','eks','0',NULL,30000,0,'lunas',NULL,'2021-03-08 00:00:00',NULL,'2021-03-08 01:40:46','2021-03-11 07:20:39','139-auz-03-2021'),
(148,'Bank Panin Dubay Syariah',NULL,'Cetak Formulir','1500','Lembar','0',NULL,250,0,'lunas',NULL,'2021-03-11 00:00:00',NULL,'2021-03-11 07:19:19','2021-04-01 06:22:38','148-nam-03-2021'),
(150,'PC IPNU/IPPNU PURBALINGGA',NULL,'Kop Surat Embos','4','eks','0',NULL,600000,120000,'lunas',NULL,'2021-03-12 00:00:00',NULL,'2021-03-12 14:47:08','2021-05-01 16:42:37','149-aek-03-2021'),
(151,'MI Muhammadiyah Beji',NULL,'Cetak Soal PTS','2552','eks','0',NULL,150,0,'lunas',NULL,'2021-03-21 00:00:00',NULL,'2021-03-21 02:53:24','2021-05-01 16:42:43','151-sbj-03-2021'),
(152,'MI Muhammadiyah Beji',NULL,'Cetak Member Jawab','1060','eks','0',NULL,100,0,'lunas',NULL,'2021-03-21 00:00:00',NULL,'2021-03-21 02:53:45','2021-05-01 16:42:27','25-mon-09-2020'),
(153,'FTIK IAIN Purwokerto',NULL,'Cetak Laporan PPG daljab bagi guru Pelajaran Keagamaan di madrasah','2','eks','0',NULL,68500,0,'belum',NULL,'2021-03-24 00:00:00',NULL,'2021-03-24 04:03:20','2021-03-24 04:03:20','153-fij-03-2021'),
(154,'FTIK IAIN Purwokerto',NULL,'Cetak Laporan PPG daljab bagi guru Pelajaran PAI di Sekolah','2','eks','0',NULL,77000,0,'belum',NULL,'2021-03-24 00:00:00',NULL,'2021-03-24 04:04:08','2021-03-24 04:04:08','153-fij-03-2021'),
(155,'Mbak Fifi',NULL,'Cetak buku Studi Kelayakan','26','eks','0',NULL,45000,0,'lunas',NULL,'2021-03-25 00:00:00',NULL,'2021-03-25 09:31:30','2021-05-01 16:42:15','155-aqw-03-2021'),
(156,'RKWK Publisher',NULL,'Cetak Pengembangan Bahasa Anak','80','eks','0',NULL,19500,0,'lunas',NULL,'2021-03-25 00:00:00',NULL,'2021-03-25 09:33:02','2021-05-01 16:42:10','156-cdo-03-2021'),
(157,'STAIS Majenang',NULL,'Undangan','170','eks','0',NULL,5000,0,'lunas',NULL,'2021-03-27 00:00:00',NULL,'2021-03-27 03:27:31','2021-03-27 03:31:42','157-cby-03-2021'),
(158,'STAIS Majenang',NULL,'Buku Wisuda','135','eks','0',NULL,35000,0,'lunas',NULL,'2021-03-27 00:00:00',NULL,'2021-03-27 03:27:55','2021-03-27 03:31:42','157-cby-03-2021'),
(159,'STAIS Majenang',NULL,'Stiker wisuda','350','eks','0',NULL,1000,0,'lunas',NULL,'2021-03-27 00:00:00',NULL,'2021-03-27 03:28:28','2021-03-27 03:31:42','157-cby-03-2021'),
(160,'PP At Thohiriyah',NULL,'Cetak buku kumpulan doa','100','eks','0',NULL,15000,0,'lunas',NULL,'2021-03-27 00:00:00',NULL,'2021-03-27 05:50:16','2021-04-01 11:00:43','160-pqz-03-2021'),
(161,'RKWK Publisher',NULL,'Perempuan yg terjerat','1','eks','0',NULL,20800,0,'lunas',NULL,'2021-03-29 00:00:00',NULL,'2021-03-29 07:53:30','2021-05-01 16:42:03','161-wuf-03-2021'),
(162,'RKWK Publisher',NULL,'Soak Ujian dari RS','5','eks','0',NULL,18200,0,'lunas',NULL,'2021-03-29 00:00:00',NULL,'2021-03-29 07:54:29','2021-05-01 16:42:03','161-wuf-03-2021'),
(163,'Mas Adil',NULL,'Copy F4','1234','Lembar','0',NULL,260,0,'lunas',NULL,'2021-03-31 00:00:00',NULL,'2021-03-31 07:51:51','2021-05-01 16:41:51','163-cfu-03-2021'),
(164,'Mas Adil',NULL,'Jilid tebal','1','eks','0',NULL,20000,0,'lunas',NULL,'2021-03-31 00:00:00',NULL,'2021-03-31 07:52:54','2021-05-01 16:41:51','163-cfu-03-2021'),
(165,'Mas Adil',NULL,'Jilid lumayan tebal','6','eks','0',NULL,10000,0,'lunas',NULL,'2021-03-31 00:00:00',NULL,'2021-03-31 07:53:27','2021-05-01 16:41:51','163-cfu-03-2021'),
(166,'Ny. Maria Ulpah, Dr.',NULL,'Cetak Dan terbit buku Matematika','10','eks','0',NULL,20000,0,'lunas',NULL,'2021-04-01 00:00:00',NULL,'2021-04-01 11:02:11','2021-04-06 02:20:55','166-jsn-04-2021'),
(167,'MI Maarif 01 Kaliwedi',NULL,'Cetak buku tulis kecil','1500','eks','0',NULL,4000,750000,'lunas',NULL,'2021-04-06 00:00:00',NULL,'2021-04-06 02:22:04','2021-05-01 16:41:47','167-mzt-04-2021'),
(168,'MI Maarif 01 Kaliwedi',NULL,'Cetak Buku tulis besar','500','eks','0',NULL,5500,0,'lunas',NULL,'2021-04-06 00:00:00',NULL,'2021-04-06 02:22:56','2021-05-01 16:41:47','167-mzt-04-2021'),
(169,'SDNU Master Sokaraja',NULL,'Penerbitan dan Percetakan Buku Seruling Emas dan Buku Kecil','250','eks','0',NULL,32000,0,'lunas',NULL,'2021-04-09 00:00:00',NULL,'2021-04-09 02:01:38','2021-05-01 16:41:41','169-itx-04-2021'),
(170,'TIPD IAIN PURWOKERTO',NULL,'Cetak Modul Turnitin','73','eks','0',NULL,17000,0,'lunas',NULL,'2021-04-12 00:00:00',NULL,'2021-04-12 05:13:23','2021-04-12 05:13:27','170-ihx-04-2021'),
(171,'PP Darussalam',NULL,'Cetak Kitab','100','eks','0',NULL,16000,0,'lunas',NULL,'2021-04-12 00:00:00',NULL,'2021-04-12 09:23:10','2021-04-12 09:23:14','171-iny-04-2021'),
(172,'SMK Wiworotomo',NULL,'FC buram','250','Lembar','0',NULL,150,0,'belum',NULL,'2021-04-26 00:00:00',NULL,'2021-04-26 14:25:15','2021-04-26 14:25:15','172-awk-04-2021'),
(173,'PPRQ SIRAU',NULL,'Cetak Aurod','500','eks','0',NULL,15000,0,'lunas',NULL,'2021-04-27 00:00:00',NULL,'2021-04-27 09:02:46','2021-04-29 06:52:10','173-bnw-04-2021'),
(174,'Laziznu Banyumas',NULL,'Cetak Buku Annual','300','eks','0',NULL,30000,0,'lunas',NULL,'2021-04-29 00:00:00',NULL,'2021-04-29 06:51:30','2021-04-29 07:04:41','174-ltn-04-2021'),
(175,'RKWK',NULL,'Cetak Buku Misteri tanpa Temu','7','eks','0',NULL,12200,0,'belum',NULL,'2021-05-01 00:00:00',NULL,'2021-05-01 16:38:10','2021-05-01 16:38:10','175-rhg-05-2021'),
(176,'RKWK',NULL,'Cetak Buku Tanpa Benang Merah','14','eks','0',NULL,11750,0,'belum',NULL,'2021-05-01 00:00:00',NULL,'2021-05-01 16:39:32','2021-05-01 16:39:32','175-rhg-05-2021'),
(177,'FTIK IAIN Purwokerto',NULL,'Cetak Kurikulum PGMI','10','eks','0',NULL,30000,0,'belum',NULL,'2021-05-01 00:00:00',NULL,'2021-05-01 16:44:52','2021-05-01 16:54:47','177-drr-05-2021'),
(178,'FTIK IAIN Purwokerto',NULL,'Cetak Kurikulum PBA','2','eks','0',NULL,35000,0,'belum',NULL,'2021-05-01 00:00:00',NULL,'2021-05-01 16:45:47','2021-05-01 16:45:47','177-drr-05-2021'),
(179,'FTIK IAIN Purwokerto',NULL,'Cetak Kurikulum PIAUD','2','eks','0',NULL,35000,0,'belum',NULL,'2021-05-01 00:00:00',NULL,'2021-05-01 16:46:12','2021-05-01 16:46:12','177-drr-05-2021'),
(180,'FTIK IAIN Purwokerto',NULL,'Cetak Kurikulum TMA','2','eks','0',NULL,27000,0,'belum',NULL,'2021-05-01 00:00:00',NULL,'2021-05-01 16:47:16','2021-05-01 16:47:16','177-drr-05-2021'),
(181,'FTIK IAIN Purwokerto',NULL,'Cetak Kurikulum PAI','2','eks','0',NULL,26000,0,'belum',NULL,'2021-05-01 00:00:00',NULL,'2021-05-01 16:50:14','2021-05-01 16:50:14','177-drr-05-2021'),
(182,'FTIK IAIN Purwokerto',NULL,'Cetak Kurikulum TBI','2','eks','0',NULL,42500,0,'belum',NULL,'2021-05-01 00:00:00',NULL,'2021-05-01 16:51:33','2021-05-01 16:51:33','177-drr-05-2021'),
(183,'FTIK IAIN Purwokerto',NULL,'Cetak Kurikulum MPI','2','eks','0',NULL,32000,0,'belum',NULL,'2021-05-01 00:00:00',NULL,'2021-05-01 16:53:05','2021-05-01 16:53:05','177-drr-05-2021'),
(184,'FTIK IAIN Purwokerto',NULL,'Cetak Kurikulum FAKULTAS','2','eks','0',NULL,20000,0,'belum',NULL,'2021-05-01 00:00:00',NULL,'2021-05-01 16:53:47','2021-05-01 16:53:47','177-drr-05-2021'),
(185,'FTIK IAIN Purwokerto',NULL,'Cetak Panduan Skripsi','30','eks','0',NULL,15000,0,'belum',NULL,'2021-05-01 00:00:00',NULL,'2021-05-01 16:55:43','2021-05-01 16:55:43','177-drr-05-2021'),
(186,'PC GP ANSOR KAB. BANYUMAS',NULL,'Sertifikat PKD Ansor Kec. Kembaran, Banyumas dan Pekuncen','172','eks','0',NULL,7000,0,'belum',NULL,'2021-05-03 00:00:00',NULL,'2021-05-03 16:47:26','2021-05-03 17:07:36','186-hdh-05-2021'),
(187,'MAN Majenang',NULL,'Penjilidan dan penggandaan Jukni BOS','15','eks','0',NULL,43275,0,'lunas',NULL,'2021-05-19 00:00:00',NULL,'2021-05-19 04:22:34','2021-05-19 04:24:59','187-lzi-05-2021'),
(188,'Novi Mayasari, dkk',NULL,'Cetak Buku Deteksi bakat dan potensi anak','47','eks','0',NULL,20000,0,'lunas',NULL,'2021-05-25 00:00:00',NULL,'2021-05-25 06:54:39','2021-06-05 06:11:45','188-lcy-05-2021'),
(189,'PCNU KAB. BANYUMAS',NULL,'Sewa jasa video shooting live (Kamera, PC, Sound sytem, LCD Proyektor)','1','Paket','0',NULL,2000000,500000,'lunas',NULL,'2021-05-28 00:00:00',NULL,'2021-05-28 01:35:31','2021-06-05 06:11:42','189-kfa-05-2021'),
(190,'BLKK DARUSSALAM',NULL,'Seragam BLKK DARUSSALAM','16','buah','0',NULL,120000,0,'lunas',NULL,'2021-05-28 00:00:00',NULL,'2021-05-28 05:53:48','2021-06-05 06:11:37','190-skq-05-2021'),
(191,'Rizal',NULL,'Cetak Buku Yasin','55','eks','0',NULL,8000,0,'lunas',NULL,'2021-05-29 00:00:00',NULL,'2021-05-29 08:59:50','2021-05-29 09:00:25','191-svv-05-2021'),
(192,'TMB Nuju Pinter',NULL,'Cetak Buku Napak Tilas','10','eks','0',NULL,20000,0,'lunas',NULL,'2021-05-31 00:00:00',NULL,'2021-05-31 09:22:35','2021-06-05 06:11:32','192-gpe-05-2021'),
(193,'TMB Nuju Pinter',NULL,'Cetak Buku Uswatun Hasanah','10','eks','0',NULL,15500,0,'lunas',NULL,'2021-05-31 00:00:00',NULL,'2021-05-31 09:23:29','2021-06-05 06:11:32','192-gpe-05-2021'),
(194,'MI Muhammadiyah Beji',NULL,'Cetak lembar jawab','1060','Halaman','0',NULL,100,0,'lunas',NULL,'2021-06-03 00:00:00',NULL,'2021-06-03 09:19:47','2021-06-05 06:11:30','194-lqh-06-2021'),
(195,'MI Muhammadiyah Beji',NULL,'Cetak Soal','7533','Halaman','0',NULL,100,0,'lunas',NULL,'2021-06-03 00:00:00',NULL,'2021-06-03 09:21:17','2021-06-05 06:11:30','194-lqh-06-2021'),
(196,'MI Ma\'arif NU Beji',NULL,'Cetak soal & lembar jawab','12103','eks','0',NULL,150,200000,'lunas',NULL,'2021-06-05 00:00:00',NULL,'2021-06-05 08:42:05','2021-07-03 08:24:42','196-fxh-06-2021'),
(197,'Saeful Akrom',NULL,'Buku Tabungan','400','eks','0',NULL,1500,0,'lunas',NULL,'2021-06-07 00:00:00',NULL,'2021-06-07 04:29:15','2021-06-07 04:32:12','197-piw-06-2021'),
(198,'Saeful Akrom',NULL,'Buku Raport','50','eks','0',NULL,3000,0,'lunas',NULL,'2021-06-07 00:00:00',NULL,'2021-06-07 04:30:00','2021-06-07 04:32:12','197-piw-06-2021'),
(199,'Panitia Webinar PAI',NULL,'Foto Copy Laporan','1690','lembar','0',NULL,200,0,'belum',NULL,'2021-06-10 00:00:00',NULL,'2021-06-10 05:34:05','2021-06-10 05:34:05','199-aki-06-2021'),
(200,'Panitia Webinar PAI',NULL,'Jilid Laporan','3','eks','0',NULL,35000,0,'belum',NULL,'2021-06-10 00:00:00',NULL,'2021-06-10 05:34:31','2021-06-10 05:34:31','199-aki-06-2021'),
(201,'Mas Adil Muallim',NULL,'Cetak Sertifikat','282','Lembar','0',NULL,1100,0,'belum',NULL,'2021-06-10 00:00:00',NULL,'2021-06-10 07:39:30','2021-06-10 07:39:30','201-qsf-06-2021'),
(202,'Novi Mayasari',NULL,'Cetak Buku Kesulitan Belajar Anak & Cara mengatasinya','49','eks','0',NULL,20000,0,'lunas',NULL,'2021-06-14 00:00:00',NULL,'2021-06-14 05:51:17','2021-07-03 08:25:26','202-afm-06-2021'),
(203,'Novi Mayasari',NULL,'Cetak Buku Teori belajar dan implementasinya dalam pembelajaran','49','eks','0',NULL,20000,0,'lunas',NULL,'2021-06-14 00:00:00',NULL,'2021-06-14 05:53:06','2021-07-03 08:25:26','202-afm-06-2021'),
(204,'Panitia Webinar PAI',NULL,'Desain dan Cetak Banner','1','eks','0',NULL,250000,0,'belum',NULL,'2021-06-10 00:00:00',NULL,'2021-06-15 06:28:13','2021-06-15 06:29:01','199-aki-06-2021'),
(205,'IAIN Purwokerto',NULL,'Foto Copy dan Jilid Laporan Peningkatan Kualitas SDM','1','eks','0',NULL,125000,0,'lunas',NULL,'2021-06-11 00:00:00',NULL,'2021-06-17 05:38:55','2021-06-17 05:39:30','205-gnc-06-2021'),
(206,'Ibu Kuswati',NULL,'Majmu\' Syarif','60','eks','0',NULL,25000,0,'lunas',NULL,'2021-06-17 00:00:00',NULL,'2021-06-17 08:28:45','2021-06-17 08:28:49','206-zta-06-2021'),
(207,'Mas Bagas',NULL,'Cetak buletin BW','1','RIM','0',NULL,250000,0,'lunas',NULL,'2021-06-19 00:00:00',NULL,'2021-06-19 03:40:31','2021-06-19 03:40:36','207-ovd-06-2021'),
(208,'PP Darussalam Dukuhwaluh',NULL,'Syarah Qowaidul A\'rab','150','eks','0',NULL,14000,0,'lunas',NULL,'2021-06-19 00:00:00',NULL,'2021-06-19 06:14:39','2021-07-06 01:57:21','208-lfu-06-2021'),
(209,'PP Darussalam Dukuhwaluh',NULL,'Qowaidul Fiqh','50','eks','0',NULL,10000,0,'lunas',NULL,'2021-06-19 00:00:00',NULL,'2021-06-19 06:15:13','2021-07-06 01:57:21','208-lfu-06-2021'),
(210,'RKWK',NULL,'Recovery Buku Praktik Baik Bermain','25','eks','0',NULL,6000,0,'lunas',NULL,'2021-06-22 00:00:00',NULL,'2021-06-22 04:57:42','2021-06-22 05:00:56','210-lou-06-2021'),
(212,'Kang Turhamun',NULL,'Cetak Buku Yasin','50','eks','0',NULL,15000,0,'lunas',NULL,'2021-06-23 00:00:00',NULL,'2021-06-23 02:40:32','2021-07-03 07:48:31','211-uex-06-2021'),
(213,'Polresta Banyumas',NULL,'Cetak nomor antre Vaksin','1880','eks','0',NULL,400,0,'lunas',NULL,'2021-06-25 00:00:00',NULL,'2021-06-25 02:47:07','2021-07-06 01:57:07','213-msb-06-2021'),
(214,'RKWK Publisher',NULL,'Cetak buku ada rindu di langit','2','eks','0',NULL,13000,0,'lunas',NULL,'2021-06-25 00:00:00',NULL,'2021-06-25 04:22:59','2021-07-03 07:48:45','214-dqf-06-2021'),
(215,'RKWK Publisher',NULL,'Kipas','3','eks','0',NULL,15000,0,'lunas',NULL,'2021-06-25 00:00:00',NULL,'2021-06-25 04:23:18','2021-07-03 07:48:45','214-dqf-06-2021'),
(216,'PP Darussalam',NULL,'Cetak Kitab','50','eks','0',NULL,29600,450000,'lunas',NULL,'2021-06-25 00:00:00',NULL,'2021-06-25 10:13:42','2021-07-06 01:57:15','216-sno-06-2021'),
(217,'STAIS Majenang',NULL,'Cetak Buku Panduan KKN','105','eks','0',NULL,6200,0,'lunas',NULL,'2021-07-02 00:00:00',NULL,'2021-07-02 07:09:51','2021-07-03 07:48:53','217-aeg-07-2021'),
(218,'ZULFATUL ADAWIYAH',NULL,'CETAK MAKALAH & JAWABAN UAS','585','eks','0',NULL,200,0,'lunas',NULL,'2021-07-03 00:00:00',NULL,'2021-07-03 05:55:05','2021-07-05 05:40:25','218-wyl-07-2021'),
(219,'ZULFATUL ADAWIYAH',NULL,'Jilid','41','eks','0',NULL,2500,0,'lunas',NULL,'2021-07-03 00:00:00',NULL,'2021-07-03 05:56:02','2021-07-05 05:40:25','218-wyl-07-2021'),
(220,'Polresta Banyumas',NULL,'Cetak Ucapan Terima kasih','180','eks','0',NULL,10000,0,'lunas',NULL,'2021-07-05 00:00:00',NULL,'2021-07-05 02:30:55','2021-07-06 01:57:07','213-msb-06-2021'),
(221,'SMP N 2 ADIPALA',NULL,'Cetak Jurnal Membaca Harian Siswa','760','eks','0',NULL,5000,0,'lunas',NULL,'2021-07-06 00:00:00',NULL,'2021-07-06 01:53:58','2021-07-10 04:10:16','221-rel-07-2021'),
(225,'PC GP Ansor Banyumas',NULL,'FC pengajuan SK PC Ansor BMS','4','eks','0',NULL,71000,0,'lunas',NULL,'2021-07-06 00:00:00',NULL,'2021-07-06 09:08:05','2021-07-08 04:22:51','222-tpk-07-2021'),
(226,'Eva Lutfiati',NULL,'Cetak Modul (5)','1','eks','0',NULL,200000,0,'lunas',NULL,'2021-07-07 00:00:00',NULL,'2021-07-07 08:56:45','2021-07-10 04:10:03','226-afk-07-2021'),
(227,'BLKK Darussalam',NULL,'Seragam BLKK DARUSSALAM','16','buah','0',NULL,120000,0,'lunas',NULL,'2021-07-10 00:00:00',NULL,'2021-07-10 04:13:54','2021-07-15 04:24:28','227-zvb-07-2021'),
(228,'Imam Syafi\'i',NULL,'Cetak Buku yasin dan Tahlil Lengkap','70','eks','0',NULL,15000,50000,'lunas',NULL,'2021-07-15 00:00:00',NULL,'2021-07-15 04:25:12','2021-07-17 05:54:58','228-qjv-07-2021'),
(229,'STAIS Majenang',NULL,'Penerbitan dan Percetakan Buku KKN','70','eks','0',NULL,40000,200000,'lunas',NULL,'2021-07-17 00:00:00',NULL,'2021-07-17 05:53:59','2021-07-25 09:08:46','229-xzn-07-2021'),
(230,'STAIS Majenang',NULL,'Ongkir','1','eks','0',NULL,115000,0,'lunas',NULL,'2021-07-17 00:00:00',NULL,'2021-07-17 05:54:23','2021-07-25 09:08:46','229-xzn-07-2021'),
(231,'Masjid Tajul Ma\'rifat',NULL,'Jadwal Khotib/Imam','1','eks','0',NULL,225000,0,'lunas',NULL,'2021-07-25 00:00:00',NULL,'2021-07-25 09:09:34','2021-07-25 09:09:40','231-mem-07-2021'),
(232,'IAIN Purwokerto',NULL,'Belanja fotocopy dan jilid laporan kegiatan peningkatan kualitas SDM IAIN Purwokerto 2021','1','Paket','0',NULL,125000,0,'lunas',NULL,'2021-07-17 00:00:00',NULL,'2021-07-26 02:08:47','2021-07-26 02:09:16','232-hjj-07-2021'),
(233,'Bpk, Sobirin',NULL,'Yasin Fadilah','30','eks','0',NULL,9000,0,'lunas',NULL,'2021-07-28 00:00:00',NULL,'2021-07-28 03:31:20','2021-09-21 13:11:40','233-fdc-07-2021'),
(234,'Bpk, Sobirin',NULL,'Ongkir','1','eks','0',NULL,11000,0,'lunas',NULL,'2021-07-28 00:00:00',NULL,'2021-07-28 03:36:33','2021-09-21 13:11:40','233-fdc-07-2021'),
(235,'Ponpes Darussalam',NULL,'Cetak Kitab Qowa\'idul Asasiyah','100','eks','0',NULL,45000,0,'lunas',NULL,'2021-07-29 00:00:00',NULL,'2021-07-29 06:48:57','2021-07-31 08:08:50','235-mwb-07-2021'),
(236,'Nur Muniroh',NULL,'Cetak Modul','20','eks','0',NULL,25000,0,'lunas',NULL,'2021-08-07 00:00:00',NULL,'2021-08-07 03:57:02','2021-10-19 11:32:16','236-bbt-08-2021'),
(237,'SMP Ma\'arif Kemranjen',NULL,'Recovery Buku','1','eks','0',NULL,500000,0,'lunas',NULL,'2021-08-24 00:00:00',NULL,'2021-08-24 06:55:59','2021-09-02 03:52:33','237-cvb-08-2021'),
(238,'M. Qomarul Huda',NULL,'Cetak Buku Catatan Publikasi Madrasah','17','eks','0',NULL,29500,0,'lunas',NULL,'2021-08-30 00:00:00',NULL,'2021-08-30 09:04:22','2021-09-02 03:52:27','238-vpw-08-2021'),
(239,'M. Qomarul Huda',NULL,'Cetak Buku Mata Pena','5','eks','0',NULL,17500,0,'lunas',NULL,'2021-08-30 00:00:00',NULL,'2021-08-30 09:04:52','2021-09-02 03:52:27','238-vpw-08-2021'),
(240,'M. Qomarul Huda',NULL,'Ongkir','1','eks','0',NULL,58000,0,'lunas',NULL,'2021-08-30 00:00:00',NULL,'2021-08-30 09:06:08','2021-09-02 03:52:27','238-vpw-08-2021'),
(241,'FEBI IAIN Purwokerto',NULL,'Cetak Buletin 2 edisi','2','Paket','0',NULL,1000000,0,'lunas',NULL,'2021-09-02 00:00:00',NULL,'2021-09-02 03:52:14','2021-09-21 04:13:29','241-ilo-09-2021'),
(242,'Pondok Pesantren \"Wali Songo\"  Ngabar',NULL,'MODUL PEMBELAJARAN  AL-QUR\'AN  \'TADRIJI\'','800','eks','0',NULL,25000,2300000,'lunas',NULL,'2021-09-04 00:00:00',NULL,'2021-09-04 05:15:50','2021-09-21 13:11:11','242-vva-09-2021'),
(243,'Eri Kuncoro',NULL,'Cetak Buku Yasin','50','eks','0',NULL,8000,0,'lunas',NULL,'2021-09-04 00:00:00',NULL,'2021-09-04 05:34:26','2021-09-08 03:48:36','243-zds-09-2021'),
(244,'Maida Wihdatul Muna',NULL,'Cetak Buku Yasin','150','eks','0',NULL,14000,0,'lunas',NULL,'2021-09-07 00:00:00',NULL,'2021-09-07 03:39:50','2021-09-08 02:22:39','244-maf-09-2021'),
(245,'STAIS Majenang',NULL,'Buku Panduan Akademik','150','eks','0',NULL,26400,0,'lunas',NULL,'2021-09-07 00:00:00',NULL,'2021-09-07 05:24:13','2021-09-07 05:25:05','245-zmv-09-2021'),
(246,'Panitia PBAK',NULL,'Buku PBAK','120','eks','0',NULL,14800,0,'lunas',NULL,'2021-09-07 00:00:00',NULL,'2021-09-07 05:24:49','2021-09-07 05:24:58','246-vse-09-2021'),
(247,'LPPM IAIN Purwokerto',NULL,'Sewa Zoom dan aplikasi mesem virtual KKN 1','1','Paket','0',NULL,700000,0,'belum',NULL,'2021-07-12 00:00:00',NULL,'2021-09-07 05:34:51','2021-09-20 06:31:09','247-pvk-09-2021'),
(248,'RKWK Publisher',NULL,'Cetak Buku Studi Kelayakan Bisnis','57','eks','0',NULL,45000,0,'lunas',NULL,'2021-09-09 00:00:00',NULL,'2021-09-09 10:25:11','2021-09-20 06:29:27','248-zrl-09-2021'),
(249,'RKWK Publisher',NULL,'Cetak Buku IMM','15','eks','0',NULL,23000,0,'lunas',NULL,'2021-09-09 00:00:00',NULL,'2021-09-09 10:25:41','2021-09-20 06:29:27','248-zrl-09-2021'),
(250,'Dr. Hartono, M.A',NULL,'Pembuatan Buku Evaluasi Pelaksanaan Akademik Fakultas Ushuludin Adab dan Humaniora IAIN Purwokerto 2015-2019','100','eks','0',NULL,60000,0,'belum',NULL,'2021-09-13 00:00:00',NULL,'2021-09-13 07:41:58','2021-09-13 07:41:58','250-did-09-2021'),
(251,'Dr. Munjin, M.Pd.I',NULL,'Cetak Buku Hasil Penelitian','50','eks','0',NULL,50000,0,'lunas',NULL,'2021-09-16 00:00:00',NULL,'2021-09-16 05:26:19','2021-09-16 05:26:38','251-zaj-09-2021'),
(252,'Muridan',NULL,'Penerbitan dan Percetakan Buku','25','eks','0',NULL,80000,0,'belum',NULL,'2021-09-17 00:00:00',NULL,'2021-09-17 00:34:39','2021-09-17 00:34:39','252-uyz-09-2021'),
(253,'Dini Maryani',NULL,'Cetak Buku Artikel KKN','23','eks','0',NULL,34000,0,'lunas',NULL,'2021-09-17 00:00:00',NULL,'2021-09-17 02:40:44','2021-10-19 11:32:50','253-sbe-09-2021'),
(254,'Dr. Suparjo, M.A.',NULL,'Penerbit dan Percetakan Buku Religiusitas dan Toleransi','80','eks','0',NULL,50000,0,'belum',NULL,'2021-09-19 00:00:00',NULL,'2021-09-19 03:50:37','2021-09-19 03:52:05','254-jjz-09-2021'),
(255,'LPPM IAIN Purwokerto',NULL,'Sewa Zoom dan aplikasi mesem virtual KKN 2','1','paket','0',NULL,700000,0,'belum',NULL,'2021-07-13 00:00:00',NULL,'2021-09-20 06:30:03','2021-09-20 06:31:19','255-onj-09-2021'),
(256,'LPPM IAIN Purwokerto',NULL,'Sewa Zoom dan aplikasi mesem virtual KKN 3','1','paket','0',NULL,700000,0,'belum',NULL,'2021-07-13 00:00:00',NULL,'2021-09-20 06:30:33','2021-09-20 06:31:30','256-xss-09-2021'),
(257,'Nur Muniroh',NULL,'HAKI','1','eks','0',NULL,750000,0,'lunas',NULL,'2021-09-21 00:00:00',NULL,'2021-09-21 13:12:31','2021-10-19 11:32:16','236-bbt-08-2021'),
(258,'Nur Muniroh',NULL,'Cetak Modul','3','Paket','0',NULL,400000,0,'lunas',NULL,'2021-09-21 00:00:00',NULL,'2021-09-21 13:15:26','2021-10-19 11:32:16','236-bbt-08-2021'),
(259,'Farichatul Maftuchah',NULL,'Penerbitan dan Percetakan Buku','30','eks','0',NULL,80000,0,'belum',NULL,'2021-09-15 00:00:00',NULL,'2021-09-24 02:42:16','2021-09-24 02:42:16','259-etl-09-2021'),
(260,'Naqiyah',NULL,'Penerbitan dan Percetakan Buku','30','eks','0',NULL,80000,0,'lunas',NULL,'2021-09-18 00:00:00',NULL,'2021-09-24 02:43:03','2021-10-19 11:32:04','260-ldz-09-2021'),
(261,'Toifur',NULL,'Terbit dan Cetak buku','20','eks','0',NULL,50000,0,'lunas',NULL,'2021-09-24 00:00:00',NULL,'2021-09-24 07:03:35','2021-09-24 09:15:58','261-xsl-09-2021'),
(263,'Toifur',NULL,'HAKI','1','Paket','0',NULL,750000,0,'lunas',NULL,'2021-09-24 00:00:00',NULL,'2021-09-24 09:15:12','2021-09-24 09:16:02','262-upg-09-2021'),
(264,'KY. Zaenudin Masdar',NULL,'Buku Yasin','150','eks','0',NULL,5000,0,'lunas',NULL,'2021-09-25 00:00:00',NULL,'2021-09-25 13:05:16','2021-09-27 01:01:48','264-waj-09-2021'),
(265,'Dwija Inspira',NULL,'Layout','1500','Halaman','0',NULL,140,0,'lunas',NULL,'2021-09-27 00:00:00',NULL,'2021-09-27 01:02:18','2021-10-06 01:41:32','265-tvn-09-2021'),
(266,'Dwija Inspira',NULL,'Cetak Jurnal','15','eks','0',NULL,37000,0,'lunas',NULL,'2021-09-27 00:00:00',NULL,'2021-09-27 01:02:36','2021-10-06 01:41:32','265-tvn-09-2021'),
(267,'PC ANSOR BANYUMAS',NULL,'Sertifikat PKD Purut','124','Lembar','0',NULL,7000,0,'lunas',NULL,'2021-09-28 00:00:00',NULL,'2021-09-28 10:25:42','2021-09-28 10:29:01','267-pjc-09-2021'),
(268,'PC ANSOR BANYUMAS',NULL,'Sertifikat PKD Purwojati','59','Lembar','0',NULL,7000,0,'lunas',NULL,'2021-09-28 00:00:00',NULL,'2021-09-28 10:26:05','2021-09-28 10:29:01','267-pjc-09-2021'),
(269,'PC ANSOR BANYUMAS',NULL,'Sertifikat PKD Somagede','27','Lembar','0',NULL,7000,0,'lunas',NULL,'2021-09-28 00:00:00',NULL,'2021-09-28 10:26:36','2021-09-28 10:29:01','267-pjc-09-2021'),
(270,'PC ANSOR BANYUMAS',NULL,'Sertifikat PKD Lumbir','29','Lembar','0',NULL,7000,0,'lunas',NULL,'2021-09-28 00:00:00',NULL,'2021-09-28 10:27:03','2021-09-28 10:29:01','267-pjc-09-2021'),
(271,'PC ANSOR BANYUMAS',NULL,'Sertifikat PKD Baturraden','19','Lembar','0',NULL,7000,0,'lunas',NULL,'2021-09-28 00:00:00',NULL,'2021-09-28 10:27:42','2021-09-28 10:29:01','267-pjc-09-2021'),
(272,'PC Ma\'arif NU Banyumas',NULL,'Penerbitan dan Percetakan Buku','100','eks','0',NULL,25000,0,'lunas',NULL,'2021-10-06 00:00:00',NULL,'2021-10-06 01:42:41','2021-10-08 02:56:37','272-qbr-10-2021'),
(273,'Yayasan Al Ikhwan Cimanggu',NULL,'Stiker Kaleng Vinil','100','eks','0',NULL,3500,0,'lunas',NULL,'2021-10-06 00:00:00',NULL,'2021-10-06 01:43:20','2021-10-19 11:31:20','273-juu-10-2021'),
(274,'Yayasan Al Ikhwan Cimanggu',NULL,'Jasa ongkir','1','Paket','0',NULL,8500,0,'lunas',NULL,'2021-10-06 00:00:00',NULL,'2021-10-06 01:50:44','2021-10-19 11:31:20','273-juu-10-2021'),
(275,'YSBS Cilacap',NULL,'Penerbitan dan Percetakan Buku Gotong Royong','1000','eks','0',NULL,16300,0,'lunas',NULL,'2021-10-09 00:00:00',NULL,'2021-10-09 04:40:22','2021-10-19 11:30:30','275-jjz-10-2021'),
(276,'FTIK IAIN Purwokerto',NULL,'Banner Webinar Studium General','1','Lembar','0',NULL,200000,0,'lunas',NULL,'2021-10-11 00:00:00',NULL,'2021-10-11 03:59:31','2021-10-19 11:30:44','276-qip-10-2021'),
(277,'Cluster 42',NULL,'Penerbitan dan Percetakan Buku Serpihan Asa','38','eks','0',NULL,30000,0,'belum',NULL,'2021-10-13 00:00:00',NULL,'2021-10-13 01:10:00','2021-10-13 01:10:00','277-oyx-10-2021'),
(278,'Jalaludin',NULL,'Penerbitan dan Percetakan Buku Pandemi Bunga Rampai','20','eks','0',NULL,36000,0,'lunas',NULL,'2021-10-14 00:00:00',NULL,'2021-10-14 08:30:37','2021-11-02 01:56:01','278-zzy-10-2021'),
(279,'Faisal Najib',NULL,'Modul PKD','30','eks','0',NULL,10000,0,'lunas',NULL,'2021-10-15 00:00:00',NULL,'2021-10-15 03:13:33','2021-10-15 03:14:03','279-vis-10-2021'),
(280,'Cluster 55',NULL,'Terbit dan Cetak Buku KKN','50','eks','0',NULL,40000,0,'lunas',NULL,'2021-10-16 00:00:00',NULL,'2021-10-16 05:43:48','2021-10-19 11:31:54','280-amy-10-2021'),
(281,'Eksa',NULL,'Penerbitan dan Percetakan Buku Antologi Klaster 57','26','eks','0',NULL,45000,0,'lunas',NULL,'2021-10-16 00:00:00',NULL,'2021-10-16 05:52:31','2021-10-16 05:53:01','281-tbf-10-2021'),
(282,'PPM EL FIRA',NULL,'Cetak Buku Pengembangan Bahasa','434','eks','0',NULL,13000,142000,'lunas',NULL,'2021-10-17 00:00:00',NULL,'2021-10-17 15:40:05','2021-10-17 15:41:57','282-gvm-10-2021'),
(283,'Afan',NULL,'Cetak Buku','32','eks','0',NULL,16000,0,'lunas',NULL,'2021-10-19 00:00:00',NULL,'2021-10-19 07:59:11','2021-10-19 07:59:34','283-dhq-10-2021'),
(284,'FTIK IAIN Purwokerto',NULL,'Banner PPG 3*8m','1','eks','0',NULL,600000,0,'lunas',NULL,'2021-10-19 00:00:00',NULL,'2021-10-19 11:25:56','2021-10-19 11:28:18','284-tmj-10-2021'),
(285,'FTIK IAIN Purwokerto',NULL,'Seminar Kit','90','Paket','0',NULL,60000,0,'lunas',NULL,'2021-10-19 00:00:00',NULL,'2021-10-19 11:27:56','2021-10-19 11:28:19','284-tmj-10-2021'),
(286,'FTIK IAIN Purwokerto',NULL,'Banner FGD 3*8m','1','Buah','0',NULL,600000,0,'lunas',NULL,'2021-10-19 00:00:00',NULL,'2021-10-19 11:29:20','2021-10-19 11:29:43','286-lpq-10-2021'),
(287,'FTIK IAIN Purwokerto',NULL,'Seminar Kit','55','eks','0',NULL,52000,0,'lunas',NULL,'2021-10-19 00:00:00',NULL,'2021-10-19 11:29:38','2021-10-19 11:29:43','286-lpq-10-2021'),
(288,'IAIN Purwokerto',NULL,'Sewa Lisensi Video Conference','1','Paket','0',NULL,1000000,0,'lunas',NULL,'2021-05-11 00:00:00',NULL,'2021-10-27 08:11:49','2021-10-27 08:12:01','288-ovi-10-2021'),
(289,'Panin Dubai Syariah',NULL,'Cetak Brosur Haji Ansor','2','Rim','0',NULL,400000,0,'lunas',NULL,'2021-10-27 00:00:00',NULL,'2021-10-27 10:18:32','2021-10-27 10:22:54','289-kaq-10-2021'),
(290,'Dinda ayu',NULL,'Penerbitan & Cetak Buku Artikel kkn, saatnya mahasiswa mengabdi','23','eks','0',NULL,38000,0,'belum',NULL,'2021-10-28 00:00:00',NULL,'2021-10-28 02:15:22','2021-10-28 02:15:22','290-fhn-10-2021'),
(291,'Afan',NULL,'Cetak Buku','35','eks','0',NULL,16000,0,'lunas',NULL,'2021-10-28 00:00:00',NULL,'2021-10-28 06:34:27','2021-10-28 06:34:50','291-lbd-10-2021'),
(292,'Cluster 25',NULL,'Penerbitan & Cetak Buku Pengabdian kkn mb 48','23','eks','0',NULL,49000,0,'lunas',NULL,'2021-10-30 00:00:00',NULL,'2021-10-30 02:23:43','2021-10-30 02:24:27','292-jte-10-2021'),
(293,'Sdr. Labib Syauqi',NULL,'Paket Penerbitan buku','1','Paket (20 eks)','0',NULL,700000,0,'lunas',NULL,'2021-11-01 00:00:00',NULL,'2021-11-01 09:33:27','2021-11-08 06:02:45','293-wuk-11-2021'),
(294,'Anggraeni MS.',NULL,'Penerbitan dan Percetakan LKPD','50','eks','0',NULL,20000,0,'lunas',NULL,'2021-11-06 00:00:00',NULL,'2021-11-06 00:55:43','2021-11-08 06:02:00','294-ftk-11-2021'),
(295,'Panitia mapaba ratar',NULL,'Modul mapaba','250','eks','0',NULL,17000,0,'lunas',NULL,'2021-11-06 00:00:00',NULL,'2021-11-06 05:17:03','2021-11-06 05:17:30','295-emj-11-2021'),
(296,'Purbo',NULL,'Modul IPA','20','eks','0',NULL,26000,0,'lunas',NULL,'2021-11-06 00:00:00',NULL,'2021-11-06 05:19:54','2021-11-06 05:20:28','296-epl-11-2021'),
(301,'SPI IAIN PURWOKERTO',NULL,'Cetak Banner','1','eks','0',NULL,300000,0,'lunas',NULL,'2021-09-24 00:00:00',NULL,'2021-11-09 07:40:03','2021-11-09 07:40:47','301-qtg-11-2021'),
(302,'SPI IAIN PURWOKERTO',NULL,'Cetak Banner','1','eks','0',NULL,300000,0,'lunas',NULL,'2021-10-05 00:00:00',NULL,'2021-11-09 07:41:27','2021-11-09 07:41:44','302-div-11-2021'),
(303,'SPI IAIN PURWOKERTO',NULL,'Cetak Banner','1','eks','0',NULL,300000,0,'lunas',NULL,'2021-10-08 00:00:00',NULL,'2021-11-09 07:41:56','2021-11-09 07:42:15','303-hqg-11-2021'),
(304,'SPI IAIN PURWOKERTO',NULL,'Cetak Banner','1','eks','0',NULL,300000,0,'lunas',NULL,'2021-11-04 00:00:00',NULL,'2021-11-09 07:42:39','2021-11-09 07:42:42','304-qyw-11-2021'),
(305,'Bu Durotun Nafisah',NULL,'Nadhom Safinah Jawa','50','eks','0',NULL,10000,0,'lunas',NULL,'2021-11-17 00:00:00',NULL,'2021-11-17 05:40:10','2021-11-17 05:41:39','305-knj-11-2021'),
(306,'Bu Durotun Nafisah',NULL,'Nadhom Safinah Jawa','50','eks','0',NULL,10000,0,'lunas',NULL,'2021-11-17 00:00:00',NULL,'2021-11-17 05:41:29','2021-11-17 05:41:36','306-uab-11-2021'),
(307,'KKN DR Klaster 06',NULL,'Penerbitan & Cetak Buku Antologi Artikel Pengabdian Mahasiswa Kaki Gunung Slamet','16','eks','0',NULL,31000,0,'lunas',NULL,'2021-11-20 00:00:00',NULL,'2021-11-20 06:44:19','2021-11-22 02:22:20','307-vpi-11-2021'),
(308,'KKN MAHASISWA KLASTER 17',NULL,'Penerbitan & Cetak Buku Integrasi Nilai-nilai dalam Masyarakat','4','eks','0',NULL,120000,0,'lunas',NULL,'2021-11-20 00:00:00',NULL,'2021-11-20 06:45:42','2021-11-22 02:22:22','308-bkz-11-2021'),
(309,'Ning Fatimah',NULL,'Buku Doa2 At Thohiriyah','150','eks','0',NULL,13000,0,'lunas',NULL,'2021-11-24 00:00:00',NULL,'2021-11-24 04:05:29','2021-11-24 04:06:33','309-qyy-11-2021'),
(310,'Ning Fatimah',NULL,'Buku Ibanah','100','eks','0',NULL,17000,0,'lunas',NULL,'2021-11-24 00:00:00',NULL,'2021-11-24 04:06:01','2021-11-24 04:06:33','309-qyy-11-2021'),
(311,'YSBS Cilacap',NULL,'Cetak Buku Gotong Royong','1000','eks','0',NULL,14500,0,'belum',NULL,'2021-12-03 00:00:00',NULL,'2021-12-03 04:34:20','2021-12-03 04:34:20','311-tgy-12-2021'),
(312,'Ajib Hermawan',NULL,'Cetak buku','50','eks','0',NULL,50000,0,'lunas',NULL,'2021-12-04 00:00:00',NULL,'2021-12-04 00:58:57','2021-12-04 00:59:37','312-qpr-12-2021'),
(313,'Ajib Hermawan',NULL,'HAKI','1','eks','0',NULL,800000,0,'lunas',NULL,'2021-12-04 00:00:00',NULL,'2021-12-04 00:59:29','2021-12-04 00:59:37','312-qpr-12-2021'),
(314,'Ponpes Darussalam Dukuhwaluh',NULL,'Revisi Buku','1','Paket','0',NULL,6500000,0,'lunas',NULL,'2021-12-06 00:00:00',NULL,'2021-12-06 02:58:31','2021-12-11 09:38:27','314-kpb-12-2021'),
(315,'ELFIRA',NULL,'KTS','257','eks','0',NULL,5000,0,'belum',NULL,'2021-12-09 00:00:00',NULL,'2021-12-09 03:31:55','2021-12-09 03:31:55','315-hqd-12-2021'),
(316,'STAI ALMA\'ARIF',NULL,'Map Ijasah','96','buah','0',NULL,23000,0,'belum',NULL,'2021-12-11 00:00:00',NULL,'2021-12-11 09:40:14','2021-12-11 09:40:14','316-not-12-2021'),
(317,'STAI ALMA\'ARIF',NULL,'Vandel Wisuda','96','buah','0',NULL,55000,0,'belum',NULL,'2021-12-11 00:00:00',NULL,'2021-12-11 09:40:49','2021-12-11 09:40:49','316-not-12-2021'),
(318,'STAI ALMA\'ARIF',NULL,'Samir','96','buah','0',NULL,30000,0,'belum',NULL,'2021-12-11 00:00:00',NULL,'2021-12-11 09:41:10','2021-12-11 09:41:10','316-not-12-2021'),
(319,'SMP DIPONEGORO CIMANGGU',NULL,'Cetak BLANGKO RAPORT','2','Rim','0',NULL,150000,0,'lunas',NULL,'2021-12-12 00:00:00',NULL,'2021-12-11 23:30:43','2022-01-03 00:12:51','319-wdv-12-2021'),
(320,'Slamet Yahya',NULL,'Layout Buku','1','Paket','0',NULL,1500000,0,'lunas',NULL,'2021-12-14 00:00:00',NULL,'2021-12-14 12:39:30','2021-12-14 12:40:10','320-gvz-12-2021'),
(321,'Slamet Yahya',NULL,'Cetak Buku','50','eks','0',NULL,40000,0,'lunas',NULL,'2021-12-14 00:00:00',NULL,'2021-12-14 12:39:53','2021-12-14 12:40:10','320-gvz-12-2021'),
(322,'Slamet Yahya',NULL,'HAKI','1','eks','0',NULL,800000,0,'lunas',NULL,'2021-12-14 00:00:00',NULL,'2021-12-14 12:40:06','2021-12-14 12:40:10','320-gvz-12-2021'),
(323,'UIN SAIZU',NULL,'Cetak Banner FGD MBKM-PTKIN - ASTON','8','M','0',NULL,30000,0,'belum',NULL,'2021-12-15 00:00:00',NULL,'2021-12-15 03:12:16','2021-12-15 03:22:03','323-bbk-12-2021'),
(324,'UIN SAIZU',NULL,'Cetak Banner FGD MBKM-PTKIN - UIN SAIZU','13','M','0',NULL,30000,0,'belum',NULL,'2021-12-15 00:00:00',NULL,'2021-12-15 03:16:17','2021-12-15 03:21:55','323-bbk-12-2021'),
(325,'UIN SAIZU',NULL,'Cetak Banner FGD MBKM-PTKIN - PENDOPO','12','M','0',NULL,30000,0,'belum',NULL,'2021-12-15 00:00:00',NULL,'2021-12-15 03:19:19','2021-12-15 03:21:44','323-bbk-12-2021'),
(326,'UIN SAIZU',NULL,'Cetak Banner FGD MBKM-PTKIN - PANJANG','2','M','0',NULL,30000,0,'belum',NULL,'2021-12-15 00:00:00',NULL,'2021-12-15 03:19:59','2021-12-15 03:24:26','323-bbk-12-2021'),
(327,'Kepala TIPD',NULL,'Modul Matlab','80','eks','0',NULL,15300,0,'lunas',NULL,'2021-12-16 00:00:00',NULL,'2021-12-16 08:54:14','2022-01-03 00:12:40','327-emj-12-2021'),
(328,'Kepala TIPD',NULL,'Modul Minitab','135','eks','0',NULL,20850,0,'lunas',NULL,'2021-12-16 00:00:00',NULL,'2021-12-16 08:55:05','2022-01-03 00:12:40','327-emj-12-2021'),
(329,'Kepala TIPD',NULL,'Modul SPSS','55','eks','0',NULL,12550,0,'lunas',NULL,'2021-12-16 00:00:00',NULL,'2021-12-16 08:55:38','2022-01-03 00:12:40','327-emj-12-2021'),
(330,'Kepala TIPD',NULL,'Modul Pustaka','50','eks','0',NULL,12100,0,'lunas',NULL,'2021-12-16 00:00:00',NULL,'2021-12-16 08:56:05','2022-01-03 00:12:40','327-emj-12-2021'),
(331,'Kepala TIPD',NULL,'Modul Eviews','52','eks','0',NULL,12320,0,'lunas',NULL,'2021-12-16 00:00:00',NULL,'2021-12-16 08:56:34','2022-01-03 00:12:40','327-emj-12-2021'),
(332,'SPI IAIN PURWOKERTO',NULL,'Cetak Banner Kegiatan Audit Barang dan Jasa di Perguruan Tinggi','1','pcs','0',NULL,300000,0,'lunas',NULL,'2021-11-18 00:00:00',NULL,'2021-12-21 05:08:38','2021-12-21 05:16:09','332-bhd-12-2021'),
(333,'SPI IAIN PURWOKERTO',NULL,'Cetak Banner Kegiatan Workshop Preventive Audit Berbasis Aplikasi','1','pcs','0',NULL,300000,0,'lunas',NULL,'2021-12-01 00:00:00',NULL,'2021-12-21 05:12:01','2021-12-21 05:16:05','333-brl-12-2021'),
(334,'SPI IAIN PURWOKERTO',NULL,'Cetak Banner Kegiatan Workshop post Audit Berbasis Aplikasi','1','pcs','0',NULL,300000,0,'lunas',NULL,'2021-12-01 00:00:00',NULL,'2021-12-21 05:13:19','2021-12-21 05:16:01','334-utm-12-2021'),
(335,'SPI IAIN PURWOKERTO',NULL,'Ceatak Banner Kegiatan E-Audit (Digitalisasi Audit) laporan Keuangan','1','pcs','0',NULL,300000,0,'lunas',NULL,'2021-12-01 00:00:00',NULL,'2021-12-21 05:15:13','2021-12-21 05:15:59','335-ece-12-2021'),
(336,'SPI IAIN PURWOKERTO',NULL,'Ceatak Banner Kegiatan Sosialisasi Informasi Pengawasan Internal Berbasis WEB','1','pcs','0',NULL,30000,0,'lunas',NULL,'2021-12-01 00:00:00',NULL,'2021-12-21 05:15:37','2021-12-21 05:15:56','336-oyh-12-2021'),
(337,'SPI IAIN PURWOKERTO',NULL,'Cetak Buku Panduan Sosialisasi Sistem Informasi Pengawasan Internal Berbasis WEB','100','eks','0',NULL,25000,0,'lunas',NULL,'2021-12-15 00:00:00',NULL,'2021-12-21 05:23:31','2021-12-21 05:23:47','337-puw-12-2021'),
(338,'Muslimin',NULL,'Buku Tabungan','50','eks','0',NULL,2500,0,'lunas',NULL,'2021-12-24 00:00:00',NULL,'2021-12-24 06:41:38','2021-12-24 06:42:13','338-xel-12-2021'),
(339,'Muslimin',NULL,'Buku Prestasi','50','eks','0',NULL,5000,0,'lunas',NULL,'2021-12-24 00:00:00',NULL,'2021-12-24 06:42:10','2021-12-24 06:42:13','338-xel-12-2021'),
(340,'Fitria  Zana  Kumala, S.Si.,  M.Sc',NULL,'Penerbitan dan Percetakan Buku Hasil penelitian','50','eks','0',NULL,80000,0,'lunas',NULL,'2021-12-29 00:00:00',NULL,'2021-12-29 05:34:30','2021-12-29 05:35:31','340-lrh-12-2021'),
(341,'AMIN  KHAERUDIN',NULL,'Cetak buku Balaghoh','50','eks','0',NULL,30000,0,'lunas',NULL,'2021-12-30 00:00:00',NULL,'2021-12-30 03:13:08','2022-01-01 00:50:44','341-fnw-12-2021'),
(342,'Bapak Suwanto',NULL,'Layout Buku','1','Paket','0',NULL,500000,0,'lunas',NULL,'2021-12-31 00:00:00',NULL,'2021-12-31 03:36:46','2022-01-01 00:50:39','342-pfc-12-2021'),
(343,'Bapak Suwanto',NULL,'Cetak Buku','10','eks','0',NULL,45000,0,'lunas',NULL,'2021-12-31 00:00:00',NULL,'2021-12-31 03:37:05','2022-01-01 00:50:39','342-pfc-12-2021'),
(344,'PPM EL FURQON',NULL,'Print Soal UAS','2612','Lembar','0',NULL,240,0,'belum',NULL,'2022-01-02 00:00:00',NULL,'2022-01-02 04:11:26','2022-01-02 04:11:26','344-czl-01-2022'),
(345,'SMP DIPONEGORO CIMANGGU',NULL,'Cetak BLANGKO RAPORT','2','Rim','0',NULL,150000,0,'belum',NULL,'2022-01-03 00:00:00',NULL,'2022-01-03 00:12:28','2022-01-03 00:12:28','345-ucg-01-2022'),
(346,'TBM NUJU PINTER',NULL,'Cetak Buku Catatan Perjalanan 20 Tahun','20','eks','0',NULL,35000,0,'belum',NULL,'2022-01-08 00:00:00',NULL,'2022-01-08 05:26:51','2022-01-08 05:26:51','346-iwg-01-2022'),
(347,'STAIS Majenang',NULL,'Panduan Skripsi EBI','45','eks','0',NULL,9200,0,'lunas',NULL,'2022-01-11 00:00:00',NULL,'2022-01-11 04:31:20','2022-01-14 12:30:20','347-bot-01-2022'),
(348,'STAIS Majenang',NULL,'Buku Bimbingan Skripsi EBI','35','eks','0',NULL,4600,0,'lunas',NULL,'2022-01-11 00:00:00',NULL,'2022-01-11 04:31:45','2022-01-14 12:30:20','347-bot-01-2022'),
(349,'STAIS Majenang',NULL,'Panduan Skripsi Tarbiyah','75','eks','0',NULL,10200,0,'lunas',NULL,'2022-01-11 00:00:00',NULL,'2022-01-11 04:32:26','2022-01-14 12:30:20','347-bot-01-2022'),
(350,'STAIS Majenang',NULL,'Buku Bimbingan Skripsi Tarbiyah','62','eks','0',NULL,4600,0,'lunas',NULL,'2022-01-11 00:00:00',NULL,'2022-01-11 04:32:42','2022-01-14 12:30:20','347-bot-01-2022'),
(351,'STAIS Majenang',NULL,'Panduan PKL EBI','45','eks','0',NULL,6600,0,'lunas',NULL,'2022-01-11 00:00:00',NULL,'2022-01-11 04:32:59','2022-01-14 12:30:20','347-bot-01-2022'),
(352,'STAIS Majenang',NULL,'Catatan Harian PKL EBI','35','eks','0',NULL,6200,0,'lunas',NULL,'2022-01-11 00:00:00',NULL,'2022-01-11 04:36:08','2022-01-14 12:30:20','347-bot-01-2022'),
(353,'STAIS Majenang',NULL,'Panduan PPL PAI','50','eks','0',NULL,7400,0,'lunas',NULL,'2022-01-11 00:00:00',NULL,'2022-01-11 04:36:25','2022-01-14 12:30:20','347-bot-01-2022'),
(354,'STAIS Majenang',NULL,'Panduan PPL PIAUD','12','eks','0',NULL,6900,0,'lunas',NULL,'2022-01-11 00:00:00',NULL,'2022-01-11 04:36:43','2022-01-14 12:30:20','347-bot-01-2022'),
(355,'STAIS Majenang',NULL,'Catatan Harian PPL PAI','40','eks','0',NULL,6200,0,'lunas',NULL,'2022-01-11 00:00:00',NULL,'2022-01-11 04:36:59','2022-01-14 12:30:20','347-bot-01-2022'),
(356,'STAIS Majenang',NULL,'Catatan Harian PPL PIAUD','12','eks','0',NULL,6200,0,'lunas',NULL,'2022-01-11 00:00:00',NULL,'2022-01-11 04:37:15','2022-01-14 12:30:20','347-bot-01-2022'),
(357,'STAIS Majenang',NULL,'Cetak undangan','170','Buah','0',NULL,7000,0,'lunas',NULL,'2022-01-14 00:00:00',NULL,'2022-01-14 12:30:57','2022-01-17 08:42:07','357-cpb-01-2022'),
(358,'Pondok Pesantren Zam Zam Purwokerto',NULL,'Cetak Buku Ramadhan','300','eks','0',NULL,5000,0,'belum',NULL,'2022-01-17 00:00:00',NULL,'2022-01-17 03:26:32','2022-01-17 03:26:32','358-hwz-01-2022'),
(359,'Ida Novianti',NULL,'Cetak buku','10','eks','0',NULL,50000,0,'lunas',NULL,'2022-01-19 00:00:00',NULL,'2022-01-19 07:56:07','2022-01-24 09:05:15','359-xzt-01-2022'),
(361,'Bapak Eri Kuncoro',NULL,'Cetak Buku 1000 hari','80','eks','0',NULL,8000,0,'lunas',NULL,'2022-01-24 00:00:00',NULL,'2022-01-24 09:05:51','2022-01-25 08:18:02','360-are-01-2022'),
(362,'Gus Munif',NULL,'Cetak Buku Panduan Umrah','60','eks','0',NULL,18500,0,'belum',NULL,'2022-01-25 00:00:00',NULL,'2022-01-25 00:51:37','2024-09-27 04:58:47','362-hup-01-2022'),
(363,'STAIS Majenang',NULL,'Buku Wisuda','23000','eks','0',NULL,80,0,'belum',NULL,'2022-01-25 00:00:00',NULL,'2022-01-25 15:10:45','2022-01-25 15:11:55','363-xbd-01-2022'),
(364,'STAIS Majenang',NULL,'Stiker Vinil','100','Lembar','0',NULL,1500,0,'belum',NULL,'2022-01-25 00:00:00',NULL,'2022-01-25 15:12:40','2022-01-25 15:13:20','363-xbd-01-2022'),
(365,'STAIS Majenang',NULL,'Bendera Pataka','1','Buah','0',NULL,200000,0,'belum',NULL,'2022-01-25 00:00:00',NULL,'2022-01-25 15:14:05','2022-01-25 15:15:15','363-xbd-01-2022'),
(366,'JMQH Banyumas',NULL,'Sablon bendera','1','buah','0',NULL,90000,0,'lunas',NULL,'2022-01-26 00:00:00',NULL,'2022-01-26 12:00:06','2022-01-26 12:00:54','366-zdg-01-2022'),
(367,'JMQH Banyumas',NULL,'Sablon Umbul2','2','buah','0',NULL,110000,0,'lunas',NULL,'2022-01-26 00:00:00',NULL,'2022-01-26 12:00:38','2022-01-26 12:00:54','366-zdg-01-2022'),
(368,'MAN Majenang',NULL,'Cetak Juknis BOS','25','eks','0',NULL,24500,0,'lunas',NULL,'2022-01-30 00:00:00',NULL,'2022-01-30 02:53:27','2023-09-18 02:08:01','368-ept-01-2022'),
(369,'MAN Majenang',NULL,'Juknis EDM','20','eks','0',NULL,20000,0,'lunas',NULL,'2022-01-30 00:00:00',NULL,'2022-01-30 02:53:51','2023-09-18 02:08:01','368-ept-01-2022'),
(370,'MAN Majenang',NULL,'Cetak MAP','1500','eks','0',NULL,4500,0,'lunas',NULL,'2022-01-30 00:00:00',NULL,'2022-01-30 02:54:19','2023-09-18 02:08:01','368-ept-01-2022'),
(371,'PCNU Banyumas',NULL,'Buku Muskercab','130','eks','0',NULL,7000,0,'lunas',NULL,'2022-02-03 00:00:00',NULL,'2022-02-03 04:05:30','2023-06-22 16:53:01','371-ttk-02-2022'),
(372,'PCNU Banyumas',NULL,'Kompilasi Proker','110','eks','0',NULL,7200,0,'lunas',NULL,'2022-02-03 00:00:00',NULL,'2022-02-03 04:07:10','2023-06-22 16:53:01','371-ttk-02-2022'),
(373,'PCNU Banyumas',NULL,'Buku Bahtsul Masail','110','eks','0',NULL,1600,0,'lunas',NULL,'2022-02-03 00:00:00',NULL,'2022-02-03 04:07:40','2023-06-22 16:53:01','371-ttk-02-2022'),
(374,'PCNU Banyumas',NULL,'Proposal','8','eks','0',NULL,7000,0,'lunas',NULL,'2022-02-03 00:00:00',NULL,'2022-02-03 04:08:05','2023-06-22 16:53:01','371-ttk-02-2022'),
(375,'PCNU Banyumas',NULL,'Seminar KIT','250','eks','0',NULL,27200,0,'lunas',NULL,'2022-02-03 00:00:00',NULL,'2022-02-03 04:08:22','2023-06-22 16:53:01','371-ttk-02-2022'),
(376,'Novico Purbo',NULL,'Cetak Buku Mengajar IPA Asyik','60','eks','0',NULL,35000,0,'lunas',NULL,'2022-02-03 00:00:00',NULL,'2022-02-03 05:12:29','2022-02-03 13:42:56','376-vjy-02-2022'),
(377,'SD IT Harapan Ummat',NULL,'Buku Doa-doa Pendek','300','eks','0',NULL,13000,0,'lunas',NULL,'2022-02-03 00:00:00',NULL,'2022-02-03 12:37:39','2022-02-19 02:19:49','377-xpd-02-2022'),
(378,'PC ANSOR BANYUMAS',NULL,'Stopmap Ansor','1000','Buah','0',NULL,6000,0,'lunas',NULL,'2022-02-04 00:00:00',NULL,'2022-02-04 05:32:18','2022-02-08 03:55:22','378-nji-02-2022'),
(379,'BMT El Sejahtera',NULL,'Cetak Banner 2*4m','1','Buah','0',NULL,160000,0,'lunas',NULL,'2022-02-07 00:00:00',NULL,'2022-02-07 10:00:43','2022-02-08 03:55:11','379-bih-02-2022'),
(380,'BMT El Sejahtera',NULL,'Cetak Buku Laporan','50','eks','0',NULL,50000,0,'lunas',NULL,'2022-02-07 00:00:00',NULL,'2022-02-07 10:01:17','2022-02-08 03:55:11','379-bih-02-2022'),
(381,'MTs Biroyatul Huda',NULL,'Kalender 3 halaman','300','Buah','0',NULL,7000,0,'lunas',NULL,'2022-02-12 00:00:00',NULL,'2022-02-12 04:52:16','2022-02-12 04:52:22','381-qvo-02-2022'),
(382,'Husen Fadhil',NULL,'Buku Panduan Rihlah','150','eks','0',NULL,7000,0,'lunas',NULL,'2022-02-16 00:00:00',NULL,'2022-02-16 08:46:36','2022-03-02 04:17:13','382-vlq-02-2022'),
(383,'Husen Fadhil',NULL,'ID-CARD','13','eks','0',NULL,4000,0,'lunas',NULL,'2022-02-16 00:00:00',NULL,'2022-02-16 08:47:05','2022-03-02 04:17:13','382-vlq-02-2022'),
(384,'Husen Fadhil',NULL,'Banner 60x60 cm','3','eks','0',NULL,20000,0,'lunas',NULL,'2022-02-16 00:00:00',NULL,'2022-02-16 08:47:32','2022-03-02 04:17:13','382-vlq-02-2022'),
(385,'Husen Fadhil',NULL,'Banner 3x1','1','eks','0',NULL,57000,0,'lunas',NULL,'2022-02-16 00:00:00',NULL,'2022-02-16 09:01:29','2022-03-02 04:17:13','382-vlq-02-2022'),
(386,'Mbak Fifi',NULL,'Cetak Study Kelayakan Bisnis','10','eks','0',NULL,45000,0,'lunas',NULL,'2022-02-17 00:00:00',NULL,'2022-02-17 02:34:49','2022-03-02 04:19:56','386-cxt-02-2022'),
(387,'Mbak Fifi',NULL,'Cetak Laporan Penelitian Bu Asih','1','eks','0',NULL,28500,0,'lunas',NULL,'2022-02-17 00:00:00',NULL,'2022-02-17 02:35:17','2022-03-02 04:19:56','386-cxt-02-2022'),
(388,'Mbak Fifi',NULL,'Cetak Dare To Dream Big','2','eks','0',NULL,15250,0,'lunas',NULL,'2022-02-17 00:00:00',NULL,'2022-02-17 02:35:56','2022-03-02 04:19:56','386-cxt-02-2022'),
(389,'Mbak Fifi',NULL,'Cetak Peranan Pembimbing Kemasyarakatan','8','eks','0',NULL,24350,0,'lunas',NULL,'2022-02-17 00:00:00',NULL,'2022-02-17 02:36:28','2022-03-02 04:19:56','386-cxt-02-2022'),
(390,'Mbak Fifi',NULL,'Cetak Di Antara Pinus-Pinus yang Basah','1','eks','0',NULL,15100,0,'lunas',NULL,'2022-02-17 00:00:00',NULL,'2022-02-17 02:37:02','2022-03-02 04:19:56','386-cxt-02-2022'),
(391,'Mbak Fifi',NULL,'Cetak Suara isi Hati','1','eks','0',NULL,12560,0,'lunas',NULL,'2022-02-17 00:00:00',NULL,'2022-02-17 02:37:42','2022-03-02 04:19:56','386-cxt-02-2022'),
(392,'Mbak Fifi',NULL,'Cetak Sang Guru','1','eks','0',NULL,12350,0,'lunas',NULL,'2022-02-17 00:00:00',NULL,'2022-02-17 02:39:08','2022-03-02 04:19:56','386-cxt-02-2022'),
(393,'Mbak Fifi',NULL,'Cetak Analisis SWOT','13','eks','0',NULL,23800,0,'lunas',NULL,'2022-02-17 00:00:00',NULL,'2022-02-17 02:39:45','2022-03-02 04:19:56','386-cxt-02-2022'),
(394,'STAIS Majenang',NULL,'Penerbitan dan Percetakan Buku hasil KKN','110','eks','0',NULL,53000,250000,'lunas',NULL,'2022-02-17 00:00:00',NULL,'2022-02-17 04:20:53','2022-03-03 00:14:28','394-gpo-02-2022'),
(395,'STAIS Majenang',NULL,'Ongkir','1','Trip','0',NULL,100000,0,'lunas',NULL,'2022-02-17 00:00:00',NULL,'2022-02-17 04:21:32','2022-03-03 00:14:28','394-gpo-02-2022'),
(396,'Mbak Sari',NULL,'Cetak buku Mamake','50','eks','0',NULL,25000,0,'lunas',NULL,'2022-03-03 00:00:00',NULL,'2022-03-03 00:15:37','2022-03-07 04:43:59','396-mdy-03-2022'),
(397,'Penerbit RKWK',NULL,'Cetak COVID- 19 DAN PERMASALAHANNYA DALAM DUNIA PENDIDIKAN','1','eks','0',NULL,14400,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:40:14','2022-04-22 02:23:20','397-got-03-2022'),
(398,'Penerbit RKWK',NULL,'Cetak TRANSFORMASI PENDIDIKAN DI INDONESIA','1','eks','0',NULL,13300,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:40:46','2022-04-22 02:23:20','397-got-03-2022'),
(399,'Penerbit RKWK',NULL,'Cetak Meyoal pembelajaran daring di masa pandemi','1','eks','0',NULL,13500,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:41:25','2022-04-22 02:23:20','397-got-03-2022'),
(400,'Penerbit RKWK',NULL,'Cetak HIRUK PIKUK PEMBELAJARAN DI MASA PANDEMI','1','eks','0',NULL,14700,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:41:49','2022-04-22 02:23:20','397-got-03-2022'),
(401,'Penerbit RKWK',NULL,'Cetak IKHWAL PEMBELAJARAN JARAK JAUH PROBLEM DAN SOLUSI','1','eks','0',NULL,12700,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:42:18','2022-04-22 02:23:20','397-got-03-2022'),
(402,'Penerbit RKWK',NULL,'Cetak POTRET PENDIDIKAN DI MASA PANDEMI COVID-19','1','eks','0',NULL,11600,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:42:43','2022-04-22 02:23:20','397-got-03-2022'),
(403,'Penerbit RKWK',NULL,'Cetak PERUBAHAN PEMBELAJARAN DI MASA PANDEMI COVID-19','2','eks','0',NULL,11600,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:43:01','2022-04-22 02:23:20','397-got-03-2022'),
(404,'Penerbit RKWK',NULL,'Cetak PENDIDIKAN DI MASA PANDEMI COVID-19: DILEMA ANTARA LURING DAN DARING','1','eks','0',NULL,12900,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:44:30','2022-04-22 02:23:20','397-got-03-2022'),
(405,'Penerbit RKWK',NULL,'Cetak ADAPTASI PEMBELAJARAN DIMASA PANDEMI','1','eks','0',NULL,15000,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:44:47','2022-04-22 02:23:20','397-got-03-2022'),
(406,'Penerbit RKWK',NULL,'Cetak CARA MENGHADAPI PEMBELAJARAN TATAP MUKA TERBATAS','1','eks','0',NULL,13400,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:45:14','2022-04-22 02:23:20','397-got-03-2022'),
(408,'Penerbit RKWK',NULL,'Cetak KONFLIK DIBALIK PUDARNYA LITERASI MEMBACA','1','eks','0',NULL,12300,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:45:38','2022-04-22 02:23:20','397-got-03-2022'),
(409,'Penerbit RKWK',NULL,'Cetak MOTIVASI BELAJAR SISWA DIMASA PANDEMI','2','eks','0',NULL,11400,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:45:54','2022-04-22 02:23:20','397-got-03-2022'),
(410,'Penerbit RKWK',NULL,'Cetak SEMANGAT SISWA DALAM MENGIKUTI PEMBELAJARAN DI MASA PANDEMI','2','eks','0',NULL,12300,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:47:34','2022-04-22 02:23:20','397-got-03-2022'),
(411,'Penerbit RKWK',NULL,'Cetak LEARNING LOSS DI MASA PANDEMI','1','eks','0',NULL,13900,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:47:51','2022-04-22 02:23:20','397-got-03-2022'),
(412,'Penerbit RKWK',NULL,'Cetak literasi pelajar di masa pandemi','2','eks','0',NULL,11600,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:48:11','2022-04-22 02:23:20','397-got-03-2022'),
(414,'Penerbit RKWK',NULL,'Cetak MOTIVASI BELAJAR SISWA DIMASA PANDEMI COVID-19','1','eks','0',NULL,12300,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:48:39','2022-04-22 02:23:20','397-got-03-2022'),
(415,'Penerbit RKWK',NULL,'Cetak LIKA LIKU BELAJAR SAAT PANDEMI','1','eks','0',NULL,13600,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:48:54','2022-04-22 02:23:20','397-got-03-2022'),
(416,'Penerbit RKWK',NULL,'Cetak TRANSFORMASI PEMBELAJARAN DI ERA PANDEMI','1','eks','0',NULL,14500,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:49:10','2022-04-22 02:23:20','397-got-03-2022'),
(417,'Penerbit RKWK',NULL,'Cetak GOES TO ANOTHER WORLD','1','eks','0',NULL,13000,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:49:27','2022-04-22 02:23:20','397-got-03-2022'),
(418,'Penerbit RKWK',NULL,'Cetak THE SPIDEY','1','eks','0',NULL,18800,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:49:50','2022-04-22 02:23:20','397-got-03-2022'),
(419,'Penerbit RKWK',NULL,'Cetak MAHKOTA WARISAN','1','eks','0',NULL,13200,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:50:05','2022-04-22 02:23:20','397-got-03-2022'),
(420,'Penerbit RKWK',NULL,'Cetak PETUALANGAN DUNIA PERMEN','1','eks','0',NULL,13300,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:50:29','2022-04-22 02:23:20','397-got-03-2022'),
(421,'Penerbit RKWK',NULL,'Cetak PETUALANGAN NOURIN DI TAMAN AJAIB','1','eks','0',NULL,12900,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:50:44','2022-04-22 02:23:20','397-got-03-2022'),
(422,'Penerbit RKWK',NULL,'Cetak WEREWOLF HUNTER','1','eks','0',NULL,13600,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:50:59','2022-04-22 02:23:20','397-got-03-2022'),
(423,'Penerbit RKWK',NULL,'Cetak KRISTAL DEWI EVELINE','1','eks','0',NULL,14800,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:51:18','2022-04-22 02:23:20','397-got-03-2022'),
(424,'Penerbit RKWK',NULL,'Cetak MISTERI DUNIA PERI','1','eks','0',NULL,17100,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:51:33','2022-04-22 02:23:20','397-got-03-2022'),
(425,'Penerbit RKWK',NULL,'Cetak AQUAWOMAN','1','eks','0',NULL,14100,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:51:47','2022-04-22 02:23:20','397-got-03-2022'),
(426,'Penerbit RKWK',NULL,'Cetak BUKU AJAIB','1','eks','0',NULL,16200,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:52:03','2022-04-22 02:23:20','397-got-03-2022'),
(427,'Penerbit RKWK',NULL,'Cetak TAMAN MESIN WAKTU','1','eks','0',NULL,13200,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:52:17','2022-04-22 02:23:20','397-got-03-2022'),
(428,'Penerbit RKWK',NULL,'Cetak DESA KERAMAT','1','eks','0',NULL,13500,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:52:32','2022-04-22 02:23:20','397-got-03-2022'),
(429,'Penerbit RKWK',NULL,'Cetak BLUE SI NAGA BATU','1','eks','0',NULL,15300,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:52:49','2022-04-22 02:23:20','397-got-03-2022'),
(430,'Penerbit RKWK',NULL,'Cetak ADVENTURE IN MINECRAFT WORLD','1','eks','0',NULL,16000,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:53:00','2022-04-22 02:23:20','397-got-03-2022'),
(431,'Penerbit RKWK',NULL,'Cetak KEKUATAN SIHIR NINO','1','eks','0',NULL,14600,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:53:14','2022-04-22 02:23:20','397-got-03-2022'),
(432,'Penerbit RKWK',NULL,'Cetak MAGIC CAT LAND','1','eks','0',NULL,13900,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:53:27','2022-04-22 02:23:21','397-got-03-2022'),
(433,'Penerbit RKWK',NULL,'Cetak ISTANA DI ATAS AWAN','1','eks','0',NULL,15600,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:53:38','2022-04-22 02:23:21','397-got-03-2022'),
(434,'Penerbit RKWK',NULL,'Cetak BERSELANCAR DI PELANGI','1','eks','0',NULL,14600,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:53:53','2022-04-22 02:23:21','397-got-03-2022'),
(435,'Penerbit RKWK',NULL,'Cetak PETUALANGAN BONI SANG ASTRONOT','1','eks','0',NULL,13500,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:54:07','2022-04-22 02:23:21','397-got-03-2022'),
(436,'Penerbit RKWK',NULL,'Cetak AKU DAN MIMPIKU','1','eks','0',NULL,14600,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:54:27','2022-04-22 02:23:21','397-got-03-2022'),
(437,'Penerbit RKWK',NULL,'Cetak KAMAR MISTERIUS','1','eks','0',NULL,16300,0,'lunas',NULL,'2022-03-07 00:00:00',NULL,'2022-03-07 04:54:35','2022-04-22 02:23:21','397-got-03-2022'),
(438,'Riyanti Puskesmas Purwokerto Selatan',NULL,'Cetak Buku Daftar Tilik','25','eks','0',NULL,12000,0,'lunas',NULL,'2022-03-14 00:00:00',NULL,'2022-03-14 05:51:56','2022-04-21 05:11:14','438-wxd-03-2022'),
(439,'PGMI UIN SAIZU Purwokerto',NULL,'Pesona Alam & Budaya Indonesia Timur','45','eks','0',NULL,42900,0,'lunas',NULL,'2022-03-14 00:00:00',NULL,'2022-03-14 05:55:21','2022-04-22 02:24:06','439-yys-03-2022'),
(440,'PGMI UIN SAIZU Purwokerto',NULL,'Pesona Alam & Budaya Pulau Jawa','46','eks','0',NULL,33300,0,'lunas',NULL,'2022-03-14 00:00:00',NULL,'2022-03-14 05:57:29','2022-04-22 02:24:11','440-rwl-03-2022'),
(441,'PGMI UIN SAIZU Purwokerto',NULL,'Wonderful Kalimantan Antologi Cerpen','47','eks','0',NULL,36100,0,'lunas',NULL,'2022-03-14 00:00:00',NULL,'2022-03-14 05:58:29','2022-04-22 02:24:08','441-hek-03-2022'),
(442,'PGMI UIN SAIZU Purwokerto',NULL,'Pesona Alam & Budaya Pulau Sumatera','49','eks','0',NULL,45200,0,'lunas',NULL,'2022-03-14 00:00:00',NULL,'2022-03-14 06:00:30','2022-04-22 02:24:32','442-lfm-03-2022'),
(444,'MAN 2 Cilacap',NULL,'Cetak RKTM','3','eks','0',NULL,36000,0,'lunas',NULL,'2022-03-17 00:00:00',NULL,'2022-03-17 11:03:00','2022-04-04 03:10:56','443-vez-03-2022'),
(445,'MAN 2 Cilacap',NULL,'Cetak Renstra','3','eks','0',NULL,25500,0,'lunas',NULL,'2022-03-17 00:00:00',NULL,'2022-03-17 11:04:00','2022-04-04 03:10:56','443-vez-03-2022'),
(446,'MAN 2 Cilacap',NULL,'Cetak AMA','3','eks','0',NULL,38500,0,'lunas',NULL,'2022-03-17 00:00:00',NULL,'2022-03-17 11:04:43','2022-04-04 03:10:56','443-vez-03-2022'),
(447,'MAN 2 Cilacap',NULL,'Cetak RKAM','3','eks','0',NULL,22500,0,'lunas',NULL,'2022-03-17 00:00:00',NULL,'2022-03-17 11:05:39','2022-04-04 03:10:56','443-vez-03-2022'),
(448,'TPQ Muslimat NU 25',NULL,'Cetak Buku Prestasi Santri','200','eks','0',NULL,16000,0,'lunas',NULL,'2022-03-18 00:00:00',NULL,'2022-03-18 02:18:38','2022-03-22 03:23:32','448-gje-03-2022'),
(449,'MTs Biroyatul Huda',NULL,'Cetak Brosur','167','eks','0',NULL,5000,0,'lunas',NULL,'2022-03-18 00:00:00',NULL,'2022-03-18 14:16:30','2022-03-18 14:16:35','449-byi-03-2022'),
(450,'Achmad Sobirin',NULL,'Buku Nilai-nilai kepramukaan dalam Al-Qur’an','40','eks','0',NULL,37500,0,'lunas',NULL,'2022-03-19 00:00:00',NULL,'2022-03-19 08:23:12','2022-03-19 08:24:10','450-ncx-03-2022'),
(451,'FTIK UIN Saizu Purwokerto',NULL,'Cetak kitab taisirul barahin li ilmil ma\'ani','40','eks','0',NULL,50000,0,'lunas',NULL,'2022-03-22 00:00:00',NULL,'2022-03-22 03:24:49','2022-03-22 23:39:50','451-ohx-03-2022'),
(452,'Ma\'had UIN Saizu',NULL,'Cetak Laporan Ma\'had','6860','lembar','0',NULL,250,0,'belum',NULL,'2022-03-22 00:00:00',NULL,'2022-03-22 07:34:09','2022-03-22 07:40:36','452-vyd-03-2022'),
(453,'Ma\'had UIN Saizu',NULL,'Cover','33','eks','0',NULL,10000,0,'belum',NULL,'2022-03-22 00:00:00',NULL,'2022-03-22 07:34:41','2022-03-22 07:34:41','452-vyd-03-2022'),
(454,'LPPM UIN Saizu',NULL,'Cetak Laporan LPPM','4350','lembar','0',NULL,250,0,'belum',NULL,'2022-03-22 00:00:00',NULL,'2022-03-22 07:37:46','2022-03-22 07:37:46','454-cfi-03-2022'),
(455,'LPPM UIN Saizu',NULL,'Cover','16','eks','0',NULL,10000,0,'belum',NULL,'2022-03-22 00:00:00',NULL,'2022-03-22 07:39:31','2022-03-22 07:39:31','454-cfi-03-2022'),
(456,'Pondok Pesantren \"Wali Songo\"  Ngabar',NULL,'Cetak Modul Pembelajaran Tajridi','650','eks','0',NULL,24000,0,'lunas',NULL,'2022-03-27 00:00:00',NULL,'2022-03-27 11:06:22','2023-07-24 14:39:01','456-osr-03-2022'),
(457,'Dr. Novan Ardy Wiyani',NULL,'Buku Analisis kebijakan PAUD','60','eks','0',NULL,36000,0,'belum',NULL,'2022-04-02 00:00:00',NULL,'2022-04-02 04:40:20','2022-04-02 04:40:20','457-hdx-04-2022'),
(458,'Pondok Pesantren At Thohiriyah',NULL,'Cetak Buku Taqrirat Sadidah','50','eks','0',NULL,13000,0,'lunas',NULL,'2022-04-04 00:00:00',NULL,'2022-04-04 03:08:08','2022-04-06 08:35:20','458-lhr-04-2022'),
(459,'Pondok Pesantren At Thohiriyah',NULL,'Cetak Buku Maulid Diba\'','30','eks','0',NULL,8000,0,'lunas',NULL,'2022-04-04 00:00:00',NULL,'2022-04-04 03:08:57','2022-04-06 08:35:20','458-lhr-04-2022'),
(460,'Edi Sungkowo',NULL,'Percetakan dan Penerbitan Buku Manajemen Mutu Pendidikan Madrasah','500','eks','0',NULL,30000,0,'belum',NULL,'2022-04-04 00:00:00',NULL,'2022-04-04 05:00:23','2022-04-04 05:00:23','460-qow-04-2022'),
(461,'Pondok Pesantren At Thohiriyah',NULL,'Cetak Buku Maulid Diba\'','30','eks','0',NULL,8000,0,'lunas',NULL,'2022-04-06 00:00:00',NULL,'2022-04-06 08:34:39','2022-04-07 07:23:28','461-eyk-04-2022'),
(462,'Puskesmas Purwokerto Selatan',NULL,'Cetak Banner','1','pcs','0',NULL,105000,0,'belum',NULL,'2022-04-08 00:00:00',NULL,'2022-04-08 03:41:56','2022-04-08 03:41:56','462-vmi-04-2022'),
(463,'Hasanuddin',NULL,'Jasa pembuatan HAKI','1','eks','0',NULL,800000,0,'lunas',NULL,'2022-04-08 00:00:00',NULL,'2022-04-08 05:38:02','2022-04-08 05:38:09','463-kea-04-2022'),
(464,'Laziznu Banyumas',NULL,'Cetak Buku Annual','200','eks','0',NULL,40000,0,'lunas',NULL,'2022-04-14 00:00:00',NULL,'2022-04-14 08:12:57','2022-04-14 08:13:04','464-jug-04-2022'),
(465,'Imron Hamzah',NULL,'Cetak Buku Al-MAWARITS','200','eks','0',NULL,18600,400000,'belum',NULL,'2022-04-16 00:00:00',NULL,'2022-04-16 04:13:43','2022-04-16 04:13:43','465-bkx-04-2022'),
(466,'Fina Malindasari',NULL,'Penerbitan & Cetak Buku Bimbingan Konseling','8','eks','0',NULL,100000,0,'lunas',NULL,'2022-04-20 00:00:00',NULL,'2022-04-20 02:36:32','2022-04-20 03:59:16','466-emn-04-2022'),
(467,'SD Terpadu Putra Harapan Pwt',NULL,'Cetak Sertifikat','483','lembar','0',NULL,1500,0,'lunas',NULL,'2022-04-20 00:00:00',NULL,'2022-04-20 07:27:12','2022-04-21 06:48:54','467-dqo-04-2022'),
(468,'Penerbit RKWK',NULL,'SATU PESAN UNTUK NEGERIKU','1','eks','0',NULL,24400,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:46:47','2022-04-22 02:23:21','397-got-03-2022'),
(469,'Penerbit RKWK',NULL,'TUHAN AKU TERSESAT','2','eks','0',NULL,19200,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:47:24','2022-04-22 02:23:21','397-got-03-2022'),
(470,'Penerbit RKWK',NULL,'MEMBANGUN BUDAYA LITERASI PADA KELUARGA','2','eks','0',NULL,31900,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:47:58','2022-04-22 02:23:21','397-got-03-2022'),
(471,'Penerbit RKWK',NULL,'GIZI DAN KESEHATAN','2','eks','0',NULL,31200,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:48:17','2022-04-22 02:23:21','397-got-03-2022'),
(472,'Penerbit RKWK',NULL,'INDAHNYA KEBERSAMAAN','2','eks','0',NULL,13900,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:48:50','2022-04-22 02:23:21','397-got-03-2022'),
(473,'Penerbit RKWK',NULL,'HADIAH TERINDAH DARI PANDEMI','2','eks','0',NULL,22500,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:49:08','2022-04-22 02:23:21','397-got-03-2022'),
(474,'Penerbit RKWK',NULL,'JEJAK MUTIARA TERSEMBUNYI','2','eks','0',NULL,46000,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:49:26','2022-04-22 02:23:21','397-got-03-2022'),
(475,'Penerbit RKWK',NULL,'IZINKAN AKU MERAIH CITA-CITAKU','2','eks','0',NULL,43600,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:49:51','2022-04-22 02:23:21','397-got-03-2022'),
(476,'Penerbit RKWK',NULL,'MENTARI HARAPAN MAHKOTA SURGA','2','eks','0',NULL,16800,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:50:49','2022-04-22 02:23:21','397-got-03-2022'),
(477,'Penerbit RKWK',NULL,'MODUL SKI','2','eks','0',NULL,21000,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:51:03','2022-04-22 02:23:21','397-got-03-2022'),
(478,'Penerbit RKWK',NULL,'DIALISIS','2','eks','0',NULL,13800,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:51:24','2022-04-22 02:23:21','397-got-03-2022'),
(479,'Penerbit RKWK',NULL,'FUNGSI LITMAS','2','eks','0',NULL,16200,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:51:54','2022-04-22 02:23:21','397-got-03-2022'),
(480,'Penerbit RKWK',NULL,'KURIKULUM PAUD','2','eks','0',NULL,36500,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:52:15','2022-04-22 02:23:21','397-got-03-2022'),
(481,'Penerbit RKWK',NULL,'KISAH OKTOBER','2','eks','0',NULL,22200,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:52:31','2022-04-22 02:23:21','397-got-03-2022'),
(482,'Penerbit RKWK',NULL,'SENI MENDIDIK ANAK DENGAN RAMAH','2','eks','0',NULL,24300,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:53:00','2022-04-22 02:23:21','397-got-03-2022'),
(483,'Penerbit RKWK',NULL,'PEREMPUAN YANG TERJERAT KURSI TAMAN','2','eks','0',NULL,25400,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:53:29','2022-04-22 02:23:21','397-got-03-2022'),
(484,'Penerbit RKWK',NULL,'KREATIF MENULIS CERITA PENDEK (Full Colour)','2','eks','0',NULL,80000,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:53:50','2022-04-22 02:23:21','397-got-03-2022'),
(485,'Penerbit RKWK',NULL,'SARASI GALAS:KELAS 1','2','eks','0',NULL,14400,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:54:33','2022-04-22 02:23:21','397-got-03-2022'),
(486,'Penerbit RKWK',NULL,'SARASI GALAS:KELAS 2','2','eks','0',NULL,13300,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:54:50','2022-04-22 02:23:21','397-got-03-2022'),
(487,'Penerbit RKWK',NULL,'SARASI GALAS:KELAS 3','2','eks','0',NULL,13500,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:55:11','2022-04-22 02:23:21','397-got-03-2022'),
(488,'Penerbit RKWK',NULL,'SARASI GALAS:KELAS 4','2','eks','0',NULL,14700,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:55:28','2022-04-22 02:23:21','397-got-03-2022'),
(489,'Penerbit RKWK',NULL,'SARASI GALAS:KELAS 5','2','eks','0',NULL,11600,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:55:46','2022-04-22 02:23:21','397-got-03-2022'),
(490,'Penerbit RKWK',NULL,'SARASI GALAS:KELAS 6','2','eks','0',NULL,12700,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:56:12','2022-04-22 02:23:21','397-got-03-2022'),
(491,'Penerbit RKWK',NULL,'SARASI GALAS:PAI dan Budi Pekerti','2','eks','0',NULL,11600,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:56:29','2022-04-22 02:23:21','397-got-03-2022'),
(492,'Penerbit RKWK',NULL,'SARASI GALAS:PJOK','2','eks','0',NULL,12900,0,'lunas',NULL,'2022-04-21 00:00:00',NULL,'2022-04-21 05:56:41','2022-04-22 02:23:21','397-got-03-2022'),
(493,'Mts Miftahul Huda Rawalo',NULL,'Buku Cerita Anak Muslim \"Puasa Pertama Aqil\"','5','eks','0',NULL,75000,0,'lunas',NULL,'2022-04-23 00:00:00',NULL,'2022-04-23 05:50:26','2022-04-23 05:55:11','493-ype-04-2022'),
(494,'Ibu Nyai Hajar',NULL,'Buku Cerita Anak Muslim \"Puasa Pertama Aqil\"','1','eks','0',NULL,75000,0,'lunas',NULL,'2022-04-23 00:00:00',NULL,'2022-04-23 05:53:41','2022-04-23 05:55:08','494-psu-04-2022'),
(495,'Ibu Eliana',NULL,'Buku Cerita Anak Muslim \"Puasa Pertama Aqil\"','1','eks','0',NULL,75000,0,'lunas',NULL,'2022-04-23 00:00:00',NULL,'2022-04-23 05:54:12','2022-04-23 05:55:03','495-qzz-04-2022'),
(496,'UNSOED',NULL,'Ganti Cover','113','eks','0',NULL,12000,0,'lunas',NULL,'2022-04-25 00:00:00',NULL,'2022-04-25 02:24:02','2022-04-25 04:47:22','496-dcc-04-2022'),
(497,'UNSOED',NULL,'Jilid','27','eks','0',NULL,4000,0,'lunas',NULL,'2022-04-25 00:00:00',NULL,'2022-04-25 02:24:23','2022-04-25 04:47:22','496-dcc-04-2022'),
(498,'UNSOED',NULL,'Copy Buku Rontok','2','eks','0',NULL,28200,0,'lunas',NULL,'2022-04-25 00:00:00',NULL,'2022-04-25 02:25:01','2022-04-25 04:47:22','496-dcc-04-2022'),
(499,'UNSOED',NULL,'Copy Buku Analisis','2','eks','0',NULL,24600,0,'lunas',NULL,'2022-04-25 00:00:00',NULL,'2022-04-25 02:25:25','2022-04-25 04:47:22','496-dcc-04-2022'),
(500,'UNSOED',NULL,'Copy Buku Teknologi','2','eks','0',NULL,35600,0,'lunas',NULL,'2022-04-25 00:00:00',NULL,'2022-04-25 02:25:44','2022-04-25 04:47:22','496-dcc-04-2022'),
(501,'UNSOED',NULL,'Copy Buku Budidaya Jeruk','2','eks','0',NULL,25600,0,'lunas',NULL,'2022-04-25 00:00:00',NULL,'2022-04-25 02:25:58','2022-04-25 04:47:22','496-dcc-04-2022'),
(502,'UNSOED',NULL,'Copy Buku Manajemen','4','eks','0',NULL,113200,0,'lunas',NULL,'2022-04-25 00:00:00',NULL,'2022-04-25 02:26:19','2022-04-25 04:47:22','496-dcc-04-2022'),
(503,'UNSOED',NULL,'Copy Buku Padi','2','eks','0',NULL,25900,0,'lunas',NULL,'2022-04-25 00:00:00',NULL,'2022-04-25 02:26:36','2022-04-25 04:47:22','496-dcc-04-2022'),
(504,'RKWK',NULL,'Re-Coveri','25','eks','0',NULL,6000,0,'lunas',NULL,'2022-04-26 00:00:00',NULL,'2022-04-26 06:13:44','2022-04-26 06:16:15','504-vay-04-2022'),
(505,'Dr. Farichah',NULL,'Penerbitan dan percetakan buku','15','eks','0',NULL,50000,150000,'belum',NULL,'2022-05-13 00:00:00',NULL,'2022-05-13 03:44:09','2022-05-13 03:45:29','505-out-05-2022'),
(506,'Madin Fathul `Ulum',NULL,'Cetak Buku Tabungan','300','eks','0',NULL,3000,0,'lunas',NULL,'2022-05-25 00:00:00',NULL,'2022-05-25 05:05:01','2022-05-27 04:50:27','506-zok-05-2022'),
(507,'Madin Fathul `Ulum',NULL,'Cetak Buku Prestasi','200','eks','0',NULL,4000,0,'lunas',NULL,'2022-05-25 00:00:00',NULL,'2022-05-25 05:05:17','2022-05-27 04:50:27','506-zok-05-2022'),
(508,'PP At Thohiriyah',NULL,'Buku Doa-doa','100','eks','0',NULL,15000,0,'lunas',NULL,'2022-06-03 00:00:00',NULL,'2022-06-03 08:36:17','2023-08-14 10:40:50','508-ngh-06-2022'),
(509,'PP At Thohiriyah',NULL,'Kitab Masailul Fiqhiyah','35','eks','0',NULL,37000,0,'lunas',NULL,'2022-06-03 00:00:00',NULL,'2022-06-03 08:46:50','2023-08-14 10:40:50','508-ngh-06-2022'),
(510,'PP At Thohiriyah',NULL,'Buku Santri','400','eks','0',NULL,6000,200000,'lunas',NULL,'2022-06-03 00:00:00',NULL,'2022-06-03 08:47:21','2023-08-14 10:40:50','508-ngh-06-2022'),
(511,'Madin Fathul `Ulum',NULL,'Cetak Buku Tabungan','100','eks','0',NULL,3000,0,'lunas',NULL,'2022-06-08 00:00:00',NULL,'2022-06-08 01:55:07','2022-06-08 01:57:03','511-mvv-06-2022'),
(512,'Ponpes Nurul Iman',NULL,'Cetak Buku Izin','50','eks','0',NULL,4500,0,'lunas',NULL,'2022-06-08 00:00:00',NULL,'2022-06-08 01:56:34','2022-06-08 01:56:58','512-rbh-06-2022'),
(513,'Ponpes Fathul Mu\'in',NULL,'Cetak Nadhom Safinah Jawa','200','eks','0',NULL,8000,0,'lunas',NULL,'2022-06-11 00:00:00',NULL,'2022-06-11 06:19:08','2022-06-11 06:20:45','513-mbg-06-2022'),
(514,'Ponpes Fathul Mu\'in',NULL,'Buku Prestasi','200','eks','0',NULL,3000,0,'lunas',NULL,'2022-06-11 00:00:00',NULL,'2022-06-11 06:19:42','2022-06-11 06:20:52','513-mbg-06-2022'),
(515,'Ponpes Ath-Thohiriyyah',NULL,'Cetak Kitab Awrod','100','eks','0',NULL,3700,0,'lunas',NULL,'2022-06-15 00:00:00',NULL,'2022-06-15 02:24:07','2024-05-09 03:28:18','515-drm-06-2022'),
(516,'Muhyi Fadlil',NULL,'Buku Mobil Antik 2 jadi Musholla','20','eks','0',NULL,22000,0,'lunas',NULL,'2022-06-17 00:00:00',NULL,'2022-06-17 06:41:47','2022-06-24 04:37:15','516-dps-06-2022'),
(517,'Pascasarjana UIN Saizu Purwokerto',NULL,'Belanja Bahan Berupa Pencetakan Naskah Soal Ujian Masuk Mahasiswa S3 Gelombang 1 Pascasarjana','1',NULL,'0',NULL,660000,0,'lunas',NULL,'2022-06-09 00:00:00',NULL,'2022-06-24 04:23:14','2022-06-24 10:27:35','517-qig-06-2022'),
(521,'Pascasarjana UIN Saizu Purwokerto',NULL,'Belanja Bahan Berupa Banner Kegiatan FGD Penyusunan Kurikulum Prodi PIAUD Tahun 2022','1',NULL,'0',NULL,350000,0,'lunas',NULL,'2022-06-10 00:00:00',NULL,'2022-06-24 04:42:23','2022-06-24 10:27:11','518-wfg-06-2022'),
(522,'Pascasarjana UIN Saizu Purwokerto',NULL,'Belanja Bahan Berupa Banner Kegiatan FGD Penyusunan Kurikulum Prodi IAT Tahun 2022','1',NULL,'0',NULL,350000,0,'lunas',NULL,'2022-06-11 00:00:00',NULL,'2022-06-24 04:43:01','2022-06-24 10:26:45','522-utw-06-2022'),
(523,'Pascasarjana UIN Saizu Purwokerto',NULL,'Belanja Bahan Berupa Cetak Dokumen Kurikulum Prodi IAT Tahun 2022','1','Paket','0',NULL,1800000,0,'lunas',NULL,'2022-06-15 00:00:00',NULL,'2022-06-24 04:43:51','2022-06-24 10:26:08','523-vae-06-2022'),
(524,'PAC Fatayat Kedungbanteng',NULL,'Cetak Buku','50','eks','0',NULL,35000,0,'lunas',NULL,'2022-06-28 00:00:00',NULL,'2022-06-28 04:51:15','2022-06-28 07:47:20','524-ihn-06-2022'),
(525,'STAIS Majenang',NULL,'Cetak buku Panduan KKN','105','eks','0',NULL,7500,0,'lunas',NULL,'2022-07-01 00:00:00',NULL,'2022-07-01 03:41:27','2022-07-16 00:02:48','525-kzk-07-2022'),
(526,'STAIS Majenang',NULL,'Jasa Paket','1','Paket','0',NULL,65000,0,'lunas',NULL,'2022-07-01 00:00:00',NULL,'2022-07-01 03:42:13','2022-07-16 00:02:48','525-kzk-07-2022'),
(527,'Gus Najih',NULL,'Kitab 1','2','eks','0',NULL,170000,0,'lunas',NULL,'2022-07-05 00:00:00',NULL,'2022-07-05 04:52:04','2022-07-16 00:02:42','527-kit-07-2022'),
(528,'Gus Najih',NULL,'Kitab 2','2','eks','0',NULL,190000,0,'lunas',NULL,'2022-07-05 00:00:00',NULL,'2022-07-05 04:52:35','2022-07-16 00:02:42','527-kit-07-2022'),
(529,'STAIS Majenang',NULL,'JASA  PENERBITAN HAKI','4','BUAH','0',NULL,500000,0,'lunas',NULL,'2022-07-06 00:00:00',NULL,'2022-07-06 06:47:29','2022-07-16 00:02:37','529-ppt-07-2022'),
(530,'PPRQ SIRAU',NULL,'Cetak Aurod','250','eks','0',NULL,16000,0,'lunas',NULL,'2022-07-08 00:00:00',NULL,'2022-07-08 10:26:05','2022-07-16 00:02:33','530-dck-07-2022'),
(531,'Pondok Pesantren \"Wali Songo\"  Ngabar',NULL,'Cetak Qur\'an juz 1','190','eks','0',NULL,29300,0,'lunas',NULL,'2022-07-16 00:00:00',NULL,'2022-07-16 00:05:13','2022-08-11 00:31:26','531-fno-07-2022'),
(532,'Pondok Pesantren \"Wali Songo\"  Ngabar',NULL,'Quran Juz 29','290','eks','0',NULL,20250,0,'lunas',NULL,'2022-07-16 00:00:00',NULL,'2022-07-16 00:06:32','2022-08-11 00:31:26','531-fno-07-2022'),
(533,'Pondok Pesantren \"Wali Songo\"  Ngabar',NULL,'Cetak Qur\'an juz 30','560','eks','0',NULL,14100,0,'lunas',NULL,'2022-07-16 00:00:00',NULL,'2022-07-16 00:07:44','2022-08-11 00:31:26','531-fno-07-2022'),
(534,'PCNU KABUPATEN BANYUMAS',NULL,'CETAK BUKU OANDUAN HAJI DAN UMROH','1000','eks','0',NULL,9000,0,'lunas',NULL,'2022-07-16 00:00:00',NULL,'2022-07-16 06:34:59','2022-08-11 00:31:04','534-kra-07-2022'),
(535,'Syekh Wahyu Ceha',NULL,'Cetak Buku Agama Jawa','1','eks','0',NULL,120000,0,'belum',NULL,'2022-08-01 00:00:00',NULL,'2022-08-01 04:26:20','2022-08-01 04:26:20','535-bjd-08-2022'),
(536,'Syekh Wahyu Ceha',NULL,'Cetak Buku Mengislamkan Jawa','1','eks','0',NULL,166000,0,'belum',NULL,'2022-08-01 00:00:00',NULL,'2022-08-01 04:27:17','2022-08-01 04:27:17','535-bjd-08-2022'),
(537,'Syekh Wahyu Ceha',NULL,'Cetak Buku Sisi lain Diponegoro','1','eks','0',NULL,56000,0,'belum',NULL,'2022-08-01 00:00:00',NULL,'2022-08-01 04:27:57','2022-08-01 04:27:57','535-bjd-08-2022'),
(538,'UNSOED',NULL,'Perbaikan Buku & Copy','1','eks','0',NULL,282100,0,'lunas',NULL,'2022-08-08 00:00:00',NULL,'2022-08-08 07:59:52','2022-08-08 07:59:56','538-bon-08-2022'),
(539,'STAIS Majenang',NULL,'Jasa pembuatan HAKI','4','eks','0',NULL,500000,0,'belum',NULL,'2022-08-11 00:00:00',NULL,'2022-08-11 00:29:33','2022-08-11 00:31:49','539-fod-08-2022'),
(540,'Ponpes Ath-Thohiriyyah',NULL,'Buku Santri','100','eks','0',NULL,6000,0,'lunas',NULL,'2022-08-13 00:00:00',NULL,'2022-08-13 05:23:11','2022-08-13 05:35:49','540-bub-08-2022'),
(541,'Bawaslu Kab. Cilacap',NULL,'Cetaka buku','125','eks','0',NULL,38000,0,'belum',NULL,'2022-08-15 00:00:00',NULL,'2022-08-15 02:00:30','2022-08-15 02:00:30','541-bju-08-2022'),
(542,'PCNU Banyumas',NULL,'Buku AD ART & Perkum','50','Paket','0',NULL,70000,0,'belum',NULL,'2022-08-24 00:00:00',NULL,'2022-08-24 08:18:21','2022-08-24 08:18:21','542-zme-08-2022'),
(543,'Pak Hasbi dkk',NULL,'Resilience in Language Teaching  and Learning in the New Normal','30','eks','0',NULL,27000,0,'belum',NULL,'2022-08-29 00:00:00',NULL,'2022-08-29 04:49:21','2022-08-29 04:49:21','543-ary-08-2022'),
(544,'Pak Hasbi dkk',NULL,'Jasa Paket','1','Paket','0',NULL,50000,0,'belum',NULL,'2022-08-29 00:00:00',NULL,'2022-08-29 04:53:31','2022-08-29 04:53:31','543-ary-08-2022'),
(545,'Gus Munif',NULL,'Cetak Buku Panduan Umrah','100','eks','0',NULL,18500,0,'lunas',NULL,'2022-09-01 00:00:00',NULL,'2022-09-01 08:43:52','2022-09-02 02:14:19','545-kkm-09-2022'),
(546,'PTKIN UIN SAIZU',NULL,'Sewa Zoom & Aplikasi Mesem Virtual','1','Paket','0',NULL,4000000,0,'lunas',NULL,'2022-09-02 00:00:00',NULL,'2022-09-02 02:25:00','2022-09-06 04:00:41','546-fes-09-2022'),
(547,'UIN Prof. K.H. Saifuddin Zuhri Purwokerto',NULL,'Lisensi Aplikasi Video Conference Insidental - Kegiatan Pembekalan Audit Laporan keuangan BLU UIN Prof. K.H. Saifuddin Zuhri Purwokerto Tahun 2022\"','1','Paket','0',NULL,500000,0,'lunas',NULL,'2022-09-03 00:00:00',NULL,'2022-09-03 07:09:31','2022-09-03 07:25:03','547-oon-09-2022'),
(548,'UIN Prof. K.H. Saifuddin Zuhri Purwokerto',NULL,'Lisensi Aplikasi Video Conference Insidental - Kegiatan Pembekalan Fraud Audit UIN Prof. K.H. Saifuddin Zuhri Purwokerto Tahun 2022','1','Paket','0',NULL,500000,0,'lunas',NULL,'2022-09-03 00:00:00',NULL,'2022-09-03 07:24:48','2022-09-03 07:25:47','548-zdh-09-2022'),
(549,'UIN Prof. K.H. Saifuddin Zuhri Purwokerto',NULL,'Lisensi Aplikasi Video Conference Insidental - Kegiatan Pembekalan Penyusunan IKU UIN Prof. K.H. Saifuddin Zuhri Purwokerto Tahun 2022','1','paket','0',NULL,500000,0,'lunas',NULL,'2022-09-03 00:00:00',NULL,'2022-09-03 07:29:12','2022-09-03 07:31:39','549-skp-09-2022'),
(550,'Madin Fathul `Ulum',NULL,'Cetak Buku Raport','50','eks','0',NULL,8000,0,'lunas',NULL,'2022-09-06 00:00:00',NULL,'2022-09-06 04:07:30','2022-09-06 04:07:33','550-dzu-09-2022'),
(551,'Rkwk',NULL,'Cetak Buku Analisis SWOT','4','eks','0',NULL,23800,0,'lunas',NULL,'2022-09-09 00:00:00',NULL,'2022-09-09 03:05:53','2022-09-20 09:06:01','551-jvr-09-2022'),
(554,'Rkwk',NULL,'Awaken The Giant Within full','1','eks','0',NULL,70000,0,'lunas',NULL,'2022-09-09 00:00:00',NULL,'2022-09-09 03:15:50','2022-09-20 09:06:01','551-jvr-09-2022'),
(555,'Rkwk',NULL,'Awaken The Giant Within #1','1','eks','0',NULL,30000,0,'lunas',NULL,'2022-09-09 00:00:00',NULL,'2022-09-09 03:16:16','2022-09-20 09:06:01','551-jvr-09-2022'),
(556,'Rkwk',NULL,'Awaken The Giant Within #2','1','eks','0',NULL,16500,0,'lunas',NULL,'2022-09-09 00:00:00',NULL,'2022-09-09 03:17:16','2022-09-20 09:06:01','551-jvr-09-2022'),
(557,'Rkwk',NULL,'Awaken The Giant Within #3','1','eks','0',NULL,15500,0,'lunas',NULL,'2022-09-09 00:00:00',NULL,'2022-09-09 03:18:31','2022-09-20 09:06:01','551-jvr-09-2022'),
(558,'Dr. Farichatul Maftuchah, M.Ag.',NULL,'Cetak Buku SENSITIVITAS GENDER DI PONDOK PESANTREN','48','eks','0',NULL,50000,0,'lunas',NULL,'2022-09-09 00:00:00',NULL,'2022-09-09 08:20:11','2022-09-09 08:21:06','558-xub-09-2022'),
(559,'Mahbub Nasir',NULL,'Cetak Buku Ulumul Qur\'an','50','eks','0',NULL,30000,0,'lunas',NULL,'2022-09-22 00:00:00',NULL,'2022-09-22 07:30:10','2022-09-22 07:30:14','559-ypp-09-2022'),
(560,'KBIH NU Al Arofat Banyumas',NULL,'FC Soal TPS','220','lembar','0',NULL,250,0,'lunas',NULL,'2022-09-23 00:00:00',NULL,'2022-09-23 08:12:10','2022-09-23 10:48:26','560-ray-09-2022'),
(561,'KBIH NU Al Arofat Banyumas',NULL,'FC Form C','660','lembar','0',NULL,250,0,'lunas',NULL,'2022-09-23 00:00:00',NULL,'2022-09-23 08:13:06','2022-09-23 10:48:26','560-ray-09-2022'),
(562,'KBIH NU Al Arofat Banyumas',NULL,'Ongkir','1','paket','0',NULL,21500,0,'lunas',NULL,'2022-09-23 00:00:00',NULL,'2022-09-23 08:13:27','2022-09-23 10:48:26','560-ray-09-2022'),
(563,'LWPNU Banyumas',NULL,'Banner LWPNU','1','lbr','0',NULL,167000,0,'belum',NULL,'2022-09-28 00:00:00',NULL,'2022-09-28 02:50:49','2022-09-28 02:56:27','563-hnm-09-2022'),
(564,'LWPNU Banyumas',NULL,'Banner LWP - LPPM','1','lbr','0',NULL,167000,0,'belum',NULL,'2022-09-28 00:00:00',NULL,'2022-09-28 02:51:58','2022-09-28 02:55:59','563-hnm-09-2022'),
(565,'LWPNU Banyumas',NULL,'Banner Selamat Datang','1','lbr','0',NULL,90000,0,'belum',NULL,'2022-09-28 00:00:00',NULL,'2022-09-28 02:57:22','2022-09-28 02:57:22','563-hnm-09-2022'),
(566,'LWPNU Banyumas',NULL,'Map','100','lbr','0',NULL,14000,0,'belum',NULL,'2022-09-28 00:00:00',NULL,'2022-09-28 03:08:36','2022-09-28 03:37:40','563-hnm-09-2022'),
(567,'LWPNU Banyumas',NULL,'Sertifikat','70','lbr','0',NULL,5000,0,'belum',NULL,'2022-09-28 00:00:00',NULL,'2022-09-28 03:09:07','2022-09-28 03:09:07','563-hnm-09-2022'),
(568,'LWPNU Banyumas',NULL,'Id Card','65','pcs','0',NULL,7500,0,'belum',NULL,'2022-09-28 00:00:00',NULL,'2022-09-28 03:09:58','2022-09-28 03:09:58','563-hnm-09-2022'),
(569,'STAIS Majenang',NULL,'Buku Pembayaran','500','eks','0',NULL,5500,0,'lunas',NULL,'2022-10-02 00:00:00',NULL,'2022-10-02 02:52:35','2022-10-02 02:52:43','569-goi-10-2022'),
(570,'RKWK Publisher',NULL,'Cetak Buku Pembelajaran IPA','30','eks','0',NULL,33500,0,'belum',NULL,'2022-10-05 00:00:00',NULL,'2022-10-05 05:44:46','2022-10-05 05:44:46','570-bxk-10-2022'),
(571,'Suta Sartika',NULL,'Cetak Buku Tuhan Aku Tersesat','2','eks','0',NULL,20000,0,'lunas',NULL,'2022-10-05 00:00:00',NULL,'2022-10-05 05:47:46','2022-10-06 04:36:51','571-cnj-10-2022'),
(572,'Suta Sartika',NULL,'Cetak Buku Perempuan yang Terjerat Kursi Taman','2','eks','0',NULL,23000,0,'lunas',NULL,'2022-10-05 00:00:00',NULL,'2022-10-05 05:48:31','2022-10-06 04:36:51','571-cnj-10-2022'),
(573,'STKIP Darussalam Karangpucung',NULL,'Blangko Ijazah','300','Lembar','0',NULL,45000,0,'belum',NULL,'2022-10-05 00:00:00',NULL,'2022-10-05 10:39:08','2022-10-05 10:39:08','573-hfa-10-2022'),
(574,'Solikhun',NULL,'Cetak Buku Disertasi','10','eks','0',NULL,47000,0,'lunas',NULL,'2022-10-06 00:00:00',NULL,'2022-10-06 03:28:03','2023-12-12 07:44:45','574-rfp-10-2022'),
(575,'Solikhun',NULL,'Cetak Buku Ringkasan Disertasi','59','eks','0',NULL,30000,0,'lunas',NULL,'2022-10-06 00:00:00',NULL,'2022-10-06 03:28:35','2023-12-12 07:44:45','574-rfp-10-2022'),
(576,'Fuad',NULL,'Cetak Buku Sebersit Inspirasi','10','eks','0',NULL,50000,0,'lunas',NULL,'2022-10-06 00:00:00',NULL,'2022-10-06 09:03:05','2022-10-06 09:03:35','576-hzu-10-2022'),
(577,'MWC NU Kedungbanteng',NULL,'Cetak Infak Berkah','100','eks','0',NULL,15000,200000,'lunas',NULL,'2022-10-11 00:00:00',NULL,'2022-10-11 12:36:02','2022-10-22 06:23:48','577-hyz-10-2022'),
(578,'STAIS MAJENANG',NULL,'DKPS STAIS MAJENANG UPLOAD 3','3','eks','0',NULL,18750,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:35:21','2022-11-05 05:11:49','578-gbs-10-2022'),
(579,'STAIS MAJENANG',NULL,'DED STAI SUFYAN TSAURI MAJENANG UPLOAD 3','3','eks','0',NULL,35500,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:36:42','2022-11-05 05:11:49','578-gbs-10-2022'),
(580,'STAIS MAJENANG',NULL,'BORANG AKREDITASI PAI 2022','3','eks','0',NULL,45000,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:41:35','2022-11-05 05:11:49','578-gbs-10-2022'),
(581,'STAIS MAJENANG',NULL,'4 BIMBINGAN AKADEMIK MAHASISWA ESY','4','eks','0',NULL,7530,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:42:22','2022-11-05 05:11:49','578-gbs-10-2022'),
(582,'STAIS MAJENANG',NULL,'4 BIMBINGAN AKADEMIK MAHASISWA PAI','4','eks','0',NULL,7530,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:42:57','2022-11-05 05:11:49','578-gbs-10-2022'),
(583,'STAIS MAJENANG',NULL,'7 Pedoman Layanan Non Akademik Mahasiswa','4','eks','0',NULL,7640,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:43:18','2022-11-05 05:11:49','578-gbs-10-2022'),
(584,'STAIS MAJENANG',NULL,'5 Panduan Pedoman Penerimaan Mahasiswa Baru','4','eks','0',NULL,6870,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:43:40','2022-11-05 05:11:49','578-gbs-10-2022'),
(585,'STAIS MAJENANG',NULL,'PANDUAN SKRIPSI ES 2019 ok','4','eks','0',NULL,11160,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:44:03','2022-11-05 05:11:49','578-gbs-10-2022'),
(586,'STAIS MAJENANG',NULL,'PANDUAN SKRIPSI PAI 2019','4','eks','0',NULL,12920,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:44:25','2022-11-05 05:11:49','578-gbs-10-2022'),
(587,'STAIS MAJENANG',NULL,'PANDUAN SKRIPSI PIAUD 2019','4','eks','0',NULL,12920,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:44:44','2022-11-05 05:11:49','578-gbs-10-2022'),
(588,'STAIS MAJENANG',NULL,'PANDUAN SKRIPSI ES 2019-2020','4','eks','0',NULL,11050,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:45:02','2022-11-05 05:11:49','578-gbs-10-2022'),
(589,'STAIS MAJENANG',NULL,'PANDUAN SKRIPSI PAI 2019-2020','4','eks','0',NULL,12810,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:45:22','2022-11-05 05:11:49','578-gbs-10-2022'),
(590,'STAIS MAJENANG',NULL,'PANDUAN SKRIPSI PIAUD 2019-2020','4','eks','0',NULL,12810,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:45:40','2022-11-05 05:11:49','578-gbs-10-2022'),
(591,'STAIS MAJENANG',NULL,'4 PANDUAN SKRIPSI EBI ED.2021','4','eks','0',NULL,12810,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:45:56','2022-11-05 05:11:49','578-gbs-10-2022'),
(592,'STAIS MAJENANG',NULL,'4 PANDUAN SKRIPSI TARBIYAH ED.2021','4','eks','0',NULL,14240,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:46:18','2022-11-05 05:11:49','578-gbs-10-2022'),
(593,'STAIS MAJENANG',NULL,'4 PANDUAN SKRIPSI EBI ED.2022','4','eks','0',NULL,12810,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:46:40','2022-11-05 05:11:49','578-gbs-10-2022'),
(594,'STAIS MAJENANG',NULL,'4 PANDUAN SKRIPSI TARBIYAH ED.2022','4','eks','0',NULL,14130,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:46:53','2022-11-05 05:11:49','578-gbs-10-2022'),
(595,'STAIS MAJENANG',NULL,'PROFIL UMUM DAN DATA SARPRAS STAIS','4','eks','0',NULL,6100,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:47:10','2022-11-05 05:11:49','578-gbs-10-2022'),
(596,'STAIS MAJENANG',NULL,'Rencana Pengambangan Dosen dan Tenaga Kependidikan','4','eks','0',NULL,8300,0,'lunas',NULL,'2022-10-21 00:00:00',NULL,'2022-10-21 08:47:33','2022-11-05 05:11:49','578-gbs-10-2022'),
(597,'Hervin Suroso',NULL,'buku Terjemahan Klasifikasi Desimal Dewey','2','eks','0',NULL,210000,0,'lunas',NULL,'2022-10-25 00:00:00',NULL,'2022-10-25 03:39:10','2022-10-25 10:04:44','597-tmi-10-2022'),
(601,'Hervin Suroso',NULL,'Buku Daftar Tajuk Subyek Islam dan sistem klasifikasi islam','2','eks','0',NULL,40000,0,'lunas',NULL,'2022-10-25 00:00:00',NULL,'2022-10-25 03:44:38','2022-10-25 10:04:44','597-tmi-10-2022'),
(602,'Hervin Suroso',NULL,'buku Pedoman Katalogisasi','2','eks','0',NULL,19000,0,'lunas',NULL,'2022-10-25 00:00:00',NULL,'2022-10-25 03:46:01','2022-10-25 10:04:44','597-tmi-10-2022'),
(603,'Hervin Suroso',NULL,'Buku Petunjuk Teknis pembuatan kartu katalog di perpustakaan','2','eks','0',NULL,18000,0,'lunas',NULL,'2022-10-25 00:00:00',NULL,'2022-10-25 03:46:22','2022-10-25 10:04:44','597-tmi-10-2022'),
(604,'MWC NU Kedungbanteng',NULL,'Print','200','eks','0',NULL,1000,40000,'lunas',NULL,'2022-10-27 00:00:00',NULL,'2022-10-27 02:24:03','2022-11-14 07:59:16','604-qau-10-2022'),
(605,'UPT Ma\'had Al-Jami\'ah UIN SAIZU',NULL,'Blocknote','150','eks','0',NULL,10000,0,'belum',NULL,'2022-10-27 00:00:00',NULL,'2022-10-27 02:31:43','2022-10-27 02:31:43','605-rvq-10-2022'),
(606,'UPT Ma\'had Al-Jami\'ah UIN SAIZU',NULL,'Goodiebag','150','eks','0',NULL,7000,0,'belum',NULL,'2022-10-27 00:00:00',NULL,'2022-10-27 02:32:08','2022-10-27 02:34:22','605-rvq-10-2022'),
(607,'UPT Ma\'had Al-Jami\'ah UIN SAIZU',NULL,'Pulpen','150','eks','0',NULL,2000,0,'belum',NULL,'2022-10-27 00:00:00',NULL,'2022-10-27 02:32:21','2022-10-27 02:32:21','605-rvq-10-2022'),
(608,'UPT Ma\'had Al-Jami\'ah UIN SAIZU',NULL,'Sertifikat','150','eks','0',NULL,5000,0,'belum',NULL,'2022-10-27 00:00:00',NULL,'2022-10-27 02:32:35','2022-10-27 02:32:35','605-rvq-10-2022'),
(609,'Risa',NULL,'Jilid Softcover','2','eks','0',NULL,10000,0,'lunas',NULL,'2022-10-27 00:00:00',NULL,'2022-10-27 02:51:49','2022-11-14 07:56:37','609-zya-10-2022'),
(610,'KBIHU NU Banyumas',NULL,'Cetak buku Panduan Haji dan Umrah','1000','eks','0',NULL,18500,0,'lunas',NULL,'2022-11-05 00:00:00',NULL,'2022-11-05 05:12:48','2023-06-27 06:10:07','610-ogt-11-2022'),
(611,'UNSOED',NULL,'Perbaikan Buku','70','eks','0',NULL,12000,0,'lunas',NULL,'2022-11-07 00:00:00',NULL,'2022-11-07 02:14:10','2022-12-06 03:51:58','611-yip-11-2022'),
(612,'STAIS MAJENANG',NULL,'BUKU PANDUAN PPL PAI 2022-2023','65','eks','0',NULL,12260,0,'belum',NULL,'2022-11-09 00:00:00',NULL,'2022-11-09 08:52:48','2022-11-09 08:52:48','612-yvq-11-2022'),
(614,'STAIS MAJENANG',NULL,'BUKU CATATAN HARIAN PPL PAI 2022-2023','52','eks','0',NULL,8410,0,'belum',NULL,'2022-11-09 00:00:00',NULL,'2022-11-09 08:55:09','2022-11-09 08:55:09','612-yvq-11-2022'),
(615,'STAIS MAJENANG',NULL,'PANDUAN SKRIPSI TARBIYAH 2022-2023','100','eks','0',NULL,15120,0,'belum',NULL,'2022-11-09 00:00:00',NULL,'2022-11-09 08:55:31','2022-11-09 08:55:31','612-yvq-11-2022'),
(616,'STAIS MAJENANG',NULL,'PANDUAN SKRIPSI EBI 2022-2023','40','eks','0',NULL,15230,0,'belum',NULL,'2022-11-09 00:00:00',NULL,'2022-11-09 08:56:06','2022-11-09 08:56:06','612-yvq-11-2022'),
(617,'STAIS MAJENANG',NULL,'BIMBINGAN SKRIPSI TARBIYAH 2022-2023','70','eks','0',NULL,6760,0,'belum',NULL,'2022-11-09 00:00:00',NULL,'2022-11-09 08:56:28','2022-11-09 08:56:28','612-yvq-11-2022'),
(618,'STAIS MAJENANG',NULL,'BIMBINGAN SKRIPSI EBI 2022-2023','30','eks','0',NULL,6760,0,'belum',NULL,'2022-11-09 00:00:00',NULL,'2022-11-09 08:56:54','2022-11-09 08:56:54','612-yvq-11-2022'),
(619,'STAIS MAJENANG',NULL,'BUKU PANDUAN PKL EBI 2022-2023','40','eks','0',NULL,8850,0,'belum',NULL,'2022-11-09 00:00:00',NULL,'2022-11-09 08:57:10','2022-11-09 08:57:10','612-yvq-11-2022'),
(620,'STAIS MAJENANG',NULL,'BUKU CATATAN HARIAN PKL EBI 2022-2023','30','eks','0',NULL,8300,0,'belum',NULL,'2022-11-09 00:00:00',NULL,'2022-11-09 08:57:28','2022-11-09 08:57:28','612-yvq-11-2022'),
(621,'STAIS MAJENANG',NULL,'PANDUAN MICROTEACHING','3','eks','0',NULL,8630,0,'belum',NULL,'2022-11-09 00:00:00',NULL,'2022-11-09 09:04:01','2022-11-09 09:04:01','612-yvq-11-2022'),
(622,'STAIS MAJENANG',NULL,'PANDUAN AKADEMIK 2022','2','eks','0',NULL,24500,0,'belum',NULL,'2022-11-09 00:00:00',NULL,'2022-11-09 09:04:20','2022-11-09 09:04:20','612-yvq-11-2022'),
(623,'Jurnal Dwija Inspira',NULL,'Layout Jurnal','1','eks','0',NULL,342000,0,'belum',NULL,'2022-11-10 00:00:00',NULL,'2022-11-10 02:41:51','2022-11-10 02:41:51','623-oiy-11-2022'),
(624,'Jurnal Dwija Inspira',NULL,'Cetak Jurnal','15','eks','0',NULL,29500,0,'belum',NULL,'2022-11-10 00:00:00',NULL,'2022-11-10 02:42:15','2022-11-10 02:42:15','623-oiy-11-2022'),
(625,'Bank Panin Syariah',NULL,'Cetak Brosur','1','rim','0',NULL,450000,0,'lunas',NULL,'2022-11-10 00:00:00',NULL,'2022-11-10 08:15:14','2022-11-14 07:56:13','625-drj-11-2022'),
(626,'UNUGHA',NULL,'Cetak Panduan Penulisan Karya Ilmiah','50','eks','0',NULL,30000,0,'belum',NULL,'2022-11-19 00:00:00',NULL,'2022-11-19 01:02:10','2022-11-19 01:02:10','626-bui-11-2022'),
(627,'Ponpes Atthohiriyah',NULL,'Cetak Kitab BTA','60','eks','0',NULL,18500,0,'lunas',NULL,'2022-11-23 00:00:00',NULL,'2022-11-23 16:23:06','2022-11-24 05:02:36','627-dxp-11-2022'),
(628,'PCNU KABUPATEN BANYUMAS',NULL,'Cetak Buku Hasil Bahtsul Masail','500','eks','0',NULL,21400,0,'belum',NULL,'2022-11-27 00:00:00',NULL,'2022-11-27 06:14:20','2022-11-27 06:14:20','628-swh-11-2022'),
(630,'MAN 2 CILACAP',NULL,'IMPLEMENTAS KURIKULUM MADRASAH','3','eks','0',NULL,15500,0,'belum',NULL,'2022-12-07 00:00:00',NULL,'2022-12-07 03:36:28','2022-12-07 03:36:28','629-dgi-12-2022'),
(631,'MAN 2 CILACAP',NULL,'KURIKULUM OPRASIONAL MADRASAH','3','eks','0',NULL,37250,0,'belum',NULL,'2022-12-07 00:00:00',NULL,'2022-12-07 03:37:36','2022-12-07 03:37:36','629-dgi-12-2022'),
(632,'MAN 2 CILACAP',NULL,'PANDUAN PROJEK PENGUATAN','3','eks','0',NULL,25250,0,'belum',NULL,'2022-12-07 00:00:00',NULL,'2022-12-07 03:38:20','2022-12-07 03:38:20','629-dgi-12-2022'),
(633,'MAN 2 CILACAP',NULL,'ASESMENT','3','eks','0',NULL,37500,0,'belum',NULL,'2022-12-07 00:00:00',NULL,'2022-12-07 03:39:29','2022-12-07 03:39:29','629-dgi-12-2022'),
(634,'MAN 2 CILACAP',NULL,'BAHASA ARAB','3','eks','0',NULL,122000,0,'belum',NULL,'2022-12-07 00:00:00',NULL,'2022-12-07 03:40:40','2022-12-07 03:40:40','629-dgi-12-2022'),
(635,'MAN 2 CILACAP',NULL,'AQIDAH AKHLAK','3','eks','0',NULL,29500,0,'belum',NULL,'2022-12-07 00:00:00',NULL,'2022-12-07 03:42:15','2022-12-07 03:42:15','629-dgi-12-2022'),
(636,'MAN 2 CILACAP',NULL,'FIQH','3','eks','0',NULL,60500,0,'belum',NULL,'2022-12-07 00:00:00',NULL,'2022-12-07 03:43:07','2022-12-07 03:43:07','629-dgi-12-2022'),
(637,'MAN 2 CILACAP',NULL,'kertas raport','15','rim','0',NULL,240000,0,'belum',NULL,'2022-12-07 00:00:00',NULL,'2022-12-07 03:45:55','2022-12-07 03:45:55','629-dgi-12-2022'),
(638,'MAN 2 CILACAP',NULL,'RKAM','3','eks','0',NULL,18000,0,'belum',NULL,'2022-12-07 00:00:00',NULL,'2022-12-07 03:46:42','2022-12-07 03:46:42','629-dgi-12-2022'),
(639,'ERSA VIANA',NULL,'MAKALAH','26','eks','0',NULL,55000,0,'lunas',NULL,'2022-12-07 00:00:00',NULL,'2022-12-07 04:04:54','2022-12-07 08:52:36','639-lzt-12-2022'),
(640,'ERSA VIANA',NULL,'MAKALAH','1','eks','0',NULL,35000,0,'lunas',NULL,'2022-12-07 00:00:00',NULL,'2022-12-07 04:06:08','2022-12-07 08:52:36','639-lzt-12-2022'),
(641,'Gus Munif',NULL,'Cetak Buku Panduan Umrah','50','eks','0',NULL,18500,0,'lunas',NULL,'2022-12-09 00:00:00',NULL,'2022-12-09 02:15:55','2022-12-09 09:50:09','641-xml-12-2022'),
(642,'Risa',NULL,'Jilid Hardcover','2','eks','0',NULL,25000,0,'lunas',NULL,'2022-12-10 00:00:00',NULL,'2022-12-10 02:09:42','2022-12-10 02:10:14','642-vhp-12-2022'),
(643,'Dalfa',NULL,'Buku Tale of The Heart','3','eks','0',NULL,100000,0,'lunas',NULL,'2022-12-16 00:00:00',NULL,'2022-12-16 03:15:07','2022-12-16 03:15:28','643-qht-12-2022'),
(644,'STAIS MAJENANG',NULL,'Album Wisuda','97','eks','0',NULL,25000,0,'belum',NULL,'2022-12-17 00:00:00',NULL,'2022-12-17 02:18:26','2022-12-17 02:18:26','644-suj-12-2022'),
(645,'STAIS MAJENANG',NULL,'Stiker Wisuda','125','eks','0',NULL,2000,0,'belum',NULL,'2022-12-17 00:00:00',NULL,'2022-12-17 02:26:33','2022-12-17 02:26:33','644-suj-12-2022'),
(646,'STAIS MAJENANG',NULL,'Undangan Wisuda','200','eks','0',NULL,2000,0,'belum',NULL,'2022-12-17 00:00:00',NULL,'2022-12-17 02:31:39','2022-12-17 02:31:39','644-suj-12-2022'),
(647,'STAIS MAJENANG',NULL,'Buku panduan PPL PIAUD','35','eks','0',NULL,8960,0,'belum',NULL,'2022-12-17 00:00:00',NULL,'2022-12-17 04:05:23','2022-12-17 04:05:23','644-suj-12-2022'),
(648,'STAIS MAJENANG',NULL,'Buku Harian','16','eks','0',NULL,8410,0,'belum',NULL,'2022-12-17 00:00:00',NULL,'2022-12-17 04:06:16','2022-12-17 04:06:16','644-suj-12-2022'),
(649,'STAIS MAJENANG',NULL,'Buku Kurikulum','3','eks','0',NULL,26100,0,'belum',NULL,'2022-12-17 00:00:00',NULL,'2022-12-17 04:07:06','2022-12-17 04:07:06','644-suj-12-2022'),
(650,'Dr. H. Munjin, M.Pd.I',NULL,'Cetak buku Hasil Penelitian','50','eks','0',NULL,50000,0,'lunas',NULL,'2022-12-19 00:00:00',NULL,'2022-12-19 04:31:41','2022-12-19 04:50:04','650-jtd-12-2022'),
(651,'Yahya',NULL,'cetak buku skripsi','2','eks','0',NULL,30000,0,'lunas',NULL,'2022-12-21 00:00:00',NULL,'2022-12-21 09:27:46','2022-12-21 09:34:29','651-rzo-12-2022'),
(652,'Alviani',NULL,'Cetak buku skripsi','3','eks','0',NULL,32000,0,'lunas',NULL,'2022-12-21 00:00:00',NULL,'2022-12-21 09:29:49','2022-12-21 09:34:37','652-ntx-12-2022'),
(653,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Cetak id card Panitia PVC','70','Lembar','0',NULL,10000,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:00:14','2022-12-22 04:14:10','653-zxj-12-2022'),
(654,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Cetak Id Card Peserta, Tamu Undangan','1000','Lembar','0',NULL,3500,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:00:51','2022-12-22 04:14:10','653-zxj-12-2022'),
(655,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Cetak id card Keamanan dan Panitia Lokal','80','Lembar','0',NULL,3500,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:01:22','2022-12-22 04:14:10','653-zxj-12-2022'),
(656,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Cetak Stiker ukuran A5 (untuk di kendaraan) bertuliskan (harap dibawa)','180','lembar','0',NULL,2000,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:02:24','2022-12-22 04:14:10','653-zxj-12-2022'),
(657,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Stiker Tamu Undangan/VIP A5','50','eks','0',NULL,1500,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:03:09','2022-12-22 04:14:10','653-zxj-12-2022'),
(658,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Stiker Panitia/Pengurus Cabang A5','40','lembar','0',NULL,1500,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:03:50','2022-12-22 04:14:10','653-zxj-12-2022'),
(659,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Stiker Peserta Konferensi (Utusan MWC/Ranting/Lembaga/Banom)','112','eks','0',NULL,1500,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:04:16','2022-12-22 04:14:10','653-zxj-12-2022'),
(660,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Stiker ukuran sedang bertuliskan Konferensi Cabang NU Banyumas Logo, Tagline, Lokasi dan tanggal','1000','eks','0',NULL,500,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:04:48','2022-12-22 04:14:10','653-zxj-12-2022'),
(661,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Cetak Buku Tatib','1000','eks','0',NULL,2500,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:05:10','2022-12-22 04:14:10','653-zxj-12-2022'),
(662,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Cetak Buku Komisi Organisasi, Proker dan Rekomendasi','300','eks','0',NULL,3500,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:05:39','2022-12-22 04:14:10','653-zxj-12-2022'),
(663,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Kertas Suara Putih Kecil bertuliskan Kartu Suara Pemilihan Bakal Calon','400','lembar','0',NULL,50,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:06:16','2022-12-22 04:14:10','653-zxj-12-2022'),
(664,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Kartu Suara Warna Hijau bertuliskan Surat Suara Pemilihan Calon Ketua Tanfidziyah ukuran A5','400','lembar','0',NULL,80,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:07:03','2022-12-22 04:14:10','653-zxj-12-2022'),
(665,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Pembagian Peserta Sidang Komisi','3','lembar','0',NULL,5000,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:07:51','2022-12-22 04:14:10','653-zxj-12-2022'),
(666,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Stiker Kursi','1000','eks','0',NULL,100,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:08:18','2022-12-22 04:14:10','653-zxj-12-2022'),
(667,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Blocknote','1000','eks','0',NULL,4000,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:08:47','2022-12-22 04:14:10','653-zxj-12-2022'),
(668,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Pulpen','1000','buah','0',NULL,1200,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:09:06','2022-12-22 04:14:10','653-zxj-12-2022'),
(669,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Palu','4','buah','0',NULL,50000,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:09:26','2022-12-22 04:14:10','653-zxj-12-2022'),
(670,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Scaner Barcode','5','buah','0',NULL,310000,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:09:47','2022-12-22 04:14:10','653-zxj-12-2022'),
(671,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Plano perhitungan','11','lembar','0',NULL,65000,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:10:07','2022-12-22 04:14:10','653-zxj-12-2022'),
(672,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'spidol','20','buah','0',NULL,1200,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:10:33','2022-12-22 04:14:10','653-zxj-12-2022'),
(673,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Hate+ongkir','10','buah','0',NULL,326000,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:11:09','2022-12-22 04:14:10','653-zxj-12-2022'),
(674,'PANITIA KONFERCAB PCNU BANYUMAS',NULL,'Cetak Laporan Pertanggungjawaban','500','eks','0',NULL,50000,0,'lunas',NULL,'2022-12-22 00:00:00',NULL,'2022-12-22 04:11:47','2022-12-22 04:14:10','653-zxj-12-2022'),
(675,'MUTMAINAH',NULL,'CETAK BUKU SKRIPSI','3','eks','0',NULL,54000,0,'lunas',NULL,'2022-12-23 00:00:00',NULL,'2022-12-23 07:43:24','2022-12-23 08:03:51','675-qil-12-2022'),
(676,'NUR HIDAYAH',NULL,'CETAK BUKU SKRIPSI','2','eks','0',NULL,35000,0,'lunas',NULL,'2022-12-23 00:00:00',NULL,'2022-12-23 07:45:27','2022-12-23 08:04:08','676-ltw-12-2022'),
(677,'Arif Hidayat',NULL,'Cetak Buku Jamasan','50','eks','0',NULL,60000,0,'lunas',NULL,'2022-12-28 00:00:00',NULL,'2022-12-28 05:20:45','2022-12-28 05:21:25','677-efu-12-2022'),
(678,'Imam setio hari',NULL,'Cetak buku skripsi','2','eks','0',NULL,36000,0,'lunas',NULL,'2022-12-28 00:00:00',NULL,'2022-12-28 08:39:33','2022-12-28 08:41:24','678-sbs-12-2022'),
(679,'Sumiarti',NULL,'Cetak Buku Laporan','4','eks','0',NULL,38000,0,'lunas',NULL,'2023-01-02 00:00:00',NULL,'2023-01-02 06:13:40','2023-01-02 06:41:25','679-bng-01-2023'),
(680,'Ellen Prima',NULL,'Cetak Buku Laporan','5','eks','0',NULL,32000,0,'lunas',NULL,'2023-01-02 00:00:00',NULL,'2023-01-02 06:15:11','2023-01-02 06:26:01','680-kqy-01-2023'),
(681,'Eva',NULL,'Cetak Buku Laporan','4','eks','0',NULL,30000,0,'lunas',NULL,'2023-01-02 00:00:00',NULL,'2023-01-02 06:15:49','2023-01-02 06:25:56','681-bqd-01-2023'),
(682,'Prof. Ridwan',NULL,'Cetak Buku Laporan','4','eks','0',NULL,35000,0,'lunas',NULL,'2023-01-02 00:00:00',NULL,'2023-01-02 06:16:27','2023-01-02 06:25:52','682-aoz-01-2023'),
(683,'Muh. Hanif',NULL,'Cetak Buku Laporan','4','eks','0',NULL,85000,0,'lunas',NULL,'2023-01-02 00:00:00',NULL,'2023-01-02 06:16:58','2023-01-02 06:37:00','683-wbq-01-2023'),
(684,'Bu Dani',NULL,'Cetak Buku Laporan','4','eks','0',NULL,30000,0,'lunas',NULL,'2023-01-02 00:00:00',NULL,'2023-01-02 06:17:21','2023-01-02 06:35:12','684-huj-01-2023'),
(685,'Kholid Mawardi',NULL,'Cetak Buku Laporan','4','eks','0',NULL,45000,0,'lunas',NULL,'2023-01-02 00:00:00',NULL,'2023-01-02 06:18:36','2023-01-02 06:35:43','685-rlo-01-2023'),
(686,'Muflihah',NULL,'Cetak Buku Laporan','4','eks','0',NULL,15000,0,'lunas',NULL,'2023-01-02 00:00:00',NULL,'2023-01-02 06:19:51','2023-01-02 06:24:55','686-hsj-01-2023'),
(687,'Harisatunnisa',NULL,'Cetak Buku Laporan','4','eks','0',NULL,21000,0,'lunas',NULL,'2023-01-02 00:00:00',NULL,'2023-01-02 06:20:16','2023-01-02 06:24:45','687-deg-01-2023'),
(688,'Rindha',NULL,'Cetak Buku Laporan','4','eks','0',NULL,33000,0,'lunas',NULL,'2023-01-02 00:00:00',NULL,'2023-01-02 06:20:39','2023-01-02 06:24:41','688-znu-01-2023'),
(689,'Nita',NULL,'Cetak Buku Laporan','4','eks','0',NULL,33000,0,'lunas',NULL,'2023-01-02 00:00:00',NULL,'2023-01-02 06:43:24','2023-01-02 06:43:27','689-ooa-01-2023'),
(690,'PC Muslimat NU Banyumas',NULL,'Cetak Buku Sejarah Muslimat NU Banyumas','50','eks','0',NULL,24000,0,'lunas',NULL,'2023-01-03 00:00:00',NULL,'2023-01-03 02:48:49','2023-01-10 06:45:38','690-qda-01-2023'),
(691,'Nike Mutiara',NULL,'Cetak Buku Laporan Penelitian','5','eks','0',NULL,18000,0,'belum',NULL,'2023-01-04 00:00:00',NULL,'2023-01-04 02:57:31','2023-01-04 02:57:31','691-lyb-01-2023'),
(692,'Aris Moza',NULL,'Cetak Buku Alis','2','eks','0',NULL,29500,0,'lunas',NULL,'2023-01-07 00:00:00',NULL,'2023-01-07 10:01:53','2023-02-01 08:06:49','692-djc-01-2023'),
(693,'Aris Moza',NULL,'Ongkir','1','eks','0',NULL,13000,0,'lunas',NULL,'2023-01-07 00:00:00',NULL,'2023-01-07 10:02:26','2023-01-10 06:45:32','692-djc-01-2023'),
(694,'Aris Moza',NULL,'Cetak Buku Rohimah','4','eks','0',NULL,37000,0,'lunas',NULL,'2023-01-10 00:00:00',NULL,'2023-01-10 08:54:47','2023-01-26 03:04:38','694-qes-01-2023'),
(695,'Aris Moza',NULL,'Ongkir','1','paket','0',NULL,13000,0,'lunas',NULL,'2023-01-10 00:00:00',NULL,'2023-01-10 08:55:43','2023-01-26 03:04:38','694-qes-01-2023'),
(696,'MAN 2 Cilacap',NULL,'Blangko Raport','15','Rim','0',NULL,220000,0,'belum',NULL,'2023-01-15 00:00:00',NULL,'2023-01-15 04:08:48','2023-01-15 04:08:48','696-zow-01-2023'),
(697,'Dr. Suparjo, M. A',NULL,'Penerbitan dan percetakan buku','80','eks','0',NULL,40000,0,'belum',NULL,'2023-01-16 00:00:00',NULL,'2023-01-16 00:19:49','2023-01-16 00:19:49','697-pgk-01-2023'),
(698,'Husni Mubarok',NULL,'Cetak Buku Aku Mencitaimu','1','eks','0',NULL,25000,0,'belum',NULL,'2023-01-20 00:00:00',NULL,'2023-01-20 09:11:57','2023-01-20 09:11:57','698-efk-01-2023'),
(699,'Husni Mubarok',NULL,'Cetak Buku Metode Penelitian Kualitatif','1','eks','0',NULL,55000,0,'belum',NULL,'2023-01-20 00:00:00',NULL,'2023-01-20 09:12:32','2023-01-20 09:12:32','698-efk-01-2023'),
(700,'Puskesmas Purwokerto Selatan',NULL,'Cetak Buku Pedoman SDISTK','8','eks','0',NULL,75000,0,'lunas',NULL,'2023-01-25 00:00:00',NULL,'2023-01-25 02:42:15','2023-01-26 03:03:28','700-ybo-01-2023'),
(701,'Gus Enjang',NULL,'Cetak Buku Biru Langit','100','eks','0',NULL,16000,0,'lunas',NULL,'2023-01-25 00:00:00',NULL,'2023-01-25 03:18:45','2023-01-25 06:07:59','701-mgu-01-2023'),
(702,'Nurul Huda',NULL,'Cetak Buku Manajemen Sumber Daya Manusia','1','paket','0',NULL,500000,0,'lunas',NULL,'2023-01-25 00:00:00',NULL,'2023-01-25 08:52:23','2023-01-28 07:09:30','702-tao-01-2023'),
(703,'Nurul Huda',NULL,'Ongkir','1','kg','0',NULL,100000,0,'lunas',NULL,'2023-01-25 00:00:00',NULL,'2023-01-25 09:04:34','2023-01-28 07:09:30','702-tao-01-2023'),
(705,'MAN 2 Cilacap',NULL,'Cetak Map','1500','lembar','0',NULL,4500,0,'belum',NULL,'2023-01-27 00:00:00',NULL,'2023-01-27 07:19:58','2023-01-27 07:20:16','696-zow-01-2023'),
(706,'MAN 2 Cilacap',NULL,'Cetak Buku','2','eks','0',NULL,67000,0,'belum',NULL,'2023-01-27 00:00:00',NULL,'2023-01-27 07:24:44','2023-01-27 07:24:44','696-zow-01-2023'),
(707,'PonPes Roudhotul Qur\'an',NULL,'Cetak Buku Aurod','1000','eks','0',NULL,12000,0,'lunas',NULL,'2023-01-30 00:00:00',NULL,'2023-01-30 06:22:12','2024-05-09 03:28:27','707-awy-01-2023'),
(708,'PonPes Roudhotul Qur\'an',NULL,'1-  Cetak Kitab','1','eks','0',NULL,66000,0,'lunas',NULL,'2023-01-30 00:00:00',NULL,'2023-01-30 06:28:19','2024-05-09 03:28:27','707-awy-01-2023'),
(709,'PonPes Roudhotul Qur\'an',NULL,'2- Cetak Kitab','1','eks','0',NULL,96000,0,'lunas',NULL,'2023-01-30 00:00:00',NULL,'2023-01-30 06:28:38','2024-05-09 03:28:27','707-awy-01-2023'),
(710,'PonPes Roudhotul Qur\'an',NULL,'13- Cetak Kitab','1','eks','0',NULL,105000,0,'lunas',NULL,'2023-01-30 00:00:00',NULL,'2023-01-30 06:29:00','2024-05-09 03:28:27','707-awy-01-2023'),
(711,'Pascasarjana UIN Saizu',NULL,'Belanja Bahan berupa banner kegiatan FGD Penyusunan Kurikulum PIAUD Pascasarjana','1','eks','0',NULL,300000,0,'lunas',NULL,'2023-01-31 00:00:00',NULL,'2023-01-31 11:53:58','2023-01-31 11:54:05','711-vrb-01-2023'),
(712,'Aris Moza',NULL,'Cetak Buku Anam','2','eks','0',NULL,29500,0,'lunas',NULL,'2023-02-01 00:00:00',NULL,'2023-02-01 08:06:23','2023-02-01 08:19:01','712-obm-02-2023'),
(714,'Aris Moza',NULL,'Ongkir','1','eks','0',NULL,13000,0,'lunas',NULL,'2023-02-01 00:00:00',NULL,'2023-02-01 08:07:56','2023-02-01 08:19:01','712-obm-02-2023'),
(715,'BMT El Sejahtera',NULL,'Cetak Buku RAT','50','eks','0',NULL,30000,0,'belum',NULL,'2023-02-06 00:00:00',NULL,'2023-02-06 13:58:46','2023-02-06 13:58:46','715-twq-02-2023'),
(716,'Fadilah',NULL,'Cetak Kitab B5','1','eks','0',NULL,60500,0,'belum',NULL,'2023-02-09 00:00:00',NULL,'2023-02-09 02:11:44','2023-02-09 02:12:47','716-iet-02-2023'),
(717,'Fadilah',NULL,'Cetak Kitab A4','1','eks','0',NULL,27500,0,'belum',NULL,'2023-02-09 00:00:00',NULL,'2023-02-09 02:12:06','2023-02-09 02:12:37','716-iet-02-2023'),
(718,'Fadilah',NULL,'Ongkir','1','paket','0',NULL,12000,0,'belum',NULL,'2023-02-09 00:00:00',NULL,'2023-02-09 02:25:46','2023-02-09 02:25:46','716-iet-02-2023'),
(719,'Aris Moza',NULL,'Cetak Buku Kosep Dasar Geometri','2','eks','0',NULL,37000,0,'lunas',NULL,'2023-02-11 00:00:00',NULL,'2023-02-11 08:38:50','2023-02-15 01:57:13','719-xpd-02-2023'),
(720,'Aris Moza',NULL,'Ongkir','1','paket','0',NULL,13000,0,'lunas',NULL,'2023-02-11 00:00:00',NULL,'2023-02-11 08:39:34','2023-02-15 01:57:13','719-xpd-02-2023'),
(721,'Dr. Imam Ghozali',NULL,'Buku bunga rampai kkn 1','185','eks','0',NULL,27000,0,'belum',NULL,'2023-02-13 00:00:00',NULL,'2023-02-13 10:55:17','2023-02-13 11:04:04','721-mpg-02-2023'),
(722,'Dr. Imam Ghozali',NULL,'Buku bunga rampai kkn 2','185','eks','0',NULL,25000,0,'belum',NULL,'2023-02-13 00:00:00',NULL,'2023-02-13 10:55:39','2023-02-13 11:03:58','721-mpg-02-2023'),
(723,'Dr. Imam Ghozali',NULL,'Buku bunga rampai kkn 3','185','eks','0',NULL,23500,0,'belum',NULL,'2023-02-13 00:00:00',NULL,'2023-02-13 10:56:04','2023-02-13 11:03:48','721-mpg-02-2023'),
(724,'Dr. Imam Ghozali',NULL,'Buku bunga rampai kkn 4','185','eks','0',NULL,24500,0,'belum',NULL,'2023-02-13 00:00:00',NULL,'2023-02-13 10:56:23','2023-02-13 11:04:34','721-mpg-02-2023'),
(725,'Dr. Imam Ghozali',NULL,'Diskon','1',NULL,'0',NULL,0,1000000,'belum',NULL,'2023-02-13 00:00:00',NULL,'2023-02-13 11:04:51','2023-02-13 11:06:05','721-mpg-02-2023'),
(726,'Aris Moza',NULL,'LKPD MTK GEOMTRI','2','eks','0',NULL,38500,0,'lunas',NULL,'2023-02-14 00:00:00',NULL,'2023-02-14 08:22:44','2023-03-03 07:44:16','726-odj-02-2023'),
(727,'Aris Moza',NULL,'SKRIPSI NABEILAH NUURIY','2','eks','0',NULL,25000,0,'lunas',NULL,'2023-02-14 00:00:00',NULL,'2023-02-14 08:23:03','2023-03-03 07:44:16','726-odj-02-2023'),
(728,'Aris Moza',NULL,'Ongkir','1','kg','0',NULL,13000,0,'lunas',NULL,'2023-02-14 00:00:00',NULL,'2023-02-14 08:23:56','2023-03-03 07:44:16','726-odj-02-2023'),
(729,'Saiful Angkring',NULL,'Mahir membuat aplikasi pembelajaran android','14','eks','0',NULL,24000,0,'belum',NULL,'2023-02-16 00:00:00',NULL,'2023-02-16 08:23:59','2023-02-16 08:23:59','729-xtm-02-2023'),
(730,'Saiful Angkring',NULL,'Ongkir','1','kg','0',NULL,11000,0,'belum',NULL,'2023-02-16 00:00:00',NULL,'2023-02-16 08:24:25','2023-02-16 08:24:25','729-xtm-02-2023'),
(731,'Siti Khomsah',NULL,'Penerbitan dan percetakan buku dengan judul Machine Learning  Konsep dan Implementasi menggunakan Python','50','eks','0',NULL,60000,0,'belum',NULL,'2023-02-24 00:00:00',NULL,'2023-02-24 01:56:42','2023-02-24 01:56:42','731-cwq-02-2023'),
(732,'Dr. Farichatul Maftuchah, M. Ag',NULL,'Penerbitan dan percetakan buku dengan judul Pemberdayaan Perempuan Berbasis Pesantren','1','paket','0',NULL,500000,0,'lunas',NULL,'2023-03-03 00:00:00',NULL,'2023-03-03 02:54:31','2023-03-04 02:54:32','732-pbk-03-2023'),
(733,'Gina',NULL,'Buku Care To Your Self','10','eks','0',NULL,50000,0,'lunas',NULL,'2023-03-03 00:00:00',NULL,'2023-03-03 02:55:57','2023-03-04 02:54:29','733-epz-03-2023'),
(734,'Aris Moza',NULL,'Kumpulan puisi SMP Yapida','4','eks','0',NULL,17000,0,'lunas',NULL,'2023-03-03 00:00:00',NULL,'2023-03-03 07:47:04','2023-03-04 02:54:18','734-rag-03-2023'),
(735,'Aris Moza',NULL,'Ongkir','1','paket','0',NULL,13000,0,'lunas',NULL,'2023-03-03 00:00:00',NULL,'2023-03-03 07:47:21','2023-03-04 02:54:18','734-rag-03-2023'),
(736,'PCNU BANYUMAS',NULL,'Cetak Undangan','250','pcs','0',NULL,3000,0,'lunas',NULL,'2023-03-20 00:00:00',NULL,'2023-03-20 01:45:27','2023-06-22 16:54:20','736-vlt-03-2023'),
(738,'PCNU BANYUMAS',NULL,'Jadwal Imsakiyah','1000','lbr','0',NULL,1000,0,'belum',NULL,'2023-03-20 00:00:00',NULL,'2023-03-20 01:53:30','2023-03-20 01:53:30','738-dfl-03-2023'),
(739,'Ponpes Ath-Thohiriyyah',NULL,'Burdah Al Bushiri','40','eks','0',NULL,9000,0,'lunas',NULL,'2023-03-20 00:00:00',NULL,'2023-03-20 02:07:18','2023-03-20 06:28:52','739-ogd-03-2023'),
(740,'Ponpes Ath-Thohiriyyah',NULL,'Maulid Diba','50','eks','0',NULL,9000,0,'lunas',NULL,'2023-03-20 00:00:00',NULL,'2023-03-20 02:07:52','2023-03-20 06:28:52','739-ogd-03-2023'),
(741,'Youth Fire',NULL,'Tali Lanyard (Promo Maret)','50','pcs','0',NULL,7000,0,'lunas',NULL,'2023-03-24 00:00:00',NULL,'2023-03-24 02:28:28','2023-03-25 08:25:13','741-fec-03-2023'),
(742,'Youth Fire',NULL,'Paket Id-Card','50','pcs','0',NULL,5000,0,'lunas',NULL,'2023-03-24 00:00:00',NULL,'2023-03-24 02:28:52','2023-03-25 08:25:13','741-fec-03-2023'),
(743,'Youth Fire',NULL,'Ongkir','1','pkt','0',NULL,8000,0,'lunas',NULL,'2023-03-25 00:00:00',NULL,'2023-03-25 08:23:43','2023-03-25 08:25:13','741-fec-03-2023'),
(744,'Marlina',NULL,'Lanyard 2 sisi+stoper','6','pcs','0',NULL,10000,0,'lunas',NULL,'2023-03-29 00:00:00',NULL,'2023-03-29 08:29:44','2023-03-29 08:30:59','744-jdh-03-2023'),
(745,'Marlina',NULL,'Id card','6','pcs','0',NULL,7000,0,'lunas',NULL,'2023-03-29 00:00:00',NULL,'2023-03-29 08:30:00','2023-03-29 08:34:43','744-jdh-03-2023'),
(746,'HMJ PIAUD',NULL,'Lanyard 2 sisi+stoper','23','pcs','0',NULL,7000,0,'lunas',NULL,'2023-03-29 00:00:00',NULL,'2023-03-29 08:33:37','2023-03-29 08:34:04','746-clm-03-2023'),
(747,'HMJ PIAUD',NULL,'Id card','23','eks','0',NULL,5000,0,'lunas',NULL,'2023-03-29 00:00:00',NULL,'2023-03-29 08:33:55','2023-03-29 08:34:04','746-clm-03-2023'),
(748,'Ustadzah Lia Pesantren Ngabar',NULL,'Cetak Qur\'an Tajridi','374','eks','0',NULL,40000,0,'lunas',NULL,'2023-04-06 00:00:00',NULL,'2023-04-06 08:33:07','2023-04-10 05:12:42','748-ekx-04-2023'),
(749,'Adit Kumpula Esay',NULL,'Peduli Kemanusiaan dalam Bingkai Pemerintahan','10','eks','0',NULL,80000,0,'lunas',NULL,'2023-04-10 00:00:00',NULL,'2023-04-10 07:24:27','2023-04-10 07:24:55','749-mkz-04-2023'),
(750,'Bank Panin Dubay Sari\'ah',NULL,'Brosur','1','Rim','0',NULL,450000,0,'lunas',NULL,'2023-04-15 00:00:00',NULL,'2023-04-15 09:12:41','2023-04-20 02:56:38','750-bnr-04-2023'),
(752,'LAZISNU Banyumas',NULL,'Annual Report','150','eks','0',NULL,34000,100000,'lunas',NULL,'2023-04-17 00:00:00',NULL,'2023-04-17 02:26:52','2023-04-20 02:56:31','751-pgj-04-2023'),
(753,'Nunung',NULL,'Paket Penerbitan Buku','1','eks','0',NULL,500000,0,'lunas',NULL,'2023-05-06 00:00:00',NULL,'2023-05-06 02:39:57','2023-05-17 05:54:13','753-mnh-05-2023'),
(754,'Bawaslu Banyumas',NULL,'Cetak Buku Panduan Keterbukaan Informasi','10','eks','0',NULL,29600,0,'lunas',NULL,'2023-05-06 00:00:00',NULL,'2023-05-06 03:43:16','2023-06-30 11:55:52','754-zni-05-2023'),
(755,'SD Terpadu Putra Harapan Pwt',NULL,'Print Sertifikat','512','lbr','0',NULL,1500,0,'lunas',NULL,'2023-05-08 00:00:00',NULL,'2023-05-08 08:19:56','2023-05-08 08:20:01','755-eum-05-2023'),
(756,'Isnatul Fariah',NULL,'Cetak Buku Paket 1 - Secerah Cerita di Desa Cingebul','1','eks','0',NULL,500000,0,'lunas',NULL,'2023-05-15 00:00:00',NULL,'2023-05-15 04:23:05','2023-05-15 04:23:49','756-yuq-05-2023'),
(757,'Sabilla Arfiana',NULL,'Paket 1 - Buku Kisah kasih di Sokawera Kidul 2023','1','eks','0',NULL,500000,0,'lunas',NULL,'2023-05-15 00:00:00',NULL,'2023-05-15 04:28:54','2023-05-15 04:35:12','757-xge-05-2023'),
(758,'Farah Lutfi A',NULL,'Buku Melihat desa madura dari dekat','6','eks','0',NULL,35000,0,'lunas',NULL,'2023-05-15 00:00:00',NULL,'2023-05-15 04:31:25','2023-05-15 04:35:22','758-tuk-05-2023'),
(759,'Ahmad Aziz Fauzi',NULL,'Paket 1 - Buku Buah Pena Pembelajar','1','eks','0',NULL,500000,0,'lunas',NULL,'2023-05-15 00:00:00',NULL,'2023-05-15 04:32:21','2023-05-15 04:35:18','759-gpo-05-2023'),
(760,'Afifudin',NULL,'Paket 1 - Buku Perjalanan Pengabdian di Sumpinghayu','1','eks','0',NULL,500000,0,'lunas',NULL,'2023-05-15 00:00:00',NULL,'2023-05-15 04:34:32','2023-05-15 04:35:15','760-ile-05-2023'),
(761,'PCNU Banyumas',NULL,'Banner Halal bi Halal','2','lbr','0',NULL,60000,0,'lunas',NULL,'2023-05-15 00:00:00',NULL,'2023-05-15 04:39:16','2023-06-30 11:55:45','761-kiz-05-2023'),
(762,'PCNU Banyumas',NULL,'Stiker Mobil','3','eks','0',NULL,15000,0,'lunas',NULL,'2023-05-15 00:00:00',NULL,'2023-05-15 04:40:31','2023-06-30 11:55:45','761-kiz-05-2023'),
(763,'Pondok Pesantren Roudlotul Qur\'an 2 Ciwarak',NULL,'Cetak 3 Judul Kitab','90','eks','0',NULL,17500,0,'lunas',NULL,'2023-05-15 00:00:00',NULL,'2023-05-15 13:24:33','2023-05-17 07:56:30','763-qlg-05-2023'),
(764,'Intan Suryaningrum',NULL,'Paket 1 - Buku 40 Hari Yang Begitu Panjang','1','eks','0',NULL,500000,0,'lunas',NULL,'2023-05-17 00:00:00',NULL,'2023-05-17 02:00:31','2023-05-17 03:48:20','764-udf-05-2023'),
(765,'Fajar',NULL,'Buku Tahunan','195','eks','0',NULL,20000,0,'lunas',NULL,'2023-05-17 00:00:00',NULL,'2023-05-17 02:46:23','2023-05-27 05:48:07','765-fjd-05-2023'),
(766,'Nur Amelia Fitri',NULL,'Paket 1 - Buku Edukasi, Toleransi dan Tradisi','1','eks','0',NULL,500000,0,'lunas',NULL,'2023-05-17 00:00:00',NULL,'2023-05-17 03:50:38','2023-05-17 03:51:18','766-hrq-05-2023'),
(767,'Nadiana dewi',NULL,'Paket 1 - Buku  Jagung yang menggunung dipegiringan','1','eks','0',NULL,500000,0,'lunas',NULL,'2023-05-17 00:00:00',NULL,'2023-05-17 04:10:49','2023-05-17 04:10:53','767-luv-05-2023'),
(768,'Irham Husni',NULL,'Paket 1 - Buku Memaknai Pengabdian di Ujung Barat Jawa Tengah','1','eks','0',NULL,500000,0,'lunas',NULL,'2023-05-17 00:00:00',NULL,'2023-05-17 06:26:31','2023-05-17 06:26:35','768-hms-05-2023'),
(769,'Elvira',NULL,'Peket 1 - Buku Eksistensi Program Inklusi','1','eks','0',NULL,500000,0,'lunas',NULL,'2023-05-17 00:00:00',NULL,'2023-05-17 06:29:08','2023-05-17 06:29:20','769-bbw-05-2023'),
(770,'Agus Setiono',NULL,'Paket 1 - Teman dan Pengabdian','1','eks','0',NULL,500000,0,'lunas',NULL,'2023-05-17 00:00:00',NULL,'2023-05-17 06:55:01','2023-05-17 06:55:13','770-ukc-05-2023'),
(771,'Fathul Ulum',NULL,'Buku Tabungan','250','eks','0',NULL,2500,0,'lunas',NULL,'2023-05-17 00:00:00',NULL,'2023-05-17 08:57:25','2023-05-17 08:58:20','771-udz-05-2023'),
(772,'Ponpes Walisongo Putri',NULL,'Cetak Qur\'an juz 30','291','eks','0',NULL,25700,0,'lunas',NULL,'2023-05-19 00:00:00',NULL,'2023-05-18 23:40:13','2023-06-30 11:55:37','772-lvw-05-2023'),
(773,'Diah',NULL,'Paket 1 - Buku Sepetak Agriculture','1','paket','0',NULL,500000,0,'lunas',NULL,'2023-05-19 00:00:00',NULL,'2023-05-19 02:21:41','2023-05-19 02:21:45','773-zvp-05-2023'),
(774,'Yani',NULL,'Paket 1 - Buku Mengukir Cerita diujung Pantai Utara','1','paket','0',NULL,500000,0,'lunas',NULL,'2023-05-19 00:00:00',NULL,'2023-05-19 02:24:15','2023-05-19 02:24:18','774-evm-05-2023'),
(775,'Bagus Budi Sajewo',NULL,'Paket 1 - Buku Pamijen','1','paket','0',NULL,500000,0,'lunas',NULL,'2023-05-19 00:00:00',NULL,'2023-05-19 04:06:45','2023-05-19 04:06:49','775-ogr-05-2023'),
(776,'PT KARIBIN BANJARNEGARA',NULL,'Tali Lanyard','50','Buah','0',NULL,7000,0,'lunas',NULL,'2023-05-21 00:00:00',NULL,'2023-05-21 07:00:31','2023-05-21 07:02:49','776-xur-05-2023'),
(777,'PT KARIBIN BANJARNEGARA',NULL,'Id Card Holder','1000','Buah','0',NULL,2150,100000,'lunas',NULL,'2023-05-21 00:00:00',NULL,'2023-05-21 07:01:28','2023-05-21 07:02:49','776-xur-05-2023'),
(778,'Sakhrul Dwi Yanwari',NULL,'Paket 1 - Buku Menyatukan Perbedaan di desa Pegongsoran','1','pkt','0',NULL,500000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 02:07:13','2023-05-22 02:07:20','778-igj-05-2023'),
(779,'Penulis Vee Meraki',NULL,'Paket 1 Cetak Buku Meraki','1','Paket','0',NULL,500000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 02:46:10','2023-05-22 02:46:45','779-ppo-05-2023'),
(780,'Penulis Annisa M. Pegalongan',NULL,'Paket 1 Cetak Buku Pegalongan','1','Paket','0',NULL,500000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 02:48:19','2023-05-22 02:48:22','780-udc-05-2023'),
(781,'Penulis Cahya Lenggerong',NULL,'Paket 1 Cetak Buku Lenggerong','1','Paket','0',NULL,500000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 02:49:33','2023-05-22 02:49:37','781-opd-05-2023'),
(782,'Penulis Faiz Gen Z',NULL,'Paket 1 Cetak Buku Bakti Gen Z','1','Paket','0',NULL,500000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 02:50:59','2023-05-22 02:51:02','782-kkl-05-2023'),
(783,'Penulis Tamim Kami Mereka',NULL,'Paket 1 Cetak Buku Kami Diantara Mereka','1','Paket','0',NULL,500000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 02:54:17','2023-05-22 02:54:20','783-vyb-05-2023'),
(784,'Rizqia',NULL,'Lanyard 2 sisi + Stoper + ID Card','4','pcs','0',NULL,17000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 03:18:32','2023-05-22 03:18:46','784-rvz-05-2023'),
(785,'Alfiyah Nurul Hikmah',NULL,'Paket 1 - Buku Menelusuri Jejak Pengabdian di Notog','1','paket','0',NULL,500000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 03:20:07','2023-05-22 03:21:06','785-qca-05-2023'),
(786,'Egi Setiyawan',NULL,'Paket 1 - Gembyang Seribu Cerita','1','paket','0',NULL,500000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 03:20:47','2023-05-22 03:21:02','786-bjk-05-2023'),
(787,'Penulis Wahyu Purbaya',NULL,'Paket 1 Cetak Buku Bumi Purbaya','1','Paket','0',NULL,500000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 03:47:10','2023-05-22 03:47:13','787-ppz-05-2023'),
(788,'Penulis Fajarida Besuki',NULL,'Paket 1 Cetak Buku Besuki','1','Paket','0',NULL,500000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 03:48:59','2023-05-22 03:49:03','788-ogo-05-2023'),
(789,'Penulis Niswatun Seuntai Perjalanan',NULL,'Paket 1 Cetak Buku Seuntai Perjalanan','1','Paket','0',NULL,500000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 04:14:59','2023-05-22 04:15:03','789-xuc-05-2023'),
(790,'Penulis Sidiq Desa Kedua',NULL,'Paket 1 Cetak Buku Desa Kedua','1','Paket','0',NULL,500000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 04:16:43','2023-05-22 04:16:46','790-awb-05-2023'),
(791,'Penulis Dini Yulianti Wanamulya',NULL,'Paket 1 Cetak Buku Wanamulya','1','Paket','0',NULL,500000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 04:19:24','2023-05-22 04:19:32','791-bfl-05-2023'),
(792,'Penulis Syifa Mangli',NULL,'Paket 1 Cetak Buku Mangli','1','Paket','0',NULL,500000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 04:21:21','2023-05-22 04:21:24','792-nzm-05-2023'),
(793,'Penulis Hasan Melihat',NULL,'Paket 1 Cetak Buku Melihat Desa','1','Paket','0',NULL,500000,0,'belum',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 04:32:03','2023-05-22 04:32:03','793-txo-05-2023'),
(794,'Hamid Samiaji',NULL,'Cetak Buku','4','eks','0',NULL,39000,0,'lunas',NULL,'2023-05-22 00:00:00',NULL,'2023-05-22 10:56:38','2023-05-22 10:56:47','794-naf-05-2023'),
(795,'UIN Saizu Purwokerto',NULL,'Qur\'an Terjemah Banyumasan','10','eks','0',NULL,180000,0,'lunas',NULL,'2023-05-23 00:00:00',NULL,'2023-05-23 06:41:09','2023-05-23 06:41:16','795-bvm-05-2023'),
(796,'BMT AMANU SEJAHTERA',NULL,'Lanyard+idcard','16','Buah','0',NULL,15000,0,'lunas',NULL,'2023-05-24 00:00:00',NULL,'2023-05-23 23:54:54','2023-06-30 11:55:16','796-blb-05-2023'),
(797,'BMT AMANU SEJAHTERA',NULL,'Lanyard','8','buah','0',NULL,8000,0,'lunas',NULL,'2023-05-24 00:00:00',NULL,'2023-05-23 23:55:23','2023-06-30 11:55:16','796-blb-05-2023'),
(798,'BMT AMANU SEJAHTERA',NULL,'Ongkir','1','Paket','0',NULL,20000,0,'lunas',NULL,'2023-05-24 00:00:00',NULL,'2023-05-23 23:57:05','2023-06-30 11:55:16','796-blb-05-2023'),
(799,'PCNU KABUPATEN BANYUMAS',NULL,'Stopmap Xolor laminasi glossy','100','buah','0',NULL,6500,0,'lunas',NULL,'2023-05-24 00:00:00',NULL,'2023-05-24 00:05:38','2023-06-03 15:28:09','799-clf-05-2023'),
(801,'DEMA FTIK',NULL,'Cetak Cocard Yoyo','37','eks','0',NULL,15000,0,'lunas',NULL,'2023-05-27 00:00:00',NULL,'2023-05-27 06:07:46','2023-06-10 08:36:00','800-tzo-05-2023'),
(802,'PAC BATURRADEN',NULL,'Bloknote A6 polos','80','eks','0',NULL,3000,0,'lunas',NULL,'2023-05-29 00:00:00',NULL,'2023-05-29 03:56:05','2023-05-29 03:56:11','802-qbz-05-2023'),
(803,'PP At Thohiriyah',NULL,'Buku Santri','400','eks','0',NULL,5700,0,'lunas',NULL,'2023-05-30 00:00:00',NULL,'2023-05-30 06:17:06','2023-05-31 09:39:43','803-fsc-05-2023'),
(804,'PP At Thohiriyah',NULL,'Buku Ngaji Bin nadzor','500','eks','0',NULL,3800,0,'lunas',NULL,'2023-05-30 00:00:00',NULL,'2023-05-30 06:18:07','2023-05-31 09:39:43','803-fsc-05-2023'),
(805,'PP At Thohiriyah',NULL,'Buku Ngaji Tahfidz','500','eks','0',NULL,4200,0,'lunas',NULL,'2023-05-30 00:00:00',NULL,'2023-05-30 06:18:44','2023-05-31 09:39:43','803-fsc-05-2023'),
(806,'HMPS TMA',NULL,'Lanyard + Id-card','27','pcs','0',NULL,15000,0,'lunas',NULL,'2023-05-31 00:00:00',NULL,'2023-05-31 09:40:51','2023-05-31 09:40:58','806-bwj-05-2023'),
(807,'TPQ ROUDLOTUL MUNAWARROH',NULL,'Buku Prestasi','50','eks','0',NULL,5000,0,'lunas',NULL,'2023-06-02 00:00:00',NULL,'2023-06-02 06:02:59','2023-06-02 06:03:02','807-vsy-06-2023'),
(808,'AHDI',NULL,'Lanyard tisue 2 sisi+id card','16','pcs','0',NULL,15000,0,'lunas',NULL,'2023-06-03 00:00:00',NULL,'2023-06-03 04:08:23','2023-06-03 04:10:13','808-wdd-06-2023'),
(809,'PCNU',NULL,'Cetak Banner Seminar Kebhinekaan','1','lbr','0',NULL,280000,0,'lunas',NULL,'2023-06-03 00:00:00',NULL,'2023-06-03 04:18:17','2023-06-03 15:27:27','809-oyn-06-2023'),
(810,'PP At Thohiriyah',NULL,'Buku Kumpulan Doa-Doa','150','eks','0',NULL,10000,0,'lunas',NULL,'2023-06-03 00:00:00',NULL,'2023-06-03 04:26:13','2023-06-03 15:27:05','810-cnd-06-2023'),
(811,'AWH',NULL,'Paket 1 Rim Cetak Brosur 2 sisi','1','Paket','0',NULL,800000,0,'lunas',NULL,'2023-05-09 00:00:00',NULL,'2023-06-03 08:24:18','2023-06-03 08:41:12','811-kbj-06-2023'),
(813,'AWH',NULL,'Cetak Brosur 200 1 sisi','200','eks','0',NULL,900,0,'lunas',NULL,'2023-05-09 00:00:00',NULL,'2023-06-03 08:34:58','2023-06-03 08:41:10','812-rsr-06-2023'),
(815,'AWH',NULL,'Cetak Brosur 100 2 sisi','100','eks','0',NULL,1800,0,'lunas',NULL,'2023-06-03 00:00:00',NULL,'2023-06-03 08:42:15','2023-06-03 08:42:34','814-fec-06-2023'),
(816,'Hamid samiaji',NULL,'Cetak Buku Rekam Jejak','33','eks','0',NULL,37000,0,'lunas',NULL,'2023-06-05 00:00:00',NULL,'2023-06-05 09:25:07','2023-06-05 09:26:57','816-rah-06-2023'),
(817,'Daniel Puspo W',NULL,'Buku Relasiku adalah Rumah Kristus','50','eks','0',NULL,14000,0,'lunas',NULL,'2023-06-06 00:00:00',NULL,'2023-06-06 01:58:33','2023-06-06 01:58:38','817-qwy-06-2023'),
(818,'STAIN BENGKALIS',NULL,'Cetak buku Panduan KKN 2023','625','eks','0',NULL,20000,0,'lunas',NULL,'2023-06-07 00:00:00',NULL,'2023-06-07 03:12:25','2023-06-07 03:12:48','818-wda-06-2023'),
(819,'MUHAMMAD ARIEF ALBANI',NULL,'Kartu Nama Sintetis','1','box','0',NULL,65000,0,'lunas',NULL,'2023-06-07 00:00:00',NULL,'2023-06-07 04:53:30','2023-06-19 08:08:29','819-zpn-06-2023'),
(820,'MUHAMMAD ARIEF ALBANI',NULL,'Cetak Banner','1','pkt','0',NULL,817000,0,'lunas',NULL,'2023-06-07 00:00:00',NULL,'2023-06-07 04:54:09','2023-06-19 08:08:29','819-zpn-06-2023'),
(821,'MI PESANTREN PEMBANGUNAN MAJENANG',NULL,'Lanyard + ID Card','21','eks','0',NULL,15000,0,'lunas',NULL,'2023-06-09 00:00:00',NULL,'2023-06-09 08:16:56','2023-06-19 08:08:25','821-toh-06-2023'),
(822,'OSIS SMK DIPO',NULL,'Lanyard + id card','22','eks','0',NULL,16000,0,'lunas',NULL,'2023-06-10 00:00:00',NULL,'2023-06-10 08:38:53','2023-06-10 08:39:10','822-slr-06-2023'),
(823,'PT KARIBIN NUR IBADAH',NULL,'Lanyard','1000','Buah','0',NULL,7000,0,'lunas',NULL,'2023-06-19 00:00:00',NULL,'2023-06-19 08:08:00','2023-06-22 17:00:04','823-xmv-06-2023'),
(824,'PCNU Banyumas',NULL,'Stopmap Color Laminasi','100','eks','0',NULL,6500,0,'lunas',NULL,'2023-06-23 00:00:00',NULL,'2023-06-22 17:00:56','2023-06-25 06:43:47','824-iqa-06-2023'),
(825,'PCNU Banyumas',NULL,'Undangan','200','buah','0',NULL,3500,0,'lunas',NULL,'2023-06-23 00:00:00',NULL,'2023-06-22 17:01:26','2023-06-25 06:43:47','824-iqa-06-2023'),
(826,'PCNU Banyumas',NULL,'Cocard','300','buah','0',NULL,4000,0,'lunas',NULL,'2023-06-23 00:00:00',NULL,'2023-06-22 17:02:07','2023-06-25 06:43:47','824-iqa-06-2023'),
(827,'PCNU Banyumas',NULL,'Blocknote','250','eks','0',NULL,6000,200000,'lunas',NULL,'2023-06-23 00:00:00',NULL,'2023-06-22 17:02:57','2023-06-25 06:43:47','824-iqa-06-2023'),
(828,'PCNU Banyumas',NULL,'Goodybag','300','buah','0',NULL,5000,0,'lunas',NULL,'2023-06-23 00:00:00',NULL,'2023-06-22 17:03:41','2023-06-25 06:43:47','824-iqa-06-2023'),
(829,'PCNU Banyumas',NULL,'Materi Musker','300','eks','0',NULL,21500,150000,'lunas',NULL,'2023-06-23 00:00:00',NULL,'2023-06-22 17:04:36','2023-06-25 06:43:47','824-iqa-06-2023'),
(830,'PCNU Banyumas',NULL,'Pulpen','250','buah','0',NULL,2000,0,'lunas',NULL,'2023-06-23 00:00:00',NULL,'2023-06-22 17:05:11','2023-06-25 06:43:47','824-iqa-06-2023'),
(831,'Dr. Kholil Lur Rochman',NULL,'Cetak Disertasi','10','eks','0',NULL,73000,0,'lunas',NULL,'2023-06-23 00:00:00',NULL,'2023-06-23 03:02:17','2023-06-25 06:43:01','831-vqi-06-2023'),
(832,'Dr. Kholil Lur Rochman',NULL,'Cetak Ringkasan Disertasi','50','eks','0',NULL,12000,0,'lunas',NULL,'2023-06-23 00:00:00',NULL,'2023-06-23 03:03:02','2023-06-25 06:43:01','831-vqi-06-2023'),
(833,'PCNU KABUPATEN BANYUMAS',NULL,'Cetak Materi tambahan musker','300','eks','0',NULL,7000,0,'lunas',NULL,'2023-06-25 00:00:00',NULL,'2023-06-25 06:42:43','2023-06-30 11:53:31','833-ofm-06-2023'),
(834,'KBIHU NU Banyumas',NULL,'Cetak buku Panduan Haji dan Umrah','500','eks','0',NULL,11000,0,'lunas',NULL,'2023-06-27 00:00:00',NULL,'2023-06-27 06:11:34','2023-08-18 14:19:53','834-eib-06-2023'),
(835,'Mr. Okta Mersi',NULL,'Lanyard','20','Buah','0',NULL,15000,0,'belum',NULL,'2023-06-30 00:00:00',NULL,'2023-06-30 08:27:02','2023-06-30 08:27:02','835-awl-06-2023'),
(836,'Gus Munif',NULL,'Cetak Buku Panduan Umrah','100','eks','0',NULL,19000,0,'lunas',NULL,'2023-07-01 00:00:00',NULL,'2023-07-01 04:11:23','2023-08-18 14:19:42','836-smd-07-2023'),
(837,'SD IT LELER',NULL,'Brosur','2','rim','0',NULL,450000,0,'lunas',NULL,'2023-07-01 00:00:00',NULL,'2023-07-01 12:01:06','2023-07-07 06:37:58','837-qfc-07-2023'),
(838,'SD IT LELER',NULL,'Stempel','1','pcs','0',NULL,100000,0,'lunas',NULL,'2023-07-01 00:00:00',NULL,'2023-07-01 12:01:49','2023-07-07 06:37:58','837-qfc-07-2023'),
(839,'SD IT LELER',NULL,'Banner','25','m','0',NULL,25000,0,'lunas',NULL,'2023-07-01 00:00:00',NULL,'2023-07-01 12:07:28','2023-07-07 06:37:58','837-qfc-07-2023'),
(840,'SD IT LELER',NULL,'X-Banner','1','paket','0',NULL,100000,0,'lunas',NULL,'2023-07-01 00:00:00',NULL,'2023-07-01 12:08:17','2023-07-07 06:37:58','837-qfc-07-2023'),
(841,'Rizqy Unsoed',NULL,'Lanyard 2 Sisi Stoper','9','pcs','0',NULL,10000,0,'lunas',NULL,'2023-07-03 00:00:00',NULL,'2023-07-03 07:42:19','2023-07-03 08:11:03','841-tpg-07-2023'),
(842,'Rizqy Unsoed',NULL,'Id card','8','pcs','0',NULL,5000,0,'lunas',NULL,'2023-07-03 00:00:00',NULL,'2023-07-03 07:44:24','2023-07-03 08:11:03','841-tpg-07-2023'),
(843,'Adi Kurniawan',NULL,'Buku Antologi AABS','120','eks','0',NULL,10000,0,'lunas',NULL,'2023-07-06 00:00:00',NULL,'2023-07-06 06:53:17','2023-07-15 05:56:12','843-ksl-07-2023'),
(844,'Kholil Lur Rohman',NULL,'Ringkasan Disertasi','10','eks','0',NULL,12000,0,'lunas',NULL,'2023-07-07 00:00:00',NULL,'2023-07-07 06:37:22','2023-07-08 00:34:40','844-gai-07-2023'),
(845,'STAIS Majenang',NULL,'Buku Panduan KKN','105','eks','0',NULL,7500,0,'lunas',NULL,'2023-07-10 00:00:00',NULL,'2023-07-10 01:28:48','2023-08-18 14:19:32','845-cbq-07-2023'),
(846,'Marlina',NULL,'Paket Lanyard 2 Sisi Stoper Id card','11','pcs','0',NULL,15000,0,'lunas',NULL,'2023-07-14 00:00:00',NULL,'2023-07-14 09:10:35','2023-07-14 09:11:30','846-vnv-07-2023'),
(847,'PC IPNU Banyumas',NULL,'Paket Lanyard Cocard','100','pkt','0',NULL,10500,0,'belum',NULL,'2023-07-15 00:00:00',NULL,'2023-07-15 03:11:28','2023-07-15 03:11:28','847-izp-07-2023'),
(849,'Mas Irul',NULL,'Tas Spoundbound','40','pcs','0',NULL,6000,0,'lunas',NULL,'2023-07-20 00:00:00',NULL,'2023-07-20 04:52:54','2023-07-25 00:49:50','849-caq-07-2023'),
(850,'Mas Irul',NULL,'Bloknote','40','eks','0',NULL,5000,0,'lunas',NULL,'2023-07-20 00:00:00',NULL,'2023-07-20 05:03:20','2023-07-25 00:49:50','849-caq-07-2023'),
(851,'Mas Irul',NULL,'Pulpen','40','pcs','0',NULL,4000,0,'lunas',NULL,'2023-07-20 00:00:00',NULL,'2023-07-20 05:03:52','2023-07-25 00:49:50','849-caq-07-2023'),
(852,'Mas Irul',NULL,'PIN Peniti','30','pcs','0',NULL,3500,0,'lunas',NULL,'2023-07-20 00:00:00',NULL,'2023-07-20 05:07:24','2023-07-25 00:49:50','849-caq-07-2023'),
(853,'Mas Irul',NULL,'Banner','1','buah','0',NULL,210000,0,'lunas',NULL,'2023-07-20 00:00:00',NULL,'2023-07-20 05:08:17','2023-07-25 00:49:50','849-caq-07-2023'),
(854,'PCNU Banyumas',NULL,'Lembar Disposisi','1','pack','0',NULL,600000,0,'lunas',NULL,'2023-07-20 00:00:00',NULL,'2023-07-20 05:10:55','2023-07-22 13:16:04','854-oau-07-2023'),
(855,'PP At Thohiriyah',NULL,'Cetak Kitab Ibanah','75','eks','0',NULL,17500,0,'lunas',NULL,'2023-07-22 00:00:00',NULL,'2023-07-22 13:15:43','2023-07-25 00:49:27','855-lsd-07-2023'),
(856,'Bu Sri Darsiah',NULL,'Buku Yasin','100','eks','0',NULL,25000,0,'lunas',NULL,'2023-07-24 00:00:00',NULL,'2023-07-24 10:44:20','2023-07-25 00:49:04','856-boo-07-2023'),
(857,'Bu Sri Darsiah',NULL,'Tote Bag','100','eks','0',NULL,5000,0,'lunas',NULL,'2023-07-24 00:00:00',NULL,'2023-07-24 10:45:25','2023-07-25 00:49:04','856-boo-07-2023'),
(858,'Bu Sri Darsiah',NULL,'Label Sajadah','100','eks','0',NULL,5000,0,'lunas',NULL,'2023-07-24 00:00:00',NULL,'2023-07-24 10:45:59','2023-07-25 00:49:04','856-boo-07-2023'),
(859,'Siswoyo',NULL,'Lanyard','62','Buah','0',NULL,8000,0,'lunas',NULL,'2023-07-25 00:00:00',NULL,'2023-07-25 00:51:02','2023-08-18 14:19:07','859-fkx-07-2023'),
(860,'Revalina',NULL,'Paket Lanyard Tisue + ID Card','19','pkt','0',NULL,17000,0,'lunas',NULL,'2023-07-25 00:00:00',NULL,'2023-07-25 07:33:58','2023-07-25 07:34:05','860-aob-07-2023'),
(861,'Bu Sukinah',NULL,'Cetak Skripsi','2','eks','0',NULL,61500,0,'lunas',NULL,'2023-07-27 00:00:00',NULL,'2023-07-27 04:30:04','2023-07-27 04:30:46','861-yat-07-2023'),
(862,'Bu Sukinah',NULL,'Kaset CD Burnning','1','eks','0',NULL,25000,0,'lunas',NULL,'2023-07-27 00:00:00',NULL,'2023-07-27 04:30:28','2023-07-27 04:30:46','861-yat-07-2023'),
(863,'Mei Lestari',NULL,'Paket Lanyard Tisue + Id card','10','pcs','0',NULL,17000,0,'lunas',NULL,'2023-07-29 00:00:00',NULL,'2023-07-29 05:32:05','2023-07-29 05:32:13','863-npw-07-2023'),
(864,'Pondok Pesantren \"Wali Songo\"  Ngabar',NULL,'Cetak Qur\'an juz 1','230','eks','0',NULL,30000,0,'belum',NULL,'2023-07-29 00:00:00',NULL,'2023-07-29 14:53:42','2023-07-29 14:53:42','864-tty-07-2023'),
(865,'Pondok Pesantren \"Wali Songo\"  Ngabar',NULL,'Cetak Qur\'an juz 29','265','eks','0',NULL,22000,0,'belum',NULL,'2023-07-29 00:00:00',NULL,'2023-07-29 14:54:53','2023-07-29 14:54:53','864-tty-07-2023'),
(866,'KBIHU ALWARDAH BANYUMAS',NULL,'Buku Manasik','250','eks','0',NULL,40000,0,'lunas',NULL,'2023-08-01 00:00:00',NULL,'2023-08-01 02:55:57','2023-08-01 02:56:05','866-lzg-08-2023'),
(867,'SD AL FALAH SOKARAJA',NULL,'Cetak Buku Ukuran B5','70','eks','0',NULL,19000,0,'lunas',NULL,'2023-08-01 00:00:00',NULL,'2023-08-01 11:54:58','2023-08-01 11:55:09','867-ouo-08-2023'),
(868,'Panitia pbak ftik',NULL,'Lanyard+id card','121','pcs','0',NULL,13000,0,'lunas',NULL,'2023-08-02 00:00:00',NULL,'2023-08-02 03:19:38','2023-08-18 14:19:19','868-qes-08-2023'),
(869,'KBIHU AL-WARDAH BANYUMAS',NULL,'Buku Panduan Haji','250','eks','0',NULL,28000,0,'lunas',NULL,'2023-08-03 00:00:00',NULL,'2023-08-03 04:30:15','2023-08-18 14:19:13','869-tax-08-2023'),
(870,'KRB PAI Uin Saizu',NULL,'Paket lanyard tisue+id card','31','pcs','0',NULL,17000,0,'lunas',NULL,'2023-08-05 00:00:00',NULL,'2023-08-05 04:43:03','2023-08-05 04:43:41','870-ihd-08-2023'),
(871,'KKN 52 kel 23',NULL,'Cetak Blocknote A6','40','eks','0',NULL,2500,0,'lunas',NULL,'2023-08-07 00:00:00',NULL,'2023-08-07 07:10:57','2023-08-07 07:18:24','871-cas-08-2023'),
(872,'Aisyah Shinta',NULL,'Paket lanyard tisue+id card','14','eks','0',NULL,17000,0,'lunas',NULL,'2023-08-07 00:00:00',NULL,'2023-08-07 07:24:34','2023-08-07 07:24:45','872-vdf-08-2023'),
(873,'MI PP Cibeunying',NULL,'Kaos Jersey Panjang','9','Bh','0',NULL,110000,0,'lunas',NULL,'2023-08-08 00:00:00',NULL,'2023-08-08 00:59:30','2023-08-09 07:48:22','873-lxc-08-2023'),
(874,'MI PP Cibeunying',NULL,'Kaos Jersey Pendek','16','Bh','0',NULL,100000,0,'lunas',NULL,'2023-08-08 00:00:00',NULL,'2023-08-08 00:59:58','2023-08-09 07:48:22','873-lxc-08-2023'),
(875,'PAC GP ANSOR MAJENANG',NULL,'Kaos Jersey','30','Bh','0',NULL,100000,0,'lunas',NULL,'2023-08-08 00:00:00',NULL,'2023-08-08 01:01:51','2023-08-09 07:48:19','875-dtc-08-2023'),
(876,'PC LP Ma\'arif NU Banyumas',NULL,'Cetak buku rakor','400','eks','0',NULL,10000,0,'lunas',NULL,'2023-08-09 00:00:00',NULL,'2023-08-09 07:48:51','2023-08-18 14:18:41','876-lwo-08-2023'),
(877,'Willy',NULL,'Paket lanyard tisue+id card','10','eks','0',NULL,17000,0,'lunas',NULL,'2023-08-10 00:00:00',NULL,'2023-08-10 07:24:00','2023-08-10 07:24:03','877-mki-08-2023'),
(878,'Ponpes Ath-Thohiriyyah',NULL,'Buku Santri','80','eks','0',NULL,5000,0,'lunas',NULL,'2023-08-15 00:00:00',NULL,'2023-08-15 08:13:07','2023-08-18 14:18:35','878-zii-08-2023'),
(879,'Ponpes Ath-Thohiriyyah',NULL,'Buku Do\'a','50','eks','0',NULL,11000,0,'lunas',NULL,'2023-08-15 00:00:00',NULL,'2023-08-15 08:15:35','2023-08-18 14:18:35','878-zii-08-2023'),
(882,'Pondok SAN Tambaksogra',NULL,'Cetak buku pantauan santri','50','eks','0',NULL,13000,0,'lunas',NULL,'2023-08-18 00:00:00',NULL,'2023-08-18 14:23:22','2023-08-19 01:48:12','882-tmp-08-2023'),
(883,'TPQ Saiful Islam Sokaraja',NULL,'Buku Prestasi Santri','200','eks','0',NULL,15500,0,'lunas',NULL,'2023-08-19 00:00:00',NULL,'2023-08-19 11:14:50','2023-09-01 13:32:47','883-ppz-08-2023'),
(884,'Fapet Unsoed',NULL,'Cetak Lanyard','14','eks','0',NULL,15000,0,'lunas',NULL,'2023-08-24 00:00:00',NULL,'2023-08-24 03:37:01','2023-08-24 03:37:08','884-gvy-08-2023'),
(885,'Dr. H. M. Sugeng Sholehuddin, M.Ag',NULL,'Penerbitan dan Percetakan Buku','50','eks','0',NULL,65000,0,'lunas',NULL,'2023-08-24 00:00:00',NULL,'2023-08-24 04:02:07','2023-08-24 04:21:37','885-lce-08-2023'),
(886,'PT KARIBIN BANJARNEGARA',NULL,'Album Umroh','138','eks','0',NULL,22000,36000,'lunas',NULL,'2023-08-26 00:00:00',NULL,'2023-08-26 11:12:39','2023-09-01 13:32:42','886-gzu-08-2023'),
(887,'STAIS MAJENANG',NULL,'Buku PBAK 2023','130','eks','0',NULL,10000,0,'lunas',NULL,'2023-08-29 00:00:00',NULL,'2023-08-29 06:54:21','2023-09-01 13:32:37','887-typ-08-2023'),
(888,'STAIS MAJENANG',NULL,'Kaos PBAK','120','pcs','0',NULL,70000,0,'lunas',NULL,'2023-08-29 00:00:00',NULL,'2023-08-29 06:59:44','2023-09-01 13:32:37','887-typ-08-2023'),
(889,'STAIS MAJENANG',NULL,'Kaos PBAK XXL','2','pcs','0',NULL,75000,0,'lunas',NULL,'2023-08-29 00:00:00',NULL,'2023-08-29 07:00:16','2023-09-01 13:32:37','887-typ-08-2023'),
(890,'Ma\'had UIN Saizu',NULL,'Cetak Kitab Tadzhib','1000','eks','0',NULL,25000,0,'lunas',NULL,'2023-08-29 00:00:00',NULL,'2023-08-29 11:46:32','2023-09-01 13:32:32','890-gaa-08-2023'),
(891,'MWC NU Purwojati',NULL,'Cetak buku materi musker','100','eks','0',NULL,12000,0,'belum',NULL,'2023-09-01 00:00:00',NULL,'2023-09-01 13:34:25','2023-09-05 04:31:51','891-syn-09-2023'),
(892,'Ibu Riyanti',NULL,'Slempang Wisuda','64','eks','0',NULL,50000,0,'lunas',NULL,'2023-09-02 00:00:00',NULL,'2023-09-02 05:20:38','2023-09-02 05:36:24','892-vks-09-2023'),
(893,'WADAS KELIR',NULL,'CETAK BUKU','4','eks','0',NULL,12000,0,'lunas',NULL,'2023-09-02 00:00:00',NULL,'2023-09-02 05:26:13','2023-09-07 09:44:35','893-kbb-09-2023'),
(894,'Zahrotun nisa',NULL,'Cetak Lanyard','11','eks','0',NULL,15000,0,'lunas',NULL,'2023-09-02 00:00:00',NULL,'2023-09-02 05:30:48','2023-09-02 05:32:27','894-csn-09-2023'),
(895,'Syuhaib',NULL,'Cetak Lanyard','12','eks','0',NULL,15000,0,'lunas',NULL,'2023-09-02 00:00:00',NULL,'2023-09-02 05:31:17','2023-09-02 05:32:24','895-jnl-09-2023'),
(896,'Elvis nahdiya',NULL,'Cetak Lanyard Premium','12','eks','0',NULL,17000,0,'lunas',NULL,'2023-09-02 00:00:00',NULL,'2023-09-02 05:32:14','2023-09-02 05:32:20','896-tqq-09-2023'),
(897,'Galuh samudera',NULL,'Cetak id Card','12','eks','0',NULL,12000,0,'lunas',NULL,'2023-09-04 00:00:00',NULL,'2023-09-04 05:10:27','2023-09-04 05:12:09','897-lve-09-2023'),
(898,'Faizal',NULL,'Cetak Lanyard','12','eks','0',NULL,15000,0,'lunas',NULL,'2023-09-04 00:00:00',NULL,'2023-09-04 05:10:50','2023-09-04 05:12:06','898-jfi-09-2023'),
(899,'Vella',NULL,'Cetak Lanyard','11','eks','0',NULL,15000,0,'lunas',NULL,'2023-09-04 00:00:00',NULL,'2023-09-04 05:11:20','2023-09-04 05:12:04','899-ybe-09-2023'),
(900,'Wahyuningsih',NULL,'Cetak Lanyard','13','eks','0',NULL,15000,0,'lunas',NULL,'2023-09-04 00:00:00',NULL,'2023-09-04 05:11:50','2023-09-06 08:01:27','900-auz-09-2023'),
(901,'Aprilia',NULL,'Paket Lanyard Id Card','37','pkt','0',NULL,15000,0,'lunas',NULL,'2023-09-04 00:00:00',NULL,'2023-09-04 07:10:15','2023-09-14 06:42:42','901-ndt-09-2023'),
(902,'Turza piqsi',NULL,'Cetak banner 4X2,5 17.000','1','eks','0',NULL,170000,0,'lunas',NULL,'2023-09-04 00:00:00',NULL,'2023-09-04 08:35:28','2023-09-04 08:36:48','902-dkc-09-2023'),
(903,'Turza piqsi',NULL,'Cetak stiker kiskat 500 per pcs 100eks','1','eks','0',NULL,50000,0,'lunas',NULL,'2023-09-04 00:00:00',NULL,'2023-09-04 08:36:15','2023-09-04 08:36:48','902-dkc-09-2023'),
(904,'MT Panggok Tulodho',NULL,'Cetak Buku Kumpulan Doa','150','eks','0',NULL,8700,5000,'lunas',NULL,'2023-09-06 00:00:00',NULL,'2023-09-06 10:44:49','2023-09-07 09:44:26','904-rfw-09-2023'),
(905,'Ridho',NULL,'Paket Lanyard Id Card grade A','12','pcs','0',NULL,15000,0,'lunas',NULL,'2023-09-07 00:00:00',NULL,'2023-09-07 08:17:41','2023-09-07 08:17:49','905-mpl-09-2023'),
(906,'Panitia mapaba pmii rayon tarbiyah',NULL,'Cetak id card+lanyard grade A','69','pcs','0',NULL,14000,0,'lunas',NULL,'2023-09-07 00:00:00',NULL,'2023-09-07 09:39:46','2023-09-07 09:44:22','906-olh-09-2023'),
(907,'Panitia mapaba pmii rayon tarbiyah',NULL,'Cetak Modul Mapaba ratar 2023','280','eks','0',NULL,10000,0,'lunas',NULL,'2023-09-07 00:00:00',NULL,'2023-09-07 09:40:42','2023-09-07 09:42:56','907-gtr-09-2023'),
(908,'Firda PPL 2',NULL,'Paket lanyard Id Card','12','pcs','0',NULL,15000,0,'lunas',NULL,'2023-09-07 00:00:00',NULL,'2023-09-07 14:13:23','2023-09-07 14:13:28','908-trx-09-2023'),
(909,'PP At Thohiriyah',NULL,'Cetak Kitab Al Ibanah','50','eks','0',NULL,17000,0,'lunas',NULL,'2023-09-08 00:00:00',NULL,'2023-09-08 03:47:44','2023-09-09 03:14:29','909-ibu-09-2023'),
(910,'Nanda',NULL,'Cetak Id card yoyo','12','pcs','0',NULL,12000,0,'lunas',NULL,'2023-09-09 00:00:00',NULL,'2023-09-09 02:26:40','2023-09-09 02:26:53','910-dok-09-2023'),
(911,'Ibu Riyanti',NULL,'Slempang wisuda','34','eks','0',NULL,50000,0,'lunas',NULL,'2023-09-09 00:00:00',NULL,'2023-09-09 06:29:30','2023-09-09 06:30:08','911-xfl-09-2023'),
(912,'Arby mukhith',NULL,'Cetak Lanyard+id card','12','pcs','0',NULL,15000,0,'lunas',NULL,'2023-09-09 00:00:00',NULL,'2023-09-09 06:31:29','2023-09-09 06:31:34','912-uex-09-2023'),
(913,'Syamil',NULL,'Cetak id card+lanyard','12','pcs','0',NULL,15000,0,'lunas',NULL,'2023-09-09 00:00:00',NULL,'2023-09-09 06:33:15','2023-09-09 06:33:20','913-tlk-09-2023'),
(914,'MTs Cokroaminoto Banjarnegara',NULL,'Kaos Jumbaran','32','Buah','0',NULL,75000,0,'lunas',NULL,'2023-09-14 00:00:00',NULL,'2023-09-14 08:35:38','2023-09-26 04:45:09','914-tmp-09-2023'),
(915,'KSR UIN SAIZU',NULL,'lanyard+id card','47','eks','0',NULL,12000,0,'lunas',NULL,'2023-09-14 00:00:00',NULL,'2023-09-14 09:12:15','2023-09-14 09:12:21','915-tld-09-2023'),
(916,'TSACOWA',NULL,'KAOS COTTON COMBED 30S PANJANG FULL SABLON','32','eks','0',NULL,70000,0,'lunas',NULL,'2023-09-16 00:00:00',NULL,'2023-09-16 06:36:39','2023-09-16 06:36:47','916-thn-09-2023'),
(917,'Ifa',NULL,'Penerbitan & Cetak Buku Paket 1 + 7 Buku','1','pkt','0',NULL,462000,0,'lunas',NULL,'2023-09-19 00:00:00',NULL,'2023-09-19 04:19:34','2023-09-19 04:21:01','917-you-09-2023'),
(918,'Isnur Wijayanti',NULL,'Penerbitan & Cetak Buku Paket 2','1','pkt','0',NULL,500000,0,'lunas',NULL,'2023-09-19 00:00:00',NULL,'2023-09-19 04:47:22','2023-09-19 08:19:24','918-fpa-09-2023'),
(919,'Alisia',NULL,'Penerbitan & Cetak Buku Paket 1','1','pkt','0',NULL,350000,0,'lunas',NULL,'2023-09-19 00:00:00',NULL,'2023-09-19 04:48:45','2023-09-19 08:19:37','919-sty-09-2023'),
(920,'AGUNG KEDUNGBANTENG',NULL,'Cetak Lanyard','21','eks','0',NULL,12000,0,'lunas',NULL,'2023-09-19 00:00:00',NULL,'2023-09-19 04:49:28','2023-09-19 04:49:45','920-nav-09-2023'),
(921,'Elzavia Zahrani',NULL,'Penerbitan & Cetak Buku Paket 1','1','pkt','0',NULL,350000,0,'belum',NULL,'2023-09-22 00:00:00',NULL,'2023-09-22 04:30:15','2023-09-22 04:30:15','921-sry-09-2023'),
(922,'Farida nusanti',NULL,'Cetak FORMULIR MTBS 2 sisi','500','lbr','0',NULL,450,0,'lunas',NULL,'2023-09-22 00:00:00',NULL,'2023-09-22 05:40:08','2023-10-04 04:25:59','922-heb-09-2023'),
(923,'KBIH AZZUHRI SEMARANG',NULL,'Buku Panduan Manasik Umroh','100','eks','0',NULL,23000,0,'lunas',NULL,'2023-09-22 00:00:00',NULL,'2023-09-22 06:08:08','2023-09-28 01:54:17','923-ude-09-2023'),
(924,'KBIH AZZUHRI SEMARANG',NULL,'Buku Panduan Umroh Kalung','100','eks','0',NULL,14000,0,'lunas',NULL,'2023-09-22 00:00:00',NULL,'2023-09-22 06:08:27','2023-09-28 01:54:17','923-ude-09-2023'),
(925,'Mbak Fatma',NULL,'Cetak Kartu Arwah JMQH Kab. Banyumas','1','paket','0',NULL,600000,0,'lunas',NULL,'2023-09-23 00:00:00',NULL,'2023-09-23 09:01:04','2023-09-25 08:50:29','925-ngg-09-2023'),
(927,'Shifau',NULL,'Cetak Blocknote A6 Polos','23','eks','0',NULL,2500,0,'lunas',NULL,'2023-09-25 00:00:00',NULL,'2023-09-25 08:03:28','2023-09-25 08:36:44','926-llm-09-2023'),
(928,'Khasibul Wafa',NULL,'Cetak & Terbit Buku Hidup Ditengah Masyarakat','1','pkt','0',NULL,350000,0,'lunas',NULL,'2023-09-27 00:00:00',NULL,'2023-09-27 03:35:17','2023-09-27 03:35:43','928-nwa-09-2023'),
(929,'STAIS Majenang',NULL,'Buku Saku Pasar Modal','4','eks','0',NULL,16000,0,'lunas',NULL,'2023-09-28 00:00:00',NULL,'2023-09-28 01:53:53','2023-09-30 13:36:02','929-xbk-09-2023'),
(931,'STAIS Majenang',NULL,'Buku Ajar MSDI','3','eks','0',NULL,33600,0,'lunas',NULL,'2023-09-28 00:00:00',NULL,'2023-09-28 01:56:11','2023-09-30 13:36:02','929-xbk-09-2023'),
(932,'STAIS Majenang',NULL,'Manajemen Sumber Daya Insani','3','eks','0',NULL,14000,0,'lunas',NULL,'2023-09-28 00:00:00',NULL,'2023-09-28 01:57:06','2023-09-30 13:36:03','929-xbk-09-2023'),
(933,'Pesantren Al  Muayyad Windan',NULL,'Cetak Buku Jalan Menuju Husnul Khatimah','300','eks','0',NULL,10000,0,'lunas',NULL,'2023-09-28 00:00:00',NULL,'2023-09-28 08:26:07','2023-09-30 13:35:54','933-zmc-09-2023'),
(934,'Panitia Olimpiade PAI',NULL,'Paket Seminarkit','60','Pcs','0',NULL,35000,0,'lunas',NULL,'2023-09-30 00:00:00',NULL,'2023-09-30 08:29:13','2023-10-04 04:29:58','934-lur-09-2023'),
(935,'Panitia Olimpiade PAI',NULL,'Lanyard +idcard','58','Pcs','0',NULL,15000,0,'lunas',NULL,'2023-09-30 00:00:00',NULL,'2023-09-30 08:29:51','2023-10-04 04:29:58','934-lur-09-2023'),
(936,'Ahdi prasetyo',NULL,'Cetak Blocknote B6+bolpoin','28','pcs','0',NULL,8000,0,'lunas',NULL,'2023-10-05 00:00:00',NULL,'2023-10-05 02:30:15','2023-10-05 02:31:07','936-afo-10-2023'),
(937,'Ahdi prasetyo',NULL,'Cetak lanyard grade A','24','eks','0',NULL,15000,0,'lunas',NULL,'2023-10-05 00:00:00',NULL,'2023-10-05 02:30:42','2023-10-05 02:31:07','936-afo-10-2023'),
(938,'Wahyu Hidayat',NULL,'Lanyard+id card','50','pcs','0',NULL,16000,0,'lunas',NULL,'2023-10-05 00:00:00',NULL,'2023-10-05 06:23:55','2023-10-05 06:24:54','938-eag-10-2023'),
(940,'Hamid',NULL,'Cetak buku A5 Bookpaper 248hlm.','154','eks','0',NULL,32200,8800,'lunas',NULL,'2023-10-07 00:00:00',NULL,'2023-10-07 09:33:29','2023-10-07 09:33:53','940-zvy-10-2023'),
(941,'Muhammad Jefriyanto Budikafa',NULL,'Paket ATK (Tas, Blocknote, Pulpen)','45','pkt','0',NULL,15000,0,'lunas',NULL,'2023-10-07 00:00:00',NULL,'2023-10-07 12:20:53','2023-10-07 12:31:38','941-zem-10-2023'),
(942,'REMAJA MASJID AL MU’MINUN',NULL,'Lanyard','30','pcs','0',NULL,10000,0,'lunas',NULL,'2023-10-09 00:00:00',NULL,'2023-10-09 06:17:58','2023-10-09 06:18:04','942-oys-10-2023'),
(943,'PCNU',NULL,'Proposal HSN','15','eks','0',NULL,20000,0,'lunas',NULL,'2023-10-10 00:00:00',NULL,'2023-10-10 02:16:06','2023-10-23 04:43:08','943-whu-10-2023'),
(944,'PCNU',NULL,'Undangan','130','lbr','0',NULL,5000,0,'lunas',NULL,'2023-10-10 00:00:00',NULL,'2023-10-10 02:18:39','2023-10-23 04:43:08','943-whu-10-2023'),
(945,'PCNU',NULL,'Cocard Lengkap','150','pcs','0',NULL,3500,0,'lunas',NULL,'2023-10-10 00:00:00',NULL,'2023-10-10 02:21:29','2023-10-23 04:43:08','943-whu-10-2023'),
(946,'BERBAUR BERSAMA',NULL,'Cetak Buku Paket 1','1','Paket','0',NULL,350000,0,'lunas',NULL,'2023-10-11 00:00:00',NULL,'2023-10-11 02:25:00','2023-10-11 02:25:09','946-dwy-10-2023'),
(947,'HMPS HKI',NULL,'Paket Lanyard Id Card','20','pcs','0',NULL,15000,0,'lunas',NULL,'2023-10-11 00:00:00',NULL,'2023-10-11 03:22:04','2023-10-11 03:22:27','947-gqt-10-2023'),
(948,'Nanda',NULL,'Cetak Idcard 2 sisi','14','pcs','0',NULL,7000,0,'lunas',NULL,'2023-10-12 00:00:00',NULL,'2023-10-12 02:08:44','2023-10-12 02:08:49','948-wsd-10-2023'),
(949,'Dimas Saputra',NULL,'Kaos XXXL pndek','1','pcs','0',NULL,75000,0,'lunas',NULL,'2023-10-12 00:00:00',NULL,'2023-10-12 03:17:32','2023-10-12 03:20:00','949-bjk-10-2023'),
(950,'Dimas Saputra',NULL,'Kaos XXXL Panjang','1','pcs','0',NULL,80000,0,'lunas',NULL,'2023-10-12 00:00:00',NULL,'2023-10-12 03:18:14','2023-10-12 03:20:00','949-bjk-10-2023'),
(951,'Dimas Saputra',NULL,'Kaos XL Panjang','1','pcs','0',NULL,75000,0,'lunas',NULL,'2023-10-12 00:00:00',NULL,'2023-10-12 03:18:42','2023-10-12 03:20:00','949-bjk-10-2023'),
(952,'Dimas Saputra',NULL,'Kaos XL Pendek','2','pcs','0',NULL,70000,0,'lunas',NULL,'2023-10-12 00:00:00',NULL,'2023-10-12 03:19:07','2023-10-12 03:20:00','949-bjk-10-2023'),
(953,'Gus Fahmi',NULL,'Brosur','1','Rim','0',NULL,1000000,0,'lunas',NULL,'2023-10-14 00:00:00',NULL,'2023-10-14 12:40:57','2023-10-23 04:43:35','953-kqn-10-2023'),
(954,'Gus Fahmi',NULL,'Banner Besar','2','Pcs','0',NULL,160000,0,'lunas',NULL,'2023-10-14 00:00:00',NULL,'2023-10-14 12:44:58','2023-10-23 04:43:35','953-kqn-10-2023'),
(955,'Gus Fahmi',NULL,'Banner sedang','2','pcs','0',NULL,40000,0,'lunas',NULL,'2023-10-14 00:00:00',NULL,'2023-10-14 12:47:22','2023-10-23 04:43:35','953-kqn-10-2023'),
(956,'Bapak Munjin',NULL,'Cetak Buku','40','eks','0',NULL,50000,0,'belum',NULL,'2023-10-19 00:00:00',NULL,'2023-10-19 07:31:10','2023-10-19 07:31:10','956-pad-10-2023'),
(957,'Hj Solihah',NULL,'Nadhom Safinah Jawa','100','eks','0',NULL,10000,0,'belum',NULL,'2023-10-07 00:00:00',NULL,'2023-10-20 09:27:49','2023-10-20 09:27:49','957-wze-10-2023'),
(958,'PC GP ANSOR BANYUMAS',NULL,'Sertifikat PKD Baturaden','71','Lembar','0',NULL,7000,0,'lunas',NULL,'2023-10-21 00:00:00',NULL,'2023-10-21 03:03:11','2023-10-21 03:04:42','958-lla-10-2023'),
(959,'PC GP ANSOR BANYUMAS',NULL,'Sertifikat PKD Lumbir','41','Lembar','0',NULL,7000,0,'lunas',NULL,'2023-10-21 00:00:00',NULL,'2023-10-21 03:04:01','2023-10-21 03:04:42','958-lla-10-2023'),
(960,'PC GP ANSOR BANYUMAS',NULL,'Sertifikat PKD Kebasen','66','Lembar','0',NULL,7000,0,'lunas',NULL,'2023-10-21 00:00:00',NULL,'2023-10-21 03:04:28','2023-10-21 03:04:42','958-lla-10-2023'),
(961,'SAKO MAARIF BANYUMAS',NULL,'Cetak ID Card','125','eks','0',NULL,3000,0,'lunas',NULL,'2023-10-25 00:00:00',NULL,'2023-10-25 03:27:10','2023-10-25 03:30:34','961-nia-10-2023'),
(962,'SAKO MAARIF BANYUMAS',NULL,'Cetak Sertifikat Bahan Line Bolak Balik','125','eks','0',NULL,5000,0,'lunas',NULL,'2023-10-25 00:00:00',NULL,'2023-10-25 03:27:44','2023-10-25 03:30:34','961-nia-10-2023'),
(963,'SAKO MAARIF BANYUMAS',NULL,'Cetak Sertifikat Bahan Linen 1 Sisi','12','eks','0',NULL,4000,0,'lunas',NULL,'2023-10-25 00:00:00',NULL,'2023-10-25 03:30:05','2023-10-25 03:30:34','961-nia-10-2023'),
(964,'Riski alif',NULL,'Cetak lanyard id card','60','pcs','0',NULL,15000,0,'lunas',NULL,'2023-10-26 00:00:00',NULL,'2023-10-26 08:32:23','2023-10-26 08:32:43','964-wej-10-2023'),
(965,'Ahdi Prasetyo',NULL,'Cetak lanyard+id card','63','eks','0',NULL,15000,0,'lunas',NULL,'2023-10-30 00:00:00',NULL,'2023-10-30 09:20:57','2023-10-30 09:21:07','965-zmm-10-2023'),
(966,'Dwi Ariyanti',NULL,'Cetak Lanyard id card premium','11','pcs','0',NULL,17000,0,'lunas',NULL,'2023-10-31 00:00:00',NULL,'2023-10-31 08:13:40','2023-10-31 08:13:45','966-qsv-10-2023'),
(967,'PCNU Banyumas',NULL,'Cetak Buku Saku Percab','100','eks','0',NULL,7000,0,'lunas',NULL,'2023-11-02 00:00:00',NULL,'2023-11-02 04:37:02','2023-11-03 02:57:49','967-rip-11-2023'),
(968,'PCNU Banyumas',NULL,'Cetak Buku Dummy Percab A4','3','eks','0',NULL,15500,0,'lunas',NULL,'2023-11-02 00:00:00',NULL,'2023-11-02 04:38:43','2023-11-03 02:57:49','967-rip-11-2023'),
(969,'PCNU Banyumas',NULL,'Cetak Buku Dummy Panduan Administrasi A4','3','eks','0',NULL,14500,0,'lunas',NULL,'2023-11-02 00:00:00',NULL,'2023-11-02 04:40:20','2023-11-03 02:57:49','967-rip-11-2023'),
(970,'Evi Nur Fauziyah',NULL,'Paket Lanyard Id Card','34','pcs','0',NULL,15000,0,'lunas',NULL,'2023-11-03 00:00:00',NULL,'2023-11-03 04:51:58','2023-11-03 04:52:21','970-xhm-11-2023'),
(971,'Ahdi Prasetyo',NULL,'Id Card','5','eks','0',NULL,5000,0,'lunas',NULL,'2023-11-04 00:00:00',NULL,'2023-11-04 03:07:39','2023-11-04 03:07:43','971-qnm-11-2023'),
(972,'Bintang Forever',NULL,'Block Note Custom Polos','40','eks','0',NULL,3000,0,'lunas',NULL,'2023-11-04 00:00:00',NULL,'2023-11-04 03:10:35','2023-11-04 03:10:50','972-oqz-11-2023'),
(973,'Ibnu Asaduddin',NULL,'Cetak disertasi','10','eks','0',NULL,34500,0,'lunas',NULL,'2023-11-04 00:00:00',NULL,'2023-11-04 03:15:06','2023-11-06 08:24:03','973-bko-11-2023'),
(974,'Ibnu Asaduddin',NULL,'Cetak Ringkasan Disertasi','60','eks','0',NULL,11500,0,'lunas',NULL,'2023-11-04 00:00:00',NULL,'2023-11-04 03:15:38','2023-11-06 08:24:03','973-bko-11-2023'),
(975,'Wahyu Fauzi',NULL,'Cetak disertasi','10','eks','0',NULL,33000,0,'lunas',NULL,'2023-11-04 00:00:00',NULL,'2023-11-04 03:16:53','2023-11-06 08:23:59','975-wav-11-2023'),
(976,'Wahyu Fauzi',NULL,'Cetak Ringkasan Disertasi','60','eks','0',NULL,13500,0,'lunas',NULL,'2023-11-04 00:00:00',NULL,'2023-11-04 03:17:28','2023-11-06 08:23:59','975-wav-11-2023'),
(977,'MA\'HAD AL JAMI\'AH UIN SAIZU',NULL,'Co Card Panitia','15','pcs','0',NULL,8000,0,'lunas',NULL,'2023-11-07 00:00:00',NULL,'2023-11-07 08:03:55','2023-11-08 06:34:11','977-etd-11-2023'),
(978,'MA\'HAD AL JAMI\'AH UIN SAIZU',NULL,'Papan Simbolis Hadiah (steroform)','8','pcs','0',NULL,20000,0,'lunas',NULL,'2023-11-07 00:00:00',NULL,'2023-11-07 08:09:42','2023-11-08 06:34:11','977-etd-11-2023'),
(979,'MA\'HAD AL JAMI\'AH UIN SAIZU',NULL,'Undangan','10','pcs','0',NULL,5000,0,'lunas',NULL,'2023-11-07 00:00:00',NULL,'2023-11-07 08:10:55','2023-11-08 06:34:11','977-etd-11-2023'),
(980,'Agus Tri Wahyudi',NULL,'Cetak Id Card Jepit','53','pcs','0',NULL,12000,0,'lunas',NULL,'2023-11-07 00:00:00',NULL,'2023-11-07 08:12:50','2023-11-08 06:56:31','980-ncg-11-2023'),
(981,'Oentung',NULL,'Lanyard + ID Card','10','eks','0',NULL,15000,0,'lunas',NULL,'2023-11-09 00:00:00',NULL,'2023-11-09 08:49:00','2023-11-09 08:49:07','981-hrb-11-2023'),
(982,'Hmps PBA',NULL,'CETAK LANYARD ID CARD','75','pcs','0',NULL,14000,0,'lunas',NULL,'2023-11-11 00:00:00',NULL,'2023-11-11 04:43:56','2023-11-13 06:56:36','982-neg-11-2023'),
(983,'PCNU Banyumas',NULL,'Cetak Buku Saku Percab #2','100','eks','0',NULL,7000,0,'lunas',NULL,'2023-11-13 00:00:00',NULL,'2023-11-13 06:57:29','2023-11-16 00:18:47','983-ooi-11-2023'),
(984,'Prof. Dr. H. Fathul Aminudin Aziz, M.M',NULL,'Cetak buku Memoar','200','eks','0',NULL,47000,0,'lunas',NULL,'2023-11-16 00:00:00',NULL,'2023-11-16 00:19:48','2023-11-21 09:24:57','984-gxi-11-2023'),
(985,'PCNU Banyumas',NULL,'MAP','100','lbr','0',NULL,6500,0,'lunas',NULL,'2023-11-21 00:00:00',NULL,'2023-11-21 09:26:36','2023-11-23 04:44:51','985-vtf-11-2023'),
(986,'PCNU Banyumas',NULL,'Cetak Buku Saku Percab #3','100','eks','0',NULL,7000,0,'lunas',NULL,'2023-11-21 00:00:00',NULL,'2023-11-21 09:27:49','2023-11-23 04:44:51','985-vtf-11-2023'),
(987,'PCNU Banyumas',NULL,'Cetak Buku Saku Percab #4','100','eks','0',NULL,7000,0,'belum',NULL,'2023-11-23 00:00:00',NULL,'2023-11-23 04:44:34','2023-11-23 04:44:34','987-wub-11-2023'),
(988,'Klinik Pratama',NULL,'lanyard+id card','10','eks','0',NULL,17000,0,'lunas',NULL,'2023-11-23 00:00:00',NULL,'2023-11-23 08:24:37','2023-11-23 08:30:48','988-olw-11-2023'),
(989,'UNUGHA CILACAP',NULL,'Cetak panduan karya ilmiah','50','eks','0',NULL,27500,0,'belum',NULL,'2023-11-23 00:00:00',NULL,'2023-11-23 10:13:24','2023-11-23 10:13:24','989-elz-11-2023'),
(990,'Nisa Anindia',NULL,'Cetak lanyard premium','19','pcs','0',NULL,17000,0,'lunas',NULL,'2023-11-24 00:00:00',NULL,'2023-11-24 06:40:48','2023-11-24 06:41:02','990-yem-11-2023'),
(991,'Gusti zulfa',NULL,'Paket Lanyard Id-Card','40','pcs','0',NULL,15000,0,'lunas',NULL,'2023-11-25 00:00:00',NULL,'2023-11-25 05:08:36','2023-11-25 05:08:56','991-ric-11-2023'),
(992,'KLINIK YOS SUDARSO',NULL,'Paket lanyard+id card','19','eks','0',NULL,17000,0,'belum',NULL,'2023-11-25 00:00:00',NULL,'2023-11-25 09:01:31','2023-11-25 09:01:31','992-xbu-11-2023'),
(993,'SMAN 1 Cilacap',NULL,'Cetak Kartu Pelajar','432','pcs','0',NULL,4000,0,'lunas',NULL,'2023-11-27 00:00:00',NULL,'2023-11-27 08:32:04','2023-11-27 08:52:54','993-buy-11-2023'),
(994,'BANI H. CHASAN NUR',NULL,'Kalender Ap150 4 Lembar Klem Besi','100','eks','0',NULL,10000,0,'belum',NULL,'2023-12-01 00:00:00',NULL,'2023-12-01 02:45:07','2023-12-01 02:45:07','994-goz-12-2023'),
(995,'KARAWITAN',NULL,'Cetak Lanyard + Id Card','50','eks','0',NULL,15000,0,'lunas',NULL,'2023-12-02 00:00:00',NULL,'2023-12-02 02:17:12','2023-12-05 02:54:16','995-sdi-12-2023'),
(996,'STMIK Komputama Majenang',NULL,'Buku Wisuda','63','eks','0',NULL,30000,0,'belum',NULL,'2023-12-03 00:00:00',NULL,'2023-12-03 04:49:16','2023-12-03 04:49:16','996-qlz-12-2023'),
(997,'STMIK Komputama Majenang',NULL,'Bandel Wisuda','60','buah','0',NULL,68000,0,'belum',NULL,'2023-12-03 00:00:00',NULL,'2023-12-03 04:51:08','2023-12-03 04:51:08','996-qlz-12-2023'),
(998,'Fathul Aminudin Aziz',NULL,'*Pencetakan Buku Manajemen Keuangan Pribadi','50','eks','0',NULL,55000,0,'lunas',NULL,'2023-12-04 00:00:00',NULL,'2023-12-04 05:52:39','2023-12-04 05:52:57','998-fxq-12-2023'),
(1000,'Bu Novi',NULL,'Cetak Buku','1','eks','0',NULL,500000,0,'lunas',NULL,'2023-12-04 00:00:00',NULL,'2023-12-04 10:56:19','2023-12-04 10:56:39','999-xmz-12-2023'),
(1001,'Bu Novi',NULL,'Cetak Buku Laporan Penelitian','1','eks','0',NULL,500000,0,'lunas',NULL,'2023-12-04 00:00:00',NULL,'2023-12-04 10:56:36','2023-12-04 10:56:39','999-xmz-12-2023'),
(1002,'Supriyanto, dkk',NULL,'Percetakan dan penerbitan buku','120','eks','0',NULL,50000,0,'lunas',NULL,'2023-12-04 00:00:00',NULL,'2023-12-04 14:45:38','2023-12-04 14:45:59','1002-sfc-12-2023'),
(1003,'Farida Nusanti',NULL,'Cetak FORMULIR MTBS 2 sisi','2','rim','0',NULL,225000,0,'lunas',NULL,'2023-12-05 00:00:00',NULL,'2023-12-05 05:43:36','2023-12-07 10:04:59','1003-czw-12-2023'),
(1004,'MAN 2 Cilacap',NULL,'Blangko Raport/Kertas raport','15','rim','0',NULL,245000,0,'lunas',NULL,'2023-12-07 00:00:00',NULL,'2023-12-07 02:24:15','2023-12-07 04:48:07','1004-obb-12-2023'),
(1005,'MAN 2 Cilacap',NULL,'Cetak MAP','1500','buah','0',NULL,5000,0,'lunas',NULL,'2023-12-07 00:00:00',NULL,'2023-12-07 02:25:15','2023-12-07 04:48:23','1004-obb-12-2023'),
(1006,'MAN 2 Cilacap',NULL,'Cetak Buku','2','eks','0',NULL,75000,0,'lunas',NULL,'2023-12-07 00:00:00',NULL,'2023-12-07 02:25:44','2023-12-07 04:48:34','1004-obb-12-2023'),
(1007,'IHSAN',NULL,'Cetak Buku Abdulloh Isa','10','eks','0',NULL,20000,0,'lunas',NULL,'2023-12-07 00:00:00',NULL,'2023-12-07 07:01:46','2023-12-07 07:01:51','1007-qew-12-2023'),
(1008,'Dani Kusumastuti',NULL,'Cetak Buku Penelitian','4','eks','0',NULL,30000,0,'lunas',NULL,'2023-12-08 00:00:00',NULL,'2023-12-08 03:27:49','2023-12-10 02:07:15','1008-auv-12-2023'),
(1009,'STAIS Majenang',NULL,'Map STAIS (Kertas Ivory F4 Color)','100','lembar','0',NULL,8000,0,'belum',NULL,'2023-12-10 00:00:00',NULL,'2023-12-10 02:08:43','2023-12-10 02:08:43','1009-fpm-12-2023'),
(1010,'STAIS Majenang',NULL,'Buku Wisuda','110','eks','0',NULL,45000,0,'belum',NULL,'2023-12-10 00:00:00',NULL,'2023-12-10 02:09:27','2023-12-10 02:09:27','1009-fpm-12-2023'),
(1011,'STAIS Majenang',NULL,'Undangan Wisuda','175','buah','0',NULL,10000,0,'belum',NULL,'2023-12-10 00:00:00',NULL,'2023-12-10 02:10:03','2023-12-10 02:10:03','1009-fpm-12-2023'),
(1012,'STAIS Majenang',NULL,'MAP Ijazah','150','Buah','0',NULL,33000,0,'belum',NULL,'2023-12-10 00:00:00',NULL,'2023-12-10 02:11:05','2023-12-10 02:11:05','1009-fpm-12-2023'),
(1013,'MI PP Cibeunying',NULL,'Blanko Syahadah','100','Lembar','0',NULL,8000,0,'belum',NULL,'2023-12-10 00:00:00',NULL,'2023-12-10 02:14:43','2023-12-10 02:14:43','1013-qrh-12-2023'),
(1014,'SIFATUN UNU',NULL,'LANYARD','53','eks','0',NULL,15000,0,'lunas',NULL,'2023-12-16 00:00:00',NULL,'2023-12-15 17:32:44','2023-12-15 17:32:53','1014-shi-12-2023'),
(1015,'AL IKHSAN',NULL,'Cetak Lanyard','9','eks','0',NULL,15000,0,'lunas',NULL,'2023-12-16 00:00:00',NULL,'2023-12-16 06:16:55','2023-12-18 10:00:41','1015-zse-12-2023'),
(1016,'KIA',NULL,'Print Copy','400','eks','0',NULL,200,0,'lunas',NULL,'2023-12-21 00:00:00',NULL,'2023-12-21 02:50:51','2024-01-22 07:28:50','1016-trp-12-2023'),
(1017,'KSR PMI UIN SAIZU',NULL,'Cetak ID card','16','pcs','0',NULL,5000,0,'lunas',NULL,'2024-01-05 00:00:00',NULL,'2024-01-05 03:53:19','2024-01-05 03:53:24','1017-imf-01-2024'),
(1018,'Nisa Zinnirah',NULL,'Cetak Lanyard id card','69','pcs','0',NULL,15000,0,'lunas',NULL,'2024-01-06 00:00:00',NULL,'2024-01-06 07:32:32','2024-01-06 07:32:48','1018-uyk-01-2024'),
(1019,'Ahdi',NULL,'Cetak Lanyard id card','22','pcs','0',NULL,15000,0,'lunas',NULL,'2024-01-06 00:00:00',NULL,'2024-01-06 07:33:12','2024-01-06 07:33:15','1019-xix-01-2024'),
(1020,'Ratri',NULL,'Cetak Lanyard','10','pcs','0',NULL,10000,0,'lunas',NULL,'2024-01-06 00:00:00',NULL,'2024-01-06 07:36:13','2024-01-08 03:51:06','1020-ijx-01-2024'),
(1022,'Widia',NULL,'Cetak id card','5','pcs','0',NULL,5000,0,'lunas',NULL,'2024-01-08 00:00:00',NULL,'2024-01-08 06:12:14','2024-01-08 06:12:17','1021-zxc-01-2024'),
(1023,'STAIS Majenang',NULL,'BIMBINGAN SKRIPSI','90','eks','0',NULL,4400,0,'lunas',NULL,'2024-01-08 00:00:00',NULL,'2024-01-08 07:06:49','2024-01-10 08:35:55','1023-mch-01-2024'),
(1024,'STAIS Majenang',NULL,'PANDUAN SKRIPSI 2023-2024','120','eks','0',NULL,14000,0,'lunas',NULL,'2024-01-08 00:00:00',NULL,'2024-01-08 07:07:27','2024-01-10 08:35:55','1023-mch-01-2024'),
(1025,'STAIS Majenang',NULL,'CATATAN HARIAN PKL EBI 2023-2024','30','eks','0',NULL,6000,0,'lunas',NULL,'2024-01-08 00:00:00',NULL,'2024-01-08 07:07:47','2024-01-10 08:35:55','1023-mch-01-2024'),
(1026,'STAIS Majenang',NULL,'PANDUAN PKL - EBI - SYARIAH 2023-2024','35','eks','0',NULL,6400,0,'lunas',NULL,'2024-01-08 00:00:00',NULL,'2024-01-08 07:08:07','2024-01-10 08:35:55','1023-mch-01-2024'),
(1027,'Marlina',NULL,'Cetak Lanyard','12','pcs','0',NULL,12000,0,'lunas',NULL,'2024-01-09 00:00:00',NULL,'2024-01-09 08:05:08','2024-01-09 08:05:23','1027-ulg-01-2024'),
(1028,'Fitria',NULL,'Cetak lanyard id card','5','pcs','0',NULL,15000,0,'lunas',NULL,'2024-01-12 00:00:00',NULL,'2024-01-12 03:05:49','2024-01-12 03:05:58','1028-uzn-01-2024'),
(1029,'Seful',NULL,'Yasin Hardcover','40','eks','0',NULL,20000,0,'lunas',NULL,'2024-01-12 00:00:00',NULL,'2024-01-12 08:12:50','2024-01-12 08:12:55','1029-scf-01-2024'),
(1030,'Q Riset',NULL,'Buku Antologi Puisi','3','eks','0',NULL,8670,0,'lunas',NULL,'2024-01-13 00:00:00',NULL,'2024-01-13 03:44:13','2024-01-15 02:55:38','1030-ttx-01-2024'),
(1031,'Q Riset',NULL,'Buku Resiko dan Kapasitas Pasar','6','eks','0',NULL,21320,0,'lunas',NULL,'2024-01-13 00:00:00',NULL,'2024-01-13 03:44:45','2024-01-15 02:55:38','1030-ttx-01-2024'),
(1032,'Q Riset',NULL,'Rumah Kompos','2','eks','0',NULL,7550,0,'lunas',NULL,'2024-01-13 00:00:00',NULL,'2024-01-13 03:45:07','2024-01-15 02:55:38','1030-ttx-01-2024'),
(1033,'Q Riset',NULL,'Journey Team PPK','2','eks','0',NULL,12760,0,'lunas',NULL,'2024-01-13 00:00:00',NULL,'2024-01-13 03:45:34','2024-01-15 02:55:38','1030-ttx-01-2024'),
(1034,'Turhamun',NULL,'Map Resleting','100','pcs','0',NULL,12500,0,'lunas',NULL,'2024-01-13 00:00:00',NULL,'2024-01-13 06:15:58','2024-01-16 02:45:49','1034-ofx-01-2024'),
(1035,'Turhamun',NULL,'Buku Agenda','100','pcs','0',NULL,15000,0,'lunas',NULL,'2024-01-13 00:00:00',NULL,'2024-01-13 06:17:01','2024-01-16 02:45:49','1034-ofx-01-2024'),
(1036,'Turhamun',NULL,'Pulpen','100','pcs','0',NULL,2000,0,'lunas',NULL,'2024-01-13 00:00:00',NULL,'2024-01-13 06:18:18','2024-01-16 02:45:49','1034-ofx-01-2024'),
(1038,'Prof Khusnul Khatimah',NULL,'Cetak dan terbit buku','1','paket','0',NULL,1000000,0,'lunas',NULL,'2024-01-15 00:00:00',NULL,'2024-01-15 02:56:18','2024-01-16 02:46:27','1038-cpd-01-2024'),
(1039,'Fakultas Dakwah',NULL,'Buku panduan kompre dan skripsi','100','eks','0',NULL,17500,0,'belum',NULL,'2024-01-15 00:00:00',NULL,'2024-01-15 03:08:14','2024-01-15 03:08:14','1039-vao-01-2024'),
(1040,'Bulan',NULL,'Cetak id card yoyo','12','pcs','0',NULL,12000,0,'lunas',NULL,'2024-01-18 00:00:00',NULL,'2024-01-18 04:05:28','2024-01-18 04:05:33','1040-kxy-01-2024'),
(1041,'KIA',NULL,'Copy F4','1200','lbr','0',NULL,200,0,'lunas',NULL,'2024-01-18 00:00:00',NULL,'2024-01-18 06:58:38','2024-01-22 07:28:37','1041-nkl-01-2024'),
(1042,'Vika oktaviani',NULL,'Cetak id card yoyo','10','pcs','0',NULL,12000,0,'lunas',NULL,'2024-01-19 00:00:00',NULL,'2024-01-19 03:39:09','2024-01-19 03:39:20','1042-psv-01-2024'),
(1043,'Prof Sulkhan, dkk',NULL,'Layout dan cetak buku','1','paket','0',NULL,1000000,0,'lunas',NULL,'2024-01-19 00:00:00',NULL,'2024-01-19 07:21:49','2024-01-22 07:30:01','1043-qaj-01-2024'),
(1044,'Khoerul Umam',NULL,'Cetak Proposal','5','eks','0',NULL,43000,0,'lunas',NULL,'2024-01-19 00:00:00',NULL,'2024-01-19 08:38:07','2024-01-19 08:42:19','1044-xrw-01-2024'),
(1045,'STAIS Majenang',NULL,'PANDUAN PPL PAI','60','eks','0',NULL,12200,0,'lunas',NULL,'2024-01-20 00:00:00',NULL,'2024-01-20 04:52:44','2024-01-22 07:28:07','1045-gby-01-2024'),
(1046,'STAIS Majenang',NULL,'CATATAN PPL PAI','40','eks','0',NULL,5800,0,'lunas',NULL,'2024-01-20 00:00:00',NULL,'2024-01-20 04:53:15','2024-01-22 07:28:07','1045-gby-01-2024'),
(1047,'STAIS Majenang',NULL,'PANDUAN PPL PIAUD','45','eks','0',NULL,8600,0,'lunas',NULL,'2024-01-20 00:00:00',NULL,'2024-01-20 04:53:42','2024-01-22 07:28:07','1045-gby-01-2024'),
(1048,'STAIS Majenang',NULL,'CATATAN PPL PIAUD','25','eks','0',NULL,6100,0,'lunas',NULL,'2024-01-20 00:00:00',NULL,'2024-01-20 04:54:09','2024-01-22 07:28:07','1045-gby-01-2024'),
(1049,'Aziz',NULL,'Cetak lanyard+id card','11','pcs','0',NULL,15000,0,'lunas',NULL,'2024-01-22 00:00:00',NULL,'2024-01-22 08:22:59','2024-01-22 08:23:08','1049-jor-01-2024'),
(1050,'Seful',NULL,'Yasin Hardcover','5','eks','0',NULL,20000,0,'lunas',NULL,'2024-01-25 00:00:00',NULL,'2024-01-25 07:17:01','2024-01-25 07:17:03','1050-aud-01-2024'),
(1051,'STAIS Majenang',NULL,'Paket Lanyard No Stopper + Id Card','100','pcs','0',NULL,12000,0,'lunas',NULL,'2024-01-26 00:00:00',NULL,'2024-01-26 06:15:46','2024-02-01 07:27:44','1051-ajr-01-2024'),
(1052,'Tamim',NULL,'Cetak HVS A3','100','lbr','0',NULL,1400,0,'lunas',NULL,'2024-01-26 00:00:00',NULL,'2024-01-26 07:47:24','2024-01-27 06:14:10','1052-ysx-01-2024'),
(1053,'STAIS Majenang',NULL,'BUKU BIMBINGAN SKRIPSI','10','eks','0',NULL,4400,0,'lunas',NULL,'2024-01-27 00:00:00',NULL,'2024-01-27 06:09:39','2024-02-01 07:27:44','1051-ajr-01-2024'),
(1054,'Q Riset',NULL,'Buku Pendidikan Non Formal dan Vokasi','10','eks','0',NULL,26900,0,'lunas',NULL,'2024-02-01 00:00:00',NULL,'2024-02-01 08:18:28','2024-02-01 08:52:42','1054-mkb-02-2024'),
(1055,'Q Riset',NULL,'Buku Manajemen Pendidikan','18','eks','0',NULL,26150,0,'lunas',NULL,'2024-02-01 00:00:00',NULL,'2024-02-01 08:19:03','2024-02-01 08:52:42','1054-mkb-02-2024'),
(1056,'Q Riset',NULL,'Buku Teori di balik Tabir Ekspolorasi','5','eks','0',NULL,18860,0,'lunas',NULL,'2024-02-01 00:00:00',NULL,'2024-02-01 08:19:49','2024-02-01 08:52:42','1054-mkb-02-2024'),
(1057,'Q Riset',NULL,'Buku Teori Drama','5','eks','0',NULL,17260,0,'lunas',NULL,'2024-02-01 00:00:00',NULL,'2024-02-01 08:20:18','2024-02-01 08:52:42','1054-mkb-02-2024'),
(1058,'Q Riset',NULL,'Buku Dasar Teknologi Pengolahan Hasil Ternak','5','eks','0',NULL,11180,0,'lunas',NULL,'2024-02-01 00:00:00',NULL,'2024-02-01 08:20:51','2024-02-01 08:52:42','1054-mkb-02-2024'),
(1059,'Q Riset',NULL,'Buku Dasar Teknologi Pengolahan Hasil Ternak (Warna)','1','eks','0',NULL,17900,0,'lunas',NULL,'2024-02-01 00:00:00',NULL,'2024-02-01 08:21:16','2024-02-01 08:52:42','1054-mkb-02-2024'),
(1060,'Q Riset',NULL,'Buku Pelangi Bangsa Jalan Menuju MB','9','eks','0',NULL,8780,0,'lunas',NULL,'2024-02-01 00:00:00',NULL,'2024-02-01 08:21:42','2024-02-01 08:52:42','1054-mkb-02-2024'),
(1061,'Puskesmas Purwokerto Selatan',NULL,'Buku Register Balita (0-59 Bulan)','135','eks','0',NULL,20000,0,'lunas',NULL,'2024-02-07 00:00:00',NULL,'2024-02-07 02:51:00','2024-02-28 06:59:57','1061-hjl-02-2024'),
(1062,'Dr. H. Slamet Wahyudi, M.Pd.',NULL,'Cetak dan Terbit Buku','1','pkt','0',NULL,1300000,0,'belum',NULL,'2024-02-07 00:00:00',NULL,'2024-02-07 06:00:04','2024-02-07 06:00:04','1062-ulv-02-2024'),
(1063,'Dr. Dudiyono, M.Pd.I.',NULL,'Cetak dan Terbit Buku','1','pkt','0',NULL,1300000,0,'belum',NULL,'2024-02-07 00:00:00',NULL,'2024-02-07 06:00:35','2024-02-07 06:00:35','1063-egk-02-2024'),
(1065,'TPS 10 KARANGNANGKA',NULL,'CETAK BANER','2','Meter','0',NULL,20000,0,'lunas',NULL,'2024-02-12 00:00:00',NULL,'2024-02-12 14:55:50','2024-02-12 14:58:46','1064-kbn-02-2024'),
(1066,'TPS 08 DAWUHAN WETAN',NULL,'CETAK BANER','2','Meter','0',NULL,20000,0,'lunas',NULL,'2024-02-13 00:00:00',NULL,'2024-02-13 16:07:33','2024-02-13 16:07:39','1066-yqp-02-2024'),
(1067,'Taliya',NULL,'Banner 3x2','1','pcs','0',NULL,102000,0,'lunas',NULL,'2024-02-15 00:00:00',NULL,'2024-02-15 08:11:49','2024-02-15 08:12:55','1067-fkj-02-2024'),
(1068,'Taliya',NULL,'Lanyard Id Card Tisue','15','pcs','0',NULL,17000,0,'lunas',NULL,'2024-02-15 00:00:00',NULL,'2024-02-15 08:12:32','2024-02-15 08:12:55','1067-fkj-02-2024'),
(1069,'Reni Yulianingsih',NULL,'Buku Implementasi (Labu Kuning)','1','eks','0',NULL,95000,0,'lunas',NULL,'2024-02-16 00:00:00',NULL,'2024-02-16 07:29:02','2024-02-20 04:16:57','1069-zmg-02-2024'),
(1070,'Ponpes Atthohiriyah',NULL,'Buku catatan Ngaji','100','eks','0',NULL,3000,0,'lunas',NULL,'2024-02-17 00:00:00',NULL,'2024-02-17 11:43:48','2024-02-20 04:18:10','1070-wra-02-2024'),
(1071,'Marlina',NULL,'Cetak Lanyard Idcard','38','pcs','0',NULL,15000,0,'lunas',NULL,'2024-02-21 00:00:00',NULL,'2024-02-21 08:46:55','2024-02-22 03:05:04','1071-avu-02-2024'),
(1072,'Fitria',NULL,'Cetak ganci 2 sisi','50','pcs','0',NULL,4000,0,'lunas',NULL,'2024-02-22 00:00:00',NULL,'2024-02-22 03:25:58','2024-02-22 03:26:07','1072-jsa-02-2024'),
(1073,'Wawan Al Arif',NULL,'Lanyard 2 sisi+ Id card','51','pcs','0',NULL,12000,0,'lunas',NULL,'2024-02-22 00:00:00',NULL,'2024-02-22 03:26:47','2024-02-23 07:49:45','1073-zmo-02-2024'),
(1074,'PC ANSOR BANYUMAS',NULL,'Jersey Fullprint','16','pcs','0',NULL,145000,0,'lunas',NULL,'2024-02-22 00:00:00',NULL,'2024-02-22 03:36:00','2024-02-26 01:40:33','1074-clr-02-2024'),
(1075,'PC ANSOR BANYUMAS',NULL,'Jersey Fullprint XXL','2','pcs','0',NULL,150000,0,'lunas',NULL,'2024-02-22 00:00:00',NULL,'2024-02-22 03:38:12','2024-02-26 01:40:33','1074-clr-02-2024'),
(1076,'PC ANSOR BANYUMAS',NULL,'Jersey Fullprint XXXL','1','pcs','0',NULL,155000,0,'lunas',NULL,'2024-02-22 00:00:00',NULL,'2024-02-22 03:39:02','2024-02-26 01:40:33','1074-clr-02-2024'),
(1077,'Gus Enjang BY.',NULL,'Cetak Buku','200','eks','0',NULL,35000,0,'lunas',NULL,'2024-02-26 00:00:00',NULL,'2024-02-26 01:41:10','2024-03-08 06:03:34','1077-vvd-02-2024'),
(1078,'Priyo Sumadi',NULL,'Buku Yasin','80','eks','0',NULL,10000,0,'lunas',NULL,'2024-02-27 00:00:00',NULL,'2024-02-27 07:42:38','2024-02-28 03:03:59','1078-dwf-02-2024'),
(1079,'Priyo Sumadi',NULL,'Ongkos Kirim','1','pkt','0',NULL,70000,0,'lunas',NULL,'2024-02-27 00:00:00',NULL,'2024-02-27 07:43:23','2024-02-28 03:03:59','1078-dwf-02-2024'),
(1080,'Sakho',NULL,'Cetak antologi essay kkn khi paket 1','1','pkt','0',NULL,350000,0,'lunas',NULL,'2024-02-28 00:00:00',NULL,'2024-02-28 05:44:48','2024-02-28 05:45:58','1080-ejb-02-2024'),
(1081,'Fayza',NULL,'Cetak antologi essay kkn | Paket 1','1','pkt','0',NULL,350000,0,'lunas',NULL,'2024-02-28 00:00:00',NULL,'2024-02-28 05:45:52','2024-02-28 05:45:56','1081-ona-02-2024'),
(1082,'STORY OF 3456 DETIK',NULL,'CETAK BUKU QRCBN PAKET 9 BUKU','1','Paket','0',NULL,400000,0,'lunas',NULL,'2024-02-29 00:00:00',NULL,'2024-02-29 04:21:45','2024-02-29 04:22:23','1082-ngs-02-2024'),
(1083,'Wawan Al Arif',NULL,'Id Card','50','eks','0',NULL,3000,0,'lunas',NULL,'2024-03-01 00:00:00',NULL,'2024-03-01 03:38:55','2024-03-01 03:40:51','1083-gcu-03-2024'),
(1085,'Farhan',NULL,'Cetak Buku KKN Paket Siaaapp','1','pkt','0',NULL,500000,0,'lunas',NULL,'2024-03-02 00:00:00',NULL,'2024-03-02 03:06:14','2024-03-02 03:06:17','1084-bwd-03-2024'),
(1086,'MWC NU Kedungbanteng',NULL,'Cetak INFAQ Ramadhan','1','rim','0',NULL,300000,0,'lunas',NULL,'2024-03-04 00:00:00',NULL,'2024-03-04 07:03:09','2024-05-13 04:49:49','1086-hak-03-2024'),
(1087,'Faisal',NULL,'Cetak lanyard id card','9','pcs','0',NULL,15000,0,'lunas',NULL,'2024-03-07 00:00:00',NULL,'2024-03-07 06:49:00','2024-03-07 06:49:40','1087-uxa-03-2024'),
(1088,'Faisal',NULL,'Gosend','1','pkt','0',NULL,30000,0,'lunas',NULL,'2024-03-07 00:00:00',NULL,'2024-03-07 06:49:23','2024-03-07 06:49:40','1087-uxa-03-2024'),
(1089,'Ponpes Atthohiriyah',NULL,'Adab Tilawah','10','eks','0',NULL,12500,0,'lunas',NULL,'2024-03-13 00:00:00',NULL,'2024-03-13 12:01:48','2024-03-14 04:01:49','1089-azm-03-2024'),
(1090,'Ponpes Atthohiriyah',NULL,'Syamail Muhammadiyah','45','eks','0',NULL,29000,0,'lunas',NULL,'2024-03-13 00:00:00',NULL,'2024-03-13 12:02:16','2024-03-14 04:01:49','1089-azm-03-2024'),
(1091,'Ponpes Atthohiriyah',NULL,'Burdah','25','eks','0',NULL,10000,0,'lunas',NULL,'2024-03-13 00:00:00',NULL,'2024-03-13 12:02:33','2024-03-14 04:01:49','1089-azm-03-2024'),
(1092,'Ponpes Atthohiriyah',NULL,'Risalah','25','eks','0',NULL,21000,0,'lunas',NULL,'2024-03-13 00:00:00',NULL,'2024-03-13 12:02:47','2024-03-14 04:01:49','1089-azm-03-2024'),
(1093,'IPNU Sehu Dawuhan Wetan',NULL,'Cetak Kitab Ayyuhal Walad','60','eks','0',NULL,7000,0,'lunas',NULL,'2024-03-16 00:00:00',NULL,'2024-03-16 09:44:25','2024-03-16 09:44:40','1093-wsm-03-2024'),
(1094,'PAC ANSOR KEDUNGBANTENG',NULL,'CETAK KOMISI','20','eks','0',NULL,2000,0,'lunas',NULL,'2024-03-17 00:00:00',NULL,'2024-03-17 16:08:21','2024-03-18 02:19:32','1094-znw-03-2024'),
(1095,'PAC ANSOR KEDUNGBANTENG',NULL,'KOMISI KONFERS BESAR','3','eks','0',NULL,12000,0,'lunas',NULL,'2024-03-17 00:00:00',NULL,'2024-03-17 16:19:04','2024-03-18 02:19:32','1094-znw-03-2024'),
(1096,'PAC ANSOR KEDUNGBANTENG',NULL,'KOMISI KONFERS KECIL','18','eks','0',NULL,6800,0,'lunas',NULL,'2024-03-17 00:00:00',NULL,'2024-03-17 16:21:02','2024-03-18 02:19:32','1094-znw-03-2024'),
(1097,'PANITIA KONFERENSI PAC GP ANSOR KEDUNGBANTENG',NULL,'KAOS COTTON COMBED 30S FULL SABLON','60','eks','0',NULL,65000,0,'lunas',NULL,'2024-03-18 00:00:00',NULL,'2024-03-18 02:20:41','2024-03-18 02:20:50','1097-zmf-03-2024'),
(1098,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN PEMBERIAN REWARD AND PUNISHMENT','5','eks','0',NULL,10000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:20:07','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1099,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN REKRUTMEN DOSEN','5','eks','0',NULL,7000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:20:33','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1100,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN INTEGRASI PENELITIAN DAN PENGABDIAN KEPADA MASYARAKAT (PKM)','5','eks','0',NULL,9500,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:21:03','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1101,'LPM UIN SAIZU PURWOKERTO',NULL,'PANDUAN CUTI AKADEMIK MAHASISWA (2021)','5','eks','0',NULL,7000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:21:33','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1102,'LPM UIN SAIZU PURWOKERTO',NULL,'PANDUAN DROP OUT 2022','5','eks','0',NULL,7000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:22:09','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1103,'LPM UIN SAIZU PURWOKERTO',NULL,'PANDUAN MONEV KERJASAMA 2022','5','eks','0',NULL,9000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:22:38','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1104,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN DOSEN PEMBIMBING AKADEMIK','5','eks','0',NULL,7500,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:23:08','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1105,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN PENERIMAAN MAHASISWA BARU','5','eks','0',NULL,7500,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:23:29','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1106,'LPM UIN SAIZU PURWOKERTO',NULL,'PANDUAN PEDOMAN KERJASAMA 2022','5','eks','0',NULL,7500,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:23:47','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1107,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN KEBEBASAN AKADEMIK','5','eks','0',NULL,7500,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:24:07','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1108,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN PRESTASI MAHASISWA','5','eks','0',NULL,7500,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:24:25','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1109,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN PELAYANAN BIMBINGAN KARIR MAHASISWA','5','eks','0',NULL,7000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:24:40','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1110,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN PENELITIAN MAHASISWA','5','eks','0',NULL,8000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:25:07','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1111,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN KODE ETIK MAHASISWA','5','eks','0',NULL,8500,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:25:22','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1112,'LPM UIN SAIZU PURWOKERTO',NULL,'SK_PEDOMAN PEMBINAAN MINAT DAN BAKAT','5','eks','0',NULL,7000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:25:41','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1113,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN LAYANAN KESEHATAN','5','eks','0',NULL,8500,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:26:27','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1114,'LPM UIN SAIZU PURWOKERTO',NULL,'PANDUAN PELAKSANAAN BIMBINGAN AKADEMIK DAN NON AKADEMIK','5','eks','0',NULL,7000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:26:48','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1115,'LPM UIN SAIZU PURWOKERTO',NULL,'MONEV PELAKSANAAN VISI MISI','5','eks','0',NULL,7000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:27:07','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1116,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN DOSEN PEMBIMBING AKADEMIK','5','eks','0',NULL,7000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:27:27','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1117,'LPM UIN SAIZU PURWOKERTO',NULL,'Kode Etik Dosen','5','eks','0',NULL,8500,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:27:46','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1118,'LPM UIN SAIZU PURWOKERTO',NULL,'Kode Etik Pegawai','5','eks','0',NULL,8500,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:28:04','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1119,'LPM UIN SAIZU PURWOKERTO',NULL,'PETUNJUK TEKNIS_RPS_SIPINTER','5','eks','0',NULL,12000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:28:27','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1120,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN PREVENTIVE AUDIT','5','eks','0',NULL,15000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:28:59','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1121,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN PENGADAAN BARANG DAN JASA','5','eks','0',NULL,16000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:29:16','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1122,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN TEKNIS PENGGUNAAN SISTER','5','eks','0',NULL,13000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:29:32','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1123,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN EVALUASI KURIKULUM','5','eks','0',NULL,9000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:29:49','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1124,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN EVALUASI PELAKSANAAN KURIKULUM PROGRAM STUDI 201122','5','eks','0',NULL,10000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:30:10','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1125,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN LAYANAN DISABILITAS','5','eks','0',NULL,11500,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:30:34','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1126,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN MONEV PEMBELAJARAN','5','eks','0',NULL,11000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:30:52','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1127,'LPM UIN SAIZU PURWOKERTO',NULL,'Pedoman Penerapan Sistem Penugasan Dosen','5','eks','0',NULL,10000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:31:16','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1128,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN STANDAR MUTU AKADEMIK UIN SAIZU','5','eks','0',NULL,12000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:31:36','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1129,'LPM UIN SAIZU PURWOKERTO',NULL,'PANDUAN REKOGNISI','5','eks','0',NULL,12000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:32:02','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1130,'LPM UIN SAIZU PURWOKERTO',NULL,'PANDUAN PELAKSANAAN TRACER STUDY','5','eks','0',NULL,14000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:32:19','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1131,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN PENGELOLAAN JURUSAN','5','eks','0',NULL,15000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:32:36','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1132,'LPM UIN SAIZU PURWOKERTO',NULL,'Pedoman Pengembangan Bahasa','5','eks','0',NULL,13000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:32:54','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1133,'LPM UIN SAIZU PURWOKERTO',NULL,'Pedoman AMI dan RTM','5','eks','0',NULL,21000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:33:12','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1134,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN MANRISK (INSTITUT)_IAIN[1]','5','eks','0',NULL,20000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:33:29','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1135,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN REVIEW LAPORAN KEUANGAN','5','eks','0',NULL,20000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:33:46','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1136,'LPM UIN SAIZU PURWOKERTO',NULL,'PETA JALAN PENELITIAN','5','eks','0',NULL,29000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:34:01','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1137,'LPM UIN SAIZU PURWOKERTO',NULL,'Peta jalan Penelitian UIN Saizu','5','eks','0',NULL,29000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:34:19','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1138,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN PENYUSUNAN, MONITORING DAN PEMANTAUAN KURIKULUM','5','eks','0',NULL,22000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:34:34','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1139,'LPM UIN SAIZU PURWOKERTO',NULL,'PEDOMAN PENYUSUNAN DAN PENGEMBANGAN KURIKULUM','5','eks','0',NULL,22000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:34:50','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1140,'LPM UIN SAIZU PURWOKERTO',NULL,'RIP UIN SAIZU REVISI 2023','5','eks','0',NULL,32000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:35:05','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1141,'LPM UIN SAIZU PURWOKERTO',NULL,'Renstra Edit 24 Oktober 2023-Versi Borang','5','eks','0',NULL,26000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:35:18','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1142,'LPM UIN SAIZU PURWOKERTO',NULL,'Kebijakan SPMI 2021','5','eks','0',NULL,15000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:35:33','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1143,'LPM UIN SAIZU PURWOKERTO',NULL,'Manual SPMI 2021','5','eks','0',NULL,15000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:35:51','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1144,'LPM UIN SAIZU PURWOKERTO',NULL,'Standar SPMI 2023 Fix','5','eks','0',NULL,55000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:36:13','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1145,'LPM UIN SAIZU PURWOKERTO',NULL,'FORMUIR SPMI','5','eks','0',NULL,34000,0,'lunas',NULL,'2024-03-19 00:00:00',NULL,'2024-03-19 02:36:27','2024-04-06 09:41:48','1098-rnz-03-2024'),
(1146,'Dema UIN SAIZU',NULL,'Co Card','78','pcs','0',NULL,5000,0,'lunas',NULL,'2024-03-22 00:00:00',NULL,'2024-03-22 09:18:22','2024-03-23 03:38:05','1146-nzu-03-2024'),
(1147,'Ahmad Fikri',NULL,'Balada Kesunyian','7','eks','0',NULL,18500,0,'lunas',NULL,'2024-03-23 00:00:00',NULL,'2024-03-23 04:07:46','2024-04-02 05:34:45','1147-wep-03-2024'),
(1148,'Ahmad Fikri',NULL,'Kumpulan Kutipan Motivasi Kehidupan','7','eks','0',NULL,18500,0,'lunas',NULL,'2024-03-23 00:00:00',NULL,'2024-03-23 04:08:15','2024-04-02 05:34:45','1147-wep-03-2024'),
(1149,'Ahmad Fikri',NULL,'Semesta Rasa','12','eks','0',NULL,10500,0,'lunas',NULL,'2024-03-23 00:00:00',NULL,'2024-03-23 04:08:49','2024-04-02 05:34:45','1147-wep-03-2024'),
(1150,'Ahmad Fikri',NULL,'Ongkir','1','pkt','0',NULL,44000,0,'lunas',NULL,'2024-03-23 00:00:00',NULL,'2024-03-23 04:09:32','2024-04-02 05:34:46','1147-wep-03-2024'),
(1151,'Ponpes',NULL,'Cetak Kitab B5','27','eks','0',NULL,12000,0,'lunas',NULL,'2024-03-24 00:00:00',NULL,'2024-03-24 05:52:41','2024-05-09 03:28:32','1151-wva-03-2024'),
(1153,'Ponpes',NULL,'Cetak Kitab B5','23','eks','0',NULL,12000,0,'lunas',NULL,'2024-03-24 00:00:00',NULL,'2024-03-24 05:52:54','2024-03-24 06:14:43','1153-gci-03-2024'),
(1154,'PC Ansor',NULL,'Sertifikat Diklatsar','861','eks','0',NULL,8000,0,'lunas',NULL,'2024-04-01 00:00:00',NULL,'2024-03-31 18:30:57','2024-04-02 06:31:36','1154-zqj-04-2024'),
(1155,'PC Ansor',NULL,'MAP Banser','100','eks','0',NULL,8000,0,'lunas',NULL,'2024-04-01 00:00:00',NULL,'2024-03-31 18:31:39','2024-04-02 06:31:36','1154-zqj-04-2024'),
(1156,'Bu Dani',NULL,'Buku Storynomic','1','paket','0',NULL,350000,0,'lunas',NULL,'2024-04-02 00:00:00',NULL,'2024-04-02 05:37:01','2024-04-04 02:23:28','1156-xha-04-2024'),
(1157,'Puskesmas Purwokerto Selatan',NULL,'Catatan Kesehatan Ibu Hamil','200','lbr','0',NULL,220,0,'lunas',NULL,'2024-04-05 00:00:00',NULL,'2024-04-05 06:46:01','2024-06-11 07:25:30','1157-oqi-04-2024'),
(1158,'Puskesmas Purwokerto Selatan',NULL,'Indikator Mutu KIA ANC Terpadu 2023','200','lbr','0',NULL,220,0,'lunas',NULL,'2024-04-05 00:00:00',NULL,'2024-04-05 06:46:27','2024-06-11 07:25:30','1157-oqi-04-2024'),
(1159,'Puskesmas Purwokerto Selatan',NULL,'Kartu 3E','200','lbr','0',NULL,220,0,'lunas',NULL,'2024-04-05 00:00:00',NULL,'2024-04-05 06:46:56','2024-06-11 07:25:30','1157-oqi-04-2024'),
(1160,'Puskesmas Purwokerto Selatan',NULL,'Formulir Tes dan Konseling (2sisi)','200','lbr','0',NULL,380,0,'lunas',NULL,'2024-04-05 00:00:00',NULL,'2024-04-05 06:47:27','2024-06-11 07:25:30','1157-oqi-04-2024'),
(1161,'Bani Yudhawikarta',NULL,'Cetak Buku Silsilah dan Yasin Tahlil','250','eks','0',NULL,6500,0,'lunas',NULL,'2024-04-06 00:00:00',NULL,'2024-04-06 05:26:45','2024-04-20 01:08:55','1161-gqi-04-2024'),
(1162,'UNUGHA Press',NULL,'Cetak Buku Color','100','eks','0',NULL,45000,200000,'lunas',NULL,'2024-04-06 00:00:00',NULL,'2024-04-06 08:31:19','2024-04-20 01:08:46','1162-llc-04-2024'),
(1163,'Q Riset',NULL,'Cetak Buku Sejarah Desa Teluk Panjang','105','eks','0',NULL,41000,0,'lunas',NULL,'2024-04-20 00:00:00',NULL,'2024-04-20 01:09:38','2024-04-24 04:06:37','1163-vmf-04-2024'),
(1164,'Panitia Konfercab. PCNU Kab.Cilacap',NULL,'Cetak Laporan LP Ma\'arif NU','825','eks','0',NULL,14800,1000000,'belum',NULL,'2024-04-20 00:00:00',NULL,'2024-04-20 09:11:35','2024-04-20 09:13:13','1164-nzh-04-2024'),
(1165,'Puskesmas Purwokerto Selatan',NULL,'Form BPJS','200','lbr','0',NULL,220,0,'lunas',NULL,'2024-04-24 00:00:00',NULL,'2024-04-24 04:18:17','2024-06-11 07:24:53','1165-aif-04-2024'),
(1166,'Puskesmas Purwokerto Selatan',NULL,'Resume Medis','200','eks','0',NULL,220,0,'lunas',NULL,'2024-04-24 00:00:00',NULL,'2024-04-24 04:18:34','2024-06-11 07:24:53','1165-aif-04-2024'),
(1167,'Puskesmas Purwokerto Selatan',NULL,'Form Hasil (2sisi)','200','lbr','0',NULL,380,0,'lunas',NULL,'2024-04-24 00:00:00',NULL,'2024-04-24 04:19:55','2024-06-11 07:24:53','1165-aif-04-2024'),
(1168,'Puskesmas Purwokerto Selatan',NULL,'Buku Daftar Hadir','8','eks','0',NULL,23000,0,'lunas',NULL,'2024-04-24 00:00:00',NULL,'2024-04-24 04:34:27','2024-05-13 04:48:43','1168-ywy-04-2024'),
(1169,'Puskesmas Purwokerto Selatan',NULL,'Buku Notulen','8','eks','0',NULL,23000,0,'lunas',NULL,'2024-04-24 00:00:00',NULL,'2024-04-24 04:37:07','2024-05-13 04:48:43','1168-ywy-04-2024'),
(1170,'Puskesmas Purwokerto Selatan',NULL,'Buku Rekapitulasi','8','eks','0',NULL,23000,0,'lunas',NULL,'2024-04-24 00:00:00',NULL,'2024-04-24 04:37:28','2024-05-13 04:48:43','1168-ywy-04-2024'),
(1171,'Puskesmas Purwokerto Selatan',NULL,'Buku Inventaris','8','eks','0',NULL,13000,0,'lunas',NULL,'2024-04-24 00:00:00',NULL,'2024-04-24 04:37:58','2024-05-13 04:48:43','1168-ywy-04-2024'),
(1172,'Puskesmas Purwokerto Selatan',NULL,'Buku Keuangan','8','eks','0',NULL,13000,0,'lunas',NULL,'2024-04-24 00:00:00',NULL,'2024-04-24 04:38:25','2024-05-13 04:48:43','1168-ywy-04-2024'),
(1173,'Puskesmas Purwokerto Selatan',NULL,'Buku Intervensi','8','eks','0',NULL,23000,0,'lunas',NULL,'2024-04-24 00:00:00',NULL,'2024-04-24 04:39:39','2024-05-13 04:48:43','1168-ywy-04-2024'),
(1174,'Puskesmas Purwokerto Selatan',NULL,'Buku Rencana Kegiatan','8','eks','0',NULL,23000,0,'lunas',NULL,'2024-04-24 00:00:00',NULL,'2024-04-24 04:40:03','2024-05-13 04:48:43','1168-ywy-04-2024'),
(1175,'Puskesmas Purwokerto Selatan',NULL,'Buku Kegiatan','8','eks','0',NULL,23000,0,'lunas',NULL,'2024-04-24 00:00:00',NULL,'2024-04-24 04:40:30','2024-05-13 04:48:43','1168-ywy-04-2024'),
(1176,'Taufiq Hidayat',NULL,'Cetak Brosur Pondok Miftahul Huda + Ongkir','1','rim','0',NULL,844000,0,'lunas',NULL,'2024-04-26 00:00:00',NULL,'2024-04-26 06:39:24','2024-05-03 12:59:14','1176-slv-04-2024'),
(1177,'Sahla',NULL,'Cetak lanyard+id card grade A','11','pkt','0',NULL,15000,0,'lunas',NULL,'2024-04-27 00:00:00',NULL,'2024-04-27 06:46:25','2024-04-27 06:46:58','1177-dzp-04-2024'),
(1178,'Ara',NULL,'Cetak lanyard+id card grade A','11','pkt','0',NULL,15000,0,'lunas',NULL,'2024-04-27 00:00:00',NULL,'2024-04-27 06:46:48','2024-04-27 06:46:55','1178-uid-04-2024'),
(1179,'Zulfa Nizar',NULL,'Cetak lanyard+id card grade A','22','pkt','0',NULL,15000,0,'lunas',NULL,'2024-04-27 00:00:00',NULL,'2024-04-27 08:33:10','2024-04-27 08:33:18','1179-btb-04-2024'),
(1180,'Polresta Banyumas',NULL,'Undangan Nobar','60','Pcs','0',NULL,3000,0,'lunas',NULL,'2024-04-28 00:00:00',NULL,'2024-04-28 10:41:22','2024-04-30 05:25:32','1180-fqi-04-2024'),
(1186,'Salsa',NULL,'Cetak lanyard+id card grade A','12','pcs','0',NULL,15000,0,'lunas',NULL,'2024-04-29 00:00:00',NULL,'2024-04-29 09:39:51','2024-04-29 09:42:43','1183-mwl-04-2024'),
(1187,'Isma',NULL,'Cetak lanyard+id card grade A','11','pcss','0',NULL,15000,0,'lunas',NULL,'2024-04-29 00:00:00',NULL,'2024-04-29 09:40:35','2024-04-29 09:42:38','1187-rii-04-2024'),
(1188,'Alfi',NULL,'Cetak lanyard+id card grade A','11','pcss','0',NULL,15000,0,'lunas',NULL,'2024-04-29 00:00:00',NULL,'2024-04-29 09:40:58','2024-04-29 09:42:31','1188-tek-04-2024'),
(1189,'Ngazizah',NULL,'Cetak lanyard+id card grade A','15','pcs','0',NULL,15000,0,'lunas',NULL,'2024-04-29 00:00:00',NULL,'2024-04-29 09:41:21','2024-04-29 09:42:29','1189-eys-04-2024'),
(1190,'Zahra',NULL,'Cetak lanyard+id card grade A','11','pcs','0',NULL,15000,0,'lunas',NULL,'2024-04-29 00:00:00',NULL,'2024-04-29 09:41:58','2024-04-29 09:42:26','1190-dnv-04-2024'),
(1191,'Rizki',NULL,'Cetak lanyard+id card grade A','11','eks','0',NULL,15000,0,'lunas',NULL,'2024-04-30 00:00:00',NULL,'2024-04-30 05:24:04','2024-04-30 05:24:08','1191-jui-04-2024'),
(1192,'K.H. Toifur',NULL,'Cetak Disertasi','20','eks','0',NULL,65000,0,'lunas',NULL,'2024-05-02 00:00:00',NULL,'2024-05-02 07:16:42','2024-05-02 09:56:35','1192-ogc-05-2024'),
(1193,'K.H. Toifur',NULL,'Cetak Resume Disertasi','60','eks','0',NULL,22000,0,'lunas',NULL,'2024-05-02 00:00:00',NULL,'2024-05-02 07:18:21','2024-05-02 09:56:35','1192-ogc-05-2024'),
(1194,'Hanin',NULL,'Cetak lanyard+id card grade A','11','eks','0',NULL,15000,0,'lunas',NULL,'2024-05-02 00:00:00',NULL,'2024-05-02 09:55:12','2024-05-02 09:55:16','1194-ubo-05-2024'),
(1195,'Ponpes Atthohiriyah',NULL,'Buku Santri','470','eks','0',NULL,5500,0,'lunas',NULL,'2024-05-09 00:00:00',NULL,'2024-05-09 03:30:41','2024-05-14 07:49:14','1195-lbv-05-2024'),
(1196,'Ponpes Atthohiriyah',NULL,'Buku Ngaji','315','eks','0',NULL,3000,0,'lunas',NULL,'2024-05-09 00:00:00',NULL,'2024-05-09 03:31:26','2024-05-14 07:49:14','1195-lbv-05-2024'),
(1198,'UNUGHA PRESS',NULL,'Cetak Buku Panduan Karya Tulis','25','eks','0',NULL,12000,0,'lunas',NULL,'2024-05-14 00:00:00',NULL,'2024-05-14 02:56:08','2024-05-14 02:56:11','1197-uyo-05-2024'),
(1199,'UNIV AMIKOM',NULL,'CETAK LANYARD','54','eks','0',NULL,17000,0,'lunas',NULL,'2024-05-14 00:00:00',NULL,'2024-05-14 06:51:59','2024-05-14 06:52:05','1199-zxd-05-2024'),
(1200,'Isna',NULL,'Cetak lanyard+id card','8','eks','0',NULL,15000,0,'lunas',NULL,'2024-05-20 00:00:00',NULL,'2024-05-20 03:00:23','2024-05-20 03:00:27','1200-xkj-05-2024'),
(1201,'PAC ANSOR',NULL,'CETAK BANER 1X1','1','Meter','0',NULL,17000,0,'lunas',NULL,'2024-05-23 00:00:00',NULL,'2024-05-23 03:48:32','2024-05-23 06:40:53','1201-sol-05-2024'),
(1202,'PAC ANSOR',NULL,'CETAK BANER 8X3.5','1','Meter','0',NULL,476000,0,'lunas',NULL,'2024-05-23 00:00:00',NULL,'2024-05-23 03:49:10','2024-05-23 06:40:53','1201-sol-05-2024'),
(1203,'PAC ANSOR',NULL,'CETAK BANER 4X3','1','Meter','0',NULL,204000,0,'lunas',NULL,'2024-05-23 00:00:00',NULL,'2024-05-23 03:49:47','2024-05-23 06:40:53','1201-sol-05-2024'),
(1204,'PAC ANSOR',NULL,'CETAK BANER 3X1.5','1','Meter','0',NULL,76500,0,'lunas',NULL,'2024-05-23 00:00:00',NULL,'2024-05-23 03:50:44','2024-05-23 06:40:53','1201-sol-05-2024'),
(1205,'PAC ANSOR',NULL,'CETAK BANER 4X1','1','Meter','0',NULL,68000,0,'lunas',NULL,'2024-05-23 00:00:00',NULL,'2024-05-23 03:51:40','2024-05-23 06:40:53','1201-sol-05-2024'),
(1206,'PAC ANSOR',NULL,'CETAK BANER 8X0.5','1','Meter','0',NULL,68000,0,'lunas',NULL,'2024-05-23 00:00:00',NULL,'2024-05-23 03:52:23','2024-05-23 06:40:53','1201-sol-05-2024'),
(1207,'PAC ANSOR',NULL,'CETAK BANER 2.5X2','2','Meter','0',NULL,85000,0,'lunas',NULL,'2024-05-23 00:00:00',NULL,'2024-05-23 03:53:09','2024-05-23 06:40:53','1201-sol-05-2024'),
(1208,'PAC ANSOR',NULL,'AMPLOP ARWAH','18','eks','0',NULL,15000,0,'lunas',NULL,'2024-05-23 00:00:00',NULL,'2024-05-23 04:01:33','2024-05-23 06:40:53','1201-sol-05-2024'),
(1209,'PAC ANSOR',NULL,'CETAK ARWAH','200','eks','0',NULL,250,0,'lunas',NULL,'2024-05-23 00:00:00',NULL,'2024-05-23 04:02:06','2024-05-23 06:40:53','1201-sol-05-2024'),
(1210,'AMIKOM',NULL,'Cetak lanyard+id card','15','pcs','0',NULL,17000,0,'lunas',NULL,'2024-05-25 00:00:00',NULL,'2024-05-25 07:53:24','2024-05-25 07:53:35','1210-dpm-05-2024'),
(1211,'PCNU KABUPATEN BANYUMAS',NULL,'Stopmap color laminasi glossy','100','eks','0',NULL,6500,0,'belum',NULL,'2024-05-30 00:00:00',NULL,'2024-05-30 16:43:21','2024-05-31 07:06:38','1211-mll-05-2024'),
(1212,'Gus Munif',NULL,'Buku Panduan Umrah','50','eks','0',NULL,18500,0,'belum',NULL,'2024-05-31 00:00:00',NULL,'2024-05-31 00:52:25','2024-05-31 00:52:25','1212-szm-05-2024'),
(1217,'KBIHU NU  Banyumas',NULL,'Cetak Buku Bimbingan Manasik Hajidan Umroh','350','eks','0',NULL,14000,0,'lunas',NULL,'2024-06-06 00:00:00',NULL,'2024-06-06 11:29:54','2024-06-20 10:32:30','1217-gfg-06-2024'),
(1218,'KBIHU NU  Banyumas',NULL,'Cetak Buku Panduan Haji dan Umroh Kalung','350','eks','0',NULL,18500,0,'lunas',NULL,'2024-06-06 00:00:00',NULL,'2024-06-06 11:30:34','2024-06-20 10:32:30','1217-gfg-06-2024'),
(1221,'Ika Sofiana',NULL,'Jilid Buku','5','eks','0',NULL,25000,0,'lunas',NULL,'2024-06-10 00:00:00',NULL,'2024-06-10 09:43:40','2024-06-11 07:23:37','1219-dwa-06-2024'),
(1222,'Wori Sedianingrum',NULL,'Jilid Buku','5','eks','0',NULL,25000,0,'lunas',NULL,'2024-06-10 00:00:00',NULL,'2024-06-10 09:43:58','2024-06-13 07:08:43','1222-obt-06-2024'),
(1223,'Wahyu Hari Setiawan',NULL,'Jilid Buku','5','eks','0',NULL,25000,0,'lunas',NULL,'2024-06-10 00:00:00',NULL,'2024-06-10 09:44:14','2024-06-13 07:08:37','1223-fcy-06-2024'),
(1224,'FAJAR',NULL,'JILID','187','eks','0',NULL,2000,0,'lunas',NULL,'2024-06-11 00:00:00',NULL,'2024-06-11 02:54:53','2024-06-11 02:54:57','1224-hey-06-2024'),
(1225,'SMA Negeri Bumiayu',NULL,'Buku Karya Literasi Kisah Inspirasi Puisi','1','pkt','0',NULL,2050000,0,'lunas',NULL,'2024-06-14 00:00:00',NULL,'2024-06-14 02:25:02','2024-06-19 08:43:55','1225-zjf-06-2024'),
(1226,'SMA Negeri Bumiayu',NULL,'Buku Karya Literasi Cerita Bergambar Cerita Fiksi & Dongeng','1','pkt','0',NULL,1625000,0,'lunas',NULL,'2024-06-14 00:00:00',NULL,'2024-06-14 02:25:28','2024-06-19 08:43:55','1225-zjf-06-2024'),
(1227,'SMA Negeri Bumiayu',NULL,'Buku Karya Literasi Cerita Pendek (Cerpen)','1','pkt','0',NULL,3550000,0,'lunas',NULL,'2024-06-14 00:00:00',NULL,'2024-06-14 02:25:56','2024-06-19 08:43:55','1225-zjf-06-2024'),
(1232,'QOF Collection',NULL,'PLASTIK CUSTOM ZIPPERBAG KLIP','1000','pcs','0',NULL,2500,0,'lunas',NULL,'2024-06-20 00:00:00',NULL,'2024-06-20 10:40:04','2024-07-02 05:01:43','1228-eeu-06-2024'),
(1233,'Fakultas Dakwah',NULL,'Buku panduan kompre dan skripsi','50','eks','0',NULL,17500,0,'lunas',NULL,'2024-07-02 00:00:00',NULL,'2024-07-02 05:06:32','2024-07-06 04:01:19','1233-umr-07-2024'),
(1234,'Dinda',NULL,'Id card','10','pcs','0',NULL,5000,0,'lunas',NULL,'2024-07-08 00:00:00',NULL,'2024-07-08 07:01:36','2024-07-08 07:01:39','1234-dxg-07-2024'),
(1235,'Hanafi',NULL,'Id card','10','pcs','0',NULL,5000,0,'lunas',NULL,'2024-07-08 00:00:00',NULL,'2024-07-08 07:02:07','2024-07-08 07:02:10','1235-xfr-07-2024'),
(1236,'STAIS MAJENANG',NULL,'Lanyard + ID Card','94','pcs','0',NULL,11000,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 03:19:01','2024-07-12 04:50:01','1236-zse-07-2024'),
(1237,'STAIS MAJENANG',NULL,'Buku Pedoman KKN','105','eks','0',NULL,5000,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 03:20:08','2024-07-12 04:50:01','1236-zse-07-2024'),
(1238,'STAIS MAJENANG',NULL,'Ongkir','1','pkt','0',NULL,99000,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 03:26:57','2024-07-12 04:50:01','1236-zse-07-2024'),
(1239,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'MAP CUSTOM A4','100','eks','0',NULL,5000,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 07:35:07','2024-07-12 07:55:23','1239-wxt-07-2024'),
(1240,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'LANYARD','100','eks','0',NULL,8500,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 07:35:41','2024-07-12 07:55:07','1239-wxt-07-2024'),
(1241,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'BLOKNOTE A6','100','eks','0',NULL,2500,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 07:36:16','2024-07-12 07:55:38','1239-wxt-07-2024'),
(1242,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'PULPEN','100','eks','0',NULL,1700,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 07:36:44','2024-07-12 07:44:28','1239-wxt-07-2024'),
(1243,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'PROPOSAL DIKLAT','10','eks','0',NULL,10000,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 07:37:26','2024-07-12 07:44:28','1239-wxt-07-2024'),
(1244,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'PROPOSAL FRI','15','eks','0',NULL,10000,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 07:38:02','2024-07-12 07:44:28','1239-wxt-07-2024'),
(1245,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'COPY AHAD PON IPNU','100','eks','0',NULL,250,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 07:38:57','2024-07-12 07:44:28','1239-wxt-07-2024'),
(1246,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'PRINT AHAD PON IPPNU','80','eks','0',NULL,250,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 07:39:21','2024-07-12 07:44:28','1239-wxt-07-2024'),
(1247,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'AMPLOP BESAR','54','eks','0',NULL,500,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 07:39:54','2024-07-12 07:44:28','1239-wxt-07-2024'),
(1248,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'SURAT DELEGASI FRI','550','eks','0',NULL,250,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 07:40:55','2024-07-12 07:44:28','1239-wxt-07-2024'),
(1249,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'SURAT DELEGASI PONPES','80','eks','0',NULL,250,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 07:41:38','2024-07-12 07:44:28','1239-wxt-07-2024'),
(1250,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'SURAT JURI','40','eks','0',NULL,250,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 07:42:03','2024-07-12 07:44:28','1239-wxt-07-2024'),
(1251,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'SURAT DELEGASI SD/MI','222','eks','0',NULL,250,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 07:42:32','2024-07-12 07:44:28','1239-wxt-07-2024'),
(1252,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'FORMULIR DAFTAR HADIR SEMINAR','250','eks','0',NULL,250,0,'lunas',NULL,'2024-07-12 00:00:00',NULL,'2024-07-12 07:44:00','2024-07-12 07:44:28','1239-wxt-07-2024'),
(1253,'Ponpes Atthohiriyah',NULL,'Buku kumpulan doa','150','eks','0',NULL,10000,0,'lunas',NULL,'2024-07-17 00:00:00',NULL,'2024-07-17 05:39:16','2024-09-26 02:43:27','1253-lip-07-2024'),
(1254,'Polresta Banyumas',NULL,'Cetak Undangan','20','eks','0',NULL,12500,0,'lunas',NULL,'2024-07-17 00:00:00',NULL,'2024-07-17 05:40:11','2024-07-18 04:53:24','1254-zlp-07-2024'),
(1255,'Inay',NULL,'Cetak lanyard id card premium','8','pcs','0',NULL,17000,0,'lunas',NULL,'2024-07-17 00:00:00',NULL,'2024-07-17 06:22:35','2024-07-17 06:22:41','1255-zgs-07-2024'),
(1256,'Mukti',NULL,'Cetak lanyard id card','6','pcs','0',NULL,15000,0,'lunas',NULL,'2024-07-18 00:00:00',NULL,'2024-07-18 08:23:54','2024-07-18 08:23:57','1256-eey-07-2024'),
(1257,'Ipul',NULL,'Press Kaos DTF','49','pcs','0',NULL,3000,0,'lunas',NULL,'2024-07-19 00:00:00',NULL,'2024-07-19 07:57:23','2024-07-19 07:59:50','1257-wqc-07-2024'),
(1260,'Yuniar',NULL,'ID CARD','17','pcs','0',NULL,5000,0,'lunas',NULL,'2024-07-26 00:00:00',NULL,'2024-07-26 08:29:15','2024-07-26 08:29:19','1258-qbw-07-2024'),
(1262,'Mas Gilang Kalimadu',NULL,'Cetak Buku A5','200','eks','0',NULL,6500,0,'lunas',NULL,'2024-07-30 00:00:00',NULL,'2024-07-30 05:28:11','2024-07-30 05:29:25','1261-rrh-07-2024'),
(1263,'SD Al Falah',NULL,'Cetak Buku A5','90','eks','0',NULL,11000,0,'lunas',NULL,'2024-07-30 00:00:00',NULL,'2024-07-30 05:29:06','2024-07-30 05:29:11','1263-lpe-07-2024'),
(1264,'PT KARIBIN BANJARNEGARA',NULL,'Lanyard','1000','pcs','0',NULL,7000,0,'lunas',NULL,'2024-07-30 00:00:00',NULL,'2024-07-30 05:54:30','2024-08-03 06:35:10','1264-cmw-07-2024'),
(1265,'PT KARIBIN BANJARNEGARA',NULL,'Holder Id Card Bening','1020','pcs','0',NULL,2150,0,'lunas',NULL,'2024-07-30 00:00:00',NULL,'2024-07-30 05:55:47','2024-08-03 06:35:10','1264-cmw-07-2024'),
(1266,'PT KARIBIN BANJARNEGARA',NULL,'Holder Id Card Warna','60','pcs','0',NULL,2500,0,'lunas',NULL,'2024-07-30 00:00:00',NULL,'2024-07-30 05:56:26','2024-08-03 06:35:10','1264-cmw-07-2024'),
(1267,'Haris',NULL,'X-Banner','2','pcs','0',NULL,85000,0,'belum',NULL,'2024-08-03 00:00:00',NULL,'2024-08-03 06:36:13','2024-08-03 06:36:13','1267-ldu-08-2024'),
(1268,'Haris',NULL,'Banner Utama','1','lbr','0',NULL,194000,0,'belum',NULL,'2024-08-03 00:00:00',NULL,'2024-08-03 06:38:33','2024-08-03 06:38:33','1267-ldu-08-2024'),
(1269,'PAC GP Ansor Kedungbanteng',NULL,'Cetak Banner','2','lbr','0',NULL,100000,0,'lunas',NULL,'2024-08-03 00:00:00',NULL,'2024-08-03 06:44:52','2025-02-15 04:11:45','1269-vxc-08-2024'),
(1270,'PR GP Ansor Dawuhan Kulon',NULL,'Cetak Banner','2','lbr','0',NULL,100000,0,'lunas',NULL,'2024-08-03 00:00:00',NULL,'2024-08-03 06:45:20','2025-02-15 04:11:16','1270-gsy-08-2024'),
(1271,'PR GP Ansor Kedungbanteng 2',NULL,'Cetak Banner','2','lbr','0',NULL,100000,0,'belum',NULL,'2024-08-03 00:00:00',NULL,'2024-08-03 06:46:12','2024-08-03 06:46:12','1271-abs-08-2024'),
(1272,'PR GP Ansor Kebocoran',NULL,'Cetak Banner','2','lbr','0',NULL,100000,0,'belum',NULL,'2024-08-03 00:00:00',NULL,'2024-08-03 06:46:38','2024-08-03 06:46:38','1272-pvc-08-2024'),
(1273,'PR GP Ansor Baseh 1',NULL,'Cetak Banner','2','lbr','0',NULL,100000,0,'belum',NULL,'2024-08-03 00:00:00',NULL,'2024-08-03 06:47:00','2024-08-03 06:47:00','1273-uwy-08-2024'),
(1274,'PR GP Ansor Baseh 2',NULL,'Cetak Banner','2','lbr','0',NULL,100000,0,'belum',NULL,'2024-08-03 00:00:00',NULL,'2024-08-03 06:47:55','2024-08-03 06:47:55','1274-epk-08-2024'),
(1275,'PR GP Ansor Karangnangka',NULL,'Cetak Banner','2','pcs','0',NULL,100000,0,'belum',NULL,'2024-08-03 00:00:00',NULL,'2024-08-03 06:48:14','2024-08-03 06:48:14','1275-bmd-08-2024'),
(1276,'PAC ANSOR KEDUNGBANTENG',NULL,'Cetak Laporan Borang','2','eks','0',NULL,60000,0,'lunas',NULL,'2024-08-03 00:00:00',NULL,'2024-08-03 16:51:30','2024-08-03 16:51:37','1276-uim-08-2024'),
(1280,'Tama',NULL,'Cetak lanyard+id card','15','pcs','0',NULL,14000,0,'lunas',NULL,'2024-08-19 00:00:00',NULL,'2024-08-19 08:57:47','2024-08-19 08:57:51','1277-apa-08-2024'),
(1282,'Metha',NULL,'Paket Lanyard Id Card','11','pcs','0',NULL,15000,0,'lunas',NULL,'2024-08-22 00:00:00',NULL,'2024-08-22 04:07:26','2024-08-22 04:07:37','1281-ser-08-2024'),
(1283,'Raka',NULL,'Lanyard No Stopper + ID Card','12','pcs','0',NULL,13000,0,'lunas',NULL,'2024-08-22 00:00:00',NULL,'2024-08-22 06:08:41','2024-08-22 06:08:49','1283-qrn-08-2024'),
(1285,'PANITIA PBAK FUAH',NULL,'CETAK BUKU BOOK PAPER A5 105 HALAMAN','350','eks','0',NULL,16000,0,'lunas',NULL,'2024-08-25 00:00:00',NULL,'2024-08-25 11:17:09','2024-08-26 13:31:28','1284-neu-08-2024'),
(1288,'Fajar',NULL,'Buku Saku Prasiaga','250','eks','0',NULL,9000,0,'lunas',NULL,'2024-08-26 00:00:00',NULL,'2024-08-26 02:49:30','2024-08-26 02:49:41','1286-alu-08-2024'),
(1289,'Mba Diyas',NULL,'Cetak Buku Paket Sat-set 9 Buku','1','Paket','0',NULL,400000,0,'lunas',NULL,'2024-08-27 00:00:00',NULL,'2024-08-27 06:14:41','2024-08-27 06:14:45','1289-zfk-08-2024'),
(1290,'DEMA FTIK',NULL,'Buku Pendidikan Untuk Siapa','1250','eks','0',NULL,25000,0,'lunas',NULL,'2024-08-14 00:00:00',NULL,'2024-08-29 04:16:02','2024-08-29 04:16:19','1290-gau-08-2024'),
(1291,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'CETAK BUKU LPJ A5 HVS','60','eks','0',NULL,14000,0,'lunas',NULL,'2024-09-02 00:00:00',NULL,'2024-09-02 05:38:11','2024-09-02 05:59:23','1291-kvh-09-2024'),
(1292,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'BLOKNOTE A6 ISI 20','250','eks','0',NULL,2000,0,'lunas',NULL,'2024-09-02 00:00:00',NULL,'2024-09-02 05:38:55','2024-09-02 05:59:23','1291-kvh-09-2024'),
(1293,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'PROPOSAL A4','10','eks','0',NULL,10000,0,'lunas',NULL,'2024-09-02 00:00:00',NULL,'2024-09-02 05:39:32','2024-09-02 05:59:23','1291-kvh-09-2024'),
(1294,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'PRINT COPY','200','eks','0',NULL,300,0,'lunas',NULL,'2024-09-02 00:00:00',NULL,'2024-09-02 05:48:06','2024-09-02 05:59:23','1291-kvh-09-2024'),
(1295,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'PRINT STIKER CROMO','10','eks','0',NULL,6000,0,'lunas',NULL,'2024-09-02 00:00:00',NULL,'2024-09-02 05:49:53','2024-09-02 05:59:23','1291-kvh-09-2024'),
(1296,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'PRINT IVORY 230','12','eks','0',NULL,4000,0,'lunas',NULL,'2024-09-02 00:00:00',NULL,'2024-09-02 05:50:52','2024-09-02 05:59:23','1291-kvh-09-2024'),
(1297,'PAC IPNU IPPNU KEDUNGBANTENG',NULL,'CETAK BANER','26','Meter','0',NULL,17000,0,'lunas',NULL,'2024-09-02 00:00:00',NULL,'2024-09-02 05:54:05','2024-09-02 05:59:23','1291-kvh-09-2024'),
(1298,'HMJ PAI',NULL,'CETAK LANYARD','30','eks','0',NULL,12000,0,'lunas',NULL,'2024-09-02 00:00:00',NULL,'2024-09-02 07:46:44','2024-09-02 18:30:06','1298-aeh-09-2024'),
(1299,'HMJ PAI',NULL,'PLAKAT MARMER 65','1','eks','0',NULL,65000,0,'lunas',NULL,'2024-09-02 00:00:00',NULL,'2024-09-02 07:50:24','2024-09-02 18:24:43','1298-aeh-09-2024'),
(1300,'HMJ PAI',NULL,'BANER 5X3 & 3X2','21','Meter','0',NULL,20000,0,'lunas',NULL,'2024-09-02 00:00:00',NULL,'2024-09-02 07:51:27','2024-09-02 18:24:43','1298-aeh-09-2024'),
(1301,'HMJ PAI',NULL,'SERTIFIKAT','2','eks','0',NULL,2500,0,'lunas',NULL,'2024-09-02 00:00:00',NULL,'2024-09-02 07:52:11','2024-09-02 18:24:43','1298-aeh-09-2024'),
(1302,'MAKRAB PAI',NULL,'KAOS SABLON PENDEK (S. M. L. XL)','41','eks','0',NULL,52000,0,'lunas',NULL,'2024-09-02 00:00:00',NULL,'2024-09-02 07:55:37','2024-09-02 18:29:08','1302-klj-09-2024'),
(1303,'MAKRAB PAI',NULL,'KAOS SABLON PENDEK (XXXL)','3','eks','0',NULL,57000,0,'lunas',NULL,'2024-09-02 00:00:00',NULL,'2024-09-02 07:57:09','2024-09-02 18:29:28','1302-klj-09-2024'),
(1304,'MAKRAB PAI',NULL,'KAOS SABLON PANJANG (S, M, L, XL,)','31','eks','0',NULL,62000,0,'lunas',NULL,'2024-09-02 00:00:00',NULL,'2024-09-02 07:58:11','2024-09-02 18:28:52','1302-klj-09-2024'),
(1305,'MAKRAB PAI',NULL,'KAOS SABLON PANJANG (XXL)','3','eks','0',NULL,67000,0,'lunas',NULL,'2024-09-02 00:00:00',NULL,'2024-09-02 07:59:13','2024-09-02 18:28:28','1302-klj-09-2024'),
(1306,'SEMA FTIK',NULL,'Lanyard + Id Card','30','eks','0',NULL,15000,0,'lunas',NULL,'2024-09-03 00:00:00',NULL,'2024-09-02 18:37:27','2024-09-02 18:37:31','1306-jep-09-2024'),
(1307,'Ahmad Nizar',NULL,'Buku Setapak Mengabdi  Paket 1','1','pkt','0',NULL,350000,0,'lunas',NULL,'2024-09-03 00:00:00',NULL,'2024-09-03 08:28:46','2024-09-03 08:29:19','1307-xhv-09-2024'),
(1308,'Rahmahdani',NULL,'Buku AKTUALISASI Paket Gasss','1','pkt','0',NULL,350000,0,'lunas',NULL,'2024-09-04 00:00:00',NULL,'2024-09-04 06:57:33','2024-09-04 06:59:16','1308-ltx-09-2024'),
(1309,'Isma',NULL,'Penerbitan Buku SEJUTA KISAH DI SUNIARSIH Paket Gasss','1','pkt','0',NULL,350000,0,'lunas',NULL,'2024-09-04 00:00:00',NULL,'2024-09-04 07:47:27','2024-09-04 07:47:30','1309-zpz-09-2024'),
(1310,'Najwa',NULL,'Penerbitan Buku SECARIK CERITA di Desa Kajen Paket Gass','1','pkt','0',NULL,350000,0,'lunas',NULL,'2024-09-05 00:00:00',NULL,'2024-09-05 03:16:34','2024-09-05 03:16:37','1310-zqs-09-2024'),
(1311,'Mading Bunaken',NULL,'Banner','1','pcs','0',NULL,300000,0,'lunas',NULL,'2024-09-05 00:00:00',NULL,'2024-09-05 04:50:49','2024-09-05 04:58:37','1311-qsx-09-2024'),
(1312,'Mading Bunaken',NULL,'Sticker','1','pkt','0',NULL,25000,0,'lunas',NULL,'2024-09-05 00:00:00',NULL,'2024-09-05 04:51:56','2024-09-05 04:58:37','1311-qsx-09-2024'),
(1313,'Mading Bunaken',NULL,'Lanyard + ID Card','23','pcs','0',NULL,21000,0,'lunas',NULL,'2024-09-05 00:00:00',NULL,'2024-09-05 04:53:42','2024-09-05 04:58:37','1311-qsx-09-2024'),
(1314,'Mading Bunaken',NULL,'Co card','50','pcs','0',NULL,8000,0,'lunas',NULL,'2024-09-05 00:00:00',NULL,'2024-09-05 04:56:15','2024-09-05 05:01:04','1311-qsx-09-2024'),
(1315,'Mading Bunaken',NULL,'Seminar kit','71','eks','0',NULL,15000,0,'lunas',NULL,'2024-09-05 00:00:00',NULL,'2024-09-05 04:56:30','2024-09-05 04:58:37','1311-qsx-09-2024'),
(1316,'Mading Bunaken',NULL,'Plakat','1','pcs','0',NULL,390000,0,'lunas',NULL,'2024-09-05 00:00:00',NULL,'2024-09-05 04:56:55','2024-09-05 04:58:37','1311-qsx-09-2024'),
(1317,'Nigel',NULL,'Jejak Aksara di desa Bukateja - Siappp','1','pkt','0',NULL,450000,0,'lunas',NULL,'2024-09-05 00:00:00',NULL,'2024-09-05 05:09:07','2024-09-05 05:09:43','1317-cgc-09-2024'),
(1318,'Ulva',NULL,'40 HARI YANG BERHARGA - Paket Gasss','1','pkt','0',NULL,350000,0,'lunas',NULL,'2024-09-05 00:00:00',NULL,'2024-09-05 05:10:23','2024-09-05 05:10:26','1318-epk-09-2024'),
(1319,'Najma',NULL,'Jejak KKN di Jatinegara - Paket Gass','1','pkt','0',NULL,350000,0,'lunas',NULL,'2024-09-05 00:00:00',NULL,'2024-09-05 06:22:20','2024-09-05 06:22:26','1319-nrh-09-2024'),
(1320,'Khoirunnisa',NULL,'Buku GORESAN CERITA KITA DI DESA GEBLUG - Paket Gasss','1','pkt','0',NULL,350000,0,'lunas',NULL,'2024-09-05 00:00:00',NULL,'2024-09-05 06:34:15','2024-09-05 06:34:24','1320-dcv-09-2024'),
(1321,'Hanin',NULL,'Buku MANDIRAJA WETAN - Desa dengan Seribu Cerita - Paket Gass','1','pkt','0',NULL,350000,0,'lunas',NULL,'2024-09-05 00:00:00',NULL,'2024-09-05 06:35:15','2024-09-05 06:58:13','1321-baw-09-2024'),
(1322,'HPMS SYARIAH',NULL,'Lanyard + ID Card','35','eks','0',NULL,15000,0,'lunas',NULL,'2024-09-09 00:00:00',NULL,'2024-09-08 20:24:48','2024-09-08 20:24:53','1322-blm-09-2024'),
(1323,'Narima',NULL,'Cetak lanyard id card','31','pcs','0',NULL,15000,0,'lunas',NULL,'2024-09-12 00:00:00',NULL,'2024-09-12 04:19:11','2024-09-12 04:19:14','1323-tbn-09-2024'),
(1324,'Bu Anisa MI Dawuhanwetan',NULL,'Cetak Buku Pengembangan Siswa','430','eks','0',NULL,5500,0,'lunas',NULL,'2024-09-12 00:00:00',NULL,'2024-09-12 07:07:48','2024-09-12 07:09:23','1324-hue-09-2024'),
(1329,'Tamara',NULL,'Buku Jejak Langkah Mengukir Kisah - Paket Satset','1','pkt','0',NULL,400000,0,'lunas',NULL,'2024-09-14 00:00:00',NULL,'2024-09-14 02:28:57','2024-09-20 06:20:35','1325-bhb-09-2024'),
(1330,'Ponpes Darussalam Dukuh Waluh Purwokerto',NULL,'Ctak Buku Memoar','500','eks','0',NULL,61000,500000,'lunas',NULL,'2024-09-18 00:00:00',NULL,'2024-09-18 02:15:56','2024-09-20 06:23:32','1330-mzq-09-2024'),
(1331,'Deni',NULL,'Buku Kajian Al-Qur\'an','28','eks','0',NULL,40000,0,'lunas',NULL,'2024-09-19 00:00:00',NULL,'2024-09-19 04:31:20','2024-10-03 08:27:40','1331-mvm-09-2024'),
(1332,'Komite SMA IT Al Irsyad',NULL,'Laporan Kegiatan Komite SMA IT Al Irsyad 2022-2023','2','eks','0',NULL,50000,0,'lunas',NULL,'2024-09-25 00:00:00',NULL,'2024-09-25 03:40:51','2024-09-25 03:42:29','1332-ayv-09-2024'),
(1333,'Komite SMA IT Al Irsyad',NULL,'Laporan Kegiatan Komite SMA IT Al Irsyad 2023-2024 - Warna','4','eks','0',NULL,75000,0,'lunas',NULL,'2024-09-25 00:00:00',NULL,'2024-09-25 03:41:39','2024-09-25 03:42:29','1332-ayv-09-2024'),
(1334,'Komite SMA IT Al Irsyad',NULL,'Laporan Kegiatan Komite SMA IT Al Irsyad 2023-2024 - Hitam Putih','16','eks','0',NULL,45000,0,'lunas',NULL,'2024-09-25 00:00:00',NULL,'2024-09-25 03:42:07','2024-09-25 03:42:29','1332-ayv-09-2024'),
(1335,'Helmi',NULL,'Cetak ID CARD','30','pcs','0',NULL,5000,0,'lunas',NULL,'2024-09-25 00:00:00',NULL,'2024-09-25 06:14:11','2024-09-25 06:14:15','1335-iux-09-2024'),
(1336,'SD Islam Al-Izzah Purwokerto',NULL,'Cetak id card','46','pcs','0',NULL,6000,0,'lunas',NULL,'2024-09-26 00:00:00',NULL,'2024-09-26 06:29:15','2024-09-26 06:29:18','1336-uwc-09-2024'),
(1337,'Ponpes Atthohiriyah',NULL,'Buku kumpulan doa','350','eks','0',NULL,9000,500000,'lunas',NULL,'2024-09-26 00:00:00',NULL,'2024-09-26 07:26:00','2024-09-27 04:57:53','1337-edw-09-2024'),
(1338,'Gus Munif',NULL,'Cetak Buku Panduan Umrah','60','eks','0',NULL,18500,0,'lunas',NULL,'2024-09-27 00:00:00',NULL,'2024-09-27 04:57:29','2024-10-01 08:37:01','1338-bki-09-2024'),
(1339,'WISUDA BDN',NULL,'BORDIR SLEMPANG WISUDA','55','eks','0',NULL,10000,0,'lunas',NULL,'2024-09-30 00:00:00',NULL,'2024-09-30 12:51:28','2024-10-09 09:17:10','1339-ckn-09-2024'),
(1340,'WISUDA BDN',NULL,'SLEMPANG HITAM','6','eks','0',NULL,50000,0,'lunas',NULL,'2024-09-30 00:00:00',NULL,'2024-09-30 12:52:25','2024-10-09 09:17:10','1339-ckn-09-2024'),
(1341,'WISUDA BDN',NULL,'SLEMPANG MERAH','3','eks','0',NULL,60000,0,'lunas',NULL,'2024-09-30 00:00:00',NULL,'2024-09-30 12:52:56','2024-10-09 09:17:10','1339-ckn-09-2024'),
(1342,'Darul Qur\'an Al Karim',NULL,'Kaos dan Training','18','Pcs','0',NULL,150000,0,'lunas',NULL,'2024-10-01 00:00:00',NULL,'2024-10-01 14:00:05','2024-10-03 08:27:06','1342-rtk-10-2024'),
(1343,'Titah amalia',NULL,'Cetak lanyard id card','29','pcs','0',NULL,15000,0,'lunas',NULL,'2024-10-03 00:00:00',NULL,'2024-10-03 03:06:14','2024-10-03 03:06:22','1343-nhl-10-2024'),
(1344,'Ahdi',NULL,'Cetak lanyard+id card','59','pcs','0',NULL,15000,0,'lunas',NULL,'2024-10-04 00:00:00',NULL,'2024-10-04 08:10:13','2024-10-04 08:10:22','1344-ssw-10-2024'),
(1345,'UNUGHA PRESS',NULL,'Cetak Buku Energi Terbarukan','6','eks','0',NULL,17850,0,'lunas',NULL,'2024-10-05 00:00:00',NULL,'2024-10-05 08:41:44','2024-10-05 08:43:45','1345-xbg-10-2024'),
(1346,'Deni Robiansyah',NULL,'Lanyard','25','pcs','0',NULL,10000,0,'lunas',NULL,'2024-10-09 00:00:00',NULL,'2024-10-09 09:18:00','2024-10-09 09:18:05','1346-yrz-10-2024'),
(1347,'Ponpes Walisongo Ngabar',NULL,'Cetak Qur\'an juz 1','215','eks','0',NULL,24000,0,'lunas',NULL,'2024-10-14 00:00:00',NULL,'2024-10-14 10:42:31','2024-10-21 00:03:41','1347-qyb-10-2024'),
(1348,'Ponpes Walisongo Ngabar',NULL,'Cetak Qur\'an juz 30','280','eks','0',NULL,23500,0,'lunas',NULL,'2024-10-14 00:00:00',NULL,'2024-10-14 10:43:10','2024-10-21 00:03:41','1347-qyb-10-2024'),
(1349,'Elfi',NULL,'Buku Yasin','100','eks','0',NULL,7000,50000,'lunas',NULL,'2024-10-16 00:00:00',NULL,'2024-10-16 05:22:14','2024-10-24 10:35:21','1349-fmw-10-2024'),
(1350,'Rohim',NULL,'Cetak Lanyard','10','pcs','0',NULL,10000,0,'lunas',NULL,'2024-10-16 00:00:00',NULL,'2024-10-16 06:44:20','2024-10-16 06:44:34','1350-yzk-10-2024'),
(1351,'PC JATMAN BANYUMAS',NULL,'Map full color','2000','Pcs','0',NULL,4000,0,'lunas',NULL,'2024-10-21 00:00:00',NULL,'2024-10-21 00:04:33','2024-10-28 08:26:11','1351-hzg-10-2024'),
(1352,'PC JATMAN BANYUMAS',NULL,'Blocknote','2000','Eks','0',NULL,2500,0,'lunas',NULL,'2024-10-21 00:00:00',NULL,'2024-10-21 00:05:21','2024-10-28 08:26:11','1351-hzg-10-2024'),
(1353,'PC JATMAN BANYUMAS',NULL,'Bolpoin','2000','Pcs','0',NULL,2500,0,'lunas',NULL,'2024-10-21 00:00:00',NULL,'2024-10-21 00:05:45','2024-10-28 08:26:11','1351-hzg-10-2024'),
(1354,'Prof. Dr. H. rohmad, M.Pd.',NULL,'TERBIT DAN CETAK BUKU THE DEVELOPMENT OF ISLAMIC FINANCE IN BRUNEI DARUSSALAM AND INDONESIA','25','eks','0',NULL,55000,0,'lunas',NULL,'2024-10-21 00:00:00',NULL,'2024-10-21 04:12:40','2024-10-21 04:21:33','1354-flb-10-2024'),
(1355,'KPU RI',NULL,'Cetak Buku Panduan Bagi Pemantau Pemilihan','200','eks','0',NULL,62500,0,'lunas',NULL,'2024-10-24 00:00:00',NULL,'2024-10-24 11:22:07','2024-10-28 08:26:33','1355-iti-10-2024'),
(1356,'dr. Igun Winarno',NULL,'Cetak + Terbit Buku Membangun SDM Profesional di Rumah Sakit','200','eks','0',NULL,66500,0,'lunas',NULL,'2024-10-28 00:00:00',NULL,'2024-10-28 07:02:31','2025-02-15 04:08:26','1356-dcu-10-2024'),
(1357,'Suara Aksara',NULL,'Cetak lanyard+id card','10','pcs','0',NULL,15000,0,'lunas',NULL,'2024-11-01 00:00:00',NULL,'2024-11-01 04:53:29','2024-11-01 04:54:23','1357-vqi-11-2024'),
(1358,'UNSOED PSDM',NULL,'LANYARD ID CARD','15','eks','0',NULL,15000,0,'lunas',NULL,'2024-11-02 00:00:00',NULL,'2024-11-02 06:39:08','2024-11-02 06:39:14','1358-gcr-11-2024'),
(1359,'OLIMPIADE PAI',NULL,'CETAK PROPOSAL','10','eks','0',NULL,10000,0,'lunas',NULL,'2024-11-02 00:00:00',NULL,'2024-11-02 06:40:34','2024-11-02 06:40:37','1359-kct-11-2024'),
(1360,'HMJ PAI',NULL,'BLOKNOTE A6 20 LEMBAR','80','eks','0',NULL,2500,0,'lunas',NULL,'2024-11-02 00:00:00',NULL,'2024-11-02 06:41:37','2024-11-02 06:41:44','1360-jwu-11-2024'),
(1361,'MAKRAB PAI',NULL,'KAOS 30 S SABLON DTF (UKURAN M PENDEK)','1','eks','0',NULL,55000,0,'lunas',NULL,'2024-11-02 00:00:00',NULL,'2024-11-02 06:44:34','2024-11-02 06:51:37','1361-phn-11-2024'),
(1362,'MAKRAB PAI',NULL,'KAOS 30 S SABLON DTF (UKURAN M PANJANG)','1','eks','0',NULL,65000,0,'lunas',NULL,'2024-11-02 00:00:00',NULL,'2024-11-02 06:45:05','2024-11-02 06:51:37','1361-phn-11-2024'),
(1363,'MAKRAB PAI',NULL,'KAOS 30 S SABLON DTF (UKURAN L PENDEK)','4','eks','0',NULL,55000,0,'lunas',NULL,'2024-11-02 00:00:00',NULL,'2024-11-02 06:46:18','2024-11-02 06:51:37','1361-phn-11-2024'),
(1364,'MAKRAB PAI',NULL,'KAOS 30 S SABLON DTF (UKURAN L PANJANG)','4','eks','0',NULL,65000,0,'lunas',NULL,'2024-11-02 00:00:00',NULL,'2024-11-02 06:46:49','2024-11-02 06:51:37','1361-phn-11-2024'),
(1365,'MAKRAB PAI',NULL,'KAOS 30 S SABLON DTF (UKURAN XL PENDEK)','4','eks','0',NULL,55000,0,'lunas',NULL,'2024-11-02 00:00:00',NULL,'2024-11-02 06:50:04','2024-11-02 06:51:37','1361-phn-11-2024'),
(1366,'Dr. Fahri Yasin',NULL,'Buku CYBER EDUCATION','1','paket','0',NULL,1208000,75000,'lunas',NULL,'2024-11-05 00:00:00',NULL,'2024-11-05 07:28:31','2024-11-06 13:42:06','1366-vji-11-2024'),
(1367,'Dr. Fahri Yasin',NULL,'Buku Filsafat Ilmu','1','paket','0',NULL,1939600,75000,'lunas',NULL,'2024-11-05 00:00:00',NULL,'2024-11-05 07:32:01','2024-11-06 13:42:06','1366-vji-11-2024'),
(1368,'Dr. Fahri Yasin',NULL,'Buku TIK - DALAM PENDIDIKAN','1','paket','0',NULL,1658800,75000,'lunas',NULL,'2024-11-05 00:00:00',NULL,'2024-11-05 07:32:30','2024-11-06 13:42:06','1366-vji-11-2024'),
(1369,'Dr. Fahri Yasin',NULL,'Buku Metode Penelitian - Pendidikan','1','paket','0',NULL,1810000,75000,'lunas',NULL,'2024-11-05 00:00:00',NULL,'2024-11-05 07:32:57','2024-11-06 13:42:06','1366-vji-11-2024'),
(1370,'Dr. Fahri Yasin',NULL,'Buku LANDASAN TEKNOLOGI PENDIDIKAN','1','paket','0',NULL,1406800,75000,'lunas',NULL,'2024-11-05 00:00:00',NULL,'2024-11-05 07:33:31','2024-11-06 13:42:06','1366-vji-11-2024'),
(1371,'Dr. Fahri Yasin',NULL,'Buku DIFUSI DAN INOVASI DALAM PENDIDIKAN','1','paket','0',NULL,1136400,75000,'lunas',NULL,'2024-11-05 00:00:00',NULL,'2024-11-05 07:34:01','2024-11-06 13:42:06','1366-vji-11-2024'),
(1372,'Dr. Fahri Yasin',NULL,'Buku STATISTIK PENDIDIKAN','1','paket','0',NULL,1501200,75000,'lunas',NULL,'2024-11-05 00:00:00',NULL,'2024-11-05 07:35:00','2024-11-06 13:42:06','1366-vji-11-2024'),
(1373,'Dr. Fahri Yasin',NULL,'Buku Pengembangan Media','1','paket','0',NULL,1770000,75000,'lunas',NULL,'2024-11-05 00:00:00',NULL,'2024-11-05 07:35:33','2024-11-06 13:42:06','1366-vji-11-2024'),
(1374,'Dr. Fahri Yasin',NULL,'Buku Landasan Pendidikan islam','1','paket','0',NULL,1280400,75000,'lunas',NULL,'2024-11-05 00:00:00',NULL,'2024-11-05 07:35:57','2024-11-06 13:42:06','1366-vji-11-2024'),
(1375,'Dr. Fahri Yasin',NULL,'Buku ORIENTASI BARU PSIKOLOGI DALAM PENDIDIKAN','1','paket','0',NULL,1275600,75000,'lunas',NULL,'2024-11-05 00:00:00',NULL,'2024-11-05 07:36:28','2024-11-06 13:42:06','1366-vji-11-2024'),
(1376,'SD Islam Al-Izzah Purwokerto',NULL,'Cetak id card','3','pcs','0',NULL,6000,0,'lunas',NULL,'2024-11-06 00:00:00',NULL,'2024-11-06 08:12:41','2024-11-06 08:12:46','1376-lzk-11-2024'),
(1377,'Bimbel Abi Umi',NULL,'Cetak lanyard+id card','8','pkt','0',NULL,15000,0,'lunas',NULL,'2024-11-06 00:00:00',NULL,'2024-11-06 08:13:20','2024-11-06 08:13:23','1377-tfu-11-2024'),
(1378,'Panitia Kamandaka Festival',NULL,'Cetak Lanyard+id card','40','eks','0',NULL,15000,0,'lunas',NULL,'2024-11-10 00:00:00',NULL,'2024-11-09 18:09:44','2024-11-09 18:10:45','1378-bml-11-2024'),
(1379,'Polresta Banyumas',NULL,'Cetak Undangan','20','eks','0',NULL,6500,0,'lunas',NULL,'2024-11-13 00:00:00',NULL,'2024-11-13 12:30:22','2024-11-13 12:30:28','1379-efo-11-2024'),
(1380,'Juni',NULL,'Buku Yasin','90','eks','0',NULL,7000,0,'lunas',NULL,'2024-11-14 00:00:00',NULL,'2024-11-14 06:46:47','2024-11-14 06:46:55','1380-ecs-11-2024'),
(1381,'Istiqomah',NULL,'Buku The secret of content writer for beginner','1','pkt','0',NULL,400000,0,'lunas',NULL,'2024-11-15 00:00:00',NULL,'2024-11-15 05:59:55','2024-11-15 05:59:59','1381-whc-11-2024'),
(1382,'IENO DIGITAL',NULL,'Cetak lanyard+id card','10','pkt','0',NULL,30000,0,'lunas',NULL,'2024-11-16 00:00:00',NULL,'2024-11-16 08:29:36','2024-11-16 08:29:45','1382-gfz-11-2024'),
(1385,'STAI AL MA\'ARF CIAMIS',NULL,'Perlengkapan wisuda (selongsong wisuda bludru dan Samir)','163','buah','0',NULL,50000,0,'belum',NULL,'2024-11-18 00:00:00',NULL,'2024-11-18 05:23:13','2024-11-18 05:23:13','1383-ogg-11-2024'),
(1386,'STAI AL MA\'ARF CIAMIS',NULL,'Ongkos Kirim','1','paket','0',NULL,150000,0,'belum',NULL,'2024-11-18 00:00:00',NULL,'2024-11-18 05:23:31','2024-11-18 05:23:31','1383-ogg-11-2024'),
(1387,'Ulpah Maspupah',NULL,'Cetak Laporan penelitian','4','eks','0',NULL,40000,0,'lunas',NULL,'2024-11-18 00:00:00',NULL,'2024-11-18 05:41:45','2025-02-15 04:00:54','1387-fft-11-2024'),
(1388,'Rindha Widyaningsih',NULL,'Cetak laporan','3','eks','0',NULL,116000,0,'lunas',NULL,'2024-11-18 00:00:00',NULL,'2024-11-18 12:22:28','2024-11-21 02:04:10','1388-hgx-11-2024'),
(1389,'Prof. Dr. Rohmad, M.Pd.',NULL,'Penerbitan dan Percetakan Buku Merdeka Belajar','25','eks','0',NULL,47000,0,'lunas',NULL,'2024-11-19 00:00:00',NULL,'2024-11-19 04:27:56','2024-11-21 02:03:38','1389-xvk-11-2024'),
(1390,'Prof. Dr. Rohmad, M.Pd.',NULL,'Cetak Laporan penelitian 2024','5','eks','0',NULL,38000,0,'lunas',NULL,'2024-11-19 00:00:00',NULL,'2024-11-19 04:28:55','2024-11-21 02:03:38','1389-xvk-11-2024'),
(1391,'Agus Sunaryo',NULL,'Cetak Laporan penelitian','5','eks','0',NULL,38000,0,'lunas',NULL,'2024-11-19 00:00:00',NULL,'2024-11-19 04:35:20','2024-11-21 02:02:42','1391-etd-11-2024'),
(1392,'Prof. Kholid Mawardi',NULL,'Cetak Laporan penelitian','5','eks','0',NULL,60000,0,'lunas',NULL,'2024-11-19 00:00:00',NULL,'2024-11-19 04:38:18','2024-11-21 02:03:12','1392-yxd-11-2024'),
(1393,'Prof. Khusnul',NULL,'Cetak Laporan penelitian','5','eks','0',NULL,35000,0,'lunas',NULL,'2024-11-19 00:00:00',NULL,'2024-11-19 04:40:15','2025-02-15 04:00:17','1393-ddj-11-2024'),
(1394,'Prof. Sulkhan Chakim',NULL,'Cetak Laporan penelitian','5','eks','0',NULL,40000,0,'lunas',NULL,'2024-11-19 00:00:00',NULL,'2024-11-19 04:42:38','2024-11-21 02:02:48','1394-rwi-11-2024'),
(1395,'Bu Novi Mayasari',NULL,'Cetak Buku B5','6','eks','0',NULL,59200,0,'lunas',NULL,'2024-11-20 00:00:00',NULL,'2024-11-20 10:20:23','2024-11-21 02:02:23','1395-zsz-11-2024'),
(1396,'Bu Novi Mayasari',NULL,'Cetak Buku B5 Bookpaper','2','eks','0',NULL,118800,0,'lunas',NULL,'2024-11-20 00:00:00',NULL,'2024-11-20 10:23:25','2024-11-21 02:02:23','1395-zsz-11-2024'),
(1397,'Rohim',NULL,'Cetak Lanyard','20','pcs','0',NULL,10000,0,'lunas',NULL,'2024-11-20 00:00:00',NULL,'2024-11-20 10:36:26','2024-11-22 07:12:38','1397-vdy-11-2024'),
(1398,'Faustina Puspamurti',NULL,'Cetak lanyard+id card','16','pcs','0',NULL,15000,0,'lunas',NULL,'2024-11-21 00:00:00',NULL,'2024-11-21 02:01:47','2024-11-21 02:01:51','1398-ezj-11-2024'),
(1399,'Dr. Fahri Yasin',NULL,'Buku Teknologi Kinerja','40','eks','0',NULL,30000,0,'lunas',NULL,'2024-11-23 00:00:00',NULL,'2024-11-23 12:59:25','2024-11-24 11:30:40','1399-bqo-11-2024'),
(1400,'Ponpes Darul Qur\'an baturraden',NULL,'Kaos Olahraga Guru','9','buah','0',NULL,90000,0,'lunas',NULL,'2024-12-01 00:00:00',NULL,'2024-12-01 04:59:52','2024-12-03 03:10:59','1400-mog-12-2024'),
(1401,'Ponpes Darul Qur\'an baturraden',NULL,'Kaos Outing Class Guru','8','buah','0',NULL,90000,0,'lunas',NULL,'2024-12-01 00:00:00',NULL,'2024-12-01 05:00:21','2024-12-03 03:10:59','1400-mog-12-2024'),
(1402,'Ponpes Darul Qur\'an baturraden',NULL,'Kaos olahraga Siswa','8','buah','0',NULL,85000,0,'lunas',NULL,'2024-12-01 00:00:00',NULL,'2024-12-01 05:00:49','2024-12-03 03:10:59','1400-mog-12-2024'),
(1403,'Ponpes Darul Qur\'an baturraden',NULL,'Kaos Outing Class Siswa','5','buah','0',NULL,90000,0,'lunas',NULL,'2024-12-01 00:00:00',NULL,'2024-12-01 05:01:23','2024-12-03 03:10:59','1400-mog-12-2024'),
(1404,'Moh Himami Baydarus',NULL,'Buku Mahad Aly mutu akademik dan tantangan bagi perguruan tinggi keagamaan islam','1','eks','0',NULL,50000,0,'lunas',NULL,'2024-12-03 00:00:00',NULL,'2024-12-03 03:13:03','2025-02-15 03:59:08','1404-fzc-12-2024'),
(1405,'Moh Himami Baydarus',NULL,'Ongkir','1','pkt','0',NULL,27000,0,'lunas',NULL,'2024-12-03 00:00:00',NULL,'2024-12-03 03:13:17','2025-02-15 03:59:08','1404-fzc-12-2024'),
(1406,'Rofika',NULL,'Cetak Undangan','150','pcs','0',NULL,1500,0,'lunas',NULL,'2024-12-07 00:00:00',NULL,'2024-12-07 10:11:36','2024-12-28 04:41:16','1406-sle-12-2024'),
(1407,'Rofika',NULL,'Undangan VIP','18','pcs','0',NULL,15000,0,'lunas',NULL,'2024-12-07 00:00:00',NULL,'2024-12-07 10:12:08','2024-12-28 04:41:16','1406-sle-12-2024'),
(1408,'Rofika',NULL,'Undangan Digital','1','pcs','0',NULL,50000,0,'lunas',NULL,'2024-12-07 00:00:00',NULL,'2024-12-07 10:12:40','2024-12-28 04:41:16','1406-sle-12-2024'),
(1409,'Imam Ghozali',NULL,'Paket penerbitan Buku, HAKI dan Pencetakan','100','eks','0',NULL,150000,0,'lunas',NULL,'2024-12-09 00:00:00',NULL,'2024-12-09 01:00:11','2024-12-09 02:04:42','1409-fty-12-2024'),
(1410,'ADNAN',NULL,'Lanyard + ID Card','50','eks','0',NULL,12000,0,'lunas',NULL,'2024-12-14 00:00:00',NULL,'2024-12-14 07:53:56','2024-12-14 08:48:56','1410-xve-12-2024'),
(1411,'SOFIA',NULL,'Lanyard + ID Card','30','eks','0',NULL,12000,0,'lunas',NULL,'2024-12-14 00:00:00',NULL,'2024-12-14 08:00:59','2024-12-14 08:48:54','1411-nue-12-2024'),
(1412,'LUKMAN',NULL,'Cetak Buku A5 HVS','180','eks','0',NULL,7700,0,'lunas',NULL,'2024-12-16 00:00:00',NULL,'2024-12-16 06:52:42','2024-12-16 07:01:02','1412-nly-12-2024'),
(1414,'LUKMAN',NULL,'Lanyard + ID Card','6','eks','0',NULL,15000,0,'lunas',NULL,'2024-12-16 00:00:00',NULL,'2024-12-16 07:00:04','2024-12-16 07:00:26','1412-nly-12-2024'),
(1415,'Fajar',NULL,'Buku Saku Prasiaga','80','eks','0',NULL,9000,0,'lunas',NULL,'2024-12-21 00:00:00',NULL,'2024-12-21 03:21:24','2024-12-21 03:21:30','1415-qdv-12-2024'),
(1416,'Sena',NULL,'Cetak lanyard+id card','20','pcs','0',NULL,15000,0,'lunas',NULL,'2024-12-21 00:00:00',NULL,'2024-12-21 05:43:15','2024-12-21 05:43:23','1416-reh-12-2024'),
(1417,'Halinka Zia',NULL,'Penerbitan Buku paket Gass','1','pkt','0',NULL,350000,0,'lunas',NULL,'2024-12-28 00:00:00',NULL,'2024-12-28 04:42:24','2024-12-28 04:43:01','1417-ltd-12-2024'),
(1418,'Halinka Zia',NULL,'Tambah Cetak Buku','6','eks','0',NULL,35000,0,'lunas',NULL,'2024-12-28 00:00:00',NULL,'2024-12-28 04:42:50','2024-12-28 04:43:01','1417-ltd-12-2024'),
(1419,'Puskesmas Purwokerto Selatan',NULL,'Cetak Foto Presiden  & Wakil','1','pkt','0',NULL,15000,0,'lunas',NULL,'2024-12-30 00:00:00',NULL,'2024-12-30 03:55:52','2024-12-30 03:56:39','1419-gqn-12-2024'),
(1420,'PCNU Kab. Banyumas',NULL,'Stopmap PCNU','300','pcs','0',NULL,10000,0,'lunas',NULL,'2025-01-08 00:00:00',NULL,'2025-01-08 01:15:38','2025-01-08 01:19:00','1420-lxv-01-2025'),
(1421,'PCNU Kab. Banyumas',NULL,'Cocard','25','pcs','0',NULL,25000,0,'lunas',NULL,'2025-01-08 00:00:00',NULL,'2025-01-08 01:16:35','2025-01-08 01:19:00','1420-lxv-01-2025'),
(1422,'PCNU Kab. Banyumas',NULL,'Blocknote','500','eks','0',NULL,7500,0,'lunas',NULL,'2025-01-08 00:00:00',NULL,'2025-01-08 01:17:28','2025-01-08 01:19:00','1420-lxv-01-2025'),
(1423,'Akhmad Saefudin',NULL,'Manakib Ulama Jilid 1','10','eks','0',NULL,45800,0,'lunas',NULL,'2025-01-10 00:00:00',NULL,'2025-01-10 02:58:45','2025-01-10 06:53:57','1423-sug-01-2025'),
(1424,'Akhmad Saefudin',NULL,'Manakib Ulama Jilid 2','10','eks','0',NULL,45300,0,'lunas',NULL,'2025-01-10 00:00:00',NULL,'2025-01-10 02:59:10','2025-01-10 06:53:57','1423-sug-01-2025'),
(1425,'Akhmad Saefudin',NULL,'Manakib Ulama Jilid 3','10','eks','0',NULL,48200,0,'lunas',NULL,'2025-01-10 00:00:00',NULL,'2025-01-10 02:59:28','2025-01-10 06:53:57','1423-sug-01-2025'),
(1426,'Adhitya Ridwan Budhi',NULL,'Banner','1','pcs','0',NULL,235000,0,'lunas',NULL,'2025-01-20 00:00:00',NULL,'2025-01-20 09:28:36','2025-01-21 06:40:36','1426-cyl-01-2025'),
(1427,'Adhitya Ridwan Budhi',NULL,'Co Card','80','pcs','0',NULL,6500,0,'lunas',NULL,'2025-01-20 00:00:00',NULL,'2025-01-20 09:29:56','2025-01-21 06:40:36','1426-cyl-01-2025'),
(1428,'Erly Kusuma Dewi',NULL,'Buku Master Puskesmas','28','eks','0',NULL,150000,0,'lunas',NULL,'2025-01-20 00:00:00',NULL,'2025-01-20 09:34:43','2025-01-20 09:52:47','1428-ldp-01-2025'),
(1429,'INSIMA Majenang',NULL,'PANDUAN SKRIPSI FSEBI','36','eks','0',NULL,14400,0,'lunas',NULL,'2025-01-20 00:00:00',NULL,'2025-01-20 09:43:34','2025-01-21 06:36:11','1429-wpi-01-2025'),
(1430,'INSIMA Majenang',NULL,'PANDUAN SKRIPSI FTIK','70','eks','0',NULL,14400,0,'lunas',NULL,'2025-01-20 00:00:00',NULL,'2025-01-20 09:44:02','2025-01-21 06:36:11','1429-wpi-01-2025'),
(1431,'INSIMA Majenang',NULL,'BUKU BIMBINGAN','85','eks','0',NULL,5000,0,'lunas',NULL,'2025-01-20 00:00:00',NULL,'2025-01-20 09:44:31','2025-01-21 06:36:11','1429-wpi-01-2025'),
(1432,'INSIMA Majenang',NULL,'ALBUM WISUDA','83','eks','0',NULL,48000,0,'lunas',NULL,'2025-01-20 00:00:00',NULL,'2025-01-20 09:50:56','2025-01-21 06:36:11','1429-wpi-01-2025'),
(1433,'INSIMA Majenang',NULL,'Ongkir','1','pack','0',NULL,200000,0,'lunas',NULL,'2025-01-20 00:00:00',NULL,'2025-01-20 10:01:51','2025-01-21 06:36:11','1429-wpi-01-2025'),
(1434,'Adhitya Ridwan Budhi',NULL,'Buku Panduan','80','eks','0',NULL,8300,0,'lunas',NULL,'2025-01-20 00:00:00',NULL,'2025-01-20 10:04:15','2025-01-21 06:40:36','1426-cyl-01-2025'),
(1436,'PCNU Banyumas',NULL,'Lanyard Panitia','37','pcs','0',NULL,15000,0,'belum',NULL,'2025-01-28 00:00:00',NULL,'2025-01-28 01:37:55','2025-01-28 01:37:55','1435-hdb-01-2025'),
(1437,'PCNU Banyumas',NULL,'Cetak Undangan','100','lbr','0',NULL,10000,0,'belum',NULL,'2025-01-28 00:00:00',NULL,'2025-01-28 01:38:18','2025-01-28 01:38:18','1435-hdb-01-2025'),
(1438,'M. Zidan Najwan',NULL,'Paket Penerbitan Buku Sejarah Malaysia','1','eks','0',NULL,500000,0,'lunas',NULL,'2025-02-11 00:00:00',NULL,'2025-02-11 05:29:57','2025-07-01 06:20:36','1438-ymz-02-2025'),
(1440,'dr. Igun Winarno',NULL,'Penerbitan dan cetak Buku HOSPITAL CRASH','150','eks','0',NULL,45000,0,'lunas',NULL,'2025-02-13 00:00:00',NULL,'2025-02-13 09:14:49','2025-02-15 03:55:59','1439-bav-02-2025'),
(1442,'MPAI-A',NULL,'Penerbitan dancetak buku Menghidupkan Spirit Islam | Paket 17Eks','1','pkt','0',NULL,900000,0,'lunas',NULL,'2025-02-17 00:00:00',NULL,'2025-02-17 02:27:19','2025-02-17 02:53:47','1441-gvq-02-2025'),
(1443,'Suhartono Sapoetro',NULL,'Layout Editing & Cetak Buku Al Qur\'an Terjemah Juz 30','1','eks','0',NULL,120000,0,'lunas',NULL,'2025-02-18 00:00:00',NULL,'2025-02-18 02:27:25','2025-03-04 08:51:05','1443-gse-02-2025'),
(1444,'QOF Collection',NULL,'PLASTIK CUSTOM ZIPPERBAG KLIP','500','pcs','0',NULL,2500,0,'lunas',NULL,'2025-02-19 00:00:00',NULL,'2025-02-19 08:31:12','2025-03-17 12:18:13','1444-tdu-02-2025'),
(1445,'Akhmad Saefudin SS ME',NULL,'Sixty Years of Hj Irawati','13','eks','0',NULL,20000,0,'lunas',NULL,'2025-03-04 00:00:00',NULL,'2025-03-04 08:48:40','2025-03-04 09:15:30','1445-pdb-03-2025'),
(1446,'Akhmad Saefudin SS ME',NULL,'Beras Merah','10','eks','0',NULL,30000,0,'lunas',NULL,'2025-03-04 00:00:00',NULL,'2025-03-04 08:49:32','2025-03-04 09:15:30','1445-pdb-03-2025'),
(1447,'SD Terpadu Putra Harapan Pwt',NULL,'Cetak Sertifikat PESRAM 2025','498','lbr','0',NULL,1500,0,'lunas',NULL,'2025-03-07 00:00:00',NULL,'2025-03-07 04:15:51','2025-03-08 07:27:11','1447-rbd-03-2025'),
(1448,'UNUGHA Cilacap',NULL,'Cetak Buku Panduan Karya ilmiah','50','eks','0',NULL,23500,0,'lunas',NULL,'2025-03-15 00:00:00',NULL,'2025-03-15 05:30:20','2025-03-17 12:19:01','1448-uou-03-2025'),
(1449,'UNUGHA Cilacap',NULL,'Ongkir','1','Paket','0',NULL,196000,0,'lunas',NULL,'2025-03-15 00:00:00',NULL,'2025-03-15 05:30:53','2025-03-17 12:19:01','1448-uou-03-2025'),
(1450,'Prof. Dr. Hm Rohmad, M. Pd.',NULL,'Terbit dan  Cetak buku Keluarga Sakinah','50','eks','0',NULL,30000,0,'lunas',NULL,'2025-03-17 00:00:00',NULL,'2025-03-17 07:31:43','2025-03-17 12:20:46','1450-mrt-03-2025'),
(1451,'dr. Igun Winarno',NULL,'MEMOAR ANESTESI-KU EDISI 3 SATU','100','eks','0',NULL,70000,0,'lunas',NULL,'2025-03-21 00:00:00',NULL,'2025-03-21 02:31:29','2025-03-21 05:37:46','1451-cpn-03-2025'),
(1452,'dr. Igun Winarno',NULL,'MEMOAR ANESTESI-KU EDISI 3 DUA','100','eks','0',NULL,70000,0,'lunas',NULL,'2025-03-21 00:00:00',NULL,'2025-03-21 02:31:59','2025-03-21 05:37:46','1451-cpn-03-2025'),
(1453,'Kemenag Banyumas',NULL,'Cetak Buku Khotbah','500','eks','0',NULL,28800,0,'belum',NULL,'2025-03-25 00:00:00',NULL,'2025-03-25 07:32:53','2025-03-25 07:32:53','1453-xhv-03-2025'),
(1454,'Kemenag Banyumas',NULL,'Buku Kultum','500','eks','0',NULL,21700,0,'belum',NULL,'2025-03-25 00:00:00',NULL,'2025-03-25 07:33:31','2025-03-25 07:33:31','1453-xhv-03-2025'),
(1455,'PC Ansor Banyumas',NULL,'Undangan','50','pcs','0',NULL,4000,0,'belum',NULL,'2025-04-10 00:00:00',NULL,'2025-04-10 09:15:46','2025-04-10 09:15:46','1455-lry-04-2025'),
(1456,'PC Ansor Banyumas',NULL,'Co Card','500','pcs','0',NULL,3000,0,'belum',NULL,'2025-04-10 00:00:00',NULL,'2025-04-10 09:16:06','2025-04-10 09:16:06','1455-lry-04-2025'),
(1457,'PC Ansor Banyumas',NULL,'Banner Utama & Photobooth','2','pcs','0',NULL,200000,0,'belum',NULL,'2025-04-10 00:00:00',NULL,'2025-04-10 09:16:58','2025-04-10 09:16:58','1455-lry-04-2025'),
(1458,'PC Ansor Banyumas',NULL,'Stempel Panitia','3','pcs','0',NULL,70000,0,'belum',NULL,'2025-04-10 00:00:00',NULL,'2025-04-10 09:17:32','2025-04-10 09:17:32','1455-lry-04-2025'),
(1459,'PC Ansor Banyumas',NULL,'Buku LPJ','100','eks','0',NULL,20000,500000,'belum',NULL,'2025-04-10 00:00:00',NULL,'2025-04-10 09:18:05','2025-04-10 09:18:05','1455-lry-04-2025'),
(1460,'Dukha',NULL,'Undangan VIP','1000','pcs','0',NULL,9000,0,'lunas',NULL,'2025-04-12 00:00:00',NULL,'2025-04-12 08:01:54','2025-04-26 06:08:22','1460-luq-04-2025'),
(1461,'Dukha',NULL,'Undangan','3000','pcs','0',NULL,1200,0,'lunas',NULL,'2025-04-12 00:00:00',NULL,'2025-04-12 08:02:50','2025-04-26 06:08:22','1460-luq-04-2025'),
(1462,'Dukha',NULL,'Paperbag','2000','pcs','0',NULL,1400,0,'lunas',NULL,'2025-04-12 00:00:00',NULL,'2025-04-12 08:03:17','2025-04-26 06:08:22','1460-luq-04-2025'),
(1463,'Erly Kusuma Dewi',NULL,'Buku Master Puskesmas Kebasen','7','eks','0',NULL,150000,0,'lunas',NULL,'2025-04-14 00:00:00',NULL,'2025-04-14 08:08:57','2025-04-14 08:09:15','1463-gaa-04-2025'),
(1464,'KBIHU NU AL ARAFAT',NULL,'Cetak Buku Bimbingan Manasik Haji dan Umrah','1000','eks','0',NULL,13000,0,'lunas',NULL,'2025-04-18 00:00:00',NULL,'2025-04-18 11:55:24','2025-04-26 08:03:48','1464-lzj-04-2025'),
(1465,'KBIHU NU AL ARAFAT',NULL,'Panduan Manasik Haji dan Umrah (Doa dan Dzikir) kalung','1000','eks','0',NULL,17500,0,'lunas',NULL,'2025-04-18 00:00:00',NULL,'2025-04-18 11:57:09','2025-04-26 08:03:48','1464-lzj-04-2025'),
(1466,'Kus Maria Anggriani',NULL,'Slempang Premium','15','pcs','0',NULL,85000,0,'lunas',NULL,'2025-04-24 00:00:00',NULL,'2025-04-24 02:15:13','2025-04-24 02:15:17','1466-mmt-04-2025'),
(1467,'Frida',NULL,'Terbit & Cetak Buku REFLEKSOLOGI ISLAM | Paket Siaapp','1','pkt','0',NULL,500000,0,'lunas',NULL,'2025-04-26 00:00:00',NULL,'2025-04-26 05:11:52','2025-04-26 08:03:54','1467-agn-04-2025'),
(1468,'Hakim',NULL,'Cetak Buku AMDK + FRONT WAREHOUSE A4 Hardcover','1','eks','0',NULL,125000,0,'lunas',NULL,'2025-04-29 00:00:00',NULL,'2025-04-29 08:18:17','2025-04-30 09:02:20','1468-kyl-04-2025'),
(1469,'PP At Thohiriyah',NULL,'Buku Santri','80','eks','0',NULL,5500,0,'lunas',NULL,'2025-04-29 00:00:00',NULL,'2025-04-29 09:22:12','2025-05-03 08:53:35','1469-vyy-04-2025'),
(1470,'PP At Thohiriyah',NULL,'Buku Ngaji','540','eks','0',NULL,3000,0,'lunas',NULL,'2025-04-29 00:00:00',NULL,'2025-04-29 09:23:17','2025-05-03 08:53:35','1469-vyy-04-2025'),
(1471,'Hakim',NULL,'Print A3 HVS','2','eks','0',NULL,10500,0,'lunas',NULL,'2025-04-30 00:00:00',NULL,'2025-04-30 08:55:41','2025-04-30 09:02:20','1468-kyl-04-2025'),
(1472,'PMR Banyumas',NULL,'Lanyard + ID Card','129','pcs','0',NULL,12000,0,'lunas',NULL,'2025-05-03 00:00:00',NULL,'2025-05-03 08:54:40','2025-05-03 08:56:58','1472-udp-05-2025'),
(1473,'PMR Banyumas',NULL,'Stiker Vinyl Kiscut','150','pcs','0',NULL,750,0,'lunas',NULL,'2025-05-03 00:00:00',NULL,'2025-05-03 08:55:24','2025-05-03 08:56:58','1472-udp-05-2025'),
(1474,'Annisa Latin',NULL,'Bloknote','35','eks','0',NULL,3000,0,'lunas',NULL,'2025-05-08 00:00:00',NULL,'2025-05-08 13:02:26','2025-05-08 13:07:11','1474-ijd-05-2025'),
(1475,'Isna Mardani',NULL,'Paket Cetak Buku','1','Paket','0',NULL,300000,0,'lunas',NULL,'2025-05-08 00:00:00',NULL,'2025-05-08 13:05:53','2025-05-08 13:07:15','1475-lkk-05-2025'),
(1476,'Mukadimah',NULL,'Paket Cetak Buku','1','Paket','0',NULL,300000,0,'lunas',NULL,'2025-05-08 00:00:00',NULL,'2025-05-08 13:06:51','2025-05-08 13:07:18','1476-skl-05-2025'),
(1477,'Sulthonul Anam',NULL,'Buku Mawarits','230','eks','0',NULL,17500,0,'lunas',NULL,'2025-05-09 00:00:00',NULL,'2025-05-09 07:21:26','2025-05-17 03:40:49','1477-dht-05-2025'),
(1478,'Sulthonul Anam',NULL,'Ongkir','1','pkt','0',NULL,264000,0,'lunas',NULL,'2025-05-09 00:00:00',NULL,'2025-05-09 07:21:52','2025-05-17 03:40:49','1477-dht-05-2025'),
(1479,'Khanif Hidayatullah',NULL,'Cetak Buku Fasholatan lan rukunan','20','eks','0',NULL,16000,0,'lunas',NULL,'2025-05-09 00:00:00',NULL,'2025-05-09 07:26:44','2025-05-09 07:38:13','1479-apy-05-2025'),
(1480,'Khanif Hidayatullah',NULL,'Cetak Buku Nazham Khoridatul Bahiyah','20','eks','0',NULL,13500,0,'lunas',NULL,'2025-05-09 00:00:00',NULL,'2025-05-09 07:27:40','2025-05-09 07:38:13','1479-apy-05-2025'),
(1481,'Dialogue Center UIN Suka Yogyakarta',NULL,'Kaos','65','Pcs','0',NULL,65000,0,'lunas',NULL,'2025-05-09 00:00:00',NULL,'2025-05-09 07:57:32','2025-05-09 09:06:23','1481-xdy-05-2025'),
(1482,'Dialogue Center UIN Suka Yogyakarta',NULL,'Blocknote','60','eks','0',NULL,6000,0,'lunas',NULL,'2025-05-09 00:00:00',NULL,'2025-05-09 07:58:22','2025-05-09 09:06:23','1481-xdy-05-2025'),
(1483,'Dialogue Center UIN Suka Yogyakarta',NULL,'Pulpen','60','Pcs','0',NULL,1500,0,'lunas',NULL,'2025-05-09 00:00:00',NULL,'2025-05-09 07:58:45','2025-05-09 09:06:23','1481-xdy-05-2025'),
(1484,'Dialogue Center UIN Suka Yogyakarta',NULL,'Zipper','60','Pcs','0',NULL,18000,0,'lunas',NULL,'2025-05-09 00:00:00',NULL,'2025-05-09 08:32:49','2025-05-09 09:06:23','1481-xdy-05-2025'),
(1485,'Dialogue Center UIN Suka Yogyakarta',NULL,'Kertas Plano','4','Pax','0',NULL,10000,0,'lunas',NULL,'2025-05-09 00:00:00',NULL,'2025-05-09 09:05:19','2025-05-09 09:06:23','1481-xdy-05-2025'),
(1486,'Mas Annas Harlah',NULL,'Cetak Banner 2X2.5','5','Meter','0',NULL,20000,0,'lunas',NULL,'2025-05-10 00:00:00',NULL,'2025-05-10 12:26:23','2025-05-10 12:26:36','1486-ryh-05-2025'),
(1487,'Pondok Pesantren \"Wali Songo\"  Ngabar',NULL,'Cetak Qur\'an juz 30','470','eks','0',NULL,15000,0,'lunas',NULL,'2025-05-14 00:00:00',NULL,'2025-05-14 06:08:05','2025-05-17 03:32:12','1487-agv-05-2025'),
(1488,'Pondok Pesantren \"Wali Songo\"  Ngabar',NULL,'Cetak Modul Pembelajaran Tajridi','470','eks','0',NULL,36000,0,'lunas',NULL,'2025-05-14 00:00:00',NULL,'2025-05-14 06:08:31','2025-05-17 03:32:12','1487-agv-05-2025'),
(1489,'Muhamad Ikbal',NULL,'Buku Membangun SDM yang Profesional di Rumah Sakit + Ongkir','1','eks','0',NULL,148000,0,'lunas',NULL,'2025-05-14 00:00:00',NULL,'2025-05-14 07:44:40','2025-05-17 03:07:09','1489-spu-05-2025'),
(1490,'Puskesmas Purwokerto Selatan',NULL,'PURSEL - LAPORAN KESGA DESEMBER 2025','7','eks','0',NULL,44900,0,'lunas',NULL,'2025-05-17 00:00:00',NULL,'2025-05-17 03:42:07','2025-06-04 07:25:46','1490-phk-05-2025'),
(1491,'Puskesmas Purwokerto Selatan',NULL,'FORM LAPORAN KESGA PKM 2025 CETAK ASLI','7','eks','0',NULL,100900,0,'lunas',NULL,'2025-05-17 00:00:00',NULL,'2025-05-17 03:43:04','2025-06-04 07:25:46','1490-phk-05-2025'),
(1492,'PC Ansor Banyumas',NULL,'Undangan','80','pcs','0',NULL,3500,0,'lunas',NULL,'2025-05-17 00:00:00',NULL,'2025-05-17 03:45:33','2025-05-17 08:36:14','1492-hmz-05-2025'),
(1493,'PC Ansor Banyumas',NULL,'Pigura Penerimaan Wakaf Tanah','1','pcs','0',NULL,75000,0,'lunas',NULL,'2025-05-17 00:00:00',NULL,'2025-05-17 03:47:14','2025-05-17 08:36:14','1492-hmz-05-2025'),
(1505,'QOF Collection',NULL,'PLASTIK CUSTOM ZIPPERBAG KLIP','200','pcs','0',NULL,2700,0,'lunas',NULL,'2025-06-13 00:00:00',NULL,'2025-06-13 06:48:51','2025-06-14 04:42:51','1494-sja-06-2025'),
(1506,'KPRI SEJAHTERA Banyumas',NULL,'Map','100','lbr','0',NULL,10000,0,'lunas',NULL,'2025-06-13 00:00:00',NULL,'2025-06-13 07:19:03','2025-06-18 04:08:33','1506-byl-06-2025'),
(1507,'Prof. Dr. H. Rohmad, M. Pd.',NULL,'Buku PROBLEM KELUARGA DAN ALTERNATIF SOLUSINYA','50','eks','0',NULL,40000,0,'lunas',NULL,'2025-06-14 00:00:00',NULL,'2025-06-14 04:45:24','2025-06-14 06:43:12','1507-wvm-06-2025'),
(1508,'Laeli',NULL,'Buku Jembatan Komunikasi','1','pkt','0',NULL,580000,0,'lunas',NULL,'2025-06-16 00:00:00',NULL,'2025-06-16 08:49:56','2025-06-18 04:08:27','1508-iws-06-2025'),
(1510,'Putra Harapan',NULL,'Cetak Sertifikat Syahadah Kelas 6 2025','92','lbr','0',NULL,1500,0,'lunas',NULL,'2025-06-18 00:00:00',NULL,'2025-06-18 04:07:47','2025-06-18 08:10:33','1509-hfw-06-2025'),
(1511,'Putra Harapan',NULL,'Cetak Sertifikat Syahadah Khotmil Oktober 2024','94','lbr','0',NULL,1500,0,'lunas',NULL,'2025-06-18 00:00:00',NULL,'2025-06-18 08:10:24','2025-06-18 08:10:29','1511-zgv-06-2025'),
(1512,'Ahdi',NULL,'Cetak Lanyard+id card','46','eks','0',NULL,12000,0,'lunas',NULL,'2025-06-19 00:00:00',NULL,'2025-06-19 03:29:27','2025-06-19 03:29:46','1512-pna-06-2025'),
(1514,'Esti Hilma Faedha',NULL,'Buku KONSELING TANPA BATAS - Paket GAS','1','pkt','0',NULL,350000,0,'lunas',NULL,'2025-06-21 00:00:00',NULL,'2025-06-21 06:40:04','2025-06-26 06:29:23','1513-tty-06-2025'),
(1515,'Fajar',NULL,'Buku Saku Prasiaga','50','eks','0',NULL,9000,0,'lunas',NULL,'2025-06-25 00:00:00',NULL,'2025-06-25 04:32:22','2025-06-25 04:32:31','1515-oyv-06-2025'),
(1520,'Ponpes Ngabar Walisongo',NULL,'Cetak Qur\'an Juz 29','210','eks','0',NULL,28500,0,'lunas',NULL,'2025-06-27 00:00:00',NULL,'2025-06-27 15:32:28','2025-07-09 05:15:18','1516-pxv-06-2025'),
(1521,'Ponpes Ngabar Walisongo',NULL,'Qur\'an Juz 30','30','eks','0',NULL,45000,0,'lunas',NULL,'2025-06-27 00:00:00',NULL,'2025-06-27 15:33:12','2025-07-09 05:15:18','1516-pxv-06-2025'),
(1522,'Ponpes Ngabar Walisongo',NULL,'Qur\'an Juz 1','20','eks','0',NULL,45000,0,'lunas',NULL,'2025-06-27 00:00:00',NULL,'2025-06-27 15:33:43','2025-07-09 05:15:18','1516-pxv-06-2025'),
(1523,'Indah',NULL,'Cetak Buku Yasin','50','eks','0',NULL,7500,0,'lunas',NULL,'2025-06-28 00:00:00',NULL,'2025-06-28 05:40:13','2025-06-28 05:40:16','1523-try-06-2025'),
(1524,'KMD RACANA',NULL,'KAOS 30 S SABLON DTF (M)','5','eks','0',NULL,60000,0,'lunas',NULL,'2025-06-28 00:00:00',NULL,'2025-06-28 15:59:27','2025-06-28 16:02:53','1524-buw-06-2025'),
(1525,'KMD RACANA',NULL,'KAOS 30 S SABLON DTF (L)','11','eks','0',NULL,60000,0,'lunas',NULL,'2025-06-28 00:00:00',NULL,'2025-06-28 16:00:33','2025-06-28 16:02:53','1524-buw-06-2025'),
(1526,'KMD RACANA',NULL,'KAOS 30 S SABLON DTF (XL)','11','eks','0',NULL,60000,0,'lunas',NULL,'2025-06-28 00:00:00',NULL,'2025-06-28 16:01:14','2025-06-28 16:02:53','1524-buw-06-2025'),
(1527,'KMD RACANA',NULL,'KAOS 30 S SABLON DTF (XXL)','3','eks','0',NULL,70000,0,'lunas',NULL,'2025-06-28 00:00:00',NULL,'2025-06-28 16:01:53','2025-06-28 16:02:53','1524-buw-06-2025'),
(1528,'KMD RACANA',NULL,'KAOS 30 S SABLON DTF (3XL)','2','eks','0',NULL,80000,0,'lunas',NULL,'2025-06-28 00:00:00',NULL,'2025-06-28 16:02:35','2025-06-28 16:02:53','1524-buw-06-2025'),
(1530,'INSIMA',NULL,'Buku Panduan KKN','112','eks','0',NULL,10500,0,'lunas',NULL,'2025-06-30 00:00:00',NULL,'2025-06-30 04:55:37','2025-06-30 08:00:44','1529-swn-06-2025'),
(1531,'INSIMA',NULL,'Lanyard + ID Card','99','pcs','0',NULL,12000,0,'lunas',NULL,'2025-06-30 00:00:00',NULL,'2025-06-30 04:58:57','2025-06-30 08:00:44','1529-swn-06-2025'),
(1532,'INSIMA',NULL,'Lanyard','13','pcs','0',NULL,8000,0,'lunas',NULL,'2025-06-30 00:00:00',NULL,'2025-06-30 05:48:04','2025-06-30 08:00:44','1529-swn-06-2025'),
(1533,'INSIMA',NULL,'Ongkir','1','pkt','0',NULL,100000,0,'lunas',NULL,'2025-06-30 00:00:00',NULL,'2025-06-30 06:15:28','2025-06-30 08:00:44','1529-swn-06-2025'),
(1534,'PP. NURUL JABAL',NULL,'Cetak Lanyard','15','eks','0',NULL,8000,0,'lunas',NULL,'2025-07-10 00:00:00',NULL,'2025-07-10 02:46:17','2025-07-10 02:48:36','1534-ggo-07-2025'),
(1535,'DIYAH KKN',NULL,'Cetak ID Card','15','eks','0',NULL,3000,0,'lunas',NULL,'2025-07-10 00:00:00',NULL,'2025-07-10 14:32:06','2025-07-14 08:08:28','1535-mxi-07-2025'),
(1536,'BEKTI KKN',NULL,'Cetak Lanyard+id card','15','eks','0',NULL,12000,0,'lunas',NULL,'2025-07-10 00:00:00',NULL,'2025-07-10 14:35:08','2025-07-10 14:36:03','1536-rms-07-2025'),
(1542,'Izza',NULL,'Cetak lanyard+id card','15','pcs','0',NULL,12000,0,'lunas',NULL,'2025-07-12 00:00:00',NULL,'2025-07-12 04:05:39','2025-07-12 04:05:42','1537-qgn-07-2025'),
(1543,'Affan',NULL,'Lanyard + ID Card','31','pcs','0',NULL,12000,0,'lunas',NULL,'2025-07-12 00:00:00',NULL,'2025-07-12 05:30:05','2025-07-12 05:30:09','1543-waz-07-2025'),
(1547,'Ahdi',NULL,'Cetak lanyard+id card','87','pcs','0',NULL,12000,0,'lunas',NULL,'2025-07-15 00:00:00',NULL,'2025-07-15 09:39:04','2025-07-15 09:39:11','1544-ufa-07-2025'),
(1548,'PAC KEMRANJEN',NULL,'CETAK BLOKNOTE A6','90','eks','0',NULL,3000,0,'lunas',NULL,'2025-07-19 00:00:00',NULL,'2025-07-19 07:16:26','2025-07-21 11:25:43','1548-wgn-07-2025'),
(1549,'PAC KEDUNGBANTENG',NULL,'CETAK BLOKNOTE A5','55','eks','0',NULL,5500,0,'lunas',NULL,'2025-07-19 00:00:00',NULL,'2025-07-19 07:34:33','2025-07-21 11:26:13','1549-hwy-07-2025'),
(1558,'PP Ath Thohiriyah',NULL,'Cetak Kitab Ibanah','100','eks','0',NULL,16500,0,'lunas',NULL,'2025-07-19 00:00:00',NULL,'2025-07-19 14:45:44','2025-07-21 04:38:51','1550-cwj-07-2025'),
(1561,'Fajar',NULL,'Buku Saku Prasiaga','60','eks','0',NULL,9000,0,'lunas',NULL,'2025-07-23 00:00:00',NULL,'2025-07-23 02:59:12','2025-07-23 02:59:30','1559-xsu-07-2025'),
(1562,'Erly Kusuma Dewi',NULL,'Buku SIP Puskesmas Kebasen','5','eks','0',NULL,150000,0,'lunas',NULL,'2025-07-24 00:00:00',NULL,'2025-07-24 04:23:43','2025-07-25 09:29:33','1562-cps-07-2025'),
(1563,'PPRQ Sirau',NULL,'Cetak Aurod','200','eks','0',NULL,16000,0,'belum',NULL,'2025-07-29 00:00:00',NULL,'2025-07-29 11:13:53','2025-08-02 02:39:53','1563-dpb-07-2025'),
(1565,'Panitia Muskercab PCNU Banyumas',NULL,'Seminarkit (Tas, agenda, pulpen)','200','paket','0',NULL,22000,0,'belum',NULL,'2025-08-02 00:00:00',NULL,'2025-08-02 02:44:13','2025-08-02 02:44:13','1564-jqo-08-2025'),
(1566,'Panitia Muskercab PCNU Banyumas',NULL,'Cetak materi Muskercab','200','eks','0',NULL,14000,0,'belum',NULL,'2025-08-02 00:00:00',NULL,'2025-08-02 02:45:56','2025-08-02 02:45:56','1564-jqo-08-2025'),
(1567,'Panitia Muskercab PCNU Banyumas',NULL,'Id Card Panitia dan Peserta','200','buah','0',NULL,9000,0,'belum',NULL,'2025-08-02 00:00:00',NULL,'2025-08-02 02:46:28','2025-08-02 02:46:28','1564-jqo-08-2025'),
(1568,'Faisal Najib',NULL,'Blocknote','50','eks','0',NULL,2000,0,'lunas',NULL,'2025-08-02 00:00:00',NULL,'2025-08-02 09:19:44','2025-08-02 09:20:48','1568-yyh-08-2025'),
(1569,'Faisal Najib',NULL,'TERM OF REFERENCE KONFERANCAB','50','eks','0',NULL,8000,0,'lunas',NULL,'2025-08-02 00:00:00',NULL,'2025-08-02 09:20:36','2025-08-02 09:20:48','1568-yyh-08-2025'),
(1570,'SD Al Izzah',NULL,'Cetak Stiker','6','pcs','0',NULL,9000,0,'lunas',NULL,'2025-08-04 00:00:00',NULL,'2025-08-04 07:54:32','2025-08-04 09:12:57','1570-klx-08-2025'),
(1571,'Kemenag Banyumas',NULL,'Buku Khotbah','1','eks','0',NULL,50000,0,'lunas',NULL,'2025-08-05 00:00:00',NULL,'2025-08-05 11:51:11','2025-08-05 11:51:28','1571-feu-08-2025'),
(1572,'Kemenag Banyumas',NULL,'Buku Kultum','1','eks','0',NULL,50000,0,'lunas',NULL,'2025-08-05 00:00:00',NULL,'2025-08-05 11:51:26','2025-08-05 11:51:28','1571-feu-08-2025'),
(1573,'Afifuddin Idrus',NULL,'BUKU DESAKRALISASI PERNIKAHAN','50','eks','0',NULL,35000,0,'lunas',NULL,'2025-08-08 00:00:00',NULL,'2025-08-08 06:15:21','2025-08-08 06:15:54','1573-oiu-08-2025'),
(1582,'PCNU Banyumas',NULL,'MAP PCNU','500','buah','0',NULL,6000,0,'lunas',NULL,'2025-08-20 00:00:00',NULL,'2025-08-20 14:24:31','2025-09-04 08:14:29','1574-weo-08-2025'),
(1584,'Qomarul Huda',NULL,'Cetak Buku Melayani tamu Allah','20','eks','0',NULL,42500,0,'lunas',NULL,'2025-08-23 00:00:00',NULL,'2025-08-23 04:27:10','2025-08-26 03:53:27','1583-fyp-08-2025'),
(1585,'Qomarul Huda',NULL,'Cetak Buku Mata Pena','5','eks','0',NULL,17500,0,'lunas',NULL,'2025-08-23 00:00:00',NULL,'2025-08-23 04:27:28','2025-08-26 03:53:27','1583-fyp-08-2025'),
(1586,'Qomarul Huda',NULL,'Cetak Buku Catatan Publikasi Madrasah','5','eks','0',NULL,29500,0,'lunas',NULL,'2025-08-23 00:00:00',NULL,'2025-08-23 04:27:48','2025-08-26 03:53:27','1583-fyp-08-2025'),
(1587,'Qomarul Huda',NULL,'Ongkos Kirim','1','paket','0',NULL,48000,0,'lunas',NULL,'2025-08-23 00:00:00',NULL,'2025-08-23 04:28:47','2025-08-26 03:53:27','1583-fyp-08-2025'),
(1588,'Galuh',NULL,'Cetak Lanyard','20','eks','0',NULL,8000,0,'lunas',NULL,'2025-08-23 00:00:00',NULL,'2025-08-23 08:12:12','2025-08-23 08:12:55','1588-zjr-08-2025'),
(1589,'Dani One Meter',NULL,'Cetak lanyard+id card','3','eks','0',NULL,15000,0,'lunas',NULL,'2025-08-26 00:00:00',NULL,'2025-08-26 03:53:55','2025-08-26 03:54:43','1589-ufu-08-2025'),
(1590,'Fath Indah Banyumas',NULL,'Cetak Undangan Grand Opening','50','pcs','0',NULL,5000,0,'lunas',NULL,'2025-08-27 00:00:00',NULL,'2025-08-27 09:12:16','2025-08-27 09:14:01','1590-dzm-08-2025'),
(1592,'Annida',NULL,'Buku Kajian Al-Qur’an di Kalangan Orientalis','66','eks','0',NULL,50000,0,'lunas',NULL,'2025-09-04 00:00:00',NULL,'2025-09-04 08:15:43','2025-09-09 03:20:37','1591-xgd-09-2025'),
(1593,'Karibin Tangho',NULL,'Syal Karibin Bludru','270','Buah','0',NULL,50000,0,'lunas',NULL,'2025-09-04 00:00:00',NULL,'2025-09-04 12:01:45','2025-09-12 08:49:27','1593-ybv-09-2025'),
(1595,'Ponpes Ath Thohiriyyah',NULL,'Buku kumpulan Doa','30','eks','0',NULL,15000,0,'lunas',NULL,'2025-09-12 00:00:00',NULL,'2025-09-12 08:29:22','2025-09-13 01:46:33','1594-bbc-09-2025'),
(1596,'UNUGHA Press',NULL,'Menyulam Asa (Reg 1)','4','eks','0',NULL,18500,0,'lunas',NULL,'2025-09-12 00:00:00',NULL,'2025-09-12 08:43:33','2025-09-23 01:44:30','1596-dxd-09-2025'),
(1597,'UNUGHA Press',NULL,'Dari kami untuk mereka (Reg 2)','4','eks','0',NULL,22500,0,'lunas',NULL,'2025-09-12 00:00:00',NULL,'2025-09-12 08:44:03','2025-09-23 01:44:30','1596-dxd-09-2025'),
(1598,'UNUGHA Press',NULL,'Menapak Lentera (Reg 16)','4','eks','0',NULL,34000,0,'lunas',NULL,'2025-09-12 00:00:00',NULL,'2025-09-12 08:44:34','2025-09-23 01:44:30','1596-dxd-09-2025'),
(1599,'UNUGHA Press',NULL,'Mereguk Makna (Reg 17)','4','eks','0',NULL,34000,0,'lunas',NULL,'2025-09-12 00:00:00',NULL,'2025-09-12 08:44:52','2025-09-23 01:44:30','1596-dxd-09-2025'),
(1600,'UNUGHA Press',NULL,'Kenangan Yang Membekas (Reg 19)','4','eks','0',NULL,23000,0,'lunas',NULL,'2025-09-12 00:00:00',NULL,'2025-09-12 08:45:07','2025-09-23 01:44:30','1596-dxd-09-2025'),
(1601,'Prof.Kholid',NULL,'Buku Sejarah Kebudayaan Islam','18','eks','0',NULL,168800,0,'lunas',NULL,'2025-09-12 00:00:00',NULL,'2025-09-12 12:52:56','2025-09-12 12:53:02','1601-owu-09-2025'),
(1602,'QOF Collection',NULL,'PLASTIK CUSTOM ZIPPERBAG KLIP','200','pcs','0',NULL,2700,0,'lunas',NULL,'2025-09-13 00:00:00',NULL,'2025-09-13 01:38:34','2025-09-17 04:02:48','1602-sko-09-2025'),
(1608,'SD Al Izzah',NULL,'Cetak Id Card','14','pcs','0',NULL,6000,0,'lunas',NULL,'2025-09-17 00:00:00',NULL,'2025-09-17 04:04:41','2025-09-17 04:04:55','1603-dix-09-2025'),
(1609,'Banser Banyumas',NULL,'Undangan','75','eks','0',NULL,4000,0,'lunas',NULL,'2025-09-22 00:00:00',NULL,'2025-09-22 05:14:24','2025-11-20 16:25:27','1609-brn-09-2025'),
(1610,'Komite Sekolah SMA Al Irsyad',NULL,'Laporan Kegiatan Warna','5','eks','0',NULL,100000,0,'lunas',NULL,'2025-09-22 00:00:00',NULL,'2025-09-22 05:17:44','2025-09-23 01:42:59','1610-frr-09-2025'),
(1611,'Komite Sekolah SMA Al Irsyad',NULL,'Laporan Kegiatan Hitam Putih','13','eks','0',NULL,50000,0,'lunas',NULL,'2025-09-22 00:00:00',NULL,'2025-09-22 05:18:48','2025-09-23 01:42:59','1610-frr-09-2025'),
(1612,'INSIMA',NULL,'PANDUAN PKL ESY','10','eks','0',NULL,8500,0,'lunas',NULL,'2025-09-27 00:00:00',NULL,'2025-09-27 11:31:19','2025-11-20 16:23:48','1612-cpv-09-2025'),
(1613,'INSIMA',NULL,'PANDUAN PPL PAI','90','eks','0',NULL,12000,0,'lunas',NULL,'2025-09-27 00:00:00',NULL,'2025-09-27 11:31:49','2025-11-20 16:23:48','1612-cpv-09-2025'),
(1614,'INSIMA',NULL,'PANDUAN PPL PIAUD','25','eks','0',NULL,8600,0,'lunas',NULL,'2025-09-27 00:00:00',NULL,'2025-09-27 11:32:14','2025-11-20 16:23:48','1612-cpv-09-2025'),
(1615,'INSIMA',NULL,'CATATAN HARIAN PAI','80','eks','0',NULL,8200,0,'lunas',NULL,'2025-09-27 00:00:00',NULL,'2025-09-27 11:32:38','2025-11-20 16:23:48','1612-cpv-09-2025'),
(1616,'INSIMA',NULL,'CATATAN HARIAN PIAUD','20','eks','0',NULL,8200,0,'lunas',NULL,'2025-09-27 00:00:00',NULL,'2025-09-27 11:32:57','2025-11-20 16:23:48','1612-cpv-09-2025'),
(1617,'INSIMA',NULL,'LAYARD + ID Card','123','pcs','0',NULL,11000,0,'lunas',NULL,'2025-09-27 00:00:00',NULL,'2025-09-27 11:33:16','2025-11-20 16:23:48','1612-cpv-09-2025'),
(1618,'INSIMA',NULL,'Travel Ongkir','1','pkt','0',NULL,200000,0,'lunas',NULL,'2025-09-27 00:00:00',NULL,'2025-09-27 11:34:39','2025-11-20 16:23:48','1612-cpv-09-2025'),
(1619,'Westi KKN 160 Somagede',NULL,'Paket Siaapp +','1','pkt','0',NULL,700000,0,'lunas',NULL,'2025-09-29 00:00:00',NULL,'2025-09-29 02:49:51','2025-10-01 01:54:56','1619-pwc-09-2025'),
(1620,'Westi KKN 160 Somagede',NULL,'Cetak Buku','4','eks','0',NULL,41000,0,'lunas',NULL,'2025-09-29 00:00:00',NULL,'2025-09-29 02:50:31','2025-10-01 01:54:56','1619-pwc-09-2025'),
(1621,'KBIH AZZUHRI SEMARANG',NULL,'BUKU PANDUAN MANASIK HAJI DAN UMROH','102','eks','0',NULL,23000,0,'lunas',NULL,'2025-10-07 00:00:00',NULL,'2025-10-07 03:15:55','2025-10-08 07:33:58','1621-yvv-10-2025'),
(1622,'KBIH AZZUHRI SEMARANG',NULL,'BUKU KALUNG PANDUAN MANASIK HAJI DAN UMROH','102','eks','0',NULL,14000,0,'lunas',NULL,'2025-10-07 00:00:00',NULL,'2025-10-07 03:16:31','2025-10-08 07:33:58','1621-yvv-10-2025'),
(1623,'KBIH AZZUHRI SEMARANG',NULL,'Ongkir','1','paket','0',NULL,84840,0,'lunas',NULL,'2025-10-07 00:00:00',NULL,'2025-10-07 03:18:05','2025-10-08 07:33:58','1621-yvv-10-2025'),
(1624,'Bu Ani',NULL,'Buku Yasin AP','60','eks','0',NULL,16000,0,'lunas',NULL,'2025-10-08 00:00:00',NULL,'2025-10-08 02:48:47','2025-10-08 07:42:08','1624-qws-10-2025'),
(1625,'Gus Munif',NULL,'Cetak Buku Panduan Umrah','35','eks','0',NULL,18500,0,'lunas',NULL,'2025-10-09 00:00:00',NULL,'2025-10-09 06:13:04','2025-10-21 04:21:13','1625-opt-10-2025'),
(1626,'Gus Munif',NULL,'Ongkir','1','pkt','0',NULL,50000,0,'lunas',NULL,'2025-10-09 00:00:00',NULL,'2025-10-09 06:13:23','2025-10-21 04:21:13','1625-opt-10-2025'),
(1627,'Puskesmas Purwokerto Selatan',NULL,'Cetak Deteksi Kanker 2 Lapis','1','pkt','0',NULL,300000,0,'lunas',NULL,'2025-10-10 00:00:00',NULL,'2025-10-10 02:00:19','2025-10-11 06:10:29','1627-gtu-10-2025'),
(1628,'Puskesmas Purwokerto Selatan',NULL,'Copy F4','400','lbr','0',NULL,200,0,'lunas',NULL,'2025-10-10 00:00:00',NULL,'2025-10-10 02:01:34','2025-10-11 06:10:29','1627-gtu-10-2025'),
(1630,'Puskesmas Purwokerto Selatan',NULL,'Daftar Tilik Drill emergency','22','eks','0',NULL,10000,0,'lunas',NULL,'2025-10-11 00:00:00',NULL,'2025-10-11 05:59:42','2025-10-11 06:10:26','1629-kap-10-2025'),
(1631,'Turhamun',NULL,'Proposal Sempro','6','eks','0',NULL,22000,0,'lunas',NULL,'2025-10-13 00:00:00',NULL,'2025-10-13 04:29:24','2025-10-13 04:39:50','1631-bft-10-2025'),
(1632,'Turhamun',NULL,'Disertasi WIP','7','eks','0',NULL,60000,0,'lunas',NULL,'2025-10-13 00:00:00',NULL,'2025-10-13 04:29:42','2025-10-13 04:39:50','1631-bft-10-2025'),
(1633,'Turhamun',NULL,'Disertasi Tertutup','8','eks','0',NULL,70000,0,'lunas',NULL,'2025-10-13 00:00:00',NULL,'2025-10-13 04:32:13','2025-10-13 04:39:50','1631-bft-10-2025'),
(1634,'Turhamun',NULL,'Disertasi Terbuka','9','eks','0',NULL,80000,0,'lunas',NULL,'2025-10-13 00:00:00',NULL,'2025-10-13 04:32:45','2025-10-13 04:39:50','1631-bft-10-2025'),
(1635,'Hilda Zahira',NULL,'Buku Zakat Dakwah Paket Gasss','1','pkt','0',NULL,350000,0,'lunas',NULL,'2025-10-16 00:00:00',NULL,'2025-10-16 03:04:57','2025-10-16 03:05:07','1635-cnj-10-2025'),
(1636,'Fahrur Rozi',NULL,'Cetak Buku MODERASI BERAGAMA','4','eks','0',NULL,45000,0,'lunas',NULL,'2025-10-17 00:00:00',NULL,'2025-10-17 02:17:22','2025-10-21 04:20:58','1636-isu-10-2025'),
(1637,'Fahrur Rozi',NULL,'Ongkir','1','pkt','0',NULL,50000,0,'lunas',NULL,'2025-10-17 00:00:00',NULL,'2025-10-17 02:17:48','2025-10-21 04:20:58','1636-isu-10-2025'),
(1638,'Eliza',NULL,'Cetak KTA','67','pcs','0',NULL,4000,0,'lunas',NULL,'2025-10-21 00:00:00',NULL,'2025-10-21 04:50:33','2025-10-23 03:59:01','1638-opq-10-2025'),
(1639,'Agung',NULL,'Cetak Buku 7 Maqom Penyucian Jiwa Hardcover','2','eks','0',NULL,80000,0,'lunas',NULL,'2025-10-28 00:00:00',NULL,'2025-10-28 08:13:17','2025-10-31 02:49:56','1639-cdz-10-2025'),
(1640,'Panitia Peringatan HSN 2025 Banyumas',NULL,'Cetak Undangan','150','pcs','0',NULL,6000,0,'belum',NULL,'2025-10-31 00:00:00',NULL,'2025-10-31 02:19:26','2025-10-31 02:19:26','1640-eqx-10-2025'),
(1641,'Bu Riyanti',NULL,'Cetak Stempel Otomatis 6 CM','1','eks','0',NULL,60000,0,'lunas',NULL,'2025-11-01 00:00:00',NULL,'2025-11-01 03:51:56','2025-11-01 03:55:15','1641-igs-11-2025'),
(1642,'Bu Riyanti',NULL,'Cetak A4 Bolak Balik','100','eks','0',NULL,350,0,'lunas',NULL,'2025-11-01 00:00:00',NULL,'2025-11-01 03:52:59','2025-11-06 02:25:23','1642-svi-11-2025'),
(1643,'Bu Riyanti',NULL,'Cetak A4 Satu Sisi','120','eks','0',NULL,250,0,'lunas',NULL,'2025-11-01 00:00:00',NULL,'2025-11-01 03:53:26','2025-11-06 02:25:23','1642-svi-11-2025'),
(1647,'RAIHAN',NULL,'BUKU YASIN SOFT COVER','50','eks','0',NULL,7000,0,'lunas',NULL,'2025-11-08 00:00:00',NULL,'2025-11-08 04:04:59','2025-11-15 06:34:20','1644-xri-11-2025'),
(1648,'Bengkel Dua Putra',NULL,'Kartu Servis','1000','pcs','0',NULL,400,0,'lunas',NULL,'2025-11-10 00:00:00',NULL,'2025-11-10 04:50:26','2025-11-10 07:05:48','1648-jyk-11-2025'),
(1649,'Dr. Fahri Yasin',NULL,'Cetak Buku STATISTIK PENDIDIKAN','20','eks','0',NULL,75000,0,'lunas',NULL,'2025-11-11 00:00:00',NULL,'2025-11-11 03:25:51','2025-11-14 04:28:54','1649-zom-11-2025'),
(1650,'Dr. Fahri Yasin',NULL,'Studi Islam - Paket Basic','1','pkt','0',NULL,750000,0,'lunas',NULL,'2025-11-11 00:00:00',NULL,'2025-11-11 03:27:44','2025-11-14 04:28:54','1649-zom-11-2025'),
(1651,'Dr. Fahri Yasin',NULL,'Desain pembelajaran - Paket Basic','1','pkt','0',NULL,750000,0,'lunas',NULL,'2025-11-11 00:00:00',NULL,'2025-11-11 03:32:38','2025-11-14 04:28:54','1649-zom-11-2025'),
(1652,'Dr. Fahri Yasin',NULL,'Assesment Pembelajaran - Paket Basic','1','pkt','0',NULL,750000,0,'lunas',NULL,'2025-11-11 00:00:00',NULL,'2025-11-11 03:35:55','2025-11-14 04:28:54','1649-zom-11-2025'),
(1653,'Dr. Fahri Yasin',NULL,'Pengembangan Kurikulum - Paket Basic','1','pkt','0',NULL,750000,0,'lunas',NULL,'2025-11-11 00:00:00',NULL,'2025-11-11 03:36:50','2025-11-14 04:28:54','1649-zom-11-2025'),
(1654,'Dr. Fahri Yasin',NULL,'Ongkir 2x','1','pkt','0',NULL,130000,0,'lunas',NULL,'2025-11-11 00:00:00',NULL,'2025-11-11 03:58:17','2025-11-14 04:28:54','1649-zom-11-2025'),
(1655,'PP PEMBANGUNAN MIFTAHUL HUDA',NULL,'LPJ KEPENGURUSAN 2022 - 2025','3','eks','0',NULL,450000,0,'lunas',NULL,'2025-11-14 00:00:00',NULL,'2025-11-14 04:30:34','2025-11-17 06:39:16','1655-obo-11-2025'),
(1656,'Emah',NULL,'Cetak Buku PKD Purwojati','4','eks','0',NULL,30000,0,'belum',NULL,'2025-11-14 00:00:00',NULL,'2025-11-14 05:41:07','2025-11-14 05:51:49','1656-tkx-11-2025'),
(1657,'Unugha Press',NULL,'Cetak Buku Menjadi Ilmuwan','4','eks','0',NULL,25000,0,'lunas',NULL,'2025-11-14 00:00:00',NULL,'2025-11-14 07:49:43','2025-11-17 06:39:30','1657-aig-11-2025'),
(1658,'Unugha Press',NULL,'Cetak Buku Membangun Peradaban','4','eks','0',NULL,25000,0,'lunas',NULL,'2025-11-14 00:00:00',NULL,'2025-11-14 07:50:10','2025-11-17 06:39:30','1657-aig-11-2025'),
(1659,'Fath Indah',NULL,'Pigura Sertifikat','2','pcs','0',NULL,75000,0,'lunas',NULL,'2025-11-17 00:00:00',NULL,'2025-11-17 06:40:40','2025-11-17 07:26:17','1659-adt-11-2025'),
(1660,'INSIMA',NULL,'Cetak Buku Album','88','eks','0',NULL,80000,0,'lunas',NULL,'2025-11-20 00:00:00',NULL,'2025-11-20 09:00:17','2025-11-21 01:38:08','1660-oim-11-2025'),
(1661,'INSIMA',NULL,'Ongkir','1','pkt','0',NULL,197000,0,'lunas',NULL,'2025-11-20 00:00:00',NULL,'2025-11-20 09:31:37','2025-11-21 01:38:08','1660-oim-11-2025'),
(1662,'PDPKPNU PCNU BMS A.7',NULL,'BLOKNOTE A5','100','eks','0',NULL,4500,0,'lunas',NULL,'2025-11-22 00:00:00',NULL,'2025-11-22 10:29:16','2025-12-13 04:12:21','1662-obb-11-2025'),
(1663,'PDPKPNU PCNU BMS A.7',NULL,'PULPEN','10','Pack','0',NULL,22000,0,'lunas',NULL,'2025-11-22 00:00:00',NULL,'2025-11-22 10:30:12','2025-12-13 04:12:21','1662-obb-11-2025'),
(1664,'PDPKPNU PCNU BMS A.7',NULL,'COCARD','90','eks','0',NULL,4000,0,'lunas',NULL,'2025-11-22 00:00:00',NULL,'2025-11-22 10:32:14','2025-12-13 04:12:21','1662-obb-11-2025'),
(1665,'PDPKPNU PCNU BMS A.7',NULL,'LANYARD','30','eks','0',NULL,12500,0,'lunas',NULL,'2025-11-22 00:00:00',NULL,'2025-11-22 10:35:24','2025-12-13 04:12:21','1662-obb-11-2025'),
(1666,'PDPKPNU PCNU BMS A.7',NULL,'Stopmap+Sertifikat','90','Buah','0',NULL,6000,0,'lunas',NULL,'2025-11-25 00:00:00',NULL,'2025-11-25 14:18:17','2025-12-13 04:12:21','1662-obb-11-2025'),
(1667,'Tikno ( MWC NU PURWOKERTO PURWOKERTO )',NULL,'Lanyard+stoper','50','pcs','0',NULL,10000,0,'lunas',NULL,'2025-11-29 00:00:00',NULL,'2025-11-29 07:22:43','2025-12-03 05:18:07','1667-nli-11-2025'),
(1668,'Tikno ( MWC NU PURWOKERTO PURWOKERTO )',NULL,'Buku A5 Ad Art','10','eks','0',NULL,45000,0,'lunas',NULL,'2025-11-29 00:00:00',NULL,'2025-11-29 07:23:11','2025-12-03 05:18:07','1667-nli-11-2025'),
(1669,'Anastha MH',NULL,'Kaos Bakso Bu Bidan','8','pcs','0',NULL,85000,0,'lunas',NULL,'2025-12-03 00:00:00',NULL,'2025-12-03 05:19:46','2025-12-03 07:47:30','1669-lmo-12-2025'),
(1670,'Anastha MH',NULL,'Ongkir','1','pkt','0',NULL,50000,0,'lunas',NULL,'2025-12-03 00:00:00',NULL,'2025-12-03 05:21:59','2025-12-03 07:47:30','1669-lmo-12-2025'),
(1671,'Ponpes Walisongo Ngabar',NULL,'Cetak Juz 30 Tiqror','40','eks','0',NULL,25000,0,'lunas',NULL,'2025-12-04 00:00:00',NULL,'2025-12-04 10:22:34','2025-12-08 00:48:22','1671-ktc-12-2025'),
(1672,'Ponpes Walisongo Ngabar',NULL,'Jasa Paket','1','Paket','0',NULL,33000,0,'lunas',NULL,'2025-12-04 00:00:00',NULL,'2025-12-04 10:23:00','2025-12-08 00:48:22','1671-ktc-12-2025'),
(1673,'Prof. Dr. Woro Ratnaningsih',NULL,'Penerbitan dan percetakan Buku Teaching Argumentatif Writing','1','Paket','0',NULL,750000,0,'lunas',NULL,'2025-12-08 00:00:00',NULL,'2025-12-08 00:50:14','2025-12-08 00:56:37','1673-mye-12-2025'),
(1674,'Prof. Dr. Woro Ratnaningsih',NULL,'Penerbitan dan Percetakan Buku Heutagoy for Argument','1','Paket','0',NULL,750000,0,'lunas',NULL,'2025-12-08 00:00:00',NULL,'2025-12-08 00:51:38','2025-12-08 00:56:37','1673-mye-12-2025'),
(1675,'Cik Hassan Unus',NULL,'Dus Nasi Kotak','2000','pcs','0',NULL,2200,0,'lunas',NULL,'2025-12-08 00:00:00',NULL,'2025-12-08 08:19:24','2025-12-13 04:11:54','1675-gjz-12-2025'),
(1676,'Unugha Press',NULL,'Buku Haji Riang Gembira 2023','4','eks','0',NULL,25500,0,'lunas',NULL,'2025-12-12 00:00:00',NULL,'2025-12-12 08:08:43','2025-12-13 04:11:35','1676-hzz-12-2025'),
(1677,'Unugha Press',NULL,'MODERASI BERAGAMA','4','eks','0',NULL,45000,0,'lunas',NULL,'2025-12-12 00:00:00',NULL,'2025-12-12 08:09:10','2025-12-13 04:11:35','1676-hzz-12-2025'),
(1678,'Unugha Press',NULL,'Optimasi Sistem Audio Masjid','4','eks','0',NULL,37500,0,'lunas',NULL,'2025-12-12 00:00:00',NULL,'2025-12-12 08:09:32','2025-12-13 04:11:35','1676-hzz-12-2025'),
(1679,'Unugha Press',NULL,'Ongkir','1','Pkt','0',NULL,50000,0,'lunas',NULL,'2025-12-12 00:00:00',NULL,'2025-12-12 08:10:50','2025-12-13 04:11:35','1676-hzz-12-2025'),
(1680,'Fajar',NULL,'Cetak Buku Muscab','135','eks','0',NULL,27500,0,'lunas',NULL,'2025-12-13 00:00:00',NULL,'2025-12-13 07:09:00','2025-12-19 06:57:46','1680-rwd-12-2025'),
(1685,'Prof. Dr. Fathul Aminudin Aziz',NULL,'Cetak buku Cerdas Berinvestasi','40','eks','0',NULL,75000,0,'lunas',NULL,'2025-12-16 00:00:00',NULL,'2025-12-16 05:01:16','2025-12-17 02:17:57','1681-dfp-12-2025'),
(1686,'Dwi Akbar Yulia, S.Tr.Keb, Bdn',NULL,'Buku Kelurahan PWT Kulon','3','eks','0',NULL,30000,0,'lunas',NULL,'2025-12-17 00:00:00',NULL,'2025-12-17 02:23:44','2025-12-17 02:35:28','1686-pan-12-2025'),
(1687,'Zaenal Abidin',NULL,'Undangan Fullcolour','600','pcs','0',NULL,1500,0,'lunas',NULL,'2025-12-18 00:00:00',NULL,'2025-12-18 08:47:03','2025-12-18 10:37:20','1687-tdv-12-2025'),
(1688,'Zaenal Abidin',NULL,'Undangan Blangko','150','pcs','0',NULL,1000,0,'lunas',NULL,'2025-12-18 00:00:00',NULL,'2025-12-18 08:47:22','2025-12-18 10:37:20','1687-tdv-12-2025'),
(1689,'Zaenal Abidin',NULL,'Cetak Kartu Undangan & Petunjuk Arah','1','pkt','0',NULL,20000,0,'lunas',NULL,'2025-12-18 00:00:00',NULL,'2025-12-18 10:36:36','2025-12-18 10:37:20','1687-tdv-12-2025'),
(1690,'Dr. Imam Ghozali',NULL,'Buku Biografi Ulama Kabupaten Meranti','200','eks','0',NULL,75000,0,'lunas',NULL,'2025-12-20 00:00:00',NULL,'2025-12-20 05:53:52','2025-12-20 05:54:03','1690-kor-12-2025'),
(1691,'PT KARIBIN BANJARNEGARA',NULL,'Lanyard','1000','pcs','0',NULL,7000,0,'lunas',NULL,'2025-12-20 00:00:00',NULL,'2025-12-20 07:02:36','2025-12-20 07:26:56','1691-dmq-12-2025'),
(1692,'PT KARIBIN BANJARNEGARA',NULL,'Holder Id Card','1000','pcs','0',NULL,2150,0,'lunas',NULL,'2025-12-20 00:00:00',NULL,'2025-12-20 07:02:59','2025-12-20 07:26:56','1691-dmq-12-2025'),
(1693,'Hanna Meatshop',NULL,'Cetak Lanyard +Id Card','2','eks','0',NULL,15000,0,'lunas',NULL,'2025-12-22 00:00:00',NULL,'2025-12-22 03:49:33','2025-12-22 03:49:36','1693-kxw-12-2025'),
(1694,'INSIMA',NULL,'PANDUAN TUGAS AKHIR 2025-2026','130','eks','0',NULL,12500,0,'lunas',NULL,'2025-12-22 00:00:00',NULL,'2025-12-22 04:05:40','2025-12-22 06:49:11','1694-ghr-12-2025'),
(1695,'INSIMA',NULL,'Buku Bimbingan FTIK & FSEBI','102','eks','0',NULL,5000,0,'lunas',NULL,'2025-12-22 00:00:00',NULL,'2025-12-22 04:07:16','2025-12-22 06:49:11','1694-ghr-12-2025'),
(1696,'INSIMA',NULL,'Buku Bimbingan AKADEMIK PGMI','10','eks','0',NULL,5000,0,'lunas',NULL,'2025-12-22 00:00:00',NULL,'2025-12-22 04:07:38','2025-12-22 06:49:11','1694-ghr-12-2025'),
(1697,'INSIMA',NULL,'Ongkir','1','pkt','0',NULL,200000,0,'lunas',NULL,'2025-12-22 00:00:00',NULL,'2025-12-22 04:08:00','2025-12-22 06:49:11','1694-ghr-12-2025'),
(1698,'INSIMA',NULL,'Blanko Syahadah','70','lbr','0',NULL,8000,0,'lunas',NULL,'2025-12-22 00:00:00',NULL,'2025-12-22 04:25:05','2025-12-22 06:49:11','1694-ghr-12-2025'),
(1699,'Wawan',NULL,'Lanyard','27','pcs','0',NULL,7000,0,'lunas',NULL,'2025-12-23 00:00:00',NULL,'2025-12-23 07:22:35','2025-12-24 15:11:56','1699-dez-12-2025'),
(1700,'Dr. Maria Ulpah',NULL,'Percetakan dan Penerbitan buku English for Mathematics Learning','1','Paket','0',NULL,350000,0,'lunas',NULL,'2025-12-24 00:00:00',NULL,'2025-12-24 05:00:22','2025-12-30 02:02:43','1700-dqn-12-2025'),
(1701,'BGTK Provinsi Maluku',NULL,'Buku Pelangi Pendidikan di Timur Indonesia','12','eks','0',NULL,110000,0,'lunas',NULL,'2025-12-26 00:00:00',NULL,'2025-12-26 04:48:27','2026-01-06 03:25:00','1701-cbq-12-2025'),
(1703,'Muspan 2025',NULL,'Buku Adat','3','eks','0',NULL,40000,0,'lunas',NULL,'2025-12-26 00:00:00',NULL,'2025-12-26 09:03:54','2025-12-26 09:05:41','1702-xys-12-2025'),
(1705,'Gus Sa\'dun',NULL,'Buku Tasawuf Keresahan','100','eks','0',NULL,13000,0,'belum',NULL,'2025-12-27 00:00:00',NULL,'2025-12-27 08:42:28','2025-12-27 08:42:28','1704-arp-12-2025'),
(1708,'Makesta Beji 1',NULL,'Cetak Lanyard + Id Card','60','eks','0',NULL,11500,0,'lunas',NULL,'2025-12-27 00:00:00',NULL,'2025-12-27 14:23:36','2025-12-27 14:28:27','1708-fzd-12-2025'),
(1711,'Makesta Beji 1',NULL,'Cetak Bloknote','50','eks','0',NULL,3000,0,'lunas',NULL,'2025-12-27 00:00:00',NULL,'2025-12-27 14:25:31','2025-12-27 14:28:28','1708-fzd-12-2025'),
(1713,'BGTK Provinsi Maluku',NULL,'Jasa Kirim','1','paket','0',NULL,95000,0,'lunas',NULL,'2025-12-29 00:00:00',NULL,'2025-12-29 02:17:46','2026-01-06 03:25:00','1701-cbq-12-2025'),
(1714,'Pak Hazmy',NULL,'Paket Hemat 10 Buku Kemanan Sistem Informasi','1','Paket','0',NULL,750000,0,'lunas',NULL,'2025-12-29 00:00:00',NULL,'2025-12-29 09:35:26','2026-01-06 03:24:49','1714-ppj-12-2025'),
(1715,'Pak Hazmy',NULL,'Jasa Kirim Paket','1','eks','0',NULL,50000,0,'lunas',NULL,'2025-12-29 00:00:00',NULL,'2025-12-29 09:35:47','2026-01-06 03:24:49','1714-ppj-12-2025'),
(1716,'ZAHRA ASNAFURIZKI',NULL,'Paket ID CARD','18','pcs','0',NULL,5000,0,'lunas',NULL,'2025-12-30 00:00:00',NULL,'2025-12-30 09:09:25','2025-12-30 09:09:30','1716-puv-12-2025'),
(1717,'BGTK Prov. Maluku',NULL,'Cetak Buku Pelangi Pendidikan','11','eks','0',NULL,110000,0,'lunas',NULL,'2025-12-31 00:00:00',NULL,'2025-12-31 13:15:44','2026-01-12 07:37:11','1717-aaw-12-2025'),
(1718,'BGTK Prov. Maluku',NULL,'Jasa Ongkir','1','Paket','0',NULL,95000,0,'lunas',NULL,'2025-12-31 00:00:00',NULL,'2025-12-31 13:16:48','2026-01-12 07:37:11','1717-aaw-12-2025'),
(1719,'UIN SAIZU Purwokerto',NULL,'Brosur PMB 2026','6','rim','0',NULL,450000,0,'belum',NULL,'2026-01-06 00:00:00',NULL,'2026-01-06 03:24:32','2026-01-06 04:06:30','1719-exo-01-2026'),
(1720,'Fajar',NULL,'Buku Saku Prasiaga','685','eks','0',NULL,4000,0,'lunas',NULL,'2026-01-09 00:00:00',NULL,'2026-01-09 02:41:53','2026-01-09 02:45:38','1720-lut-01-2026'),
(1725,'Dayat',NULL,'Buku Yasin','100','eks','0',NULL,5000,0,'lunas',NULL,'2026-01-12 00:00:00',NULL,'2026-01-12 09:28:11','2026-01-13 08:42:05','1721-fol-01-2026'),
(1726,'Yuyun Septiawan Putra',NULL,'Buku AI untuk BIPA','1','pkt','0',NULL,1150000,0,'lunas',NULL,'2026-01-13 00:00:00',NULL,'2026-01-13 04:59:53','2026-01-13 09:38:30','1726-hql-01-2026'),
(1727,'Febriyanti',NULL,'Buku AI Literacy in Language Education','1','pkt','0',NULL,1150000,0,'lunas',NULL,'2026-01-13 00:00:00',NULL,'2026-01-13 05:03:03','2026-01-13 08:43:04','1727-cno-01-2026'),
(1728,'Diyah Trinovita',NULL,'Buku Empowering Independent Learners with GenAI in English Learning','1','pkt','0',NULL,1150000,0,'lunas',NULL,'2026-01-13 00:00:00',NULL,'2026-01-13 05:03:39','2026-01-13 08:43:18','1728-lhj-01-2026'),
(1729,'Winia Waziana',NULL,'Buku BEYOND MEMORIZATION','1','pkt','0',NULL,1150000,0,'lunas',NULL,'2026-01-13 00:00:00',NULL,'2026-01-13 05:04:17','2026-01-13 08:43:22','1729-ufd-01-2026'),
(1730,'Yuyun Septiawan Putra',NULL,'Ongkir','1','pkt','0',NULL,44000,0,'lunas',NULL,'2026-01-13 00:00:00',NULL,'2026-01-13 05:22:59','2026-01-13 09:38:30','1726-hql-01-2026'),
(1731,'Febriyanti',NULL,'Ongkir','1','pkt','0',NULL,16000,0,'lunas',NULL,'2026-01-13 00:00:00',NULL,'2026-01-13 05:23:52','2026-01-13 08:43:04','1727-cno-01-2026'),
(1732,'Diyah Trinovita',NULL,'Ongkir','1','pkt','0',NULL,39000,0,'lunas',NULL,'2026-01-13 00:00:00',NULL,'2026-01-13 05:24:27','2026-01-13 08:43:18','1728-lhj-01-2026'),
(1733,'Winia Waziana',NULL,'Ongkir','1','pkt','0',NULL,37000,0,'lunas',NULL,'2026-01-13 00:00:00',NULL,'2026-01-13 05:24:49','2026-01-13 08:43:22','1729-ufd-01-2026'),
(1735,'Yasin Mbah Moyo',NULL,'50','50','eks','0',NULL,7000,0,'lunas',NULL,'2026-01-17 00:00:00',NULL,'2026-01-17 03:50:31','2026-01-17 03:51:58','1734-uir-01-2026'),
(1736,'Asfa Lanyard',NULL,'Cetak Lanyard + Id Card','30','eks','0',NULL,11000,0,'lunas',NULL,'2026-01-17 00:00:00',NULL,'2026-01-17 03:51:40','2026-01-17 03:51:55','1736-quk-01-2026'),
(1737,'Much Solehudin, M.Pd.',NULL,'Paket Terbit Buku MANAJEMEN PENDIDIKAN RASULULAH','1','pkt','0',NULL,1000000,150000,'lunas',NULL,'2026-01-21 00:00:00',NULL,'2026-01-21 02:00:08','2026-01-28 02:45:08','1737-act-01-2026'),
(1738,'Much Solehudin, M.Pd.',NULL,'Paket Terbit Buku PENDIDIKAN ISLAM DAN TANTANGAN GLOBALISASI','1','pkt','0',NULL,1000000,150000,'lunas',NULL,'2026-01-21 00:00:00',NULL,'2026-01-21 02:01:28','2026-01-28 02:45:08','1737-act-01-2026'),
(1739,'Yusuf',NULL,'Paket Terbit Buku Jalan Sunyi Moderasi Muhammadiyah','1','pkt','0',NULL,1300000,0,'lunas',NULL,'2026-01-22 00:00:00',NULL,'2026-01-22 01:59:14','2026-01-23 04:51:55','1739-ecm-01-2026'),
(1740,'Yusuf',NULL,'Ongkir','1','pkt','0',NULL,30000,0,'lunas',NULL,'2026-01-22 00:00:00',NULL,'2026-01-22 01:59:50','2026-01-23 04:51:55','1739-ecm-01-2026'),
(1741,'Hj. Durrotun Nafisah, S.Ag, M.S.I.',NULL,'Cetak Buku Ukuran Unesco Soft Cover','10','eks','0',NULL,30000,0,'belum',NULL,'2026-01-22 00:00:00',NULL,'2026-01-22 04:07:08','2026-01-22 04:07:08','1741-dgp-01-2026'),
(1742,'Buku Wakaf dalam Perspektif Fikih Islam dan Hukum Positif Indonesia',NULL,'Cetak Buku Paket 10 Buku','1','Paket','0',NULL,600000,0,'lunas',NULL,'2026-01-23 00:00:00',NULL,'2026-01-23 07:01:04','2026-01-23 07:02:46','1742-idr-01-2026'),
(1744,'Irfan Musonif',NULL,'Cetak Buku Paket 10 Buku','1','Paket','0',NULL,600000,0,'lunas',NULL,'2026-01-23 00:00:00',NULL,'2026-01-23 08:17:30','2026-01-23 08:19:15','1743-lce-01-2026'),
(1746,'Gus Enjang',NULL,'Cetak Buku B.Arab Bookpaper A5','200','eks','0',NULL,27500,0,'lunas',NULL,'2026-01-24 00:00:00',NULL,'2026-01-24 10:03:08','2026-01-28 02:45:14','1745-dea-01-2026'),
(1747,'MI Al Ittihaad Pasir Kidul',NULL,'Brosur PPDB','100','lbr','0',NULL,1500,0,'lunas',NULL,'2026-01-28 00:00:00',NULL,'2026-01-28 02:46:48','2026-01-28 02:51:00','1747-dup-01-2026'),
(1748,'MI Al Ittihaad Pasir Kidul',NULL,'Poster PPDB','15','lbr','0',NULL,10000,0,'lunas',NULL,'2026-01-28 00:00:00',NULL,'2026-01-28 02:47:22','2026-01-28 02:51:00','1747-dup-01-2026'),
(1749,'MI Al Ittihaad Pasir Kidul',NULL,'Banner PPDB','1','lbr','0',NULL,30000,0,'lunas',NULL,'2026-01-28 00:00:00',NULL,'2026-01-28 02:49:16','2026-01-28 02:51:00','1747-dup-01-2026'),
(1750,'MI Al Ittihaad Pasir Kidul',NULL,'Tiket Jalan Sehat','6','pcs','0',NULL,25000,0,'lunas',NULL,'2026-01-28 00:00:00',NULL,'2026-01-28 02:50:40','2026-01-28 02:51:03','1750-dvs-01-2026'),
(1753,'UIN SAIZU PURWOKERTO',NULL,'Buku Pedoman PPL 1 Tahun 2026','55','eks','0',NULL,22400,0,'belum',NULL,'2026-01-30 00:00:00',NULL,'2026-01-30 04:06:26','2026-01-30 04:06:26','1751-sov-01-2026'),
(1754,'Pak Yanuar',NULL,'Cetak Buku Yasin Hard Cover','50','eks','0',NULL,15000,0,'lunas',NULL,'2026-01-30 00:00:00',NULL,'2026-01-30 10:55:42','2026-02-07 06:27:55','1754-vce-01-2026'),
(1755,'Karibin Tangho',NULL,'Nametag','64','Pcs','0',NULL,7500,0,'belum',NULL,'2026-02-01 00:00:00',NULL,'2026-02-01 02:35:27','2026-02-01 03:45:47','1755-vzf-02-2026'),
(1765,'Hanna Meatshop',NULL,'Lanyard + Id Card','8','pcs','0',NULL,15000,0,'lunas',NULL,'2026-02-03 00:00:00',NULL,'2026-02-03 04:35:11','2026-02-03 04:38:03','1756-cou-02-2026'),
(1766,'Della Syahadah',NULL,'Cetak MAP F4','25','eks','0',NULL,8000,0,'lunas',NULL,'2026-02-03 00:00:00',NULL,'2026-02-03 06:43:54','2026-02-03 06:44:27','1766-vaq-02-2026'),
(1767,'Puskesmas Purwokerto Selatan',NULL,'Papan Nama Akrilik 44,5X17,5 cm','17','eks','0',NULL,120000,0,'belum',NULL,'2026-02-04 00:00:00',NULL,'2026-02-04 06:50:12','2026-03-02 03:25:32','1767-vai-02-2026'),
(1768,'Puskesmas Purwokerto Selatan',NULL,'Papan Nama Akrilik 30X12 cm','19','eks','0',NULL,57000,0,'belum',NULL,'2026-02-04 00:00:00',NULL,'2026-02-04 06:51:11','2026-02-06 08:51:34','1767-vai-02-2026'),
(1769,'Pu Hua School',NULL,'Cetak Buku A5 Bookpaper','80','eks','0',NULL,18750,0,'lunas',NULL,'2026-02-10 00:00:00',NULL,'2026-02-10 03:36:21','2026-02-10 03:36:59','1769-zsp-02-2026'),
(1770,'Turhamun',NULL,'FC dan Jilid Disertasi','1','eks','0',NULL,140000,0,'lunas',NULL,'2026-02-10 00:00:00',NULL,'2026-02-10 07:48:07','2026-02-10 07:48:11','1770-yiz-02-2026'),
(1771,'Puskesmas Purwokerto Selatan',NULL,'KESGA DESEMBER 2026','7','eks','0',NULL,81000,0,'belum',NULL,'2026-02-10 00:00:00',NULL,'2026-02-10 08:16:33','2026-02-10 08:16:33','1771-wuh-02-2026'),
(1772,'Nawaal',NULL,'Stiker Jajanan','100','pcs','0',NULL,350,0,'lunas',NULL,'2026-02-11 00:00:00',NULL,'2026-02-11 01:57:02','2026-02-19 07:10:06','1772-pzf-02-2026'),
(1773,'LAZISNU Banyumas',NULL,'Annual Report LAZISNU Tahun 2025','500','eks','0',NULL,17500,250000,'lunas',NULL,'2026-02-11 00:00:00',NULL,'2026-02-11 07:53:26','2026-02-12 00:10:32','1773-moa-02-2026'),
(1774,'Andini',NULL,'Cover Cara baru melatih nalar dan argumentasi melalui menulis berbasis ai dengan chatgpt','20','eks','0',NULL,54750,0,'lunas',NULL,'2026-02-14 00:00:00',NULL,'2026-02-14 05:17:03','2026-02-14 05:17:32','1774-xov-02-2026'),
(1775,'Andini',NULL,'Ongkir','1','pkt','0',NULL,105000,0,'lunas',NULL,'2026-02-14 00:00:00',NULL,'2026-02-14 05:17:21','2026-02-14 05:17:32','1774-xov-02-2026'),
(1776,'Koperasi Ponpes Darul Ihsan Lele',NULL,'Cetak Kita Ila Kulli Fatati Tu\'minu Billah','104','eks','0',NULL,25000,200000,'belum',NULL,'2026-02-19 00:00:00',NULL,'2026-02-19 14:30:59','2026-02-19 14:37:58','1776-xhf-02-2026'),
(1777,'Koperasi Ponpes Darul Ihsan Lele',NULL,'Cetak Kitab Asrorun Nabwiyyah','86','eks','0',NULL,26000,200000,'belum',NULL,'2026-02-19 00:00:00',NULL,'2026-02-19 14:33:36','2026-02-19 14:37:30','1776-xhf-02-2026'),
(1778,'Koperasi Ponpes Darul Ihsan Lele',NULL,'Cetak KItab Ihya Ulumuddin kitabussiyam','75','eks','0',NULL,11000,0,'belum',NULL,'2026-02-19 00:00:00',NULL,'2026-02-19 14:35:04','2026-02-19 14:35:04','1776-xhf-02-2026'),
(1779,'Koperasi Ponpes Darul Ihsan Lele',NULL,'Ongkir','1','paket','0',NULL,80000,0,'belum',NULL,'2026-02-19 00:00:00',NULL,'2026-02-19 14:36:13','2026-02-19 14:36:13','1776-xhf-02-2026');
/*!40000 ALTER TABLE `pemesanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengeluaran`
--

DROP TABLE IF EXISTS `pengeluaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengeluaran` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nominal` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `katpengeluaran_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengeluaran`
--

LOCK TABLES `pengeluaran` WRITE;
/*!40000 ALTER TABLE `pengeluaran` DISABLE KEYS */;
INSERT INTO `pengeluaran` (`id`, `nominal`, `keterangan`, `created_at`, `updated_at`, `katpengeluaran_id`) VALUES (1,300000,'debugging vulnerability','2020-07-19 16:23:19','2020-07-19 16:23:19',2);
/*!40000 ALTER TABLE `pengeluaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peserta`
--

DROP TABLE IF EXISTS `peserta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `peserta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `namapeserta` varchar(255) NOT NULL,
  `institusi` varchar(255) DEFAULT NULL,
  `seminar_id` varchar(255) NOT NULL,
  `sebagai` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT '',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `unik` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `nim` varchar(30) DEFAULT NULL,
  `prodi` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `ttl` varchar(200) DEFAULT NULL,
  `kesanpesan` text DEFAULT NULL,
  `email_sent` int(3) NOT NULL DEFAULT 0,
  `kirim_sertifikat` int(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peserta`
--

LOCK TABLES `peserta` WRITE;
/*!40000 ALTER TABLE `peserta` DISABLE KEYS */;
/*!40000 ALTER TABLE `peserta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pilihanpostes`
--

DROP TABLE IF EXISTS `pilihanpostes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pilihanpostes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seminar_id` int(11) NOT NULL,
  `postes_id` int(11) NOT NULL,
  `pilihan` text NOT NULL,
  `unik` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pilihanpostes`
--

LOCK TABLES `pilihanpostes` WRITE;
/*!40000 ALTER TABLE `pilihanpostes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pilihanpostes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pilihanpretes`
--

DROP TABLE IF EXISTS `pilihanpretes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pilihanpretes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seminar_id` int(11) NOT NULL,
  `pretes_id` int(11) NOT NULL,
  `pilihan` text NOT NULL,
  `unik` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pilihanpretes`
--

LOCK TABLES `pilihanpretes` WRITE;
/*!40000 ALTER TABLE `pilihanpretes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pilihanpretes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postes`
--

DROP TABLE IF EXISTS `postes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `postes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seminar_id` int(11) NOT NULL,
  `soal` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postes`
--

LOCK TABLES `postes` WRITE;
/*!40000 ALTER TABLE `postes` DISABLE KEYS */;
/*!40000 ALTER TABLE `postes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pretes`
--

DROP TABLE IF EXISTS `pretes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pretes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seminar_id` int(11) NOT NULL,
  `soal` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pretes`
--

LOCK TABLES `pretes` WRITE;
/*!40000 ALTER TABLE `pretes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pretes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seminar`
--

DROP TABLE IF EXISTS `seminar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `seminar` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `namaseminar` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `jumlahpeserta` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `statuspendaftaran` varchar(255) NOT NULL,
  `sertifikat` varchar(255) DEFAULT NULL,
  `brosur` varchar(255) DEFAULT NULL,
  `berbayar` varchar(10) DEFAULT 'yes',
  `htm` varchar(40) DEFAULT '0',
  `ketentuan` text DEFAULT NULL,
  `pretes` varchar(5) DEFAULT NULL,
  `postes` varchar(5) DEFAULT NULL,
  `umum` varchar(3) DEFAULT NULL,
  `custom` varchar(100) DEFAULT NULL,
  `english` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `seminar_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seminar`
--

LOCK TABLES `seminar` WRITE;
/*!40000 ALTER TABLE `seminar` DISABLE KEYS */;
/*!40000 ALTER TABLE `seminar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimoni`
--

DROP TABLE IF EXISTS `testimoni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimoni` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `instansi` varchar(255) DEFAULT NULL,
  `testimoni` text NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimoni`
--

LOCK TABLES `testimoni` WRITE;
/*!40000 ALTER TABLE `testimoni` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimoni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tos`
--

DROP TABLE IF EXISTS `tos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tos` text NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tos`
--

LOCK TABLES `tos` WRITE;
/*!40000 ALTER TABLE `tos` DISABLE KEYS */;
INSERT INTO `tos` (`id`, `tos`, `remember_token`, `created_at`, `updated_at`) VALUES (1,'<h3><strong>Ketentuan Layanan / Term of Services (ToS)</strong></h3>\r\n\r\n<p>Ketentuan layanan ini dibuat dan menjadi perjanjian yang mengikat antara MesemVirtual dengan Pelanggan untuk kenyamanan bersama dan menghindari setiap pihak dari hal yang disebabkan oleh kesalahpahaman yang mungkin terjadi dikemudian hari.<br />\r\n<br />\r\nTerms of Service MesemVirtual berlaku dan mengikat pengguna layanan MesemVirtual saat menyetujui order yang dilakukan pada halaman order MesemVirtual.<br />\r\n<br />\r\nKami sangat mengharapkan sekali semua mematuhi ToS ini, karena ini demi kebaikan semua pihak. Jika ada yang tidak jelas mohon dikomunikasikan dengan kami.<br />\r\n<br />\r\n1. DESKRIPSI LAYANAN<br />\r\n<br />\r\n1.1 MesemVirtual menyediakan layanan Manajemen Seminar/Webinar dan dukungan teknis dan jasa terkait lainnya.<br />\r\n<br />\r\n2. PENDAFTARAN PELANGGAN<br />\r\n<br />\r\n2.1 Pelanggan terlebih dahulu mendaftarkan diri melalui form yang telah disediakan secara online dan memilih jenis layanan yang telah disediakan oleh MesemVirtual serta menyetujui peraturan yang berlaku (ToS).<br />\r\n<br />\r\n2.2 Pelanggan harus memberikan data profil yang diminta MesemVirtual dengan lengkap, akurat dan benar. Apabila Pelanggan memberikan data palsu, tidak benar, tidak akurat, maka MesemVirtual berhak untuk menunda atau menghentikan akun dan menolak seluruh permintaan layanan baik yang telah atau akan digunakan Pelanggan. Pelanggan tidak menyalahkan MesemVirtual bilamana sulit menghubungi Pelanggan akibat data profil yang diberikan sudah tidak akurat lagi (misalnya: email tidak bisa dihubungi).<br />\r\n<br />\r\n3. LAYANAN<br />\r\n<br />\r\nDemi kenyamanan bersama, Pelanggan dilarang menggunakan layanan yang disediakan oleh MesemVirtual atau yang disewa dari MesemVirtual untuk hal-hal dibawah ini :<br />\r\n<br />\r\n3.1 Klien dilarang menggunakan server kami untuk kegiatan yang bertentangan dengan hukum yang berlaku di wilayah Republik Indonesia atau hukum yang ditetapkan di wilayah hukum tempat tinggal anda, atau hukum yang berlaku pada tempat dimana server kami diletakkan.<br />\r\n<br />\r\n3.2 Klien dilarang menyimpan file atau mengunggah content yang secara langsung atau tidak langsung mengandung file:</p>\r\n\r\n<ul>\r\n	<li>File MP3 ilegal atau sejenis;</li>\r\n	<li>Semua jenis konten yang melanggar UU ITE;</li>\r\n	<li>Pirated software atau NULLED Software;</li>\r\n	<li>Hacking &amp; Phreaking programs or archives;</li>\r\n	<li>Warez Sites;</li>\r\n	<li>Content ilegal atau yang melanggar copyright/hak patent;</li>\r\n	<li>Aktifitas Torrent;</li>\r\n	<li>Isi situs melanggar copyright/hak patent;</li>\r\n	<li>Situs khusus Video / Audio Streaming;</li>\r\n	<li>Situs proxy dan site crawl;</li>\r\n	<li>Situs khusus upload dan download file, misalkan yang tergolong sejenis rapidShare, megaupload, gudangupload walaupun dalam skala kecil, karena aktifitas ini sangat merugikan semua user;</li>\r\n	<li>Kegiatan yang bisa merugikan pihak lain seperti penipuan.</li>\r\n</ul>\r\n\r\n<p>3.3 Klien dilarang untuk mencoba merusak, mencoba mengganti data dan atau system server milik pihak ketiga melalui server kami. Hal ini untuk kenyamanan kita bersama.<br />\r\n<br />\r\n3.4 MesemVirtual berhak untuk memberhentikan layanan secara sepihak proses yang berjalan dalam waktu jangka panjang (long-running processes) milik pelanggan, jika MesemVirtual merasa bahwa proses tersebut termasuk pada hal-hal yang bersifat melanggar ToS, dan dana yang telah dibayarkan tidak dapat dikembalikan ke pelanggan dengan cara apapun. Keputusan MesemVirtual mengenai proses pemberhentian layanan ini adalah FINAL.<br />\r\n<br />\r\n4. PEMBATASAN TANGGUNG JAWAB<br />\r\n<br />\r\n4.1 Isi akun<br />\r\nIsi akun sepenuhnya menjadi tanggungjawab Pelanggan. MesemVirtual tidak bertanggung jawab terhadap isi akun Pelanggan.</p>\r\n\r\n<p><br />\r\n5. BIAYA, TAGIHAN DAN PEMBAYARAN<br />\r\n<br />\r\n5.1 Biaya Layanan yang akan dibayar oleh Pelanggan sesuai dengan jumlah yang telah disepakati Pelanggan dengan MesemVirtual sesuai dengan form pendaftaran yang telah diisi oleh Pelanggan.<br />\r\n<br />\r\n5.2 Pembayaran dilakukan dengan sistem transfer pada rekening bank yang ditentukan oleh MesemVirtual, pembayaran langsung (cash) atau media pembayaran lainnya yang telah ditentukan dan disepakati.<br />\r\n<br />\r\n5.3 Konfirmasi pembayaran Wajib dilakukan dan dapat dilakukan melalui email, whatsapp atau melalui form konfirmasi pembayaran yang disediakan di website MesemVirtual.<br />\r\n<br />\r\n5.4 Semua pembayaran yang telah dilakukan untuk layanan MesemVirtual adalah bersifat final, tidak ada pengembalian. Pengembalian mungkin dapat dilakukan untuk kasus tertentu sesuai kebijakan kami, misalnya karena delay yang tidak masuk akal pada saat aktifasi akun/layanan, kelebihan pembayaran dan sebab lain dengan alasan yang bisa diterima MesemVirtual.</p>\r\n\r\n<p>5.5 Jika terjadi kegagalan login, yang dikarenakan kesalahan dari pengguna, maka tidak ada pengembalian uang yang telah dibayarkan, kecuali ada perjanjian tertulis dengan MesemVirtual sebelumnya<br />\r\n<br />\r\n<br />\r\n6. PERNYATAAN DAN JAMINAN<br />\r\n<br />\r\n6.1 Pelanggan menyatakan dan menyetujui bahwa Layanan yang digunakan merupakan tanggung jawab Pelanggan sepenuhnya.<br />\r\n<br />\r\n6.2 MesemVirtual tidak bertanggung jawab atas segala kerusakan data yang diakibatkan penggunaan Layanan oleh Pelanggan.<br />\r\n<br />\r\n6.3 Pelanggan akan bertanggung jawab atas kerugian yang diderita Pelanggan atas hal-hal tersebut pada butir 6.2 di atas dan tidak akan melakukan tuntutan dalam bentuk apapun kepada MesemVirtual.<br />\r\n<br />\r\n6.4 Anda memperbolehkan MesemVirtual untuk menggunakan alamat email/ nomor telepon Pelanggan untuk menghubungi Pelanggan seputar layanan MesemVirtual yang diberikan atau yang akan diberikan, juga memberitahukan tentang pembayaran atau pengumuman penting tentang info penting lainnya.<br />\r\n<br />\r\n6.5 MesemVirtual tidak memberikan kompensasi apapun, baik material dan/atau nonmaterial, jika terjadi gangguan pelayanan dan/atau kerusakan data dan/atau kehilangan data Anda oleh sebab apapun (termasuk, tapi tidak terbatas pada: downnya koneksi dari pihak uplink/ISP, error koneksi ISP Pelanggan, kerusakan hardware, dicracknya akun Pelanggan, kesalahan Pelanggan, kelalaian staf MesemVirtual yang tidak sengaja, dan lain sebagainya). Namun kami selalu berupaya untuk memberikan layanan yang terbaik bagi Pelanggan kami.<br />\r\n<br />\r\n6.6 Dengan alasan apapun, MesemVirtual tidak bertanggung jawab atas semua kerugian secara langsung maupun tidak langsung, insidental atau kerugian serupa lainnya atas kerugian karena kehilangan pendapatan atau keuntungan nyata yang diharapkan Pelanggan maupun tuntuan pihak-pihak lain akibat terputusnya pelayanan jasa MesemVirtual.<br />\r\n<br />\r\n<br />\r\n7. PENYELESAIAN PERSELISIHAN<br />\r\n<br />\r\n7.1 Segala perselisihan yang timbul dalam pelaksanaan perjanjian antara MesemVirtual dengan Pelanggan akan diselesaikan secara musyawarah untuk mufakat oleh para pihak.<br />\r\n<br />\r\n7.2 Apabila MesemVirtual diperintahkan oleh pihak berwenang/hukum nasional/internasional untuk mengganti kepemilikan akun kepada pemilik asli yang sah (misalnya pemilik trademark/hak dagang), walaupun pemilik tersebut bukanlah pendaftar awal yang melakukan pendaftaran di MesemVirtual.<br />\r\n<br />\r\n8. LAYANAN BANTUAN<br />\r\n<br />\r\nUntuk layanan bantuan pelanggan dapat menghubungi MesemVirtual melalui Email atau Whatsapp.<br />\r\n<br />\r\n9. PERUBAHAN<br />\r\n<br />\r\nMesemVirtual berhak melakukan perubahan Perjanjian ini kapan saja tanpa pemberitahuan terlebih dahulu kepada Pelanggan.</p>\r\n\r\n<p><strong>Terima kasih telah membaca dan mentaati Terms Of Service MesemVirtual.<br />\r\nAtas kerjasama, support dan kepercayaan kepada MesemVirtual, kami mengucapkan terima kasih.</strong></p>\r\n\r\n<p><strong>Terms of Service MesemVirtual berlaku dan mengikat pengguna layanan MesemVirtual saat menyetujui order yang dilakukan pada halaman order MesemVirtual</strong></p>\r\n\r\n<p>Kami sangat mengharapkan sekali semua mematuhi TOS ini, karena ini demi kebaikan semua account. Jika ada yang tidak jelas mohon dikomunikasikan dengan kami.</p>',NULL,'2020-06-25 01:03:25','2020-07-05 03:13:39');
/*!40000 ALTER TABLE `tos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `seminar_id` varchar(255) DEFAULT NULL,
  `peserta_id` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pemilik_rekening` varchar(255) NOT NULL,
  `nominal_trf` varchar(255) NOT NULL DEFAULT '',
  `nama_bank` varchar(255) NOT NULL,
  `kodeinvoice` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer`
--

LOCK TABLES `transfer` WRITE;
/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
INSERT INTO `transfer` (`id`, `file`, `seminar_id`, `peserta_id`, `remember_token`, `created_at`, `updated_at`, `pemilik_rekening`, `nominal_trf`, `nama_bank`, `kodeinvoice`) VALUES (1,'transfer/701561818210-screenshot8.jpg',NULL,NULL,NULL,'2020-09-02 11:09:03','2020-09-02 11:09:03','a','19999','BCA','8hw15'),
(2,'transfer/311561818210-screenshot8.jpg',NULL,NULL,NULL,'2020-09-02 11:10:16','2020-09-02 11:10:16','a','19999','BCA','8hw15'),
(3,'transfer/20PPDS.jpeg',NULL,NULL,NULL,'2021-07-31 08:08:01','2021-07-31 08:08:01','PP. Darussalam','4500000','Flip','235-mwb-07-2021'),
(4,'transfer/43IMG-20230822-WA0064.jpg',NULL,NULL,NULL,'2023-08-22 11:24:43','2023-08-22 11:24:43','Edi Guntoro','3100000','BNI','883-ppz-08-2023');
/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `institusi` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tgchat_id` varchar(20) DEFAULT NULL,
  `nim` varchar(20) DEFAULT NULL,
  `prodi` varchar(50) DEFAULT NULL,
  `ttl` varchar(100) DEFAULT NULL,
  `semester` int(3) DEFAULT NULL,
  `fakultas` varchar(200) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `username`, `level`, `foto`, `institusi`, `phone`, `status`, `remember_token`, `created_at`, `updated_at`, `tgchat_id`, `nim`, `prodi`, `ttl`, `semester`, `fakultas`, `alamat`) VALUES (1,'kangsupris','suprisdiantoko1@gmail.com',NULL,'$2y$10$b7v6Ajo49d7fvYhmjB7/YO/arkmKTV7ETPaswjE2Owzj/FLXHv2uG','kangsupris','admin',NULL,NULL,'00',NULL,NULL,'2020-06-01 08:21:03','2020-06-17 09:30:57','167381696',NULL,NULL,NULL,NULL,NULL,''),
(2,'Mawi Khusni Albar','albar.hebat015@gmail.com',NULL,'$2y$10$4ttE8gUmQDHw7VZZUHfOUughu/E7MUie8hOB6n3d59lxQ4iwJLnha','mawi','admin',NULL,'IAIN Purwokerto','085257288761',NULL,'sy8GdQeqQZ1410QypZqrnHX1pWstIfqCyYnqoO98loBN3PZT1Qkv5WMTnP76','2020-06-10 06:36:50','2020-10-08 14:04:10','594552206',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'u9443309_invoice'
--

--
-- Dumping routines for database 'u9443309_invoice'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-04 10:29:00
