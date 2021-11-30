-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: travlease
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `type` enum('SHIPPING','BILLING') COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) unsigned DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_customer_id_foreign` (`customer_id`),
  KEY `addresses_country_id_foreign` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,1,'SHIPPING','Freda','Torphy','Padberg, Dooley and Cummerata','6302 Durgan Harbors','Way','42440','South Kacieport','Louisiana',133,'280.465.1586','2021-11-13 08:47:14','2021-11-13 08:47:14'),(2,1,'BILLING','David','Murphy','Harvey, Kautzer and Yundt','58016 Gerry Camp','Shoals','16541','East Flavio','Colorado',158,'572.886.2955','2021-11-13 08:47:14','2021-11-13 08:47:14'),(3,1,'SHIPPING','Steve','Roob','Jast Group','615 Ardella Run','Streets','34530','North Danikafurt','Massachusetts',115,'+15929133314','2021-11-13 08:47:14','2021-11-13 08:47:14'),(4,1,'BILLING','Sid','Fahey','Kunde-Koepp','23625 Auer Radial Suite 032','Forest','82486-2712','Micheleborough','Wisconsin',193,'(852) 429-6374 x21395','2021-11-13 08:47:14','2021-11-13 08:47:14'),(5,2,'SHIPPING','PRATEEK','JENA','DUCS','ODISHA','ODISHA','756100','BHADRAK','ODISHA',105,'9337781289','2021-11-14 11:01:26','2021-11-14 11:01:26');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `admin_password_resets_email_index` (`email`),
  KEY `admin_password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_password_resets`
--

LOCK TABLES `admin_password_resets` WRITE;
/*!40000 ALTER TABLE `admin_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `is_super_admin` tinyint(4) DEFAULT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_email_unique` (`email`),
  KEY `admin_users_role_id_foreign` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,1,1,'Prerna','Prasad','prernaprasad100@gmail.com','$2y$10$DeeuQ9GHaAu8AcFOc97DN.QN3OlOWyxTbkTeff6e8DvCB80XD3wQO','en',NULL,'ZFuHvnHuleGVFMirtAgMtP3Lrfn4sI4Ks9nxDWo9R7SnYF9eZapFnMleBE81',NULL,'2021-11-13 08:47:46','2021-11-13 08:47:46');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_dropdown_options`
--

DROP TABLE IF EXISTS `attribute_dropdown_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_dropdown_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint(20) unsigned NOT NULL,
  `display_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_dropdown_options_attribute_id_foreign` (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_dropdown_options`
--

LOCK TABLES `attribute_dropdown_options` WRITE;
/*!40000 ALTER TABLE `attribute_dropdown_options` DISABLE KEYS */;
INSERT INTO `attribute_dropdown_options` VALUES (1,1,'Red','uploads/catalog/attributes/red-attribute.jpg','2021-11-13 08:47:14','2021-11-13 08:47:14'),(2,1,'Blue','uploads/catalog/attributes/blue-attribute.png','2021-11-13 08:47:14','2021-11-13 08:47:14'),(3,1,'Yellow','uploads/catalog/attributes/yellow-attribute.png','2021-11-13 08:47:14','2021-11-13 08:47:14');
/*!40000 ALTER TABLE `attribute_dropdown_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_product`
--

DROP TABLE IF EXISTS `attribute_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_product_attribute_id_foreign` (`attribute_id`),
  KEY `attribute_product_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_product`
--

LOCK TABLES `attribute_product` WRITE;
/*!40000 ALTER TABLE `attribute_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `attribute_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_product_values`
--

DROP TABLE IF EXISTS `attribute_product_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_product_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `attribute_dropdown_option_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_product_values_attribute_id_foreign` (`attribute_id`),
  KEY `attribute_product_values_product_id_foreign` (`product_id`),
  KEY `attribute_product_values_variation_id_foreign` (`variation_id`),
  KEY `attribute_product_values_attribute_dropdown_option_id_foreign` (`attribute_dropdown_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_product_values`
--

LOCK TABLES `attribute_product_values` WRITE;
/*!40000 ALTER TABLE `attribute_product_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `attribute_product_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_as` enum('IMAGE','TEXT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'TEXT',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attributes_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,'Color','color','IMAGE','2021-11-13 08:47:14','2021-11-13 08:47:14');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Shimla','shimla','','','2021-11-13 08:47:14','2021-11-13 08:47:14',NULL),(2,'Kathmandu','kathmandu','','','2021-11-13 08:47:14','2021-11-13 08:47:14',NULL),(3,'Darjeeling','darjeeling',NULL,NULL,'2021-11-13 08:47:14','2021-11-13 08:47:14',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_filters`
--

DROP TABLE IF EXISTS `category_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_filters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `filter_id` bigint(20) unsigned NOT NULL,
  `type` enum('ATTRIBUTE','PROPERTY') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_filters_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_filters`
--

LOCK TABLES `category_filters` WRITE;
/*!40000 ALTER TABLE `category_filters` DISABLE KEYS */;
INSERT INTO `category_filters` VALUES (1,1,1,'PROPERTY','2021-11-13 08:47:14','2021-11-13 08:47:14'),(2,2,1,'PROPERTY','2021-11-13 08:47:14','2021-11-13 08:47:14'),(3,3,1,'PROPERTY','2021-11-13 08:47:14','2021-11-13 08:47:14'),(4,1,2,'PROPERTY','2021-11-13 08:47:14','2021-11-13 08:47:14'),(5,2,2,'PROPERTY','2021-11-13 08:47:14','2021-11-13 08:47:14'),(6,3,2,'PROPERTY','2021-11-13 08:47:14','2021-11-13 08:47:14');
/*!40000 ALTER TABLE `category_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_product_product_id_foreign` (`product_id`),
  KEY `category_product_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
INSERT INTO `category_product` VALUES (1,1,1,NULL,NULL),(2,1,2,NULL,NULL),(3,1,3,NULL,NULL),(4,1,4,NULL,NULL),(5,1,5,NULL,NULL),(6,2,6,NULL,NULL),(7,3,7,NULL,NULL),(8,2,8,NULL,NULL),(9,3,9,NULL,NULL),(10,1,10,NULL,NULL),(11,3,12,NULL,NULL),(12,2,13,NULL,NULL),(13,2,14,NULL,NULL),(14,3,16,NULL,NULL),(15,3,17,NULL,NULL),(16,2,17,NULL,NULL),(17,1,19,NULL,NULL),(18,2,19,NULL,NULL),(19,1,20,NULL,NULL),(20,2,20,NULL,NULL),(21,3,20,NULL,NULL),(22,1,21,NULL,NULL),(23,2,21,NULL,NULL),(24,2,22,NULL,NULL);
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configurations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurations`
--

LOCK TABLES `configurations` WRITE;
/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` VALUES (1,'default_currency','1','2021-11-13 08:47:02','2021-11-14 04:43:47'),(2,'site_name',NULL,'2021-11-14 04:43:47','2021-11-14 04:43:47'),(3,'order_email_address',NULL,'2021-11-14 04:43:47','2021-11-14 04:43:47'),(4,'tax_percentage',NULL,'2021-11-14 04:43:47','2021-11-14 04:43:47'),(5,'a_cash_on_delivery_status',NULL,'2021-11-14 04:43:47','2021-11-14 04:43:47'),(6,'a_pickup_status',NULL,'2021-11-14 04:43:47','2021-11-14 04:43:47');
/*!40000 ALTER TABLE `configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','af','93','AFN','؋','Pashto','2021-11-13 08:47:02','2021-11-13 08:47:02'),(2,'Åland Islands','ax','358','EUR','€','Swedish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(3,'Albania','al','355','ALL','L','Albanian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(4,'Algeria','dz','213','DZD','د.ج','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(5,'American Samoa','as','1684','USD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(6,'Andorra','ad','376','EUR','€','Catalan','2021-11-13 08:47:02','2021-11-13 08:47:02'),(7,'Angola','ao','244','AOA','Kz','Portuguese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(8,'Anguilla','ai','1264','XCD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(9,'Antarctica','aq','672','AUD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(10,'Antigua and Barbuda','ag','1268','XCD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(11,'Argentina','ar','54','ARS','$','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(12,'Armenia','am','374','AMD',NULL,'Armenian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(13,'Aruba','aw','297','AWG','ƒ','Dutch','2021-11-13 08:47:02','2021-11-13 08:47:02'),(14,'Australia','au','61','AUD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(15,'Austria','at','43','EUR','€','German','2021-11-13 08:47:02','2021-11-13 08:47:02'),(16,'Azerbaijan','az','994','AZN',NULL,'Azerbaijani','2021-11-13 08:47:02','2021-11-13 08:47:02'),(17,'Bahamas','bs','1242','BSD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(18,'Bahrain','bh','973','BHD','.د.ب','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(19,'Bangladesh','bd','880','BDT','৳','Bengali','2021-11-13 08:47:02','2021-11-13 08:47:02'),(20,'Barbados','bb','1246','BBD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(21,'Belarus','by','375','BYN','Br','Belarusian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(22,'Belgium','be','32','EUR','€','Dutch','2021-11-13 08:47:02','2021-11-13 08:47:02'),(23,'Belize','bz','501','BZD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(24,'Benin','bj','229','XOF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(25,'Bermuda','bm','1441','BMD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(26,'Bhutan','bt','975','BTN','Nu.','Dzongkha','2021-11-13 08:47:02','2021-11-13 08:47:02'),(27,'Bolivia (Plurinational State of)','bo','591','BOB','Bs.','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(28,'Bonaire, Sint Eustatius and Saba','bq','5997','USD','$','Dutch','2021-11-13 08:47:02','2021-11-13 08:47:02'),(29,'Bosnia and Herzegovina','ba','387','BAM',NULL,'Bosnian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(30,'Botswana','bw','267','BWP','P','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(31,'Bouvet Island','bv','','NOK','kr','Norwegian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(32,'Brazil','br','55','BRL','R$','Portuguese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(33,'British Indian Ocean Territory','io','246','USD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(34,'United States Minor Outlying Islands','um','','USD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(35,'Virgin Islands (British)','vg','1284',NULL,'$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(36,'Virgin Islands (U.S.)','vi','1 340','USD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(37,'Brunei Darussalam','bn','673','BND','$','Malay','2021-11-13 08:47:02','2021-11-13 08:47:02'),(38,'Bulgaria','bg','359','BGN','лв','Bulgarian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(39,'Burkina Faso','bf','226','XOF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(40,'Burundi','bi','257','BIF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(41,'Cambodia','kh','855','KHR','៛','Khmer','2021-11-13 08:47:02','2021-11-13 08:47:02'),(42,'Cameroon','cm','237','XAF','Fr','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(43,'Canada','ca','1','CAD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(44,'Cabo Verde','cv','238','CVE','Esc','Portuguese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(45,'Cayman Islands','ky','1345','KYD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(46,'Central African Republic','cf','236','XAF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(47,'Chad','td','235','XAF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(48,'Chile','cl','56','CLP','$','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(49,'China','cn','86','CNY','¥','Chinese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(50,'Christmas Island','cx','61','AUD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(51,'Cocos (Keeling) Islands','cc','61','AUD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(52,'Colombia','co','57','COP','$','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(53,'Comoros','km','269','KMF','Fr','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(54,'Congo','cg','242','XAF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(55,'Congo (Democratic Republic of the)','cd','243','CDF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(56,'Cook Islands','ck','682','NZD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(57,'Costa Rica','cr','506','CRC','₡','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(58,'Croatia','hr','385','HRK','kn','Croatian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(59,'Cuba','cu','53','CUC','$','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(60,'Curaçao','cw','599','ANG','ƒ','Dutch','2021-11-13 08:47:02','2021-11-13 08:47:02'),(61,'Cyprus','cy','357','EUR','€','Greek (modern)','2021-11-13 08:47:02','2021-11-13 08:47:02'),(62,'Czech Republic','cz','420','CZK','Kč','Czech','2021-11-13 08:47:02','2021-11-13 08:47:02'),(63,'Denmark','dk','45','DKK','kr','Danish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(64,'Djibouti','dj','253','DJF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(65,'Dominica','dm','1767','XCD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(66,'Dominican Republic','do','1809','DOP','$','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(67,'Ecuador','ec','593','USD','$','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(68,'Egypt','eg','20','EGP','£','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(69,'El Salvador','sv','503','USD','$','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(70,'Equatorial Guinea','gq','240','XAF','Fr','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(71,'Eritrea','er','291','ERN','Nfk','Tigrinya','2021-11-13 08:47:02','2021-11-13 08:47:02'),(72,'Estonia','ee','372','EUR','€','Estonian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(73,'Ethiopia','et','251','ETB','Br','Amharic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(74,'Falkland Islands (Malvinas)','fk','500','FKP','£','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(75,'Faroe Islands','fo','298','DKK','kr','Faroese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(76,'Fiji','fj','679','FJD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(77,'Finland','fi','358','EUR','€','Finnish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(78,'France','fr','33','EUR','€','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(79,'French Guiana','gf','594','EUR','€','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(80,'French Polynesia','pf','689','XPF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(81,'French Southern Territories','tf','','EUR','€','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(82,'Gabon','ga','241','XAF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(83,'Gambia','gm','220','GMD','D','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(84,'Georgia','ge','995','GEL','ლ','Georgian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(85,'Germany','de','49','EUR','€','German','2021-11-13 08:47:02','2021-11-13 08:47:02'),(86,'Ghana','gh','233','GHS','₵','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(87,'Gibraltar','gi','350','GIP','£','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(88,'Greece','gr','30','EUR','€','Greek (modern)','2021-11-13 08:47:02','2021-11-13 08:47:02'),(89,'Greenland','gl','299','DKK','kr','Kalaallisut','2021-11-13 08:47:02','2021-11-13 08:47:02'),(90,'Grenada','gd','1473','XCD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(91,'Guadeloupe','gp','590','EUR','€','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(92,'Guam','gu','1671','USD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(93,'Guatemala','gt','502','GTQ','Q','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(94,'Guernsey','gg','44','GBP','£','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(95,'Guinea','gn','224','GNF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(96,'Guinea-Bissau','gw','245','XOF','Fr','Portuguese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(97,'Guyana','gy','592','GYD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(98,'Haiti','ht','509','HTG','G','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(99,'Heard Island and McDonald Islands','hm','','AUD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(100,'Holy See','va','379','EUR','€','Latin','2021-11-13 08:47:02','2021-11-13 08:47:02'),(101,'Honduras','hn','504','HNL','L','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(102,'Hong Kong','hk','852','HKD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(103,'Hungary','hu','36','HUF','Ft','Hungarian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(104,'Iceland','is','354','ISK','kr','Icelandic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(105,'India','in','91','INR','₹','Hindi','2021-11-13 08:47:02','2021-11-13 08:47:02'),(106,'Indonesia','id','62','IDR','Rp','Indonesian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(107,'Côte d\'Ivoire','ci','225','XOF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(108,'Iran (Islamic Republic of)','ir','98','IRR','﷼','Persian (Farsi)','2021-11-13 08:47:02','2021-11-13 08:47:02'),(109,'Iraq','iq','964','IQD','ع.د','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(110,'Ireland','ie','353','EUR','€','Irish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(111,'Isle of Man','im','44','GBP','£','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(112,'Israel','il','972','ILS','₪','Hebrew (modern)','2021-11-13 08:47:02','2021-11-13 08:47:02'),(113,'Italy','it','39','EUR','€','Italian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(114,'Jamaica','jm','1876','JMD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(115,'Japan','jp','81','JPY','¥','Japanese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(116,'Jersey','je','44','GBP','£','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(117,'Jordan','jo','962','JOD','د.ا','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(118,'Kazakhstan','kz','76','KZT',NULL,'Kazakh','2021-11-13 08:47:02','2021-11-13 08:47:02'),(119,'Kenya','ke','254','KES','Sh','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(120,'Kiribati','ki','686','AUD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(121,'Kuwait','kw','965','KWD','د.ك','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(122,'Kyrgyzstan','kg','996','KGS','с','Kyrgyz','2021-11-13 08:47:02','2021-11-13 08:47:02'),(123,'Lao People\'s Democratic Republic','la','856','LAK','₭','Lao','2021-11-13 08:47:02','2021-11-13 08:47:02'),(124,'Latvia','lv','371','EUR','€','Latvian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(125,'Lebanon','lb','961','LBP','ل.ل','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(126,'Lesotho','ls','266','LSL','L','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(127,'Liberia','lr','231','LRD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(128,'Libya','ly','218','LYD','ل.د','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(129,'Liechtenstein','li','423','CHF','Fr','German','2021-11-13 08:47:02','2021-11-13 08:47:02'),(130,'Lithuania','lt','370','EUR','€','Lithuanian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(131,'Luxembourg','lu','352','EUR','€','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(132,'Macao','mo','853','MOP','P','Chinese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(133,'Macedonia (the former Yugoslav Republic of)','mk','389','MKD','ден','Macedonian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(134,'Madagascar','mg','261','MGA','Ar','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(135,'Malawi','mw','265','MWK','MK','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(136,'Malaysia','my','60','MYR','RM','Malaysian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(137,'Maldives','mv','960','MVR','.ރ','Divehi','2021-11-13 08:47:02','2021-11-13 08:47:02'),(138,'Mali','ml','223','XOF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(139,'Malta','mt','356','EUR','€','Maltese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(140,'Marshall Islands','mh','692','USD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(141,'Martinique','mq','596','EUR','€','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(142,'Mauritania','mr','222','MRO','UM','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(143,'Mauritius','mu','230','MUR','₨','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(144,'Mayotte','yt','262','EUR','€','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(145,'Mexico','mx','52','MXN','$','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(146,'Micronesia (Federated States of)','fm','691',NULL,'$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(147,'Moldova (Republic of)','md','373','MDL','L','Romanian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(148,'Monaco','mc','377','EUR','€','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(149,'Mongolia','mn','976','MNT','₮','Mongolian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(150,'Montenegro','me','382','EUR','€','Serbian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(151,'Montserrat','ms','1664','XCD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(152,'Morocco','ma','212','MAD','د.م.','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(153,'Mozambique','mz','258','MZN','MT','Portuguese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(154,'Myanmar','mm','95','MMK','Ks','Burmese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(155,'Namibia','na','264','NAD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(156,'Nauru','nr','674','AUD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(157,'Nepal','np','977','NPR','₨','Nepali','2021-11-13 08:47:02','2021-11-13 08:47:02'),(158,'Netherlands','nl','31','EUR','€','Dutch','2021-11-13 08:47:02','2021-11-13 08:47:02'),(159,'New Caledonia','nc','687','XPF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(160,'New Zealand','nz','64','NZD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(161,'Nicaragua','ni','505','NIO','C$','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(162,'Niger','ne','227','XOF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(163,'Nigeria','ng','234','NGN','₦','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(164,'Niue','nu','683','NZD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(165,'Norfolk Island','nf','672','AUD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(166,'Korea (Democratic People\'s Republic of)','kp','850','KPW','₩','Korean','2021-11-13 08:47:02','2021-11-13 08:47:02'),(167,'Northern Mariana Islands','mp','1670','USD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(168,'Norway','no','47','NOK','kr','Norwegian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(169,'Oman','om','968','OMR','ر.ع.','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(170,'Pakistan','pk','92','PKR','₨','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(171,'Palau','pw','680','(none)','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(172,'Palestine, State of','ps','970','ILS','₪','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(173,'Panama','pa','507','PAB','B/.','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(174,'Papua New Guinea','pg','675','PGK','K','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(175,'Paraguay','py','595','PYG','₲','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(176,'Peru','pe','51','PEN','S/.','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(177,'Philippines','ph','63','PHP','₱','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(178,'Pitcairn','pn','64','NZD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(179,'Poland','pl','48','PLN','zł','Polish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(180,'Portugal','pt','351','EUR','€','Portuguese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(181,'Puerto Rico','pr','1787','USD','$','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(182,'Qatar','qa','974','QAR','ر.ق','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(183,'Republic of Kosovo','xk','383','EUR','€','Albanian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(184,'Réunion','re','262','EUR','€','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(185,'Romania','ro','40','RON','lei','Romanian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(186,'Russian Federation','ru','7','RUB','₽','Russian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(187,'Rwanda','rw','250','RWF','Fr','Kinyarwanda','2021-11-13 08:47:02','2021-11-13 08:47:02'),(188,'Saint Barthélemy','bl','590','EUR','€','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(189,'Saint Helena, Ascension and Tristan da Cunha','sh','290','SHP','£','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(190,'Saint Kitts and Nevis','kn','1869','XCD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(191,'Saint Lucia','lc','1758','XCD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(192,'Saint Martin (French part)','mf','590','EUR','€','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(193,'Saint Pierre and Miquelon','pm','508','EUR','€','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(194,'Saint Vincent and the Grenadines','vc','1784','XCD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(195,'Samoa','ws','685','WST','T','Samoan','2021-11-13 08:47:02','2021-11-13 08:47:02'),(196,'San Marino','sm','378','EUR','€','Italian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(197,'Sao Tome and Principe','st','239','STD','Db','Portuguese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(198,'Saudi Arabia','sa','966','SAR','ر.س','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(199,'Senegal','sn','221','XOF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(200,'Serbia','rs','381','RSD','дин.','Serbian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(201,'Seychelles','sc','248','SCR','₨','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(202,'Sierra Leone','sl','232','SLL','Le','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(203,'Singapore','sg','65','BND','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(204,'Sint Maarten (Dutch part)','sx','1721','ANG','ƒ','Dutch','2021-11-13 08:47:02','2021-11-13 08:47:02'),(205,'Slovakia','sk','421','EUR','€','Slovak','2021-11-13 08:47:02','2021-11-13 08:47:02'),(206,'Slovenia','si','386','EUR','€','Slovene','2021-11-13 08:47:02','2021-11-13 08:47:02'),(207,'Solomon Islands','sb','677','SBD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(208,'Somalia','so','252','SOS','Sh','Somali','2021-11-13 08:47:02','2021-11-13 08:47:02'),(209,'South Africa','za','27','ZAR','R','Afrikaans','2021-11-13 08:47:02','2021-11-13 08:47:02'),(210,'South Georgia and the South Sandwich Islands','gs','500','GBP','£','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(211,'Korea (Republic of)','kr','82','KRW','₩','Korean','2021-11-13 08:47:02','2021-11-13 08:47:02'),(212,'South Sudan','ss','211','SSP','£','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(213,'Spain','es','34','EUR','€','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(214,'Sri Lanka','lk','94','LKR','Rs','Sinhalese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(215,'Sudan','sd','249','SDG','ج.س.','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(216,'Suriname','sr','597','SRD','$','Dutch','2021-11-13 08:47:02','2021-11-13 08:47:02'),(217,'Svalbard and Jan Mayen','sj','4779','NOK','kr','Norwegian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(218,'Swaziland','sz','268','SZL','L','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(219,'Sweden','se','46','SEK','kr','Swedish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(220,'Switzerland','ch','41','CHF','Fr','German','2021-11-13 08:47:02','2021-11-13 08:47:02'),(221,'Syrian Arab Republic','sy','963','SYP','£','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(222,'Taiwan','tw','886','TWD','$','Chinese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(223,'Tajikistan','tj','992','TJS','ЅМ','Tajik','2021-11-13 08:47:02','2021-11-13 08:47:02'),(224,'Tanzania, United Republic of','tz','255','TZS','Sh','Swahili','2021-11-13 08:47:02','2021-11-13 08:47:02'),(225,'Thailand','th','66','THB','฿','Thai','2021-11-13 08:47:02','2021-11-13 08:47:02'),(226,'Timor-Leste','tl','670','USD','$','Portuguese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(227,'Togo','tg','228','XOF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(228,'Tokelau','tk','690','NZD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(229,'Tonga','to','676','TOP','T$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(230,'Trinidad and Tobago','tt','1868','TTD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(231,'Tunisia','tn','216','TND','د.ت','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(232,'Turkey','tr','90','TRY',NULL,'Turkish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(233,'Turkmenistan','tm','993','TMT','m','Turkmen','2021-11-13 08:47:02','2021-11-13 08:47:02'),(234,'Turks and Caicos Islands','tc','1649','USD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(235,'Tuvalu','tv','688','AUD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(236,'Uganda','ug','256','UGX','Sh','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(237,'Ukraine','ua','380','UAH','₴','Ukrainian','2021-11-13 08:47:02','2021-11-13 08:47:02'),(238,'United Arab Emirates','ae','971','AED','د.إ','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(239,'United Kingdom of Great Britain and Northern Ireland','gb','44','GBP','£','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(240,'United States of America','us','1','USD','$','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(241,'Uruguay','uy','598','UYU','$','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(242,'Uzbekistan','uz','998','UZS',NULL,'Uzbek','2021-11-13 08:47:02','2021-11-13 08:47:02'),(243,'Vanuatu','vu','678','VUV','Vt','Bislama','2021-11-13 08:47:02','2021-11-13 08:47:02'),(244,'Venezuela (Bolivarian Republic of)','ve','58','VEF','Bs F','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(245,'Viet Nam','vn','84','VND','₫','Vietnamese','2021-11-13 08:47:02','2021-11-13 08:47:02'),(246,'Wallis and Futuna','wf','681','XPF','Fr','French','2021-11-13 08:47:02','2021-11-13 08:47:02'),(247,'Western Sahara','eh','212','MAD','د.م.','Spanish','2021-11-13 08:47:02','2021-11-13 08:47:02'),(248,'Yemen','ye','967','YER','﷼','Arabic','2021-11-13 08:47:02','2021-11-13 08:47:02'),(249,'Zambia','zm','260','ZMW','ZK','English','2021-11-13 08:47:02','2021-11-13 08:47:02'),(250,'Zimbabwe','zw','263','BWP','P','English','2021-11-13 08:47:02','2021-11-13 08:47:02');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conversation_rate` decimal(10,6) DEFAULT NULL,
  `status` enum('ENABLED','DISABLED') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'US Dollar','USD','4',1.000000,'DISABLED','2021-11-13 14:42:15','2021-11-27 10:32:09');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_groups`
--

DROP TABLE IF EXISTS `customer_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_groups`
--

LOCK TABLES `customer_groups` WRITE;
/*!40000 ALTER TABLE `customer_groups` DISABLE KEYS */;
INSERT INTO `customer_groups` VALUES (1,'Default Group',1,'2021-11-13 08:47:02','2021-11-13 08:47:02');
/*!40000 ALTER TABLE `customer_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_password_resets`
--

DROP TABLE IF EXISTS `customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `customer_password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_password_resets`
--

LOCK TABLES `customer_password_resets` WRITE;
/*!40000 ALTER TABLE `customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Carmen','Dach','doris.schultz@example.org','secret',NULL,NULL,NULL,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(2,'PRATEEK','JENA','pjena891@gmail.com','$2y$10$x0fIuPsopNtj5cDs3/sHGOW8HUtPWKE45HqHvTR7QAPiZYIpLllMq','uploads/user/gWvgaJ05RjPjVywtUzyPtCfR6Ykb6WPxvZ0uiEGd.png',NULL,NULL,'2021-11-14 10:58:47','2021-11-14 11:10:26'),(3,'PRERNA','PRASAD','prernaprasad100@gmail.com','$2y$10$oBRZ4rBz20.3NAcYEVxru.xl5IXE2qjq4V/MgSLtb8AyInsdnkIii',NULL,NULL,NULL,'2021-11-28 11:54:12','2021-11-28 11:54:12');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en',1,'2021-11-13 08:47:02','2021-11-13 08:47:02');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_groups`
--

DROP TABLE IF EXISTS `menu_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_groups`
--

LOCK TABLES `menu_groups` WRITE;
/*!40000 ALTER TABLE `menu_groups` DISABLE KEYS */;
INSERT INTO `menu_groups` VALUES (1,'Main Menu','main-menu',0,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(2,'Main Auth Menu','main-auth-menu',0,'2021-11-13 08:47:14','2021-11-13 08:47:14');
/*!40000 ALTER TABLE `menu_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_group_id` bigint(20) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route_info` text COLLATE utf8mb4_unicode_ci,
  `type` enum('CATEGORY','FRONT_MENU','CUSTOM') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_menu_group_id_foreign` (`menu_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,1,NULL,'Shimla',0,'2021-11-13 08:47:14','2021-11-13 08:47:14','shimla','CATEGORY'),(2,1,NULL,'Kathmandu',0,'2021-11-13 08:47:14','2021-11-13 08:47:14','kathmandu','CATEGORY'),(3,1,NULL,'Darjeeling',0,'2021-11-13 08:47:14','2021-11-13 08:47:14','darjeeling','CATEGORY'),(4,1,NULL,'Cart',0,'2021-11-13 08:47:14','2021-11-13 08:47:14','cart.show','FRONT_MENU'),(5,1,NULL,'Checkout',0,'2021-11-13 08:47:14','2021-11-13 08:47:14','checkout.show','FRONT_MENU'),(6,1,NULL,'Login',0,'2021-11-13 08:47:14','2021-11-13 08:47:14','login','FRONT_MENU'),(7,1,NULL,'Register',0,'2021-11-13 08:47:14','2021-11-13 08:47:14','register','FRONT_MENU'),(8,2,NULL,'Shimla',0,'2021-11-13 08:47:14','2021-11-13 08:47:14','shimla','CATEGORY'),(9,2,NULL,'Kathmandu',0,'2021-11-13 08:47:14','2021-11-13 08:47:14','kathmandu','CATEGORY'),(10,2,NULL,'Darjeeling',0,'2021-11-13 08:47:14','2021-11-13 08:47:14','darjeeling','CATEGORY'),(11,2,NULL,'Cart',0,'2021-11-13 08:47:14','2021-11-13 08:47:14','cart.show','FRONT_MENU'),(12,2,NULL,'Checkout',0,'2021-11-13 08:47:14','2021-11-13 08:47:14','checkout.show','FRONT_MENU'),(13,2,NULL,'Account',0,'2021-11-13 08:47:14','2021-11-13 08:47:14','account.dashboard','FRONT_MENU'),(14,2,13,'Logout',0,'2021-11-13 08:47:14','2021-11-13 08:47:14','logout','FRONT_MENU');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2017_03_29_000000_avored_framework_schema',1),(9,'2017_03_29_000000_avored_framework_schema_3_1_3',1),(10,'2017_03_29_000000_avored_framework_schema_3_1_5',1),(11,'2017_03_29_000000_avored_framework_schema_3_1_8',1),(12,'2017_03_29_000001_avored_review_schema',1),(13,'2017_03_29_000001_avored_wishlist_schema',1),(14,'2019_09_21_003425_alter_user_table',1),(15,'2017_03_29_000000_avored_demo_data_schema',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_comments`
--

DROP TABLE IF EXISTS `order_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint(20) unsigned NOT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  KEY `order_comments_order_id_foreign` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_comments`
--

LOCK TABLES `order_comments` WRITE;
/*!40000 ALTER TABLE `order_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product_attributes`
--

DROP TABLE IF EXISTS `order_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_product_id` bigint(20) unsigned NOT NULL,
  `attribute_id` bigint(20) unsigned NOT NULL,
  `attribute_dropdown_option_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_product_attributes_order_product_id_foreign` (`order_product_id`),
  KEY `order_product_attributes_attribute_id_foreign` (`attribute_id`),
  KEY `order_product_attributes_attribute_dropdown_option_id_foreign` (`attribute_dropdown_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product_attributes`
--

LOCK TABLES `order_product_attributes` WRITE;
/*!40000 ALTER TABLE `order_product_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `qty` decimal(11,6) NOT NULL,
  `price` decimal(11,6) NOT NULL,
  `tax_amount` decimal(11,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_products_order_id_foreign` (`order_id`),
  KEY `order_products_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` VALUES (1,7,1,1.000000,63.100000,0.000000,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(2,5,2,9.000000,71.700000,0.000000,'2021-11-13 08:47:14','2021-11-13 08:47:14');
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_statuses`
--

DROP TABLE IF EXISTS `order_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_statuses`
--

LOCK TABLES `order_statuses` WRITE;
/*!40000 ALTER TABLE `order_statuses` DISABLE KEYS */;
INSERT INTO `order_statuses` VALUES (1,'Pending',1,'2021-11-13 08:47:02','2021-11-13 08:47:02'),(2,'Processing',0,'2021-11-13 08:47:02','2021-11-13 08:47:02'),(3,'Completed',0,'2021-11-13 08:47:02','2021-11-13 08:47:02');
/*!40000 ALTER TABLE `order_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status_id` bigint(20) unsigned NOT NULL,
  `currency_id` bigint(20) unsigned DEFAULT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `shipping_address_id` bigint(20) unsigned DEFAULT NULL,
  `billing_address_id` bigint(20) unsigned DEFAULT NULL,
  `track_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_currency_id_foreign` (`currency_id`),
  KEY `orders_shipping_address_id_foreign` (`shipping_address_id`),
  KEY `orders_billing_address_id_foreign` (`billing_address_id`),
  KEY `orders_order_status_id_foreign` (`order_status_id`),
  KEY `orders_customer_id_foreign` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'pickup','a-cash-on-delivery',2,1,1,1,2,'TRACK999','2021-11-13 08:47:14','2021-11-14 14:12:58'),(2,'pickup','a-cash-on-delivery',1,1,1,3,4,NULL,'2021-11-13 08:47:14','2021-11-13 08:47:14');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'HomePage','home-page','%%%avored-banner%%%',NULL,NULL,'2021-11-13 08:47:14','2021-11-13 08:47:14');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci,
  `alt_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_main_image` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (17,13,'uploads/catalog/13/Y0CttpSzj25e5WwxPdu8ztUE1P5oztQsBi1s2RcQ.png','',1,'2021-11-13 10:34:43','2021-11-14 05:29:37'),(18,2,'uploads/catalog/2/7ogzbht2iEEb2DhaFevW8qeBcSn5YT7pkImCz6hZ.png','',1,'2021-11-13 10:36:15','2021-11-14 05:31:29'),(21,16,'uploads/catalog/16/IjjXcQTSYBwqvwtPdEZvDQ1Uk70AytINzG3edRWB.png','',1,'2021-11-13 10:49:16','2021-11-14 05:30:11'),(20,15,'uploads/catalog/15/j1xA4RKNvJ2USZCAq0S0c1KgJ7ncx2GMo2yANMcT.png','',1,'2021-11-13 10:44:28','2021-11-13 10:46:14'),(19,14,'uploads/catalog/14/FEQc6oubTKa4fJ1ZOBMBEBvDV5olBZaqp0JauJKs.png','',1,'2021-11-13 10:39:28','2021-11-14 05:29:52'),(16,1,'uploads/catalog/1/wW9rnYpY1ZWmUleNGgq1g51LRADqQFn1gqwgTGyP.png','',1,'2021-11-13 10:34:20','2021-11-13 14:28:00'),(2,2,'uploads/catalog/12/PuT6DQGOH5Fe8zU4c6vHELhwAFNit6cEOB65evET.png','',0,'2021-11-13 10:23:31','2021-11-13 10:36:16'),(15,2,'uploads/catalog/2/gFGO6JdtOXO4KAiPkJa6fqag1GPJM5zeEo0YxXej.png','',0,'2021-11-13 10:29:44','2021-11-14 05:31:29'),(22,17,'uploads/catalog/17/jWuGhQRnGuH3qf4SbsW6kEOKY3hvt3994xCsASGK.png','',1,'2021-11-13 10:50:56','2021-11-14 05:30:22'),(23,18,'uploads/catalog/18/gCzWIKsn8G01VTl6Zy3HEgXYryB6ENSpv1jVLaVA.png','',1,'2021-11-13 10:53:32','2021-11-14 05:30:01'),(24,19,'uploads/catalog/19/C5ReVvNUJr7BpdSBiIRhSW4GtJdk3C9BELwz3YM3.png',NULL,1,'2021-11-13 10:55:09','2021-11-13 10:55:09'),(25,20,'uploads/catalog/20/jBhxkiMhYAvhKhwU59aRNjGh1BDHv9aEvHuxIsiD.png','',1,'2021-11-13 10:56:35','2021-11-14 05:30:29'),(26,21,'uploads/catalog/21/grUnfW8OcFcQPdqBbiqK4ckDhQsXWNGo14mTAcSy.jpg','',1,'2021-11-13 11:03:04','2021-11-14 05:30:42');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_property`
--

DROP TABLE IF EXISTS `product_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_property_property_id_foreign` (`property_id`),
  KEY `product_property_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_property`
--

LOCK TABLES `product_property` WRITE;
/*!40000 ALTER TABLE `product_property` DISABLE KEYS */;
INSERT INTO `product_property` VALUES (1,1,1,NULL,NULL),(2,2,1,NULL,NULL),(4,2,2,NULL,NULL),(6,2,3,NULL,NULL),(8,2,4,NULL,NULL),(10,2,5,NULL,NULL),(12,2,6,NULL,NULL),(14,2,7,NULL,NULL),(16,2,8,NULL,NULL),(18,2,9,NULL,NULL),(19,1,2,NULL,NULL),(20,1,13,NULL,NULL),(21,1,14,NULL,NULL),(22,1,18,NULL,NULL),(23,1,16,NULL,NULL),(24,1,15,NULL,NULL),(25,1,17,NULL,NULL),(26,1,20,NULL,NULL),(27,1,21,NULL,NULL);
/*!40000 ALTER TABLE `product_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_property_boolean_values`
--

DROP TABLE IF EXISTS `product_property_boolean_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_property_boolean_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `value` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_property_boolean_values_property_id_foreign` (`property_id`),
  KEY `product_property_boolean_values_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_property_boolean_values`
--

LOCK TABLES `product_property_boolean_values` WRITE;
/*!40000 ALTER TABLE `product_property_boolean_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_property_boolean_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_property_datetime_values`
--

DROP TABLE IF EXISTS `product_property_datetime_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_property_datetime_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `value` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_property_datetime_values_property_id_foreign` (`property_id`),
  KEY `product_property_datetime_values_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_property_datetime_values`
--

LOCK TABLES `product_property_datetime_values` WRITE;
/*!40000 ALTER TABLE `product_property_datetime_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_property_datetime_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_property_decimal_values`
--

DROP TABLE IF EXISTS `product_property_decimal_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_property_decimal_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `value` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_property_decimal_values_property_id_foreign` (`property_id`),
  KEY `product_property_decimal_values_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_property_decimal_values`
--

LOCK TABLES `product_property_decimal_values` WRITE;
/*!40000 ALTER TABLE `product_property_decimal_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_property_decimal_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_property_integer_values`
--

DROP TABLE IF EXISTS `product_property_integer_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_property_integer_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `value` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_property_integer_values_property_id_foreign` (`property_id`),
  KEY `product_property_integer_values_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_property_integer_values`
--

LOCK TABLES `product_property_integer_values` WRITE;
/*!40000 ALTER TABLE `product_property_integer_values` DISABLE KEYS */;
INSERT INTO `product_property_integer_values` VALUES (1,1,1,1,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(2,2,1,2,'2021-11-13 08:47:14','2021-11-13 10:28:50'),(3,1,2,1,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(4,2,2,2,'2021-11-13 08:47:14','2021-11-13 10:27:42'),(5,1,3,1,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(6,2,3,4,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(7,1,4,1,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(8,2,4,4,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(9,1,5,1,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(10,2,5,5,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(11,1,6,2,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(12,2,6,5,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(13,1,7,3,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(14,2,7,4,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(15,1,8,2,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(16,2,8,4,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(17,1,9,3,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(18,2,9,6,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(19,1,13,1,'2021-11-14 05:29:37','2021-11-14 05:29:37'),(20,1,14,1,'2021-11-14 05:29:52','2021-11-14 05:29:52'),(21,1,18,1,'2021-11-14 05:30:01','2021-11-14 05:30:01'),(22,1,16,1,'2021-11-14 05:30:11','2021-11-14 05:30:11'),(23,1,15,1,'2021-11-14 05:30:16','2021-11-14 05:30:16'),(24,1,17,1,'2021-11-14 05:30:22','2021-11-14 05:30:22'),(25,1,20,1,'2021-11-14 05:30:29','2021-11-14 05:30:29'),(26,1,21,1,'2021-11-14 05:30:42','2021-11-14 05:30:42');
/*!40000 ALTER TABLE `product_property_integer_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_property_text_values`
--

DROP TABLE IF EXISTS `product_property_text_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_property_text_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_property_text_values_property_id_foreign` (`property_id`),
  KEY `product_property_text_values_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_property_text_values`
--

LOCK TABLES `product_property_text_values` WRITE;
/*!40000 ALTER TABLE `product_property_text_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_property_text_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_property_varchar_values`
--

DROP TABLE IF EXISTS `product_property_varchar_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_property_varchar_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_property_varchar_values_property_id_foreign` (`property_id`),
  KEY `product_property_varchar_values_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_property_varchar_values`
--

LOCK TABLES `product_property_varchar_values` WRITE;
/*!40000 ALTER TABLE `product_property_varchar_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_property_varchar_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` double(2,1) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` enum('APPROVED','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_reviews_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reviews`
--

LOCK TABLES `product_reviews` WRITE;
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('BASIC','VARIATION','DOWNLOADABLE','VARIABLE_PRODUCT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BASIC',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `in_stock` tinyint(4) DEFAULT NULL,
  `track_stock` tinyint(4) DEFAULT NULL,
  `qty` decimal(10,6) DEFAULT NULL,
  `is_taxable` tinyint(4) DEFAULT NULL,
  `price` decimal(10,6) DEFAULT NULL,
  `cost_price` decimal(10,4) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `width` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'BASIC','Camping tent with poles - Arpenaz 4 - 4 People - 1 Bedroom','camping-tent-with-poles','Reference: 8322425',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet massa vitae tortor. Laoreet sit amet cursus sit amet.',1,NULL,1,10.000000,NULL,450.000000,3999.0000,6.70,NULL,NULL,NULL,NULL,NULL,'2021-11-13 10:00:01','2021-11-13 14:44:19'),(2,'BASIC','CAMPING TENT 2 SECONDS EASY - FRESH & BLACK - 2 PERSON','camping-tent-black','Reference: 8553541',NULL,'2 person tent that you can pitch in a few minutes. Guaranteed mobility!. Enjoy time-saving at its best: the new 2 Second system is as quick to put up as it is to fold away. There are better things to do on holiday than set up camp!\r\n\r\n**Key features:**\r\n* Easy assembly / dismantling\r\n* Heat reduction\r\n* Fast mobility\r\n* Wind resistance\r\n* Waterproof',1,NULL,1,10.000000,NULL,700.000000,9999.0000,NULL,NULL,NULL,NULL,'Meta- title CAMPING TENT 2 SECONDS EASY - FRESH & BLACK - 2 PERSON','Meta Desc','2021-11-13 09:30:04','2021-11-13 09:57:36'),(13,'BASIC','Camping Tent with Poles Arpenaz 4.2 4 People 2 Bedrooms','camping-tent-with-poles','Reference: 8562098',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tempus iaculis urna id volutpat lacus laoreet. In cursus turpis massa tincidunt dui ut.',1,NULL,1,8.000000,NULL,1400.000000,13999.0000,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-13 10:34:40','2021-11-13 10:35:27'),(14,'BASIC','Men’s Hiking Shoes (WATERPROOF) MH100 - Khaki','mens-hiking-shoes-waterproof','Reference: 8553121',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Et ultrices neque ornare aenean euismod. Vehicula ipsum a arcu cursus.',1,NULL,1,7.000000,NULL,500.000000,4499.0000,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-13 10:39:23','2021-11-13 10:41:01'),(15,'BASIC','Men\'s Snow Shoes WARM & WATERPROOF SH100 U-WARM High - Black','mens-snow-shoes-waterproof','Reference: 8367617',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Et ultrices neque ornare aenean euismod. Vehicula ipsum a arcu cursus.',1,NULL,1,10.000000,NULL,300.000000,3999.0000,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-13 10:44:20','2021-11-13 10:46:14'),(16,'BASIC','Trekking Sleeping Bag MT500 5°C - Polyester','trekking-sleeping-bag','Reference: 8556634',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas sed tempus urna et pharetra pharetra. Gravida neque convallis a cras semper auctor neque.',1,NULL,1,30.000000,0,350.000000,5199.0000,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-13 10:48:17','2021-11-13 10:49:19'),(17,'BASIC','Protective tent groundsheet - TREK 500 - 3 people','protective-tent-groundsheet-trek','Reference: 8581938',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Massa enim nec dui nunc mattis enim. Dictum fusce ut placerat orci nulla.',1,NULL,1,10.000000,NULL,250.000000,2699.0000,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-13 10:49:47','2021-11-13 10:50:56'),(18,'BASIC','Trek Sleeping Bag Stuff Bag - Black','trek-sleeping-bag-stuff-bag',NULL,NULL,NULL,1,NULL,1,20.000000,NULL,50.000000,499.0000,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-13 10:52:33','2021-11-13 10:53:35'),(19,'BASIC','Trekking Backpack Trek 900 90+10 Litre-Khaki','trekking-backpack-trek900','Reference: 8492332',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Massa enim nec dui nunc mattis enim. Dictum fusce ut placerat orci nulla.',1,NULL,1,10.000000,NULL,650.000000,11999.0000,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-13 10:54:16','2021-11-13 10:55:09'),(20,'BASIC','Women Trekking Backpack Trek 100 60 Litre Easyfit - Khaki','women-trekking-backpack-trek100','Reference: 8575705',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Massa enim nec dui nunc mattis enim. Dictum fusce ut placerat orci nulla.',1,NULL,1,6.000000,NULL,500.000000,6999.0000,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-13 10:55:46','2021-11-13 10:56:26'),(21,'BASIC','EVEREST BOMBER','everest-bomber','Reference: 8322433',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Massa enim nec dui nunc mattis enim. Dictum fusce ut placerat orci nulla.',1,NULL,1,10.000000,NULL,500.000000,14999.0000,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-13 11:01:24','2021-11-13 11:03:06'),(22,'BASIC','aa','aa',NULL,NULL,NULL,1,NULL,1,11.000000,NULL,11.000000,11111.0000,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-14 04:38:38','2021-11-14 04:38:52');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_codes`
--

DROP TABLE IF EXISTS `promotion_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `type` enum('PERCENTAGE','FIXED','FREE_SHIPPING') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,4) DEFAULT NULL,
  `active_from` timestamp NULL DEFAULT NULL,
  `active_till` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_codes`
--

LOCK TABLES `promotion_codes` WRITE;
/*!40000 ALTER TABLE `promotion_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_type` enum('INTEGER','DECIMAL','DATETIME','VARCHAR','BOOLEAN','TEXT') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_type` enum('TEXT','TEXTAREA','CKEDITOR','SELECT','FILE','DATETIME','RADIO','SWITCH') COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_all_products` tinyint(4) NOT NULL DEFAULT '0',
  `use_for_category_filter` tinyint(4) NOT NULL DEFAULT '0',
  `is_visible_frontend` tinyint(4) DEFAULT '1',
  `sort_order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `properties_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,'Brand','brand','INTEGER','SELECT',1,1,1,10,'2021-11-13 08:47:14','2021-11-13 08:47:14'),(2,'Frame Material','frame-material','INTEGER','SELECT',1,1,1,10,'2021-11-13 08:47:14','2021-11-13 08:47:14');
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_dropdown_options`
--

DROP TABLE IF EXISTS `property_dropdown_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_dropdown_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` bigint(20) unsigned NOT NULL,
  `display_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `property_dropdown_options_property_id_foreign` (`property_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_dropdown_options`
--

LOCK TABLES `property_dropdown_options` WRITE;
/*!40000 ALTER TABLE `property_dropdown_options` DISABLE KEYS */;
INSERT INTO `property_dropdown_options` VALUES (1,1,'Superdry','2021-11-13 08:47:14','2021-11-13 08:47:14'),(2,1,'Deacthlon','2021-11-13 08:47:14','2021-11-13 08:47:14'),(3,1,'TheNorthFace','2021-11-13 08:47:14','2021-11-13 08:47:14'),(4,2,'Oak wood','2021-11-13 08:47:14','2021-11-13 08:47:14'),(5,2,'White wood framae','2021-11-13 08:47:14','2021-11-13 08:47:14'),(6,2,'Aluminium frame','2021-11-13 08:47:14','2021-11-13 08:47:14');
/*!40000 ALTER TABLE `property_dropdown_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrator',NULL,'2021-11-13 08:47:02','2021-11-13 08:47:02');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `states_country_id_foreign` (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_groups`
--

DROP TABLE IF EXISTS `tax_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_groups`
--

LOCK TABLES `tax_groups` WRITE;
/*!40000 ALTER TABLE `tax_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rates`
--

DROP TABLE IF EXISTS `tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_rates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` double(10,6) NOT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  `postcode` int(11) DEFAULT NULL,
  `rate_type` enum('PERCENTAGE','FIXED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PERCENTAGE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rates`
--

LOCK TABLES `tax_rates` WRITE;
/*!40000 ALTER TABLE `tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlists_product_id_foreign` (`product_id`),
  KEY `wishlists_customer_id_foreign` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (1,3,2,'2021-11-28 11:54:15','2021-11-28 11:54:15');
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'travlease'
--

--
-- Dumping routines for database 'travlease'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-29  1:06:58
