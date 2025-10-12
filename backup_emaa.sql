-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: db_filamentapp
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB

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
-- Table structure for table `blog_article_kategoris`
--

DROP TABLE IF EXISTS `blog_article_kategoris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article_kategoris` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article_kategoris`
--

LOCK TABLES `blog_article_kategoris` WRITE;
/*!40000 ALTER TABLE `blog_article_kategoris` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_article_kategoris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_articles`
--

DROP TABLE IF EXISTS `blog_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `tanggal_jam` datetime DEFAULT NULL,
  `blog_article_kategori_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_articles_blog_article_kategori_id_foreign` (`blog_article_kategori_id`),
  CONSTRAINT `blog_articles_blog_article_kategori_id_foreign` FOREIGN KEY (`blog_article_kategori_id`) REFERENCES `blog_article_kategoris` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_articles`
--

LOCK TABLES `blog_articles` WRITE;
/*!40000 ALTER TABLE `blog_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_banners`
--

DROP TABLE IF EXISTS `blog_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_banners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_banners`
--

LOCK TABLES `blog_banners` WRITE;
/*!40000 ALTER TABLE `blog_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_buletins`
--

DROP TABLE IF EXISTS `blog_buletins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_buletins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `tanggal_jam` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_buletins`
--

LOCK TABLES `blog_buletins` WRITE;
/*!40000 ALTER TABLE `blog_buletins` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_buletins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_donasis`
--

DROP TABLE IF EXISTS `blog_donasis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_donasis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_donasis`
--

LOCK TABLES `blog_donasis` WRITE;
/*!40000 ALTER TABLE `blog_donasis` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_donasis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_giat_masjid_kategoris`
--

DROP TABLE IF EXISTS `blog_giat_masjid_kategoris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_giat_masjid_kategoris` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_giat_masjid_kategoris`
--

LOCK TABLES `blog_giat_masjid_kategoris` WRITE;
/*!40000 ALTER TABLE `blog_giat_masjid_kategoris` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_giat_masjid_kategoris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_giat_masjids`
--

DROP TABLE IF EXISTS `blog_giat_masjids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_giat_masjids` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `tanggal_jam` datetime DEFAULT NULL,
  `blog_giat_masjid_kategori_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_giat_masjids_blog_giat_masjid_kategori_id_foreign` (`blog_giat_masjid_kategori_id`),
  CONSTRAINT `blog_giat_masjids_blog_giat_masjid_kategori_id_foreign` FOREIGN KEY (`blog_giat_masjid_kategori_id`) REFERENCES `blog_giat_masjid_kategoris` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_giat_masjids`
--

LOCK TABLES `blog_giat_masjids` WRITE;
/*!40000 ALTER TABLE `blog_giat_masjids` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_giat_masjids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_konsultasis`
--

DROP TABLE IF EXISTS `blog_konsultasis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_konsultasis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `pertanyaan` longtext DEFAULT NULL,
  `jawaban` longtext DEFAULT NULL,
  `tanggal_jam` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_konsultasis`
--

LOCK TABLES `blog_konsultasis` WRITE;
/*!40000 ALTER TABLE `blog_konsultasis` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_konsultasis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_profile_masjids`
--

DROP TABLE IF EXISTS `blog_profile_masjids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_profile_masjids` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_profile_masjids`
--

LOCK TABLES `blog_profile_masjids` WRITE;
/*!40000 ALTER TABLE `blog_profile_masjids` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_profile_masjids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES
('spatie.permission.cache','a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:452:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:18:\"view_blog::article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:22:\"view_any_blog::article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:20:\"create_blog::article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:20:\"update_blog::article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:21:\"restore_blog::article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:25:\"restore_any_blog::article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:23:\"replicate_blog::article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:21:\"reorder_blog::article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:20:\"delete_blog::article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:24:\"delete_any_blog::article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:26:\"force_delete_blog::article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:30:\"force_delete_any_blog::article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:28:\"view_blog::article::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:32:\"view_any_blog::article::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:30:\"create_blog::article::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:30:\"update_blog::article::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:31:\"restore_blog::article::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:35:\"restore_any_blog::article::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:33:\"replicate_blog::article::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:31:\"reorder_blog::article::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:30:\"delete_blog::article::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:34:\"delete_any_blog::article::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:36:\"force_delete_blog::article::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:40:\"force_delete_any_blog::article::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:17:\"view_blog::banner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:21:\"view_any_blog::banner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:19:\"create_blog::banner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:19:\"update_blog::banner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:20:\"restore_blog::banner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:24:\"restore_any_blog::banner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:22:\"replicate_blog::banner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:20:\"reorder_blog::banner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:19:\"delete_blog::banner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:23:\"delete_any_blog::banner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:25:\"force_delete_blog::banner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:29:\"force_delete_any_blog::banner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:18:\"view_blog::buletin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:22:\"view_any_blog::buletin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:20:\"create_blog::buletin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:20:\"update_blog::buletin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:21:\"restore_blog::buletin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:25:\"restore_any_blog::buletin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:23:\"replicate_blog::buletin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:21:\"reorder_blog::buletin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:20:\"delete_blog::buletin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:24:\"delete_any_blog::buletin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:26:\"force_delete_blog::buletin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:30:\"force_delete_any_blog::buletin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:17:\"view_blog::donasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:21:\"view_any_blog::donasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:19:\"create_blog::donasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:19:\"update_blog::donasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:20:\"restore_blog::donasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:24:\"restore_any_blog::donasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:22:\"replicate_blog::donasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:20:\"reorder_blog::donasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:19:\"delete_blog::donasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:23:\"delete_any_blog::donasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:25:\"force_delete_blog::donasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:29:\"force_delete_any_blog::donasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:23:\"view_blog::giat::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:27:\"view_any_blog::giat::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:25:\"create_blog::giat::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:25:\"update_blog::giat::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:26:\"restore_blog::giat::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:30:\"restore_any_blog::giat::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:28:\"replicate_blog::giat::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:26:\"reorder_blog::giat::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:25:\"delete_blog::giat::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:29:\"delete_any_blog::giat::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:31:\"force_delete_blog::giat::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:35:\"force_delete_any_blog::giat::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:33:\"view_blog::giat::masjid::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:37:\"view_any_blog::giat::masjid::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:35:\"create_blog::giat::masjid::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:35:\"update_blog::giat::masjid::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:36:\"restore_blog::giat::masjid::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:40:\"restore_any_blog::giat::masjid::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:38:\"replicate_blog::giat::masjid::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:36:\"reorder_blog::giat::masjid::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:35:\"delete_blog::giat::masjid::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:39:\"delete_any_blog::giat::masjid::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:41:\"force_delete_blog::giat::masjid::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:45:\"force_delete_any_blog::giat::masjid::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:21:\"view_blog::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:91;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:25:\"view_any_blog::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:23:\"create_blog::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:23:\"update_blog::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:24:\"restore_blog::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:28:\"restore_any_blog::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:96;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:26:\"replicate_blog::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:97;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:24:\"reorder_blog::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:98;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:23:\"delete_blog::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:99;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:27:\"delete_any_blog::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:100;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:29:\"force_delete_blog::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:101;a:4:{s:1:\"a\";i:102;s:1:\"b\";s:33:\"force_delete_any_blog::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:102;a:4:{s:1:\"a\";i:103;s:1:\"b\";s:26:\"view_blog::profile::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:103;a:4:{s:1:\"a\";i:104;s:1:\"b\";s:30:\"view_any_blog::profile::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:104;a:4:{s:1:\"a\";i:105;s:1:\"b\";s:28:\"create_blog::profile::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:105;a:4:{s:1:\"a\";i:106;s:1:\"b\";s:28:\"update_blog::profile::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:106;a:4:{s:1:\"a\";i:107;s:1:\"b\";s:29:\"restore_blog::profile::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:107;a:4:{s:1:\"a\";i:108;s:1:\"b\";s:33:\"restore_any_blog::profile::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:108;a:4:{s:1:\"a\";i:109;s:1:\"b\";s:31:\"replicate_blog::profile::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:109;a:4:{s:1:\"a\";i:110;s:1:\"b\";s:29:\"reorder_blog::profile::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:110;a:4:{s:1:\"a\";i:111;s:1:\"b\";s:28:\"delete_blog::profile::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:111;a:4:{s:1:\"a\";i:112;s:1:\"b\";s:32:\"delete_any_blog::profile::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:112;a:4:{s:1:\"a\";i:113;s:1:\"b\";s:34:\"force_delete_blog::profile::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:113;a:4:{s:1:\"a\";i:114;s:1:\"b\";s:38:\"force_delete_any_blog::profile::masjid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:114;a:4:{s:1:\"a\";i:115;s:1:\"b\";s:23:\"view_inventaris::bagian\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:115;a:4:{s:1:\"a\";i:116;s:1:\"b\";s:27:\"view_any_inventaris::bagian\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:116;a:4:{s:1:\"a\";i:117;s:1:\"b\";s:25:\"create_inventaris::bagian\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:117;a:4:{s:1:\"a\";i:118;s:1:\"b\";s:25:\"update_inventaris::bagian\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:118;a:4:{s:1:\"a\";i:119;s:1:\"b\";s:26:\"restore_inventaris::bagian\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:119;a:4:{s:1:\"a\";i:120;s:1:\"b\";s:30:\"restore_any_inventaris::bagian\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:120;a:4:{s:1:\"a\";i:121;s:1:\"b\";s:28:\"replicate_inventaris::bagian\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:121;a:4:{s:1:\"a\";i:122;s:1:\"b\";s:26:\"reorder_inventaris::bagian\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:122;a:4:{s:1:\"a\";i:123;s:1:\"b\";s:25:\"delete_inventaris::bagian\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:123;a:4:{s:1:\"a\";i:124;s:1:\"b\";s:29:\"delete_any_inventaris::bagian\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:124;a:4:{s:1:\"a\";i:125;s:1:\"b\";s:31:\"force_delete_inventaris::bagian\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:125;a:4:{s:1:\"a\";i:126;s:1:\"b\";s:35:\"force_delete_any_inventaris::bagian\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:126;a:4:{s:1:\"a\";i:127;s:1:\"b\";s:25:\"view_inventaris::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:127;a:4:{s:1:\"a\";i:128;s:1:\"b\";s:29:\"view_any_inventaris::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:128;a:4:{s:1:\"a\";i:129;s:1:\"b\";s:27:\"create_inventaris::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:129;a:4:{s:1:\"a\";i:130;s:1:\"b\";s:27:\"update_inventaris::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:130;a:4:{s:1:\"a\";i:131;s:1:\"b\";s:28:\"restore_inventaris::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:131;a:4:{s:1:\"a\";i:132;s:1:\"b\";s:32:\"restore_any_inventaris::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:132;a:4:{s:1:\"a\";i:133;s:1:\"b\";s:30:\"replicate_inventaris::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:133;a:4:{s:1:\"a\";i:134;s:1:\"b\";s:28:\"reorder_inventaris::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:134;a:4:{s:1:\"a\";i:135;s:1:\"b\";s:27:\"delete_inventaris::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:135;a:4:{s:1:\"a\";i:136;s:1:\"b\";s:31:\"delete_any_inventaris::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:136;a:4:{s:1:\"a\";i:137;s:1:\"b\";s:33:\"force_delete_inventaris::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:137;a:4:{s:1:\"a\";i:138;s:1:\"b\";s:37:\"force_delete_any_inventaris::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:138;a:4:{s:1:\"a\";i:139;s:1:\"b\";s:21:\"view_inventaris::merk\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:139;a:4:{s:1:\"a\";i:140;s:1:\"b\";s:25:\"view_any_inventaris::merk\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:140;a:4:{s:1:\"a\";i:141;s:1:\"b\";s:23:\"create_inventaris::merk\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:141;a:4:{s:1:\"a\";i:142;s:1:\"b\";s:23:\"update_inventaris::merk\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:142;a:4:{s:1:\"a\";i:143;s:1:\"b\";s:24:\"restore_inventaris::merk\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:143;a:4:{s:1:\"a\";i:144;s:1:\"b\";s:28:\"restore_any_inventaris::merk\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:144;a:4:{s:1:\"a\";i:145;s:1:\"b\";s:26:\"replicate_inventaris::merk\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:145;a:4:{s:1:\"a\";i:146;s:1:\"b\";s:24:\"reorder_inventaris::merk\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:146;a:4:{s:1:\"a\";i:147;s:1:\"b\";s:23:\"delete_inventaris::merk\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:147;a:4:{s:1:\"a\";i:148;s:1:\"b\";s:27:\"delete_any_inventaris::merk\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:148;a:4:{s:1:\"a\";i:149;s:1:\"b\";s:29:\"force_delete_inventaris::merk\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:149;a:4:{s:1:\"a\";i:150;s:1:\"b\";s:33:\"force_delete_any_inventaris::merk\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:150;a:4:{s:1:\"a\";i:151;s:1:\"b\";s:27:\"view_inventaris::penyusutan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:151;a:4:{s:1:\"a\";i:152;s:1:\"b\";s:31:\"view_any_inventaris::penyusutan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:152;a:4:{s:1:\"a\";i:153;s:1:\"b\";s:29:\"create_inventaris::penyusutan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:153;a:4:{s:1:\"a\";i:154;s:1:\"b\";s:29:\"update_inventaris::penyusutan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:154;a:4:{s:1:\"a\";i:155;s:1:\"b\";s:30:\"restore_inventaris::penyusutan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:155;a:4:{s:1:\"a\";i:156;s:1:\"b\";s:34:\"restore_any_inventaris::penyusutan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:156;a:4:{s:1:\"a\";i:157;s:1:\"b\";s:32:\"replicate_inventaris::penyusutan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:157;a:4:{s:1:\"a\";i:158;s:1:\"b\";s:30:\"reorder_inventaris::penyusutan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:158;a:4:{s:1:\"a\";i:159;s:1:\"b\";s:29:\"delete_inventaris::penyusutan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:159;a:4:{s:1:\"a\";i:160;s:1:\"b\";s:33:\"delete_any_inventaris::penyusutan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:160;a:4:{s:1:\"a\";i:161;s:1:\"b\";s:35:\"force_delete_inventaris::penyusutan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:161;a:4:{s:1:\"a\";i:162;s:1:\"b\";s:39:\"force_delete_any_inventaris::penyusutan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:162;a:4:{s:1:\"a\";i:163;s:1:\"b\";s:23:\"view_inventaris::satuan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:163;a:4:{s:1:\"a\";i:164;s:1:\"b\";s:27:\"view_any_inventaris::satuan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:164;a:4:{s:1:\"a\";i:165;s:1:\"b\";s:25:\"create_inventaris::satuan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:165;a:4:{s:1:\"a\";i:166;s:1:\"b\";s:25:\"update_inventaris::satuan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:166;a:4:{s:1:\"a\";i:167;s:1:\"b\";s:26:\"restore_inventaris::satuan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:167;a:4:{s:1:\"a\";i:168;s:1:\"b\";s:30:\"restore_any_inventaris::satuan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:168;a:4:{s:1:\"a\";i:169;s:1:\"b\";s:28:\"replicate_inventaris::satuan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:169;a:4:{s:1:\"a\";i:170;s:1:\"b\";s:26:\"reorder_inventaris::satuan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:170;a:4:{s:1:\"a\";i:171;s:1:\"b\";s:25:\"delete_inventaris::satuan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:171;a:4:{s:1:\"a\";i:172;s:1:\"b\";s:29:\"delete_any_inventaris::satuan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:172;a:4:{s:1:\"a\";i:173;s:1:\"b\";s:31:\"force_delete_inventaris::satuan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:173;a:4:{s:1:\"a\";i:174;s:1:\"b\";s:35:\"force_delete_any_inventaris::satuan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:174;a:4:{s:1:\"a\";i:175;s:1:\"b\";s:24:\"view_inventaris::suplier\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:175;a:4:{s:1:\"a\";i:176;s:1:\"b\";s:28:\"view_any_inventaris::suplier\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:176;a:4:{s:1:\"a\";i:177;s:1:\"b\";s:26:\"create_inventaris::suplier\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:177;a:4:{s:1:\"a\";i:178;s:1:\"b\";s:26:\"update_inventaris::suplier\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:178;a:4:{s:1:\"a\";i:179;s:1:\"b\";s:27:\"restore_inventaris::suplier\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:179;a:4:{s:1:\"a\";i:180;s:1:\"b\";s:31:\"restore_any_inventaris::suplier\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:180;a:4:{s:1:\"a\";i:181;s:1:\"b\";s:29:\"replicate_inventaris::suplier\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:181;a:4:{s:1:\"a\";i:182;s:1:\"b\";s:27:\"reorder_inventaris::suplier\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:182;a:4:{s:1:\"a\";i:183;s:1:\"b\";s:26:\"delete_inventaris::suplier\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:183;a:4:{s:1:\"a\";i:184;s:1:\"b\";s:30:\"delete_any_inventaris::suplier\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:184;a:4:{s:1:\"a\";i:185;s:1:\"b\";s:32:\"force_delete_inventaris::suplier\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:185;a:4:{s:1:\"a\";i:186;s:1:\"b\";s:36:\"force_delete_any_inventaris::suplier\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:186;a:4:{s:1:\"a\";i:187;s:1:\"b\";s:26:\"view_inventaris::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:187;a:4:{s:1:\"a\";i:188;s:1:\"b\";s:30:\"view_any_inventaris::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:188;a:4:{s:1:\"a\";i:189;s:1:\"b\";s:28:\"create_inventaris::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:189;a:4:{s:1:\"a\";i:190;s:1:\"b\";s:28:\"update_inventaris::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:190;a:4:{s:1:\"a\";i:191;s:1:\"b\";s:29:\"restore_inventaris::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:191;a:4:{s:1:\"a\";i:192;s:1:\"b\";s:33:\"restore_any_inventaris::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:192;a:4:{s:1:\"a\";i:193;s:1:\"b\";s:31:\"replicate_inventaris::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:193;a:4:{s:1:\"a\";i:194;s:1:\"b\";s:29:\"reorder_inventaris::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:194;a:4:{s:1:\"a\";i:195;s:1:\"b\";s:28:\"delete_inventaris::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:195;a:4:{s:1:\"a\";i:196;s:1:\"b\";s:32:\"delete_any_inventaris::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:196;a:4:{s:1:\"a\";i:197;s:1:\"b\";s:34:\"force_delete_inventaris::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:197;a:4:{s:1:\"a\";i:198;s:1:\"b\";s:38:\"force_delete_any_inventaris::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:198;a:4:{s:1:\"a\";i:199;s:1:\"b\";s:20:\"view_kas::kecil::aas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:199;a:4:{s:1:\"a\";i:200;s:1:\"b\";s:24:\"view_any_kas::kecil::aas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:200;a:4:{s:1:\"a\";i:201;s:1:\"b\";s:22:\"create_kas::kecil::aas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:201;a:4:{s:1:\"a\";i:202;s:1:\"b\";s:22:\"update_kas::kecil::aas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:202;a:4:{s:1:\"a\";i:203;s:1:\"b\";s:23:\"restore_kas::kecil::aas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:203;a:4:{s:1:\"a\";i:204;s:1:\"b\";s:27:\"restore_any_kas::kecil::aas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:204;a:4:{s:1:\"a\";i:205;s:1:\"b\";s:25:\"replicate_kas::kecil::aas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:205;a:4:{s:1:\"a\";i:206;s:1:\"b\";s:23:\"reorder_kas::kecil::aas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:206;a:4:{s:1:\"a\";i:207;s:1:\"b\";s:22:\"delete_kas::kecil::aas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:207;a:4:{s:1:\"a\";i:208;s:1:\"b\";s:26:\"delete_any_kas::kecil::aas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:208;a:4:{s:1:\"a\";i:209;s:1:\"b\";s:28:\"force_delete_kas::kecil::aas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:209;a:4:{s:1:\"a\";i:210;s:1:\"b\";s:32:\"force_delete_any_kas::kecil::aas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:210;a:4:{s:1:\"a\";i:211;s:1:\"b\";s:28:\"view_kas::kecil::matanggaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:211;a:4:{s:1:\"a\";i:212;s:1:\"b\";s:32:\"view_any_kas::kecil::matanggaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:212;a:4:{s:1:\"a\";i:213;s:1:\"b\";s:30:\"create_kas::kecil::matanggaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:213;a:4:{s:1:\"a\";i:214;s:1:\"b\";s:30:\"update_kas::kecil::matanggaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:214;a:4:{s:1:\"a\";i:215;s:1:\"b\";s:31:\"restore_kas::kecil::matanggaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:215;a:4:{s:1:\"a\";i:216;s:1:\"b\";s:35:\"restore_any_kas::kecil::matanggaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:216;a:4:{s:1:\"a\";i:217;s:1:\"b\";s:33:\"replicate_kas::kecil::matanggaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:217;a:4:{s:1:\"a\";i:218;s:1:\"b\";s:31:\"reorder_kas::kecil::matanggaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:218;a:4:{s:1:\"a\";i:219;s:1:\"b\";s:30:\"delete_kas::kecil::matanggaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:219;a:4:{s:1:\"a\";i:220;s:1:\"b\";s:34:\"delete_any_kas::kecil::matanggaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:220;a:4:{s:1:\"a\";i:221;s:1:\"b\";s:36:\"force_delete_kas::kecil::matanggaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:221;a:4:{s:1:\"a\";i:222;s:1:\"b\";s:40:\"force_delete_any_kas::kecil::matanggaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:222;a:4:{s:1:\"a\";i:223;s:1:\"b\";s:26:\"view_kas::kecil::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:223;a:4:{s:1:\"a\";i:224;s:1:\"b\";s:30:\"view_any_kas::kecil::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:224;a:4:{s:1:\"a\";i:225;s:1:\"b\";s:28:\"create_kas::kecil::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:225;a:4:{s:1:\"a\";i:226;s:1:\"b\";s:28:\"update_kas::kecil::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:226;a:4:{s:1:\"a\";i:227;s:1:\"b\";s:29:\"restore_kas::kecil::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:227;a:4:{s:1:\"a\";i:228;s:1:\"b\";s:33:\"restore_any_kas::kecil::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:228;a:4:{s:1:\"a\";i:229;s:1:\"b\";s:31:\"replicate_kas::kecil::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:229;a:4:{s:1:\"a\";i:230;s:1:\"b\";s:29:\"reorder_kas::kecil::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:230;a:4:{s:1:\"a\";i:231;s:1:\"b\";s:28:\"delete_kas::kecil::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:231;a:4:{s:1:\"a\";i:232;s:1:\"b\";s:32:\"delete_any_kas::kecil::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:232;a:4:{s:1:\"a\";i:233;s:1:\"b\";s:34:\"force_delete_kas::kecil::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:233;a:4:{s:1:\"a\";i:234;s:1:\"b\";s:38:\"force_delete_any_kas::kecil::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:234;a:4:{s:1:\"a\";i:235;s:1:\"b\";s:17:\"view_kursus::guru\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:235;a:4:{s:1:\"a\";i:236;s:1:\"b\";s:21:\"view_any_kursus::guru\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:236;a:4:{s:1:\"a\";i:237;s:1:\"b\";s:19:\"create_kursus::guru\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:237;a:4:{s:1:\"a\";i:238;s:1:\"b\";s:19:\"update_kursus::guru\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:238;a:4:{s:1:\"a\";i:239;s:1:\"b\";s:20:\"restore_kursus::guru\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:239;a:4:{s:1:\"a\";i:240;s:1:\"b\";s:24:\"restore_any_kursus::guru\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:240;a:4:{s:1:\"a\";i:241;s:1:\"b\";s:22:\"replicate_kursus::guru\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:241;a:4:{s:1:\"a\";i:242;s:1:\"b\";s:20:\"reorder_kursus::guru\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:242;a:4:{s:1:\"a\";i:243;s:1:\"b\";s:19:\"delete_kursus::guru\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:243;a:4:{s:1:\"a\";i:244;s:1:\"b\";s:23:\"delete_any_kursus::guru\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:244;a:4:{s:1:\"a\";i:245;s:1:\"b\";s:25:\"force_delete_kursus::guru\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:245;a:4:{s:1:\"a\";i:246;s:1:\"b\";s:29:\"force_delete_any_kursus::guru\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:246;a:4:{s:1:\"a\";i:247;s:1:\"b\";s:19:\"view_kursus::jadwal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:247;a:4:{s:1:\"a\";i:248;s:1:\"b\";s:23:\"view_any_kursus::jadwal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:248;a:4:{s:1:\"a\";i:249;s:1:\"b\";s:21:\"create_kursus::jadwal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:249;a:4:{s:1:\"a\";i:250;s:1:\"b\";s:21:\"update_kursus::jadwal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:250;a:4:{s:1:\"a\";i:251;s:1:\"b\";s:22:\"restore_kursus::jadwal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:251;a:4:{s:1:\"a\";i:252;s:1:\"b\";s:26:\"restore_any_kursus::jadwal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:252;a:4:{s:1:\"a\";i:253;s:1:\"b\";s:24:\"replicate_kursus::jadwal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:253;a:4:{s:1:\"a\";i:254;s:1:\"b\";s:22:\"reorder_kursus::jadwal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:254;a:4:{s:1:\"a\";i:255;s:1:\"b\";s:21:\"delete_kursus::jadwal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:255;a:4:{s:1:\"a\";i:256;s:1:\"b\";s:25:\"delete_any_kursus::jadwal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:256;a:4:{s:1:\"a\";i:257;s:1:\"b\";s:27:\"force_delete_kursus::jadwal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:257;a:4:{s:1:\"a\";i:258;s:1:\"b\";s:31:\"force_delete_any_kursus::jadwal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:258;a:4:{s:1:\"a\";i:259;s:1:\"b\";s:21:\"view_kursus::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:259;a:4:{s:1:\"a\";i:260;s:1:\"b\";s:25:\"view_any_kursus::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:260;a:4:{s:1:\"a\";i:261;s:1:\"b\";s:23:\"create_kursus::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:261;a:4:{s:1:\"a\";i:262;s:1:\"b\";s:23:\"update_kursus::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:262;a:4:{s:1:\"a\";i:263;s:1:\"b\";s:24:\"restore_kursus::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:263;a:4:{s:1:\"a\";i:264;s:1:\"b\";s:28:\"restore_any_kursus::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:264;a:4:{s:1:\"a\";i:265;s:1:\"b\";s:26:\"replicate_kursus::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:265;a:4:{s:1:\"a\";i:266;s:1:\"b\";s:24:\"reorder_kursus::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:266;a:4:{s:1:\"a\";i:267;s:1:\"b\";s:23:\"delete_kursus::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:267;a:4:{s:1:\"a\";i:268;s:1:\"b\";s:27:\"delete_any_kursus::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:268;a:4:{s:1:\"a\";i:269;s:1:\"b\";s:29:\"force_delete_kursus::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:269;a:4:{s:1:\"a\";i:270;s:1:\"b\";s:33:\"force_delete_any_kursus::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:270;a:4:{s:1:\"a\";i:271;s:1:\"b\";s:29:\"view_kursus::laporan::bulanan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:271;a:4:{s:1:\"a\";i:272;s:1:\"b\";s:33:\"view_any_kursus::laporan::bulanan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:272;a:4:{s:1:\"a\";i:273;s:1:\"b\";s:31:\"create_kursus::laporan::bulanan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:273;a:4:{s:1:\"a\";i:274;s:1:\"b\";s:31:\"update_kursus::laporan::bulanan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:274;a:4:{s:1:\"a\";i:275;s:1:\"b\";s:32:\"restore_kursus::laporan::bulanan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:275;a:4:{s:1:\"a\";i:276;s:1:\"b\";s:36:\"restore_any_kursus::laporan::bulanan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:276;a:4:{s:1:\"a\";i:277;s:1:\"b\";s:34:\"replicate_kursus::laporan::bulanan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:277;a:4:{s:1:\"a\";i:278;s:1:\"b\";s:32:\"reorder_kursus::laporan::bulanan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:278;a:4:{s:1:\"a\";i:279;s:1:\"b\";s:31:\"delete_kursus::laporan::bulanan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:279;a:4:{s:1:\"a\";i:280;s:1:\"b\";s:35:\"delete_any_kursus::laporan::bulanan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:280;a:4:{s:1:\"a\";i:281;s:1:\"b\";s:37:\"force_delete_kursus::laporan::bulanan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:281;a:4:{s:1:\"a\";i:282;s:1:\"b\";s:41:\"force_delete_any_kursus::laporan::bulanan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:282;a:4:{s:1:\"a\";i:283;s:1:\"b\";s:18:\"view_kursus::murid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:283;a:4:{s:1:\"a\";i:284;s:1:\"b\";s:22:\"view_any_kursus::murid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:284;a:4:{s:1:\"a\";i:285;s:1:\"b\";s:20:\"create_kursus::murid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:285;a:4:{s:1:\"a\";i:286;s:1:\"b\";s:20:\"update_kursus::murid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:286;a:4:{s:1:\"a\";i:287;s:1:\"b\";s:21:\"restore_kursus::murid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:287;a:4:{s:1:\"a\";i:288;s:1:\"b\";s:25:\"restore_any_kursus::murid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:288;a:4:{s:1:\"a\";i:289;s:1:\"b\";s:23:\"replicate_kursus::murid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:289;a:4:{s:1:\"a\";i:290;s:1:\"b\";s:21:\"reorder_kursus::murid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:290;a:4:{s:1:\"a\";i:291;s:1:\"b\";s:20:\"delete_kursus::murid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:291;a:4:{s:1:\"a\";i:292;s:1:\"b\";s:24:\"delete_any_kursus::murid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:292;a:4:{s:1:\"a\";i:293;s:1:\"b\";s:26:\"force_delete_kursus::murid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:293;a:4:{s:1:\"a\";i:294;s:1:\"b\";s:30:\"force_delete_any_kursus::murid\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:294;a:4:{s:1:\"a\";i:295;s:1:\"b\";s:23:\"view_kursus::pembayaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:295;a:4:{s:1:\"a\";i:296;s:1:\"b\";s:27:\"view_any_kursus::pembayaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:296;a:4:{s:1:\"a\";i:297;s:1:\"b\";s:25:\"create_kursus::pembayaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:297;a:4:{s:1:\"a\";i:298;s:1:\"b\";s:25:\"update_kursus::pembayaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:298;a:4:{s:1:\"a\";i:299;s:1:\"b\";s:26:\"restore_kursus::pembayaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:299;a:4:{s:1:\"a\";i:300;s:1:\"b\";s:30:\"restore_any_kursus::pembayaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:300;a:4:{s:1:\"a\";i:301;s:1:\"b\";s:28:\"replicate_kursus::pembayaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:301;a:4:{s:1:\"a\";i:302;s:1:\"b\";s:26:\"reorder_kursus::pembayaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:302;a:4:{s:1:\"a\";i:303;s:1:\"b\";s:25:\"delete_kursus::pembayaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:303;a:4:{s:1:\"a\";i:304;s:1:\"b\";s:29:\"delete_any_kursus::pembayaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:304;a:4:{s:1:\"a\";i:305;s:1:\"b\";s:31:\"force_delete_kursus::pembayaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:305;a:4:{s:1:\"a\";i:306;s:1:\"b\";s:35:\"force_delete_any_kursus::pembayaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:306;a:4:{s:1:\"a\";i:307;s:1:\"b\";s:24:\"view_kursus::pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:307;a:4:{s:1:\"a\";i:308;s:1:\"b\";s:28:\"view_any_kursus::pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:308;a:4:{s:1:\"a\";i:309;s:1:\"b\";s:26:\"create_kursus::pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:309;a:4:{s:1:\"a\";i:310;s:1:\"b\";s:26:\"update_kursus::pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:310;a:4:{s:1:\"a\";i:311;s:1:\"b\";s:27:\"restore_kursus::pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:311;a:4:{s:1:\"a\";i:312;s:1:\"b\";s:31:\"restore_any_kursus::pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:312;a:4:{s:1:\"a\";i:313;s:1:\"b\";s:29:\"replicate_kursus::pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:313;a:4:{s:1:\"a\";i:314;s:1:\"b\";s:27:\"reorder_kursus::pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:314;a:4:{s:1:\"a\";i:315;s:1:\"b\";s:26:\"delete_kursus::pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:315;a:4:{s:1:\"a\";i:316;s:1:\"b\";s:30:\"delete_any_kursus::pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:316;a:4:{s:1:\"a\";i:317;s:1:\"b\";s:32:\"force_delete_kursus::pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:317;a:4:{s:1:\"a\";i:318;s:1:\"b\";s:36:\"force_delete_any_kursus::pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:318;a:4:{s:1:\"a\";i:319;s:1:\"b\";s:17:\"view_lapor::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:319;a:4:{s:1:\"a\";i:320;s:1:\"b\";s:21:\"view_any_lapor::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:320;a:4:{s:1:\"a\";i:321;s:1:\"b\";s:19:\"create_lapor::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:321;a:4:{s:1:\"a\";i:322;s:1:\"b\";s:19:\"update_lapor::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:322;a:4:{s:1:\"a\";i:323;s:1:\"b\";s:20:\"restore_lapor::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:323;a:4:{s:1:\"a\";i:324;s:1:\"b\";s:24:\"restore_any_lapor::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:324;a:4:{s:1:\"a\";i:325;s:1:\"b\";s:22:\"replicate_lapor::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:325;a:4:{s:1:\"a\";i:326;s:1:\"b\";s:20:\"reorder_lapor::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:326;a:4:{s:1:\"a\";i:327;s:1:\"b\";s:19:\"delete_lapor::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:327;a:4:{s:1:\"a\";i:328;s:1:\"b\";s:23:\"delete_any_lapor::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:328;a:4:{s:1:\"a\";i:329;s:1:\"b\";s:25:\"force_delete_lapor::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:329;a:4:{s:1:\"a\";i:330;s:1:\"b\";s:29:\"force_delete_any_lapor::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:330;a:4:{s:1:\"a\";i:331;s:1:\"b\";s:18:\"view_layanan::imam\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:331;a:4:{s:1:\"a\";i:332;s:1:\"b\";s:22:\"view_any_layanan::imam\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:332;a:4:{s:1:\"a\";i:333;s:1:\"b\";s:20:\"create_layanan::imam\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:333;a:4:{s:1:\"a\";i:334;s:1:\"b\";s:20:\"update_layanan::imam\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:334;a:4:{s:1:\"a\";i:335;s:1:\"b\";s:21:\"restore_layanan::imam\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:335;a:4:{s:1:\"a\";i:336;s:1:\"b\";s:25:\"restore_any_layanan::imam\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:336;a:4:{s:1:\"a\";i:337;s:1:\"b\";s:23:\"replicate_layanan::imam\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:337;a:4:{s:1:\"a\";i:338;s:1:\"b\";s:21:\"reorder_layanan::imam\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:338;a:4:{s:1:\"a\";i:339;s:1:\"b\";s:20:\"delete_layanan::imam\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:339;a:4:{s:1:\"a\";i:340;s:1:\"b\";s:24:\"delete_any_layanan::imam\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:340;a:4:{s:1:\"a\";i:341;s:1:\"b\";s:26:\"force_delete_layanan::imam\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:341;a:4:{s:1:\"a\";i:342;s:1:\"b\";s:30:\"force_delete_any_layanan::imam\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:342;a:4:{s:1:\"a\";i:343;s:1:\"b\";s:31:\"view_layanan::jenis::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:343;a:4:{s:1:\"a\";i:344;s:1:\"b\";s:35:\"view_any_layanan::jenis::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:344;a:4:{s:1:\"a\";i:345;s:1:\"b\";s:33:\"create_layanan::jenis::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:345;a:4:{s:1:\"a\";i:346;s:1:\"b\";s:33:\"update_layanan::jenis::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:346;a:4:{s:1:\"a\";i:347;s:1:\"b\";s:34:\"restore_layanan::jenis::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:347;a:4:{s:1:\"a\";i:348;s:1:\"b\";s:38:\"restore_any_layanan::jenis::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:348;a:4:{s:1:\"a\";i:349;s:1:\"b\";s:36:\"replicate_layanan::jenis::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:349;a:4:{s:1:\"a\";i:350;s:1:\"b\";s:34:\"reorder_layanan::jenis::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:350;a:4:{s:1:\"a\";i:351;s:1:\"b\";s:33:\"delete_layanan::jenis::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:351;a:4:{s:1:\"a\";i:352;s:1:\"b\";s:37:\"delete_any_layanan::jenis::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:352;a:4:{s:1:\"a\";i:353;s:1:\"b\";s:39:\"force_delete_layanan::jenis::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:353;a:4:{s:1:\"a\";i:354;s:1:\"b\";s:43:\"force_delete_any_layanan::jenis::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:354;a:4:{s:1:\"a\";i:355;s:1:\"b\";s:35:\"view_layanan::transaksi::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:355;a:4:{s:1:\"a\";i:356;s:1:\"b\";s:39:\"view_any_layanan::transaksi::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:356;a:4:{s:1:\"a\";i:357;s:1:\"b\";s:37:\"create_layanan::transaksi::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:357;a:4:{s:1:\"a\";i:358;s:1:\"b\";s:37:\"update_layanan::transaksi::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:358;a:4:{s:1:\"a\";i:359;s:1:\"b\";s:38:\"restore_layanan::transaksi::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:359;a:4:{s:1:\"a\";i:360;s:1:\"b\";s:42:\"restore_any_layanan::transaksi::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:360;a:4:{s:1:\"a\";i:361;s:1:\"b\";s:40:\"replicate_layanan::transaksi::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:361;a:4:{s:1:\"a\";i:362;s:1:\"b\";s:38:\"reorder_layanan::transaksi::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:362;a:4:{s:1:\"a\";i:363;s:1:\"b\";s:37:\"delete_layanan::transaksi::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:363;a:4:{s:1:\"a\";i:364;s:1:\"b\";s:41:\"delete_any_layanan::transaksi::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:364;a:4:{s:1:\"a\";i:365;s:1:\"b\";s:43:\"force_delete_layanan::transaksi::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:365;a:4:{s:1:\"a\";i:366;s:1:\"b\";s:47:\"force_delete_any_layanan::transaksi::konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:366;a:4:{s:1:\"a\";i:367;s:1:\"b\";s:36:\"view_layanan::transaksi::pengislaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:367;a:4:{s:1:\"a\";i:368;s:1:\"b\";s:40:\"view_any_layanan::transaksi::pengislaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:368;a:4:{s:1:\"a\";i:369;s:1:\"b\";s:38:\"create_layanan::transaksi::pengislaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:369;a:4:{s:1:\"a\";i:370;s:1:\"b\";s:38:\"update_layanan::transaksi::pengislaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:370;a:4:{s:1:\"a\";i:371;s:1:\"b\";s:39:\"restore_layanan::transaksi::pengislaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:371;a:4:{s:1:\"a\";i:372;s:1:\"b\";s:43:\"restore_any_layanan::transaksi::pengislaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:372;a:4:{s:1:\"a\";i:373;s:1:\"b\";s:41:\"replicate_layanan::transaksi::pengislaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:373;a:4:{s:1:\"a\";i:374;s:1:\"b\";s:39:\"reorder_layanan::transaksi::pengislaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:374;a:4:{s:1:\"a\";i:375;s:1:\"b\";s:38:\"delete_layanan::transaksi::pengislaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:375;a:4:{s:1:\"a\";i:376;s:1:\"b\";s:42:\"delete_any_layanan::transaksi::pengislaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:376;a:4:{s:1:\"a\";i:377;s:1:\"b\";s:44:\"force_delete_layanan::transaksi::pengislaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:377;a:4:{s:1:\"a\";i:378;s:1:\"b\";s:48:\"force_delete_any_layanan::transaksi::pengislaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:378;a:4:{s:1:\"a\";i:379;s:1:\"b\";s:11:\"view_marbot\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:379;a:4:{s:1:\"a\";i:380;s:1:\"b\";s:15:\"view_any_marbot\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:380;a:4:{s:1:\"a\";i:381;s:1:\"b\";s:13:\"create_marbot\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:381;a:4:{s:1:\"a\";i:382;s:1:\"b\";s:13:\"update_marbot\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:382;a:4:{s:1:\"a\";i:383;s:1:\"b\";s:14:\"restore_marbot\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:383;a:4:{s:1:\"a\";i:384;s:1:\"b\";s:18:\"restore_any_marbot\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:384;a:4:{s:1:\"a\";i:385;s:1:\"b\";s:16:\"replicate_marbot\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:385;a:4:{s:1:\"a\";i:386;s:1:\"b\";s:14:\"reorder_marbot\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:386;a:4:{s:1:\"a\";i:387;s:1:\"b\";s:13:\"delete_marbot\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:387;a:4:{s:1:\"a\";i:388;s:1:\"b\";s:17:\"delete_any_marbot\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:388;a:4:{s:1:\"a\";i:389;s:1:\"b\";s:19:\"force_delete_marbot\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:389;a:4:{s:1:\"a\";i:390;s:1:\"b\";s:23:\"force_delete_any_marbot\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:390;a:4:{s:1:\"a\";i:391;s:1:\"b\";s:16:\"view_surat::asal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:391;a:4:{s:1:\"a\";i:392;s:1:\"b\";s:20:\"view_any_surat::asal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:392;a:4:{s:1:\"a\";i:393;s:1:\"b\";s:18:\"create_surat::asal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:393;a:4:{s:1:\"a\";i:394;s:1:\"b\";s:18:\"update_surat::asal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:394;a:4:{s:1:\"a\";i:395;s:1:\"b\";s:19:\"restore_surat::asal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:395;a:4:{s:1:\"a\";i:396;s:1:\"b\";s:23:\"restore_any_surat::asal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:396;a:4:{s:1:\"a\";i:397;s:1:\"b\";s:21:\"replicate_surat::asal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:397;a:4:{s:1:\"a\";i:398;s:1:\"b\";s:19:\"reorder_surat::asal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:398;a:4:{s:1:\"a\";i:399;s:1:\"b\";s:18:\"delete_surat::asal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:399;a:4:{s:1:\"a\";i:400;s:1:\"b\";s:22:\"delete_any_surat::asal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:400;a:4:{s:1:\"a\";i:401;s:1:\"b\";s:24:\"force_delete_surat::asal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:401;a:4:{s:1:\"a\";i:402;s:1:\"b\";s:28:\"force_delete_any_surat::asal\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:402;a:4:{s:1:\"a\";i:403;s:1:\"b\";s:20:\"view_surat::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:403;a:4:{s:1:\"a\";i:404;s:1:\"b\";s:24:\"view_any_surat::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:404;a:4:{s:1:\"a\";i:405;s:1:\"b\";s:22:\"create_surat::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:405;a:4:{s:1:\"a\";i:406;s:1:\"b\";s:22:\"update_surat::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:406;a:4:{s:1:\"a\";i:407;s:1:\"b\";s:23:\"restore_surat::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:407;a:4:{s:1:\"a\";i:408;s:1:\"b\";s:27:\"restore_any_surat::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:408;a:4:{s:1:\"a\";i:409;s:1:\"b\";s:25:\"replicate_surat::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:409;a:4:{s:1:\"a\";i:410;s:1:\"b\";s:23:\"reorder_surat::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:410;a:4:{s:1:\"a\";i:411;s:1:\"b\";s:22:\"delete_surat::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:411;a:4:{s:1:\"a\";i:412;s:1:\"b\";s:26:\"delete_any_surat::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:412;a:4:{s:1:\"a\";i:413;s:1:\"b\";s:28:\"force_delete_surat::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:413;a:4:{s:1:\"a\";i:414;s:1:\"b\";s:32:\"force_delete_any_surat::kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:414;a:4:{s:1:\"a\";i:415;s:1:\"b\";s:21:\"view_surat::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:415;a:4:{s:1:\"a\";i:416;s:1:\"b\";s:25:\"view_any_surat::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:416;a:4:{s:1:\"a\";i:417;s:1:\"b\";s:23:\"create_surat::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:417;a:4:{s:1:\"a\";i:418;s:1:\"b\";s:23:\"update_surat::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:418;a:4:{s:1:\"a\";i:419;s:1:\"b\";s:24:\"restore_surat::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:419;a:4:{s:1:\"a\";i:420;s:1:\"b\";s:28:\"restore_any_surat::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:420;a:4:{s:1:\"a\";i:421;s:1:\"b\";s:26:\"replicate_surat::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:421;a:4:{s:1:\"a\";i:422;s:1:\"b\";s:24:\"reorder_surat::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:422;a:4:{s:1:\"a\";i:423;s:1:\"b\";s:23:\"delete_surat::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:423;a:4:{s:1:\"a\";i:424;s:1:\"b\";s:27:\"delete_any_surat::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:424;a:4:{s:1:\"a\";i:425;s:1:\"b\";s:29:\"force_delete_surat::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:425;a:4:{s:1:\"a\";i:426;s:1:\"b\";s:33:\"force_delete_any_surat::transaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:426;a:4:{s:1:\"a\";i:427;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:427;a:4:{s:1:\"a\";i:428;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:428;a:4:{s:1:\"a\";i:429;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:429;a:4:{s:1:\"a\";i:430;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:430;a:4:{s:1:\"a\";i:431;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:431;a:4:{s:1:\"a\";i:432;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:432;a:4:{s:1:\"a\";i:433;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:433;a:4:{s:1:\"a\";i:434;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:434;a:4:{s:1:\"a\";i:435;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:435;a:4:{s:1:\"a\";i:436;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:436;a:4:{s:1:\"a\";i:437;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:437;a:4:{s:1:\"a\";i:438;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:438;a:4:{s:1:\"a\";i:439;s:1:\"b\";s:20:\"page_EditProfilePage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:439;a:4:{s:1:\"a\";i:440;s:1:\"b\";s:20:\"widget_KasKecilStats\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:440;a:4:{s:1:\"a\";i:441;s:1:\"b\";s:24:\"widget_GrafikMarbotChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:441;a:4:{s:1:\"a\";i:442;s:1:\"b\";s:33:\"widget_GrafikMarbotPerPosisiChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:442;a:4:{s:1:\"a\";i:443;s:1:\"b\";s:21:\"widget_LaporKerjaBlog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:443;a:4:{s:1:\"a\";i:444;s:1:\"b\";s:34:\"widget_GrafikPersuratanByAsalChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:444;a:4:{s:1:\"a\";i:445;s:1:\"b\";s:38:\"widget_GrafikPersuratanByCategoryChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:445;a:4:{s:1:\"a\";i:446;s:1:\"b\";s:36:\"widget_GrafikPersuratanByStatusChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:446;a:4:{s:1:\"a\";i:447;s:1:\"b\";s:34:\"widget_GrafikPersuratanByTimeChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:447;a:4:{s:1:\"a\";i:448;s:1:\"b\";s:28:\"widget_GrafikKonsultasiChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:448;a:4:{s:1:\"a\";i:449;s:1:\"b\";s:29:\"widget_GrafikPengislamanChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:449;a:4:{s:1:\"a\";i:450;s:1:\"b\";s:32:\"widget_GrafikPengeluaranKasChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:450;a:4:{s:1:\"a\";i:451;s:1:\"b\";s:30:\"widget_GrafikPengisianKasChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:451;a:4:{s:1:\"a\";i:452;s:1:\"b\";s:28:\"widget_GrafikInventarisChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:5;s:1:\"b\";s:10:\"panel_user\";s:1:\"c\";s:3:\"web\";}}}',1760265908);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exports`
--

DROP TABLE IF EXISTS `exports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_disk` varchar(255) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `exporter` varchar(255) NOT NULL,
  `processed_rows` int(10) unsigned NOT NULL DEFAULT 0,
  `total_rows` int(10) unsigned NOT NULL,
  `successful_rows` int(10) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exports_user_id_foreign` (`user_id`),
  CONSTRAINT `exports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exports`
--

LOCK TABLES `exports` WRITE;
/*!40000 ALTER TABLE `exports` DISABLE KEYS */;
/*!40000 ALTER TABLE `exports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_import_rows`
--

DROP TABLE IF EXISTS `failed_import_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_import_rows` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `import_id` bigint(20) unsigned NOT NULL,
  `validation_error` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `failed_import_rows_import_id_foreign` (`import_id`),
  CONSTRAINT `failed_import_rows_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_import_rows`
--

LOCK TABLES `failed_import_rows` WRITE;
/*!40000 ALTER TABLE `failed_import_rows` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_import_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
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
-- Table structure for table `imports`
--

DROP TABLE IF EXISTS `imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `importer` varchar(255) NOT NULL,
  `processed_rows` int(10) unsigned NOT NULL DEFAULT 0,
  `total_rows` int(10) unsigned NOT NULL,
  `successful_rows` int(10) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imports_user_id_foreign` (`user_id`),
  CONSTRAINT `imports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imports`
--

LOCK TABLES `imports` WRITE;
/*!40000 ALTER TABLE `imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventaris_bagians`
--

DROP TABLE IF EXISTS `inventaris_bagians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventaris_bagians` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_bagian` varchar(255) NOT NULL,
  `keterangan_bagian` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventaris_bagians`
--

LOCK TABLES `inventaris_bagians` WRITE;
/*!40000 ALTER TABLE `inventaris_bagians` DISABLE KEYS */;
INSERT INTO `inventaris_bagians` VALUES
(1,'Ruang Kantor','Bagian Area Ruang Kantor Saja','2025-10-11 10:09:37','2025-10-11 10:09:37');
/*!40000 ALTER TABLE `inventaris_bagians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventaris_kategoris`
--

DROP TABLE IF EXISTS `inventaris_kategoris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventaris_kategoris` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) NOT NULL,
  `keterangan_kategori` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventaris_kategoris`
--

LOCK TABLES `inventaris_kategoris` WRITE;
/*!40000 ALTER TABLE `inventaris_kategoris` DISABLE KEYS */;
INSERT INTO `inventaris_kategoris` VALUES
(1,'Barang Cepat','Barang Yang Cepat Rusak Dan Jangka Pendek','2025-10-11 10:09:37','2025-10-11 10:09:37');
/*!40000 ALTER TABLE `inventaris_kategoris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventaris_merks`
--

DROP TABLE IF EXISTS `inventaris_merks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventaris_merks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_merk` varchar(255) NOT NULL,
  `keterangan_merk` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventaris_merks`
--

LOCK TABLES `inventaris_merks` WRITE;
/*!40000 ALTER TABLE `inventaris_merks` DISABLE KEYS */;
INSERT INTO `inventaris_merks` VALUES
(1,'Samsung','Produk Merek Perusahaan Samsung','2025-10-11 10:09:37','2025-10-11 10:09:37');
/*!40000 ALTER TABLE `inventaris_merks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventaris_penyusutans`
--

DROP TABLE IF EXISTS `inventaris_penyusutans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventaris_penyusutans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `inventaris_transaksi_id` bigint(20) unsigned NOT NULL,
  `nilai_awal` int(11) NOT NULL,
  `nilai_penyusutan` int(11) NOT NULL,
  `nilai_akhir` int(11) NOT NULL,
  `tgl_penyusutan` date NOT NULL,
  `keterangan_penyusutan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventaris_penyusutans_inventaris_transaksi_id_foreign` (`inventaris_transaksi_id`),
  CONSTRAINT `inventaris_penyusutans_inventaris_transaksi_id_foreign` FOREIGN KEY (`inventaris_transaksi_id`) REFERENCES `inventaris_transaksis` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventaris_penyusutans`
--

LOCK TABLES `inventaris_penyusutans` WRITE;
/*!40000 ALTER TABLE `inventaris_penyusutans` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventaris_penyusutans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventaris_satuans`
--

DROP TABLE IF EXISTS `inventaris_satuans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventaris_satuans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_satuan` varchar(255) NOT NULL,
  `keterangan_satuan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventaris_satuans`
--

LOCK TABLES `inventaris_satuans` WRITE;
/*!40000 ALTER TABLE `inventaris_satuans` DISABLE KEYS */;
INSERT INTO `inventaris_satuans` VALUES
(1,'Kg','Satuan Kilogram','2025-10-11 10:09:37','2025-10-11 10:09:37');
/*!40000 ALTER TABLE `inventaris_satuans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventaris_supliers`
--

DROP TABLE IF EXISTS `inventaris_supliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventaris_supliers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_suplier` varchar(255) NOT NULL,
  `alamat_suplier` varchar(255) DEFAULT NULL,
  `kontak_suplier` varchar(255) DEFAULT NULL,
  `email_suplier` varchar(255) DEFAULT NULL,
  `keterangan_suplier` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventaris_supliers`
--

LOCK TABLES `inventaris_supliers` WRITE;
/*!40000 ALTER TABLE `inventaris_supliers` DISABLE KEYS */;
INSERT INTO `inventaris_supliers` VALUES
(1,'Pt. Panasonic Cctv','Jalan Daan Moogot, Jakbar','08123456789','franklindroosevelt@altostrat.com','Suplier Perusahaan Panasonic Cctv','2025-10-11 10:09:37','2025-10-11 10:09:37');
/*!40000 ALTER TABLE `inventaris_supliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventaris_transaksis`
--

DROP TABLE IF EXISTS `inventaris_transaksis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventaris_transaksis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(255) NOT NULL,
  `nama_data_inventaris` varchar(255) NOT NULL,
  `jenis_data_inventaris` varchar(255) NOT NULL,
  `stok_data_inventaris` int(11) NOT NULL,
  `jenis_transaksi` enum('masuk','keluar','pindah') DEFAULT NULL,
  `status` enum('baik','rusak','repair') NOT NULL,
  `keterangan_data_inventaris` text DEFAULT NULL,
  `tgl_data_inventaris` date NOT NULL,
  `foto_data_inventaris` varchar(255) DEFAULT NULL,
  `kategori_id` bigint(20) unsigned NOT NULL,
  `merk_id` bigint(20) unsigned NOT NULL,
  `satuan_id` bigint(20) unsigned NOT NULL,
  `bagian_id` bigint(20) unsigned NOT NULL,
  `suplier_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inventaris_transaksis_kode_barang_unique` (`kode_barang`),
  KEY `inventaris_transaksis_kategori_id_foreign` (`kategori_id`),
  KEY `inventaris_transaksis_merk_id_foreign` (`merk_id`),
  KEY `inventaris_transaksis_satuan_id_foreign` (`satuan_id`),
  KEY `inventaris_transaksis_bagian_id_foreign` (`bagian_id`),
  KEY `inventaris_transaksis_suplier_id_foreign` (`suplier_id`),
  CONSTRAINT `inventaris_transaksis_bagian_id_foreign` FOREIGN KEY (`bagian_id`) REFERENCES `inventaris_bagians` (`id`),
  CONSTRAINT `inventaris_transaksis_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `inventaris_kategoris` (`id`),
  CONSTRAINT `inventaris_transaksis_merk_id_foreign` FOREIGN KEY (`merk_id`) REFERENCES `inventaris_merks` (`id`),
  CONSTRAINT `inventaris_transaksis_satuan_id_foreign` FOREIGN KEY (`satuan_id`) REFERENCES `inventaris_satuans` (`id`),
  CONSTRAINT `inventaris_transaksis_suplier_id_foreign` FOREIGN KEY (`suplier_id`) REFERENCES `inventaris_supliers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventaris_transaksis`
--

LOCK TABLES `inventaris_transaksis` WRITE;
/*!40000 ALTER TABLE `inventaris_transaksis` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventaris_transaksis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kas_kecil_aas`
--

DROP TABLE IF EXISTS `kas_kecil_aas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kas_kecil_aas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode_aas` varchar(255) NOT NULL,
  `nama_aas` varchar(255) NOT NULL,
  `status` enum('debit','kredit') NOT NULL,
  `kategori` enum('pembentukan','pengisian','pengeluaran') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kas_kecil_aas_kode_aas_unique` (`kode_aas`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kas_kecil_aas`
--

LOCK TABLES `kas_kecil_aas` WRITE;
/*!40000 ALTER TABLE `kas_kecil_aas` DISABLE KEYS */;
INSERT INTO `kas_kecil_aas` VALUES
(1,'AAS001','Konsumsi','debit','pembentukan','2025-10-11 10:09:37','2025-10-11 10:09:37');
/*!40000 ALTER TABLE `kas_kecil_aas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kas_kecil_matanggarans`
--

DROP TABLE IF EXISTS `kas_kecil_matanggarans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kas_kecil_matanggarans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode_matanggaran` varchar(255) NOT NULL,
  `kode_aas` varchar(255) NOT NULL,
  `saldo` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kas_kecil_matanggarans_kode_matanggaran_unique` (`kode_matanggaran`),
  KEY `kas_kecil_matanggarans_kode_aas_foreign` (`kode_aas`),
  CONSTRAINT `kas_kecil_matanggarans_kode_aas_foreign` FOREIGN KEY (`kode_aas`) REFERENCES `kas_kecil_aas` (`kode_aas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kas_kecil_matanggarans`
--

LOCK TABLES `kas_kecil_matanggarans` WRITE;
/*!40000 ALTER TABLE `kas_kecil_matanggarans` DISABLE KEYS */;
INSERT INTO `kas_kecil_matanggarans` VALUES
(1,'1.1.1','AAS001',1000000,'2025-10-11 10:09:37','2025-10-11 10:09:37');
/*!40000 ALTER TABLE `kas_kecil_matanggarans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kas_kecil_transaksis`
--

DROP TABLE IF EXISTS `kas_kecil_transaksis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kas_kecil_transaksis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `perincian` varchar(255) NOT NULL,
  `pengisian_id` varchar(255) DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `kategori` enum('pembentukan','pengisian','pengeluaran') NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `kode_matanggaran` varchar(255) NOT NULL,
  `foto_kaskecil` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kas_kecil_transaksis_kode_matanggaran_foreign` (`kode_matanggaran`),
  CONSTRAINT `kas_kecil_transaksis_kode_matanggaran_foreign` FOREIGN KEY (`kode_matanggaran`) REFERENCES `kas_kecil_matanggarans` (`kode_matanggaran`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kas_kecil_transaksis`
--

LOCK TABLES `kas_kecil_transaksis` WRITE;
/*!40000 ALTER TABLE `kas_kecil_transaksis` DISABLE KEYS */;
INSERT INTO `kas_kecil_transaksis` VALUES
(1,'Pembentukan Kas Kecil',NULL,25000000,'pembentukan','2024-01-01','1.1.1',NULL,'2024-01-11 11:24:34','2024-01-11 11:24:34');
/*!40000 ALTER TABLE `kas_kecil_transaksis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kursus_absensis`
--

DROP TABLE IF EXISTS `kursus_absensis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kursus_absensis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kursus_murid_id` bigint(20) unsigned NOT NULL,
  `kursus_jadwal_id` bigint(20) unsigned NOT NULL,
  `status_kehadiran` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kursus_absensis_kursus_murid_id_foreign` (`kursus_murid_id`),
  KEY `kursus_absensis_kursus_jadwal_id_foreign` (`kursus_jadwal_id`),
  CONSTRAINT `kursus_absensis_kursus_jadwal_id_foreign` FOREIGN KEY (`kursus_jadwal_id`) REFERENCES `kursus_jadwals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `kursus_absensis_kursus_murid_id_foreign` FOREIGN KEY (`kursus_murid_id`) REFERENCES `kursus_murids` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kursus_absensis`
--

LOCK TABLES `kursus_absensis` WRITE;
/*!40000 ALTER TABLE `kursus_absensis` DISABLE KEYS */;
/*!40000 ALTER TABLE `kursus_absensis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kursus_gurus`
--

DROP TABLE IF EXISTS `kursus_gurus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kursus_gurus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nomor_telepon` varchar(255) NOT NULL,
  `bidang_keahlian` varchar(255) NOT NULL,
  `sejak` date NOT NULL,
  `foto` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kursus_gurus_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kursus_gurus`
--

LOCK TABLES `kursus_gurus` WRITE;
/*!40000 ALTER TABLE `kursus_gurus` DISABLE KEYS */;
INSERT INTO `kursus_gurus` VALUES
(1,'Haji Jauhari','Jalan Ragunan Raya, Jakarta','laki-laki','haji@gmail.com','08123456789','Tafsir Quran','2025-10-11',NULL,'2025-10-11 10:09:37','2025-10-11 10:09:37');
/*!40000 ALTER TABLE `kursus_gurus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kursus_jadwals`
--

DROP TABLE IF EXISTS `kursus_jadwals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kursus_jadwals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kursus_kategori_id` bigint(20) unsigned NOT NULL,
  `hari` varchar(255) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `ruang_kelas` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kursus_jadwals_kursus_kategori_id_foreign` (`kursus_kategori_id`),
  CONSTRAINT `kursus_jadwals_kursus_kategori_id_foreign` FOREIGN KEY (`kursus_kategori_id`) REFERENCES `kursus_kategoris` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kursus_jadwals`
--

LOCK TABLES `kursus_jadwals` WRITE;
/*!40000 ALTER TABLE `kursus_jadwals` DISABLE KEYS */;
/*!40000 ALTER TABLE `kursus_jadwals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kursus_kategoris`
--

DROP TABLE IF EXISTS `kursus_kategoris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kursus_kategoris` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kursus` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `durasi` varchar(255) NOT NULL,
  `biaya` int(11) NOT NULL,
  `jenis_kursus` enum('reguler','private') NOT NULL,
  `kursus_guru_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kursus_kategoris_kursus_guru_id_foreign` (`kursus_guru_id`),
  CONSTRAINT `kursus_kategoris_kursus_guru_id_foreign` FOREIGN KEY (`kursus_guru_id`) REFERENCES `kursus_gurus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kursus_kategoris`
--

LOCK TABLES `kursus_kategoris` WRITE;
/*!40000 ALTER TABLE `kursus_kategoris` DISABLE KEYS */;
/*!40000 ALTER TABLE `kursus_kategoris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kursus_murids`
--

DROP TABLE IF EXISTS `kursus_murids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kursus_murids` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nomor_telepon` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `foto` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kursus_murids_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kursus_murids`
--

LOCK TABLES `kursus_murids` WRITE;
/*!40000 ALTER TABLE `kursus_murids` DISABLE KEYS */;
INSERT INTO `kursus_murids` VALUES
(1,'Donar Azhar','Jalan Haji Umar Rt. 007, Petukangan Selatan','laki-laki','donarazhar@gmail.com','08123456789','2025-10-11',NULL,'2025-10-11 10:09:37','2025-10-11 10:09:37');
/*!40000 ALTER TABLE `kursus_murids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kursus_pembayarans`
--

DROP TABLE IF EXISTS `kursus_pembayarans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kursus_pembayarans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kursus_pendaftaran_id` bigint(20) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `metode_pembayaran` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `foto` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kursus_pembayarans_kursus_pendaftaran_id_foreign` (`kursus_pendaftaran_id`),
  CONSTRAINT `kursus_pembayarans_kursus_pendaftaran_id_foreign` FOREIGN KEY (`kursus_pendaftaran_id`) REFERENCES `kursus_pendaftarans` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kursus_pembayarans`
--

LOCK TABLES `kursus_pembayarans` WRITE;
/*!40000 ALTER TABLE `kursus_pembayarans` DISABLE KEYS */;
/*!40000 ALTER TABLE `kursus_pembayarans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kursus_pendaftarans`
--

DROP TABLE IF EXISTS `kursus_pendaftarans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kursus_pendaftarans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kursus_murid_id` bigint(20) unsigned NOT NULL,
  `kursus_jadwal_id` bigint(20) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kursus_pendaftarans_kursus_murid_id_foreign` (`kursus_murid_id`),
  KEY `kursus_pendaftarans_kursus_jadwal_id_foreign` (`kursus_jadwal_id`),
  CONSTRAINT `kursus_pendaftarans_kursus_jadwal_id_foreign` FOREIGN KEY (`kursus_jadwal_id`) REFERENCES `kursus_jadwals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `kursus_pendaftarans_kursus_murid_id_foreign` FOREIGN KEY (`kursus_murid_id`) REFERENCES `kursus_murids` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kursus_pendaftarans`
--

LOCK TABLES `kursus_pendaftarans` WRITE;
/*!40000 ALTER TABLE `kursus_pendaftarans` DISABLE KEYS */;
/*!40000 ALTER TABLE `kursus_pendaftarans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kursus_penilaians`
--

DROP TABLE IF EXISTS `kursus_penilaians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kursus_penilaians` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kursus_murid_id` bigint(20) unsigned NOT NULL,
  `kursus_kategori_id` bigint(20) unsigned NOT NULL,
  `nilai` decimal(5,2) NOT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kursus_penilaians_kursus_murid_id_foreign` (`kursus_murid_id`),
  KEY `kursus_penilaians_kursus_kategori_id_foreign` (`kursus_kategori_id`),
  CONSTRAINT `kursus_penilaians_kursus_kategori_id_foreign` FOREIGN KEY (`kursus_kategori_id`) REFERENCES `kursus_kategoris` (`id`) ON DELETE CASCADE,
  CONSTRAINT `kursus_penilaians_kursus_murid_id_foreign` FOREIGN KEY (`kursus_murid_id`) REFERENCES `kursus_murids` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kursus_penilaians`
--

LOCK TABLES `kursus_penilaians` WRITE;
/*!40000 ALTER TABLE `kursus_penilaians` DISABLE KEYS */;
/*!40000 ALTER TABLE `kursus_penilaians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laporkerjas`
--

DROP TABLE IF EXISTS `laporkerjas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laporkerjas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tgl` date NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `foto_laporkerja` text DEFAULT NULL,
  `email_user` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `laporkerjas_email_user_foreign` (`email_user`),
  CONSTRAINT `laporkerjas_email_user_foreign` FOREIGN KEY (`email_user`) REFERENCES `users` (`email`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laporkerjas`
--

LOCK TABLES `laporkerjas` WRITE;
/*!40000 ALTER TABLE `laporkerjas` DISABLE KEYS */;
/*!40000 ALTER TABLE `laporkerjas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layanan_imams`
--

DROP TABLE IF EXISTS `layanan_imams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layanan_imams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_imam` varchar(255) NOT NULL,
  `nohp_imam` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan_imams`
--

LOCK TABLES `layanan_imams` WRITE;
/*!40000 ALTER TABLE `layanan_imams` DISABLE KEYS */;
INSERT INTO `layanan_imams` VALUES
(1,'Haji Mukhtar Ibnu','081212345','Imam Rawatib Maa','2025-10-11 10:09:37','2025-10-11 10:09:37');
/*!40000 ALTER TABLE `layanan_imams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layanan_jenis_konsultasis`
--

DROP TABLE IF EXISTS `layanan_jenis_konsultasis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layanan_jenis_konsultasis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_jenis_konsultasi` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan_jenis_konsultasis`
--

LOCK TABLES `layanan_jenis_konsultasis` WRITE;
/*!40000 ALTER TABLE `layanan_jenis_konsultasis` DISABLE KEYS */;
INSERT INTO `layanan_jenis_konsultasis` VALUES
(1,'Konsultasi Agama','Layanan Mengenai Agama Islam Dasar','2025-10-11 10:09:37','2025-10-11 10:09:37');
/*!40000 ALTER TABLE `layanan_jenis_konsultasis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layanan_transaksi_konsultasis`
--

DROP TABLE IF EXISTS `layanan_transaksi_konsultasis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layanan_transaksi_konsultasis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tgl_booking` date NOT NULL,
  `jam_booking` time NOT NULL,
  `nama_jamaah` varchar(255) NOT NULL,
  `jenkel_jamaah` varchar(255) NOT NULL,
  `tempat_lahir_jamaah` varchar(255) NOT NULL,
  `tgl_lahir_jamaah` date NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `pendidikan` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `deskripsi_masalah` text NOT NULL,
  `imam_id` bigint(20) unsigned NOT NULL,
  `jeniskonsultasi_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `layanan_transaksi_konsultasis_imam_id_foreign` (`imam_id`),
  KEY `layanan_transaksi_konsultasis_jeniskonsultasi_id_foreign` (`jeniskonsultasi_id`),
  CONSTRAINT `layanan_transaksi_konsultasis_imam_id_foreign` FOREIGN KEY (`imam_id`) REFERENCES `layanan_imams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `layanan_transaksi_konsultasis_jeniskonsultasi_id_foreign` FOREIGN KEY (`jeniskonsultasi_id`) REFERENCES `layanan_jenis_konsultasis` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan_transaksi_konsultasis`
--

LOCK TABLES `layanan_transaksi_konsultasis` WRITE;
/*!40000 ALTER TABLE `layanan_transaksi_konsultasis` DISABLE KEYS */;
/*!40000 ALTER TABLE `layanan_transaksi_konsultasis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layanan_transaksi_pengislamen`
--

DROP TABLE IF EXISTS `layanan_transaksi_pengislamen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layanan_transaksi_pengislamen` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `no_urut` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `tgl` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tlahir` varchar(255) NOT NULL,
  `tgllahir` date NOT NULL,
  `agama_semula` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `alamat1` varchar(255) NOT NULL,
  `alamat2` varchar(255) DEFAULT NULL,
  `nama_baru` varchar(255) NOT NULL,
  `tgl_hijriah` varchar(255) NOT NULL,
  `tahun_hijriah` varchar(255) NOT NULL,
  `saksi1` varchar(255) NOT NULL,
  `saksi2` varchar(255) NOT NULL,
  `saksi3` varchar(255) DEFAULT NULL,
  `alasan` text NOT NULL,
  `imam_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `layanan_transaksi_pengislamen_imam_id_foreign` (`imam_id`),
  CONSTRAINT `layanan_transaksi_pengislamen_imam_id_foreign` FOREIGN KEY (`imam_id`) REFERENCES `layanan_imams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan_transaksi_pengislamen`
--

LOCK TABLES `layanan_transaksi_pengislamen` WRITE;
/*!40000 ALTER TABLE `layanan_transaksi_pengislamen` DISABLE KEYS */;
/*!40000 ALTER TABLE `layanan_transaksi_pengislamen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marbot_has_keluargas`
--

DROP TABLE IF EXISTS `marbot_has_keluargas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marbot_has_keluargas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `marbot_id` bigint(20) unsigned NOT NULL,
  `marbot_keluarga_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marbot_has_keluargas`
--

LOCK TABLES `marbot_has_keluargas` WRITE;
/*!40000 ALTER TABLE `marbot_has_keluargas` DISABLE KEYS */;
/*!40000 ALTER TABLE `marbot_has_keluargas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marbot_has_kesehatans`
--

DROP TABLE IF EXISTS `marbot_has_kesehatans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marbot_has_kesehatans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `marbot_id` bigint(20) unsigned NOT NULL,
  `marbot_kesehatan_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marbot_has_kesehatans`
--

LOCK TABLES `marbot_has_kesehatans` WRITE;
/*!40000 ALTER TABLE `marbot_has_kesehatans` DISABLE KEYS */;
/*!40000 ALTER TABLE `marbot_has_kesehatans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marbot_has_riwayat_kepegawaians`
--

DROP TABLE IF EXISTS `marbot_has_riwayat_kepegawaians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marbot_has_riwayat_kepegawaians` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `marbot_id` bigint(20) unsigned NOT NULL,
  `marbot_riwayat_kepegawaian_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marbot_has_riwayat_kepegawaians`
--

LOCK TABLES `marbot_has_riwayat_kepegawaians` WRITE;
/*!40000 ALTER TABLE `marbot_has_riwayat_kepegawaians` DISABLE KEYS */;
/*!40000 ALTER TABLE `marbot_has_riwayat_kepegawaians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marbot_keluargas`
--

DROP TABLE IF EXISTS `marbot_keluargas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marbot_keluargas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `tlahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `no_kontak` varchar(255) NOT NULL,
  `foto_keluarga` varchar(255) DEFAULT NULL,
  `tipe_hubungan` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `marbot_keluargas_tipe_hubungan_index` (`tipe_hubungan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marbot_keluargas`
--

LOCK TABLES `marbot_keluargas` WRITE;
/*!40000 ALTER TABLE `marbot_keluargas` DISABLE KEYS */;
/*!40000 ALTER TABLE `marbot_keluargas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marbot_kesehatans`
--

DROP TABLE IF EXISTS `marbot_kesehatans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marbot_kesehatans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `jenis_riwayat` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `foto_kesehatan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `marbot_kesehatans_jenis_riwayat_index` (`jenis_riwayat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marbot_kesehatans`
--

LOCK TABLES `marbot_kesehatans` WRITE;
/*!40000 ALTER TABLE `marbot_kesehatans` DISABLE KEYS */;
/*!40000 ALTER TABLE `marbot_kesehatans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marbot_riwayat_kepegawaians`
--

DROP TABLE IF EXISTS `marbot_riwayat_kepegawaians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marbot_riwayat_kepegawaians` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `foto_riwayatkepegawaian` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `jenis_riwayat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `marbot_riwayat_kepegawaians_jenis_riwayat_index` (`jenis_riwayat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marbot_riwayat_kepegawaians`
--

LOCK TABLES `marbot_riwayat_kepegawaians` WRITE;
/*!40000 ALTER TABLE `marbot_riwayat_kepegawaians` DISABLE KEYS */;
/*!40000 ALTER TABLE `marbot_riwayat_kepegawaians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marbots`
--

DROP TABLE IF EXISTS `marbots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marbots` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(255) NOT NULL,
  `tlahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenkel` varchar(255) DEFAULT NULL,
  `goldar` varchar(255) DEFAULT NULL,
  `posisi` varchar(255) DEFAULT NULL,
  `status_nikah` varchar(255) DEFAULT NULL,
  `status_pegawai` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `email_user` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `marbots_nip_unique` (`nip`),
  KEY `marbots_email_user_foreign` (`email_user`),
  CONSTRAINT `marbots_email_user_foreign` FOREIGN KEY (`email_user`) REFERENCES `users` (`email`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marbots`
--

LOCK TABLES `marbots` WRITE;
/*!40000 ALTER TABLE `marbots` DISABLE KEYS */;
INSERT INTO `marbots` VALUES
(1,'1234','Jakarta','2005-09-30','Laki-Laki','AB','Kebersihan','Menikah','Capeg','08123456789','Jakarta Raya','file-marbot/01K79CRM91FJSKW17ER277JY3N.jpg','panel@admin.com','2025-10-11 10:23:49','2025-10-11 10:23:49'),
(2,'1233','Bandung','2005-09-26','Perempuan','A','Lepas','Belum Menikah','Lepas','0123412345','Bandung Raya','file-marbot/01K79CSSSQEYPT6AFZR4MC816S.jpg','blog@admin.com','2025-10-11 10:24:27','2025-10-11 10:24:27');
/*!40000 ALTER TABLE `marbots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1),
(4,'0001_01_01_000003_create_permission_tables',1),
(5,'2024_07_09_045642_create_inventaris_kategoris_table',1),
(6,'2024_07_09_045652_create_inventaris_merks_table',1),
(7,'2024_07_09_045706_create_inventaris_satuans_table',1),
(8,'2024_07_09_045718_create_inventaris_bagians_table',1),
(9,'2024_07_09_045719_create_inventaris_supliers_table',1),
(10,'2024_07_09_045733_create_inventaris_transaksis_table',1),
(11,'2024_07_09_045734_create_inventaris_penyusutans_table',1),
(12,'2024_07_09_091143_create_surat_kategoris_table',1),
(13,'2024_07_09_091152_create_surat_asals_table',1),
(14,'2024_07_09_091159_create_surat_transaksis_table',1),
(15,'2024_07_10_042210_create_laporkerjas_table',1),
(16,'2024_07_10_083848_create_layanan_imams_table',1),
(17,'2024_07_10_083900_create_layanan_jenis_konsultasis_table',1),
(18,'2024_07_10_083911_create_layanan_transaksi_konsultasis_table',1),
(19,'2024_07_11_044109_create_layanan_transaksi_pengislamen_table',1),
(20,'2024_07_11_083925_create_marbots_table',1),
(21,'2024_07_11_151439_create_marbot_keluargas_table',1),
(22,'2024_07_12_100841_create_marbot_kesehatans_table',1),
(23,'2024_07_13_061418_create_marbot_riwayat_kepegawaians_table',1),
(24,'2024_07_13_085400_create_kas_kecil_aas_table',1),
(25,'2024_07_13_085407_create_kas_kecil_matanggarans_table',1),
(26,'2024_07_13_085417_create_kas_kecil_transaksis_table',1),
(27,'2024_07_14_101026_create_kursus_murids_table',1),
(28,'2024_07_14_101052_create_kursus_gurus_table',1),
(29,'2024_07_14_101123_create_kursus_kategoris_table',1),
(30,'2024_07_14_101252_create_kursus_jadwals_table',1),
(31,'2024_07_14_101314_create_kursus_pendaftarans_table',1),
(32,'2024_07_14_101338_create_kursus_pembayarans_table',1),
(33,'2024_07_14_101353_create_kursus_absensis_table',1),
(34,'2024_07_14_101409_create_kursus_penilaians_table',1),
(35,'2024_08_07_023322_add_custom_fields_to_users_table',1),
(36,'2024_08_07_023323_add_avatar_url_to_users_table',1),
(37,'2024_08_23_072336_create_notifications_table',1),
(38,'2024_08_24_021758_create_imports_table',1),
(39,'2024_08_24_021759_create_exports_table',1),
(40,'2024_08_24_021800_create_failed_import_rows_table',1),
(41,'2024_08_24_042210_create_blog_article_kategoris_table',1),
(42,'2024_08_24_042215_create_blog_articles_table',1),
(43,'2024_08_24_042423_create_blog_banners_table',1),
(44,'2024_08_24_042515_create_blog_buletins_table',1),
(45,'2024_08_24_042545_create_blog_donasis_table',1),
(46,'2024_08_24_042610_create_blog_giat_masjid_kategoris_table',1),
(47,'2024_08_24_042613_create_blog_giat_masjids_table',1),
(48,'2024_08_24_042711_create_blog_konsultasis_table',1),
(49,'2024_08_24_042741_create_blog_profile_masjids_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES
(1,'App\\Models\\User',1),
(5,'App\\Models\\User',2),
(5,'App\\Models\\User',3);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=453 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES
(1,'view_role','web','2025-10-11 10:08:44','2025-10-11 10:08:44'),
(2,'view_any_role','web','2025-10-11 10:08:44','2025-10-11 10:08:44'),
(3,'create_role','web','2025-10-11 10:08:44','2025-10-11 10:08:44'),
(4,'update_role','web','2025-10-11 10:08:44','2025-10-11 10:08:44'),
(5,'delete_role','web','2025-10-11 10:08:44','2025-10-11 10:08:44'),
(6,'delete_any_role','web','2025-10-11 10:08:44','2025-10-11 10:08:44'),
(7,'view_blog::article','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(8,'view_any_blog::article','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(9,'create_blog::article','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(10,'update_blog::article','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(11,'restore_blog::article','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(12,'restore_any_blog::article','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(13,'replicate_blog::article','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(14,'reorder_blog::article','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(15,'delete_blog::article','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(16,'delete_any_blog::article','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(17,'force_delete_blog::article','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(18,'force_delete_any_blog::article','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(19,'view_blog::article::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(20,'view_any_blog::article::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(21,'create_blog::article::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(22,'update_blog::article::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(23,'restore_blog::article::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(24,'restore_any_blog::article::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(25,'replicate_blog::article::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(26,'reorder_blog::article::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(27,'delete_blog::article::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(28,'delete_any_blog::article::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(29,'force_delete_blog::article::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(30,'force_delete_any_blog::article::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(31,'view_blog::banner','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(32,'view_any_blog::banner','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(33,'create_blog::banner','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(34,'update_blog::banner','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(35,'restore_blog::banner','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(36,'restore_any_blog::banner','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(37,'replicate_blog::banner','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(38,'reorder_blog::banner','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(39,'delete_blog::banner','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(40,'delete_any_blog::banner','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(41,'force_delete_blog::banner','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(42,'force_delete_any_blog::banner','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(43,'view_blog::buletin','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(44,'view_any_blog::buletin','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(45,'create_blog::buletin','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(46,'update_blog::buletin','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(47,'restore_blog::buletin','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(48,'restore_any_blog::buletin','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(49,'replicate_blog::buletin','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(50,'reorder_blog::buletin','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(51,'delete_blog::buletin','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(52,'delete_any_blog::buletin','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(53,'force_delete_blog::buletin','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(54,'force_delete_any_blog::buletin','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(55,'view_blog::donasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(56,'view_any_blog::donasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(57,'create_blog::donasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(58,'update_blog::donasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(59,'restore_blog::donasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(60,'restore_any_blog::donasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(61,'replicate_blog::donasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(62,'reorder_blog::donasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(63,'delete_blog::donasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(64,'delete_any_blog::donasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(65,'force_delete_blog::donasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(66,'force_delete_any_blog::donasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(67,'view_blog::giat::masjid','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(68,'view_any_blog::giat::masjid','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(69,'create_blog::giat::masjid','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(70,'update_blog::giat::masjid','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(71,'restore_blog::giat::masjid','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(72,'restore_any_blog::giat::masjid','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(73,'replicate_blog::giat::masjid','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(74,'reorder_blog::giat::masjid','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(75,'delete_blog::giat::masjid','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(76,'delete_any_blog::giat::masjid','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(77,'force_delete_blog::giat::masjid','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(78,'force_delete_any_blog::giat::masjid','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(79,'view_blog::giat::masjid::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(80,'view_any_blog::giat::masjid::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(81,'create_blog::giat::masjid::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(82,'update_blog::giat::masjid::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(83,'restore_blog::giat::masjid::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(84,'restore_any_blog::giat::masjid::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(85,'replicate_blog::giat::masjid::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(86,'reorder_blog::giat::masjid::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(87,'delete_blog::giat::masjid::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(88,'delete_any_blog::giat::masjid::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(89,'force_delete_blog::giat::masjid::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(90,'force_delete_any_blog::giat::masjid::kategori','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(91,'view_blog::konsultasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(92,'view_any_blog::konsultasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(93,'create_blog::konsultasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(94,'update_blog::konsultasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(95,'restore_blog::konsultasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(96,'restore_any_blog::konsultasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(97,'replicate_blog::konsultasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(98,'reorder_blog::konsultasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(99,'delete_blog::konsultasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(100,'delete_any_blog::konsultasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(101,'force_delete_blog::konsultasi','web','2025-10-11 10:10:10','2025-10-11 10:10:10'),
(102,'force_delete_any_blog::konsultasi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(103,'view_blog::profile::masjid','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(104,'view_any_blog::profile::masjid','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(105,'create_blog::profile::masjid','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(106,'update_blog::profile::masjid','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(107,'restore_blog::profile::masjid','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(108,'restore_any_blog::profile::masjid','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(109,'replicate_blog::profile::masjid','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(110,'reorder_blog::profile::masjid','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(111,'delete_blog::profile::masjid','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(112,'delete_any_blog::profile::masjid','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(113,'force_delete_blog::profile::masjid','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(114,'force_delete_any_blog::profile::masjid','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(115,'view_inventaris::bagian','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(116,'view_any_inventaris::bagian','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(117,'create_inventaris::bagian','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(118,'update_inventaris::bagian','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(119,'restore_inventaris::bagian','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(120,'restore_any_inventaris::bagian','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(121,'replicate_inventaris::bagian','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(122,'reorder_inventaris::bagian','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(123,'delete_inventaris::bagian','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(124,'delete_any_inventaris::bagian','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(125,'force_delete_inventaris::bagian','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(126,'force_delete_any_inventaris::bagian','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(127,'view_inventaris::kategori','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(128,'view_any_inventaris::kategori','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(129,'create_inventaris::kategori','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(130,'update_inventaris::kategori','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(131,'restore_inventaris::kategori','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(132,'restore_any_inventaris::kategori','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(133,'replicate_inventaris::kategori','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(134,'reorder_inventaris::kategori','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(135,'delete_inventaris::kategori','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(136,'delete_any_inventaris::kategori','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(137,'force_delete_inventaris::kategori','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(138,'force_delete_any_inventaris::kategori','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(139,'view_inventaris::merk','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(140,'view_any_inventaris::merk','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(141,'create_inventaris::merk','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(142,'update_inventaris::merk','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(143,'restore_inventaris::merk','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(144,'restore_any_inventaris::merk','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(145,'replicate_inventaris::merk','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(146,'reorder_inventaris::merk','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(147,'delete_inventaris::merk','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(148,'delete_any_inventaris::merk','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(149,'force_delete_inventaris::merk','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(150,'force_delete_any_inventaris::merk','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(151,'view_inventaris::penyusutan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(152,'view_any_inventaris::penyusutan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(153,'create_inventaris::penyusutan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(154,'update_inventaris::penyusutan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(155,'restore_inventaris::penyusutan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(156,'restore_any_inventaris::penyusutan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(157,'replicate_inventaris::penyusutan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(158,'reorder_inventaris::penyusutan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(159,'delete_inventaris::penyusutan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(160,'delete_any_inventaris::penyusutan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(161,'force_delete_inventaris::penyusutan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(162,'force_delete_any_inventaris::penyusutan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(163,'view_inventaris::satuan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(164,'view_any_inventaris::satuan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(165,'create_inventaris::satuan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(166,'update_inventaris::satuan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(167,'restore_inventaris::satuan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(168,'restore_any_inventaris::satuan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(169,'replicate_inventaris::satuan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(170,'reorder_inventaris::satuan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(171,'delete_inventaris::satuan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(172,'delete_any_inventaris::satuan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(173,'force_delete_inventaris::satuan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(174,'force_delete_any_inventaris::satuan','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(175,'view_inventaris::suplier','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(176,'view_any_inventaris::suplier','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(177,'create_inventaris::suplier','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(178,'update_inventaris::suplier','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(179,'restore_inventaris::suplier','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(180,'restore_any_inventaris::suplier','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(181,'replicate_inventaris::suplier','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(182,'reorder_inventaris::suplier','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(183,'delete_inventaris::suplier','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(184,'delete_any_inventaris::suplier','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(185,'force_delete_inventaris::suplier','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(186,'force_delete_any_inventaris::suplier','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(187,'view_inventaris::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(188,'view_any_inventaris::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(189,'create_inventaris::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(190,'update_inventaris::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(191,'restore_inventaris::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(192,'restore_any_inventaris::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(193,'replicate_inventaris::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(194,'reorder_inventaris::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(195,'delete_inventaris::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(196,'delete_any_inventaris::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(197,'force_delete_inventaris::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(198,'force_delete_any_inventaris::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(199,'view_kas::kecil::aas','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(200,'view_any_kas::kecil::aas','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(201,'create_kas::kecil::aas','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(202,'update_kas::kecil::aas','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(203,'restore_kas::kecil::aas','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(204,'restore_any_kas::kecil::aas','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(205,'replicate_kas::kecil::aas','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(206,'reorder_kas::kecil::aas','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(207,'delete_kas::kecil::aas','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(208,'delete_any_kas::kecil::aas','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(209,'force_delete_kas::kecil::aas','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(210,'force_delete_any_kas::kecil::aas','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(211,'view_kas::kecil::matanggaran','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(212,'view_any_kas::kecil::matanggaran','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(213,'create_kas::kecil::matanggaran','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(214,'update_kas::kecil::matanggaran','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(215,'restore_kas::kecil::matanggaran','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(216,'restore_any_kas::kecil::matanggaran','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(217,'replicate_kas::kecil::matanggaran','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(218,'reorder_kas::kecil::matanggaran','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(219,'delete_kas::kecil::matanggaran','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(220,'delete_any_kas::kecil::matanggaran','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(221,'force_delete_kas::kecil::matanggaran','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(222,'force_delete_any_kas::kecil::matanggaran','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(223,'view_kas::kecil::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(224,'view_any_kas::kecil::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(225,'create_kas::kecil::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(226,'update_kas::kecil::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(227,'restore_kas::kecil::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(228,'restore_any_kas::kecil::transaksi','web','2025-10-11 10:10:11','2025-10-11 10:10:11'),
(229,'replicate_kas::kecil::transaksi','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(230,'reorder_kas::kecil::transaksi','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(231,'delete_kas::kecil::transaksi','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(232,'delete_any_kas::kecil::transaksi','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(233,'force_delete_kas::kecil::transaksi','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(234,'force_delete_any_kas::kecil::transaksi','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(235,'view_kursus::guru','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(236,'view_any_kursus::guru','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(237,'create_kursus::guru','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(238,'update_kursus::guru','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(239,'restore_kursus::guru','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(240,'restore_any_kursus::guru','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(241,'replicate_kursus::guru','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(242,'reorder_kursus::guru','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(243,'delete_kursus::guru','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(244,'delete_any_kursus::guru','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(245,'force_delete_kursus::guru','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(246,'force_delete_any_kursus::guru','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(247,'view_kursus::jadwal','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(248,'view_any_kursus::jadwal','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(249,'create_kursus::jadwal','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(250,'update_kursus::jadwal','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(251,'restore_kursus::jadwal','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(252,'restore_any_kursus::jadwal','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(253,'replicate_kursus::jadwal','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(254,'reorder_kursus::jadwal','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(255,'delete_kursus::jadwal','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(256,'delete_any_kursus::jadwal','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(257,'force_delete_kursus::jadwal','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(258,'force_delete_any_kursus::jadwal','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(259,'view_kursus::kategori','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(260,'view_any_kursus::kategori','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(261,'create_kursus::kategori','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(262,'update_kursus::kategori','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(263,'restore_kursus::kategori','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(264,'restore_any_kursus::kategori','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(265,'replicate_kursus::kategori','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(266,'reorder_kursus::kategori','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(267,'delete_kursus::kategori','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(268,'delete_any_kursus::kategori','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(269,'force_delete_kursus::kategori','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(270,'force_delete_any_kursus::kategori','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(271,'view_kursus::laporan::bulanan','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(272,'view_any_kursus::laporan::bulanan','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(273,'create_kursus::laporan::bulanan','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(274,'update_kursus::laporan::bulanan','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(275,'restore_kursus::laporan::bulanan','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(276,'restore_any_kursus::laporan::bulanan','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(277,'replicate_kursus::laporan::bulanan','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(278,'reorder_kursus::laporan::bulanan','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(279,'delete_kursus::laporan::bulanan','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(280,'delete_any_kursus::laporan::bulanan','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(281,'force_delete_kursus::laporan::bulanan','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(282,'force_delete_any_kursus::laporan::bulanan','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(283,'view_kursus::murid','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(284,'view_any_kursus::murid','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(285,'create_kursus::murid','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(286,'update_kursus::murid','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(287,'restore_kursus::murid','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(288,'restore_any_kursus::murid','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(289,'replicate_kursus::murid','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(290,'reorder_kursus::murid','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(291,'delete_kursus::murid','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(292,'delete_any_kursus::murid','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(293,'force_delete_kursus::murid','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(294,'force_delete_any_kursus::murid','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(295,'view_kursus::pembayaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(296,'view_any_kursus::pembayaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(297,'create_kursus::pembayaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(298,'update_kursus::pembayaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(299,'restore_kursus::pembayaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(300,'restore_any_kursus::pembayaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(301,'replicate_kursus::pembayaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(302,'reorder_kursus::pembayaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(303,'delete_kursus::pembayaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(304,'delete_any_kursus::pembayaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(305,'force_delete_kursus::pembayaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(306,'force_delete_any_kursus::pembayaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(307,'view_kursus::pendaftaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(308,'view_any_kursus::pendaftaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(309,'create_kursus::pendaftaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(310,'update_kursus::pendaftaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(311,'restore_kursus::pendaftaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(312,'restore_any_kursus::pendaftaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(313,'replicate_kursus::pendaftaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(314,'reorder_kursus::pendaftaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(315,'delete_kursus::pendaftaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(316,'delete_any_kursus::pendaftaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(317,'force_delete_kursus::pendaftaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(318,'force_delete_any_kursus::pendaftaran','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(319,'view_lapor::kerja','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(320,'view_any_lapor::kerja','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(321,'create_lapor::kerja','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(322,'update_lapor::kerja','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(323,'restore_lapor::kerja','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(324,'restore_any_lapor::kerja','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(325,'replicate_lapor::kerja','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(326,'reorder_lapor::kerja','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(327,'delete_lapor::kerja','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(328,'delete_any_lapor::kerja','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(329,'force_delete_lapor::kerja','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(330,'force_delete_any_lapor::kerja','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(331,'view_layanan::imam','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(332,'view_any_layanan::imam','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(333,'create_layanan::imam','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(334,'update_layanan::imam','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(335,'restore_layanan::imam','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(336,'restore_any_layanan::imam','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(337,'replicate_layanan::imam','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(338,'reorder_layanan::imam','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(339,'delete_layanan::imam','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(340,'delete_any_layanan::imam','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(341,'force_delete_layanan::imam','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(342,'force_delete_any_layanan::imam','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(343,'view_layanan::jenis::konsultasi','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(344,'view_any_layanan::jenis::konsultasi','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(345,'create_layanan::jenis::konsultasi','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(346,'update_layanan::jenis::konsultasi','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(347,'restore_layanan::jenis::konsultasi','web','2025-10-11 10:10:12','2025-10-11 10:10:12'),
(348,'restore_any_layanan::jenis::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(349,'replicate_layanan::jenis::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(350,'reorder_layanan::jenis::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(351,'delete_layanan::jenis::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(352,'delete_any_layanan::jenis::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(353,'force_delete_layanan::jenis::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(354,'force_delete_any_layanan::jenis::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(355,'view_layanan::transaksi::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(356,'view_any_layanan::transaksi::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(357,'create_layanan::transaksi::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(358,'update_layanan::transaksi::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(359,'restore_layanan::transaksi::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(360,'restore_any_layanan::transaksi::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(361,'replicate_layanan::transaksi::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(362,'reorder_layanan::transaksi::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(363,'delete_layanan::transaksi::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(364,'delete_any_layanan::transaksi::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(365,'force_delete_layanan::transaksi::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(366,'force_delete_any_layanan::transaksi::konsultasi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(367,'view_layanan::transaksi::pengislaman','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(368,'view_any_layanan::transaksi::pengislaman','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(369,'create_layanan::transaksi::pengislaman','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(370,'update_layanan::transaksi::pengislaman','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(371,'restore_layanan::transaksi::pengislaman','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(372,'restore_any_layanan::transaksi::pengislaman','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(373,'replicate_layanan::transaksi::pengislaman','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(374,'reorder_layanan::transaksi::pengislaman','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(375,'delete_layanan::transaksi::pengislaman','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(376,'delete_any_layanan::transaksi::pengislaman','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(377,'force_delete_layanan::transaksi::pengislaman','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(378,'force_delete_any_layanan::transaksi::pengislaman','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(379,'view_marbot','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(380,'view_any_marbot','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(381,'create_marbot','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(382,'update_marbot','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(383,'restore_marbot','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(384,'restore_any_marbot','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(385,'replicate_marbot','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(386,'reorder_marbot','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(387,'delete_marbot','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(388,'delete_any_marbot','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(389,'force_delete_marbot','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(390,'force_delete_any_marbot','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(391,'view_surat::asal','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(392,'view_any_surat::asal','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(393,'create_surat::asal','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(394,'update_surat::asal','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(395,'restore_surat::asal','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(396,'restore_any_surat::asal','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(397,'replicate_surat::asal','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(398,'reorder_surat::asal','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(399,'delete_surat::asal','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(400,'delete_any_surat::asal','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(401,'force_delete_surat::asal','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(402,'force_delete_any_surat::asal','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(403,'view_surat::kategori','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(404,'view_any_surat::kategori','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(405,'create_surat::kategori','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(406,'update_surat::kategori','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(407,'restore_surat::kategori','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(408,'restore_any_surat::kategori','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(409,'replicate_surat::kategori','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(410,'reorder_surat::kategori','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(411,'delete_surat::kategori','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(412,'delete_any_surat::kategori','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(413,'force_delete_surat::kategori','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(414,'force_delete_any_surat::kategori','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(415,'view_surat::transaksi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(416,'view_any_surat::transaksi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(417,'create_surat::transaksi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(418,'update_surat::transaksi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(419,'restore_surat::transaksi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(420,'restore_any_surat::transaksi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(421,'replicate_surat::transaksi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(422,'reorder_surat::transaksi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(423,'delete_surat::transaksi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(424,'delete_any_surat::transaksi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(425,'force_delete_surat::transaksi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(426,'force_delete_any_surat::transaksi','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(427,'view_user','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(428,'view_any_user','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(429,'create_user','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(430,'update_user','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(431,'restore_user','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(432,'restore_any_user','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(433,'replicate_user','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(434,'reorder_user','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(435,'delete_user','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(436,'delete_any_user','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(437,'force_delete_user','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(438,'force_delete_any_user','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(439,'page_EditProfilePage','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(440,'widget_KasKecilStats','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(441,'widget_GrafikMarbotChart','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(442,'widget_GrafikMarbotPerPosisiChart','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(443,'widget_LaporKerjaBlog','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(444,'widget_GrafikPersuratanByAsalChart','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(445,'widget_GrafikPersuratanByCategoryChart','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(446,'widget_GrafikPersuratanByStatusChart','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(447,'widget_GrafikPersuratanByTimeChart','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(448,'widget_GrafikKonsultasiChart','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(449,'widget_GrafikPengislamanChart','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(450,'widget_GrafikPengeluaranKasChart','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(451,'widget_GrafikPengisianKasChart','web','2025-10-11 10:10:13','2025-10-11 10:10:13'),
(452,'widget_GrafikInventarisChart','web','2025-10-11 10:10:13','2025-10-11 10:10:13');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES
(1,1),
(1,5),
(2,1),
(2,5),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(7,5),
(8,1),
(8,5),
(9,1),
(9,5),
(10,1),
(10,5),
(11,1),
(11,5),
(12,1),
(12,5),
(13,1),
(13,5),
(14,1),
(14,5),
(15,1),
(15,5),
(16,1),
(16,5),
(17,1),
(17,5),
(18,1),
(18,5),
(19,1),
(19,5),
(20,1),
(20,5),
(21,1),
(21,5),
(22,1),
(22,5),
(23,1),
(23,5),
(24,1),
(24,5),
(25,1),
(25,5),
(26,1),
(26,5),
(27,1),
(27,5),
(28,1),
(28,5),
(29,1),
(29,5),
(30,1),
(30,5),
(31,1),
(31,5),
(32,1),
(32,5),
(33,1),
(33,5),
(34,1),
(34,5),
(35,1),
(35,5),
(36,1),
(36,5),
(37,1),
(37,5),
(38,1),
(38,5),
(39,1),
(39,5),
(40,1),
(40,5),
(41,1),
(41,5),
(42,1),
(42,5),
(43,1),
(43,5),
(44,1),
(44,5),
(45,1),
(45,5),
(46,1),
(46,5),
(47,1),
(47,5),
(48,1),
(48,5),
(49,1),
(49,5),
(50,1),
(50,5),
(51,1),
(51,5),
(52,1),
(52,5),
(53,1),
(53,5),
(54,1),
(54,5),
(55,1),
(55,5),
(56,1),
(56,5),
(57,1),
(57,5),
(58,1),
(58,5),
(59,1),
(59,5),
(60,1),
(60,5),
(61,1),
(61,5),
(62,1),
(62,5),
(63,1),
(63,5),
(64,1),
(64,5),
(65,1),
(65,5),
(66,1),
(66,5),
(67,1),
(67,5),
(68,1),
(68,5),
(69,1),
(69,5),
(70,1),
(70,5),
(71,1),
(71,5),
(72,1),
(72,5),
(73,1),
(73,5),
(74,1),
(74,5),
(75,1),
(75,5),
(76,1),
(76,5),
(77,1),
(77,5),
(78,1),
(78,5),
(79,1),
(79,5),
(80,1),
(80,5),
(81,1),
(81,5),
(82,1),
(82,5),
(83,1),
(83,5),
(84,1),
(84,5),
(85,1),
(85,5),
(86,1),
(86,5),
(87,1),
(87,5),
(88,1),
(88,5),
(89,1),
(89,5),
(90,1),
(90,5),
(91,1),
(92,1),
(93,1),
(94,1),
(95,1),
(96,1),
(97,1),
(98,1),
(99,1),
(100,1),
(101,1),
(102,1),
(103,1),
(103,5),
(104,1),
(104,5),
(105,1),
(105,5),
(106,1),
(106,5),
(107,1),
(107,5),
(108,1),
(108,5),
(109,1),
(109,5),
(110,1),
(110,5),
(111,1),
(111,5),
(112,1),
(112,5),
(113,1),
(113,5),
(114,1),
(114,5),
(115,1),
(116,1),
(117,1),
(118,1),
(119,1),
(120,1),
(121,1),
(122,1),
(123,1),
(124,1),
(125,1),
(126,1),
(127,1),
(128,1),
(129,1),
(130,1),
(131,1),
(132,1),
(133,1),
(134,1),
(135,1),
(136,1),
(137,1),
(138,1),
(139,1),
(140,1),
(141,1),
(142,1),
(143,1),
(144,1),
(145,1),
(146,1),
(147,1),
(148,1),
(149,1),
(150,1),
(151,1),
(152,1),
(153,1),
(154,1),
(155,1),
(156,1),
(157,1),
(158,1),
(159,1),
(160,1),
(161,1),
(162,1),
(163,1),
(164,1),
(165,1),
(166,1),
(167,1),
(168,1),
(169,1),
(170,1),
(171,1),
(172,1),
(173,1),
(174,1),
(175,1),
(176,1),
(177,1),
(178,1),
(179,1),
(180,1),
(181,1),
(182,1),
(183,1),
(184,1),
(185,1),
(186,1),
(187,1),
(188,1),
(189,1),
(190,1),
(191,1),
(192,1),
(193,1),
(194,1),
(195,1),
(196,1),
(197,1),
(198,1),
(199,1),
(200,1),
(201,1),
(202,1),
(203,1),
(204,1),
(205,1),
(206,1),
(207,1),
(208,1),
(209,1),
(210,1),
(211,1),
(212,1),
(213,1),
(214,1),
(215,1),
(216,1),
(217,1),
(218,1),
(219,1),
(220,1),
(221,1),
(222,1),
(223,1),
(224,1),
(225,1),
(226,1),
(227,1),
(228,1),
(229,1),
(230,1),
(231,1),
(232,1),
(233,1),
(234,1),
(235,1),
(236,1),
(237,1),
(238,1),
(239,1),
(240,1),
(241,1),
(242,1),
(243,1),
(244,1),
(245,1),
(246,1),
(247,1),
(248,1),
(249,1),
(250,1),
(251,1),
(252,1),
(253,1),
(254,1),
(255,1),
(256,1),
(257,1),
(258,1),
(259,1),
(260,1),
(261,1),
(262,1),
(263,1),
(264,1),
(265,1),
(266,1),
(267,1),
(268,1),
(269,1),
(270,1),
(271,1),
(272,1),
(273,1),
(274,1),
(275,1),
(276,1),
(277,1),
(278,1),
(279,1),
(280,1),
(281,1),
(282,1),
(283,1),
(284,1),
(285,1),
(286,1),
(287,1),
(288,1),
(289,1),
(290,1),
(291,1),
(292,1),
(293,1),
(294,1),
(295,1),
(296,1),
(297,1),
(298,1),
(299,1),
(300,1),
(301,1),
(302,1),
(303,1),
(304,1),
(305,1),
(306,1),
(307,1),
(308,1),
(309,1),
(310,1),
(311,1),
(312,1),
(313,1),
(314,1),
(315,1),
(316,1),
(317,1),
(318,1),
(319,1),
(320,1),
(321,1),
(322,1),
(323,1),
(324,1),
(325,1),
(326,1),
(327,1),
(328,1),
(329,1),
(330,1),
(331,1),
(332,1),
(333,1),
(334,1),
(335,1),
(336,1),
(337,1),
(338,1),
(339,1),
(340,1),
(341,1),
(342,1),
(343,1),
(344,1),
(345,1),
(346,1),
(347,1),
(348,1),
(349,1),
(350,1),
(351,1),
(352,1),
(353,1),
(354,1),
(355,1),
(356,1),
(357,1),
(358,1),
(359,1),
(360,1),
(361,1),
(362,1),
(363,1),
(364,1),
(365,1),
(366,1),
(367,1),
(368,1),
(369,1),
(370,1),
(371,1),
(372,1),
(373,1),
(374,1),
(375,1),
(376,1),
(377,1),
(378,1),
(379,1),
(379,5),
(380,1),
(380,5),
(381,1),
(381,5),
(382,1),
(382,5),
(383,1),
(383,5),
(384,1),
(384,5),
(385,1),
(385,5),
(386,1),
(386,5),
(387,1),
(387,5),
(388,1),
(388,5),
(389,1),
(389,5),
(390,1),
(390,5),
(391,1),
(392,1),
(393,1),
(394,1),
(395,1),
(396,1),
(397,1),
(398,1),
(399,1),
(400,1),
(401,1),
(402,1),
(403,1),
(404,1),
(405,1),
(406,1),
(407,1),
(408,1),
(409,1),
(410,1),
(411,1),
(412,1),
(413,1),
(414,1),
(415,1),
(416,1),
(417,1),
(418,1),
(419,1),
(420,1),
(421,1),
(422,1),
(423,1),
(424,1),
(425,1),
(426,1),
(427,1),
(428,1),
(429,1),
(430,1),
(431,1),
(432,1),
(433,1),
(434,1),
(435,1),
(436,1),
(437,1),
(438,1),
(439,1),
(439,5),
(440,1),
(441,1),
(442,1),
(443,1),
(444,1),
(445,1),
(446,1),
(447,1),
(448,1),
(449,1),
(450,1),
(451,1),
(452,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES
(1,'super_admin','web','2025-10-11 10:08:44','2025-10-11 10:08:44'),
(5,'panel_user','web','2025-10-11 10:19:53','2025-10-11 10:19:53');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES
('5Tp6r0vYW0Ab64DB3Z3FPmLxDpVjmeta0MlgJ5zb',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoibkxIeU9WdjNEbWNRT014SmRaMjFoeUtKMURicmhKSm1SYnpST3ZCQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fX0=',1760179614),
('5udtV1dYyskVRCJGggKPrIR7OYZTDIJMV4tQhmR0',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiS1VCT2FZc3NNVjhrbFpKZ0pHaXFDcWJIMlowT0J6NDlIV0lVWUZ6diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkeUhVLklDZmdpVFFuY2RIaHd3TmhaZW8uaVcySjgvVE9OQ05MLkZ0UHJTT0EzSFRpUGoxdksiO30=',1760178932),
('72cM3B0ovJw7YVwyrlC6FGnR2RgEITSgYqrx8Q5i',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlY0V1puSDRuS1BEMWNvYzcxN3pEb2JCUkFCUjg0RHhrQkJWZ2dPTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1760243519),
('s1QX9Pdx3Sm2kMUTc250IiEaJoPgZeYvexODALj4',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDZOZmZ2YWlTOTVzbXRmRU9teDJ6eEFQdXA1REc4UHBMMEdHOXdQZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1760178848),
('sRM764vwj9Hp6PlSL0l8SuYtnRZXfMPWmvNtjs24',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEFXcnF5SkY4dzRmbVRyMGsxNGJlcllZNTZYVjgwU3RCVzZUZGZ2WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1760243515);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surat_asals`
--

DROP TABLE IF EXISTS `surat_asals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surat_asals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_asal_surat` varchar(255) NOT NULL,
  `keterangan_asal_surat` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surat_asals`
--

LOCK TABLES `surat_asals` WRITE;
/*!40000 ALTER TABLE `surat_asals` DISABLE KEYS */;
INSERT INTO `surat_asals` VALUES
(1,'Sekre Ypia','Surat Berasal Dari Sekretariat Ypia','2025-10-11 10:09:37','2025-10-11 10:09:37');
/*!40000 ALTER TABLE `surat_asals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surat_kategoris`
--

DROP TABLE IF EXISTS `surat_kategoris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surat_kategoris` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) NOT NULL,
  `keterangan_kategori` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surat_kategoris`
--

LOCK TABLES `surat_kategoris` WRITE;
/*!40000 ALTER TABLE `surat_kategoris` DISABLE KEYS */;
INSERT INTO `surat_kategoris` VALUES
(1,'Biasa','Surat Bersifat Biasa','2025-10-11 10:09:37','2025-10-11 10:09:37');
/*!40000 ALTER TABLE `surat_kategoris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surat_transaksis`
--

DROP TABLE IF EXISTS `surat_transaksis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surat_transaksis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `no_transaksi_surat` varchar(255) NOT NULL,
  `tgl_transaksi_surat` date NOT NULL,
  `perihal_transaksi_surat` varchar(255) NOT NULL,
  `surat_dari_transaksi_surat` varchar(255) NOT NULL,
  `disposisi_transaksi_surat` varchar(255) NOT NULL,
  `status_transaksi_surat` varchar(255) NOT NULL,
  `kategori_surat_id` bigint(20) unsigned NOT NULL,
  `asal_surat_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `surat_transaksis_kategori_surat_id_foreign` (`kategori_surat_id`),
  KEY `surat_transaksis_asal_surat_id_foreign` (`asal_surat_id`),
  CONSTRAINT `surat_transaksis_asal_surat_id_foreign` FOREIGN KEY (`asal_surat_id`) REFERENCES `surat_asals` (`id`),
  CONSTRAINT `surat_transaksis_kategori_surat_id_foreign` FOREIGN KEY (`kategori_surat_id`) REFERENCES `surat_kategoris` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surat_transaksis`
--

LOCK TABLES `surat_transaksis` WRITE;
/*!40000 ALTER TABLE `surat_transaksis` DISABLE KEYS */;
/*!40000 ALTER TABLE `surat_transaksis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `custom_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`custom_fields`)),
  `avatar_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'Test User','admin@admin.com','2025-10-11 10:09:37','$2y$12$yHU.ICfgiTQncdHhwwNhZeo.iW2J8/TONCNL.FtPrSOA3HTiPj1vK',NULL,'2025-10-11 10:09:37','2025-10-11 10:09:37',NULL,NULL),
(2,'Panel','panel@admin.com',NULL,'$2y$12$87xyQFY9pGJD/OhCloDCw.jZ55hzJsfdyiarIE7IZxGSwNctGkuZ2',NULL,'2025-10-11 10:11:13','2025-10-11 10:22:40',NULL,'file-avatars/01K79CPGQBEPMBTA4YHVZ1JDT2.jpg'),
(3,'Blog User','blog@admin.com',NULL,'$2y$12$ZUm9EE.gTlLnCjrWnxFbJ.T68nJBmZOd6c4inKwmT0RJShSn3R0Ti',NULL,'2025-10-11 10:13:04','2025-10-11 10:22:16',NULL,'file-avatars/01K79CNRZC0DFV4FYPQQ0K55Q2.jpg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-12  4:40:00
