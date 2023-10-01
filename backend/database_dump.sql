-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: gears
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `brand_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(50) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'ogawa'),(2,'Coleman'),(3,'snow peak'),(4,'WIWO'),(5,'BUNDOK'),(6,'OneTigris'),(7,'WAQ'),(8,'ogawa'),(9,'Coleman'),(10,'snow peak'),(11,'WIWO'),(12,'BUNDOK'),(13,'OneTigris'),(14,'WAQ'),(15,'AO Coolers'),(16,'ogawa'),(17,'Coleman'),(18,'snow peak'),(19,'WIWO'),(20,'BUNDOK'),(21,'OneTigris'),(22,'WAQ'),(23,'AO Coolers'),(24,'UNIFLAME'),(25,'ogawa'),(26,'Coleman'),(27,'snow peak'),(28,'WIWO'),(29,'BUNDOK'),(30,'OneTigris'),(31,'WAQ'),(32,'AO Coolers'),(33,'UNIFLAME'),(34,'CAPTAIN STAG'),(35,'ogawa'),(36,'Coleman'),(37,'snow peak'),(38,'WIWO'),(39,'BUNDOK'),(40,'OneTigris'),(41,'WAQ'),(42,'AO Coolers'),(43,'UNIFLAME'),(44,'CAPTAIN STAG'),(45,'ALPACA'),(46,'NANGA');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'繝・Φ繝・),(2,'繧ｿ繝ｼ繝・),(3,'繝√ぉ繧｢'),(4,'繝・・繝悶Ν'),(5,'辟壹″轣ｫ蜿ｰ'),(6,'繝ｩ繝ｳ繧ｿ繝ｳ縲∫・譏・),(7,'蟇晁｢・),(8,'繝槭ャ繝・),(9,'繧ｳ繝・ヨ'),(10,'隱ｿ逅・勣蜈ｷ'),(11,'繝・Φ繝医い繧ｯ繧ｻ繧ｵ繝ｪ繝ｼ'),(12,'證匁袷蝎ｨ蜈ｷ'),(13,'繧ｯ繝ｼ繝ｩ繝ｼ繝懊ャ繧ｯ繧ｹ'),(14,'蜿守ｴ・),(15,'繝・Φ繝・),(16,'繧ｿ繝ｼ繝・),(17,'繝√ぉ繧｢'),(18,'繝・・繝悶Ν'),(19,'辟壹″轣ｫ蜿ｰ'),(20,'繝ｩ繝ｳ繧ｿ繝ｳ'),(21,'蟇晁｢・),(22,'繝槭ャ繝・),(23,'繧ｳ繝・ヨ'),(24,'隱ｿ逅・勣蜈ｷ'),(25,'繝・Φ繝医い繧ｯ繧ｻ繧ｵ繝ｪ繝ｼ'),(26,'證匁袷蝎ｨ蜈ｷ'),(27,'繧ｯ繝ｼ繝ｩ繝ｼ繝懊ャ繧ｯ繧ｹ'),(28,'蜿守ｴ・),(29,'繝・Φ繝・),(30,'繧ｿ繝ｼ繝・),(31,'繝√ぉ繧｢'),(32,'繝・・繝悶Ν'),(33,'辟壹″轣ｫ蜿ｰ'),(34,'繝ｩ繝ｳ繧ｿ繝ｳ'),(35,'蟇晁｢・),(36,'繝槭ャ繝・),(37,'繧ｳ繝・ヨ'),(38,'隱ｿ逅・勣蜈ｷ'),(39,'繝・Φ繝医い繧ｯ繧ｻ繧ｵ繝ｪ繝ｼ'),(40,'繧ｹ繝医・繝・),(41,'繧ｯ繝ｼ繝ｩ繝ｼ繝懊ャ繧ｯ繧ｹ'),(42,'蜿守ｴ・);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color_tags`
--

DROP TABLE IF EXISTS `color_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color_tags` (
  `color_tag_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `color_tag_name` varchar(50) NOT NULL,
  PRIMARY KEY (`color_tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_tags`
--

LOCK TABLES `color_tags` WRITE;
/*!40000 ALTER TABLE `color_tags` DISABLE KEYS */;
INSERT INTO `color_tags` VALUES (1,'繧ｪ繝ｪ繝ｼ繝・),(2,'繝ｬ繝・ラ'),(3,'繝悶Λ繝・け'),(4,'繝帙Ρ繧､繝・),(5,'繝吶・繧ｸ繝･'),(6,'繝悶Λ繧ｦ繝ｳ'),(7,'繧ｪ繝ｪ繝ｼ繝・),(8,'繧ｪ繝ｪ繝ｼ繝・),(9,'繝ｬ繝・ラ'),(10,'繝悶Λ繝・け'),(11,'繝帙Ρ繧､繝・),(12,'繝吶・繧ｸ繝･'),(13,'繝悶Λ繧ｦ繝ｳ'),(14,'繧ｫ繝・ヱ繝ｼ'),(15,'繧ｪ繝ｪ繝ｼ繝・),(16,'繝ｬ繝・ラ'),(17,'繝悶Λ繝・け'),(18,'繝帙Ρ繧､繝・),(19,'繝吶・繧ｸ繝･'),(20,'繝悶Λ繧ｦ繝ｳ'),(21,'繧ｫ繝・ヱ繝ｼ'),(22,'繝阪う繝薙・');
/*!40000 ALTER TABLE `color_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `comment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `layout_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `comments_layout_id_foreign` (`layout_id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_parent_id_foreign` (`parent_id`),
  CONSTRAINT `comments_layout_id_foreign` FOREIGN KEY (`layout_id`) REFERENCES `layouts` (`layout_id`) ON DELETE CASCADE,
  CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`comment_id`) ON DELETE CASCADE,
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,2,NULL,'隕ｪ縺ｦ縺吶→縺薙ａ繧薙→','2023-09-30 06:32:47','2023-09-30 06:32:47'),(2,1,2,NULL,'隕ｪ繧ｳ繝｡繝ｳ繝茨ｼ偵縺ｿ縺ｫ縺上＞','2023-09-30 06:33:11','2023-09-30 06:33:11'),(3,1,2,1,'@ren 隕ｪ繧ｳ繝｡繝ｳ繝医∈縺ｮ霑比ｿ｡繧ｳ繝｡繝ｳ繝・,'2023-09-30 06:33:31','2023-09-30 06:33:31'),(4,1,2,1,'@ren 繝・く繧ｹ繝医→繧ｳ繝｡繝ｳ繝域ｬ・・髢薙↓\r\n遨ｺ逋ｽ縺九Λ繧､繝ｳ縺悟ｿ・ｦ・,'2023-09-30 06:34:35','2023-09-30 06:34:35'),(5,1,2,NULL,'縺・＞縺ｭ繧帝寔險医＠縺ｦ縺・↑縺・〒縺吶・','2023-09-30 06:43:15','2023-09-30 06:43:15');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_items`
--

DROP TABLE IF EXISTS `favorite_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorite_items` (
  `favorite_items_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `item_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`favorite_items_id`),
  UNIQUE KEY `favorite_items_user_id_item_id_unique` (`user_id`,`item_id`),
  KEY `favorite_items_item_id_foreign` (`item_id`),
  CONSTRAINT `favorite_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE,
  CONSTRAINT `favorite_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_items`
--

LOCK TABLES `favorite_items` WRITE;
/*!40000 ALTER TABLE `favorite_items` DISABLE KEYS */;
INSERT INTO `favorite_items` VALUES (1,2,5,'2023-09-30 05:31:43','2023-09-30 05:31:43'),(2,2,4,'2023-09-30 05:31:50','2023-09-30 05:31:50'),(3,2,9,'2023-09-30 05:31:57','2023-09-30 05:31:57'),(4,2,10,'2023-09-30 05:32:04','2023-09-30 05:32:04'),(5,2,2,'2023-09-30 05:32:10','2023-09-30 05:32:10'),(6,2,8,'2023-09-30 05:32:16','2023-09-30 05:32:16'),(7,2,6,'2023-09-30 05:32:24','2023-09-30 05:32:24'),(9,2,7,'2023-09-30 05:32:36','2023-09-30 05:32:36'),(10,2,3,'2023-09-30 05:32:43','2023-09-30 05:32:43'),(11,2,1,'2023-09-30 17:47:19','2023-09-30 17:47:19'),(12,11,1,'2023-09-30 18:21:06','2023-09-30 18:21:06'),(13,11,9,'2023-09-30 18:21:36','2023-09-30 18:21:36');
/*!40000 ALTER TABLE `favorite_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_layouts`
--

DROP TABLE IF EXISTS `favorite_layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorite_layouts` (
  `favorite_layouts_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `layout_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`favorite_layouts_id`),
  UNIQUE KEY `favorite_layouts_user_id_layout_id_unique` (`user_id`,`layout_id`),
  KEY `favorite_layouts_layout_id_foreign` (`layout_id`),
  CONSTRAINT `favorite_layouts_layout_id_foreign` FOREIGN KEY (`layout_id`) REFERENCES `layouts` (`layout_id`) ON DELETE CASCADE,
  CONSTRAINT `favorite_layouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_layouts`
--

LOCK TABLES `favorite_layouts` WRITE;
/*!40000 ALTER TABLE `favorite_layouts` DISABLE KEYS */;
INSERT INTO `favorite_layouts` VALUES (1,2,1,'2023-09-30 05:58:16','2023-09-30 05:58:16');
/*!40000 ALTER TABLE `favorite_layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_attributes`
--

DROP TABLE IF EXISTS `item_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_attributes` (
  `item_attributes_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `attribute_name` varchar(50) NOT NULL,
  `attribute_value` varchar(50) NOT NULL,
  PRIMARY KEY (`item_attributes_id`),
  UNIQUE KEY `item_attributes_item_id_attribute_name_unique` (`item_id`,`attribute_name`),
  KEY `item_attributes_category_id_foreign` (`category_id`),
  CONSTRAINT `item_attributes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE,
  CONSTRAINT `item_attributes_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_attributes`
--

LOCK TABLES `item_attributes` WRITE;
/*!40000 ALTER TABLE `item_attributes` DISABLE KEYS */;
INSERT INTO `item_attributes` VALUES (1,1,1,'capacity','2'),(2,1,1,'inner_tent','莉伜ｱ・),(3,1,1,'grand_sheet','辟｡縺・),(4,1,1,'fabrics','TC'),(5,2,3,'seatHeight','42'),(6,2,3,'reclining','譛峨ｊ'),(7,2,3,'fabrics','繝昴Μ繧ｨ繧ｹ繝・Ν'),(8,3,1,'capacity','2'),(9,3,1,'innerTent','莉伜ｱ・),(10,3,1,'grandSheet','辟｡縺・),(11,3,1,'fabrics','繝昴Μ繧ｨ繧ｹ繝・Ν'),(12,4,4,'heightAdjustment','辟｡縺・),(13,4,4,'capacity','30'),(14,4,4,'fabrics','驩・),(15,5,20,'fuelType','繝ｩ繝ｳ繧ｿ繝ｳ逕ｨ繝代Λ繝輔ぅ繝ｳ繧ｪ繧､繝ｫ'),(16,5,20,'intensity','1'),(17,5,20,'fabrics','驩・驫・ａ縺｣縺・'),(18,6,40,'tankCapacity','3.7'),(19,6,40,'runLength','10'),(20,6,40,'heatingOutput','3.0'),(21,6,40,'fabrics',''),(22,7,7,'capacity','1'),(23,7,7,'fillPower','760'),(24,7,7,'comfortTemp','-4'),(25,7,7,'limitTemp',''),(26,7,7,'lowerTemp','-11'),(27,7,7,'materials','繧ｹ繝代ル繝・す繝･繝繝・け繝繧ｦ繝ｳ90-10%'),(28,7,7,'fabrics','繧ｪ繝ｼ繝ｭ繝ｩ繝・ャ繧ｯ繧ｹ'),(29,7,7,'innerTent',''),(30,7,7,'grandSheet',''),(31,8,9,'capacity','1'),(32,8,9,'assembly','譛峨ｊ'),(33,8,9,'loadCapacity','150'),(34,8,9,'fabrics','繝翫う繝ｭ繝ｳ'),(35,9,8,'capacity','1'),(36,9,8,'thickness','8'),(37,9,8,'insulation',''),(38,9,8,'fabrics',''),(39,10,20,'fuelType',''),(40,10,20,'intensity','1650'),(41,10,20,'runLength','60'),(42,10,20,'batteryCapacity','13400'),(43,10,20,'chargingTime','3'),(44,10,20,'fabrics','');
/*!40000 ALTER TABLE `item_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_color_tag`
--

DROP TABLE IF EXISTS `item_color_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_color_tag` (
  `item_color_tag` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) unsigned NOT NULL,
  `color_tag_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`item_color_tag`),
  UNIQUE KEY `item_color_tag_item_id_color_tag_id_unique` (`item_id`,`color_tag_id`),
  KEY `item_color_tag_color_tag_id_foreign` (`color_tag_id`),
  CONSTRAINT `item_color_tag_color_tag_id_foreign` FOREIGN KEY (`color_tag_id`) REFERENCES `color_tags` (`color_tag_id`) ON DELETE CASCADE,
  CONSTRAINT `item_color_tag_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_color_tag`
--

LOCK TABLES `item_color_tag` WRITE;
/*!40000 ALTER TABLE `item_color_tag` DISABLE KEYS */;
INSERT INTO `item_color_tag` VALUES (1,1,7),(2,2,5),(3,3,1),(4,3,7),(5,4,3),(6,5,14),(7,6,1),(8,6,3),(9,6,7),(10,6,8),(11,6,10),(12,7,1),(13,7,2),(14,7,3),(15,7,6),(16,7,7),(17,7,8),(18,7,9),(19,7,10),(20,7,13),(21,8,1),(22,8,3),(23,8,5),(24,8,7),(25,8,8),(26,8,10),(27,8,12),(28,9,1),(29,9,3),(30,9,5),(31,9,7),(32,9,8),(33,9,10),(34,9,12),(35,9,15),(36,9,17),(37,9,19),(38,9,22),(39,10,1),(40,10,3),(41,10,5),(42,10,7),(43,10,8),(44,10,10),(45,10,12),(46,10,15),(47,10,17),(48,10,19);
/*!40000 ALTER TABLE `item_color_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_item_tag`
--

DROP TABLE IF EXISTS `item_item_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_item_tag` (
  `item_item_tag` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) unsigned NOT NULL,
  `item_tag_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`item_item_tag`),
  UNIQUE KEY `item_item_tag_item_id_item_tag_id_unique` (`item_id`,`item_tag_id`),
  KEY `item_item_tag_item_tag_id_foreign` (`item_tag_id`),
  CONSTRAINT `item_item_tag_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE,
  CONSTRAINT `item_item_tag_item_tag_id_foreign` FOREIGN KEY (`item_tag_id`) REFERENCES `item_tags` (`item_tag_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_item_tag`
--

LOCK TABLES `item_item_tag` WRITE;
/*!40000 ALTER TABLE `item_item_tag` DISABLE KEYS */;
INSERT INTO `item_item_tag` VALUES (1,1,9),(2,3,2),(3,4,2),(4,6,3),(5,7,1),(6,7,4),(7,8,4);
/*!40000 ALTER TABLE `item_item_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_layout`
--

DROP TABLE IF EXISTS `item_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_layout` (
  `item_layout_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) unsigned NOT NULL,
  `layout_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`item_layout_id`),
  UNIQUE KEY `item_layout_layout_id_item_id_unique` (`layout_id`,`item_id`),
  KEY `item_layout_item_id_foreign` (`item_id`),
  CONSTRAINT `item_layout_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE,
  CONSTRAINT `item_layout_layout_id_foreign` FOREIGN KEY (`layout_id`) REFERENCES `layouts` (`layout_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_layout`
--

LOCK TABLES `item_layout` WRITE;
/*!40000 ALTER TABLE `item_layout` DISABLE KEYS */;
INSERT INTO `item_layout` VALUES (1,1,1),(2,2,1),(3,3,1),(5,1,2),(4,4,2),(6,9,2);
/*!40000 ALTER TABLE `item_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_tags`
--

DROP TABLE IF EXISTS `item_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_tags` (
  `item_tag_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_tag_name` varchar(50) NOT NULL,
  PRIMARY KEY (`item_tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_tags`
--

LOCK TABLES `item_tags` WRITE;
/*!40000 ALTER TABLE `item_tags` DISABLE KEYS */;
INSERT INTO `item_tags` VALUES (1,'霆ｽ驥・),(2,'邁｡蜊倩ｨｭ蝟ｶ'),(3,'髻灘嵜'),(4,'繧ｳ繝ｳ繝代け繝・),(5,'辟｡鬪ｨ'),(6,'辣咏ｪ∫ｩｴ'),(7,'髮｣辯・ｴ譚・),(8,'鬮倬・蜈画ｧ'),(9,'辟｡鬪ｨ');
/*!40000 ALTER TABLE `item_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(50) NOT NULL,
  `brand_id` bigint(20) unsigned NOT NULL,
  `price` int(11) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `asin` varchar(10) NOT NULL,
  `open_width` double(5,1) NOT NULL,
  `open_depth` double(5,1) NOT NULL,
  `open_height` double(5,1) NOT NULL,
  `storage_width` double(5,1) NOT NULL,
  `storage_depth` double(5,1) NOT NULL,
  `storage_height` double(5,1) NOT NULL,
  `weight` double(5,1) NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `sub_category_id` bigint(20) unsigned NOT NULL,
  `favorite_count` int(11) NOT NULL DEFAULT 0,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `items_item_name_index` (`item_name`),
  KEY `items_price_index` (`price`),
  KEY `items_brand_id_index` (`brand_id`),
  KEY `items_category_id_index` (`category_id`),
  KEY `items_sub_category_id_index` (`sub_category_id`),
  CONSTRAINT `items_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`) ON DELETE CASCADE,
  CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE,
  CONSTRAINT `items_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`sub_category_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'繧ｽ繝ｭ繝吶・繧ｹEX',5,25581,'https://gears-images.s3.ap-northeast-1.amazonaws.com/item/1.jpg','B0B3W5TG2Y',360.0,190.0,110.0,47.0,24.0,24.0,5.2,1,3,0,33,'2023-09-29 20:28:18','2023-09-30 18:21:03'),(2,'繝ｬ繧､繝√ぉ繧｢',2,11490,'https://s3-ap-northeast-1.amazonaws.com/gears-images/item/2.jpg','B01C5HX28W',61.0,70.0,98.0,25.0,15.0,89.0,3.7,3,16,0,20,'2023-09-29 20:34:08','2023-09-30 17:57:23'),(3,'HOZ-ST',1,63800,'https://s3-ap-northeast-1.amazonaws.com/gears-images/item/3.jpg','B09QZ26BZM',255.0,245.0,120.0,52.0,20.0,18.0,3.3,1,1,0,8,'2023-09-29 20:44:01','2023-09-30 17:48:09'),(4,'繝輔ぅ繝ｼ繝ｫ繝峨Λ繝・け',24,4510,'https://s3-ap-northeast-1.amazonaws.com/gears-images/item/4.jpg','B06W9FQF9L',60.0,35.0,23.0,60.0,35.0,1.0,1.7,4,23,0,11,'2023-09-29 20:59:27','2023-09-30 17:58:31'),(5,'CS 繧ｪ繧､繝ｫ繝ｩ繝ｳ繧ｿ繝ｳ',34,4500,'https://s3-ap-northeast-1.amazonaws.com/gears-images/item/5.jpg','B084B7DZ15',160.0,120.0,250.0,160.0,120.0,250.0,0.4,20,20,0,9,'2023-09-29 21:08:23','2023-09-30 17:48:03'),(6,'New繧｢繝ｫ繝代き繧ｹ繝医・繝悶さ繝ｳ繝代け繝・,45,20900,'https://s3-ap-northeast-1.amazonaws.com/gears-images/item/6.jpg','B0BPYCRQY2',35.0,35.0,40.5,35.0,353.0,40.5,6.6,40,55,0,4,'2023-09-30 04:34:34','2023-09-30 17:47:56'),(7,'AURORA LIGHT 600 DX',46,59400,'https://s3-ap-northeast-1.amazonaws.com/gears-images/item/7.jpg','B07T8HP2YK',17.0,17.0,31.0,17.0,17.0,31.0,1.1,7,48,0,3,'2023-09-30 04:51:44','2023-09-30 05:32:34'),(8,'2WAY 繝輔か繝ｼ繝ｫ繝・ぅ繝ｳ繧ｰ繧ｳ繝・ヨ',7,15800,'https://s3-ap-northeast-1.amazonaws.com/gears-images/item/8.jpg','B083ZWDCXN',67.0,190.0,37.0,18.0,18.0,60.0,3.2,9,54,0,2,'2023-09-30 04:57:52','2023-09-30 05:32:15'),(9,'繧､繝ｳ繝輔Ξ繝ｼ繧ｿ繝悶Ν繝槭ャ繝・,7,6980,'https://s3-ap-northeast-1.amazonaws.com/gears-images/item/9.jpg','B0871V3JPC',65.0,190.0,8.0,20.0,20.0,65.0,2.5,8,49,0,6,'2023-09-30 05:04:43','2023-09-30 18:21:32'),(10,'WAQ LED LANTERN2',7,9980,'https://s3-ap-northeast-1.amazonaws.com/gears-images/item/10.jpg','B09LV9FNY4',11.5,8.0,3.5,11.5,8.0,3.5,0.7,20,19,0,2,'2023-09-30 05:21:04','2023-09-30 05:32:02');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layouts`
--

DROP TABLE IF EXISTS `layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layouts` (
  `layout_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `favorite_count` int(11) NOT NULL DEFAULT 0,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`layout_id`),
  KEY `layouts_user_id_foreign` (`user_id`),
  CONSTRAINT `layouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layouts`
--

LOCK TABLES `layouts` WRITE;
/*!40000 ALTER TABLE `layouts` DISABLE KEYS */;
INSERT INTO `layouts` VALUES (1,'縺｡縺上＆繧ｭ繝｣繝ｳ繝斐Φ繧ｰ繝薙Ξ繝・ず縺ｫ繧ｽ繝ｭ繧ｭ繝｣繝ｳ繝励↓縺・▲縺ｦ縺阪∪縺励◆',2,0,26,'2023-09-30 05:34:47','2023-09-30 18:10:02'),(2,'邱冗､ｾ豌ｴ霎ｺ縺ｮ讌ｽ譬｡縺ｫ縺・▲縺ｦ縺・″縺ｾ縺励◆・・,2,0,6,'2023-09-30 06:29:37','2023-09-30 18:21:27');
/*!40000 ALTER TABLE `layouts` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2019_12_14_000001_create_personal_access_tokens_table',1),(2,'2023_07_11_214503_create_users_table',1),(3,'2023_07_13_234133_create_categories_table',1),(4,'2023_07_13_234234_create_sub_categories_table',1),(5,'2023_07_13_234518_create_brands_table',1),(6,'2023_07_13_234600_create_items_table',1),(7,'2023_07_13_235625_create_irem_tags_table',1),(8,'2023_07_14_001417_create_color_tags_table',1),(9,'2023_07_14_001549_create_item_attributes_table',1),(10,'2023_07_15_021830_create_item_item_tag_table',1),(11,'2023_07_15_023311_create_item_color_tag_table',1),(12,'2023_07_24_212454_create_favorite_items_table',1),(13,'2023_07_27_224252_create_user_inventories_table',1),(14,'2023_08_17_004548_create_layouts_table',1),(15,'2023_08_17_131232_create_item_layout_table',1),(16,'2023_08_18_190836_create_tag_positions_table',1),(17,'2023_08_19_121738_create_view_item_histories_table',1),(18,'2023_08_20_023424_create_view_layout_histories_table',1),(19,'2023_08_20_132412_create_favorite_layouts_table',1),(20,'2023_08_26_125456_create_comments_table',1),(21,'2023_09_11_052522_add_indexes_to_items_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categories` (
  `sub_category_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sub_category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`sub_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (1,'繝峨・繝繝・Φ繝・),(2,'繝・ぅ繝斐・繝・Φ繝・),(3,'繝代ャ繝励ユ繝ｳ繝・),(4,'繝ｯ繝ｳ繝昴・繝ｫ繝・Φ繝・),(5,'繝ｭ繝・ず繝峨・繝繝・Φ繝・),(6,'繝・・繝ｫ繝ｼ繝繝・Φ繝・),(7,'繝倥く繧ｵ繧ｿ繝ｼ繝・),(8,'繧ｦ繧､繝ｳ繧ｰ繧ｿ繝ｼ繝・),(9,'繝ｬ繧ｯ繧ｿ繧ｿ繝ｼ繝・),(10,'繧ｹ繧ｯ繝ｪ繝ｼ繝ｳ繧ｿ繝ｼ繝・),(11,'螟夊ｧ貞ｽ｢繧ｿ繝ｼ繝・),(12,'繝上う繧ｹ繧ｿ繧､繝ｫ繝√ぉ繧｢'),(13,'繝ｭ繝ｼ繧ｹ繧ｿ繧､繝ｫ繝√ぉ繧｢'),(14,'蠎ｧ讀・ｭ・),(15,'繝吶Φ繝√す繝ｼ繝・),(16,'繝ｪ繧ｯ繝ｩ繧､繝九Φ繧ｰ繝√ぉ繧｢'),(17,'繝上Φ繝｢繝・け繝√ぉ繧｢'),(18,'繧ｹ繝・・繝ｫ'),(19,'LED繝ｩ繝ｳ繧ｿ繝ｳ'),(20,'辯・侭蠑上Λ繝ｳ繧ｿ繝ｳ'),(21,'繝上う繝・・繝悶Ν'),(22,'繝ｭ繝ｼ繝・・繝悶Ν'),(23,'繧ｽ繝ｭ繝・・繝悶Ν'),(24,'繝峨・繝繝・Φ繝・),(25,'繝・ぅ繝斐・繝・Φ繝・),(26,'繝代ャ繝励ユ繝ｳ繝・),(27,'繝ｯ繝ｳ繝昴・繝ｫ繝・Φ繝・),(28,'繝ｭ繝・ず繝峨・繝繝・Φ繝・),(29,'繝・・繝ｫ繝ｼ繝繝・Φ繝・),(30,'繝倥く繧ｵ繧ｿ繝ｼ繝・),(31,'繧ｦ繧､繝ｳ繧ｰ繧ｿ繝ｼ繝・),(32,'繝ｬ繧ｯ繧ｿ繧ｿ繝ｼ繝・),(33,'繧ｹ繧ｯ繝ｪ繝ｼ繝ｳ繧ｿ繝ｼ繝・),(34,'螟夊ｧ貞ｽ｢繧ｿ繝ｼ繝・),(35,'繝上う繧ｹ繧ｿ繧､繝ｫ繝√ぉ繧｢'),(36,'繝ｭ繝ｼ繧ｹ繧ｿ繧､繝ｫ繝√ぉ繧｢'),(37,'蠎ｧ讀・ｭ・),(38,'繝吶Φ繝√す繝ｼ繝・),(39,'繝ｪ繧ｯ繝ｩ繧､繝九Φ繧ｰ繝√ぉ繧｢'),(40,'繝上Φ繝｢繝・け繝√ぉ繧｢'),(41,'繧ｹ繝・・繝ｫ'),(42,'LED繝ｩ繝ｳ繧ｿ繝ｳ'),(43,'辯・侭蠑上Λ繝ｳ繧ｿ繝ｳ'),(44,'繝上う繝・・繝悶Ν'),(45,'繝ｭ繝ｼ繝・・繝悶Ν'),(46,'繧ｽ繝ｭ繝・・繝悶Ν'),(47,'蟆∫ｭ貞梛'),(48,'繝槭Α繝ｼ蝙・),(49,'繧､繝ｳ繝輔Ξ繝ｼ繧ｿ繝ｼ繝槭ャ繝・),(50,'繧ｨ繧｢繝ｼ繝槭ャ繝・),(51,'繧ｯ繝ｭ繝ｼ繧ｺ繝峨そ繝ｫ繝槭ャ繝・),(52,'繝上う繧ｳ繝・ヨ'),(53,'繝ｭ繝ｼ繧ｳ繝・ヨ'),(54,'2Way'),(55,'遏ｳ豐ｹ繧ｹ繝医・繝・),(56,'繧ｬ繧ｺ繧ｹ繝医・繝・),(57,'髮ｻ豌励せ繝医・繝・),(58,'阮ｪ繧ｹ繝医・繝・);
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_positions`
--

DROP TABLE IF EXISTS `tag_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_positions` (
  `tag_position_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) unsigned NOT NULL,
  `layout_id` bigint(20) unsigned NOT NULL,
  `x_position` int(11) NOT NULL,
  `y_position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tag_position_id`),
  UNIQUE KEY `tag_positions_layout_id_item_id_unique` (`layout_id`,`item_id`),
  KEY `tag_positions_item_id_foreign` (`item_id`),
  CONSTRAINT `tag_positions_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE,
  CONSTRAINT `tag_positions_layout_id_foreign` FOREIGN KEY (`layout_id`) REFERENCES `layouts` (`layout_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_positions`
--

LOCK TABLES `tag_positions` WRITE;
/*!40000 ALTER TABLE `tag_positions` DISABLE KEYS */;
INSERT INTO `tag_positions` VALUES (1,3,1,64,40,'2023-09-30 05:34:47','2023-09-30 05:34:47'),(2,2,1,33,45,'2023-09-30 05:34:47','2023-09-30 05:34:47'),(3,4,1,29,80,'2023-09-30 05:34:47','2023-09-30 05:34:47'),(4,4,2,62,63,'2023-09-30 06:29:37','2023-09-30 06:29:37'),(5,1,2,84,37,'2023-09-30 06:29:37','2023-09-30 06:29:37'),(6,9,2,89,58,'2023-09-30 06:29:37','2023-09-30 06:29:37');
/*!40000 ALTER TABLE `tag_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_inventories`
--

DROP TABLE IF EXISTS `user_inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_inventories` (
  `user_inventories_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `item_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_inventories_id`),
  UNIQUE KEY `user_inventories_user_id_item_id_unique` (`user_id`,`item_id`),
  KEY `user_inventories_item_id_foreign` (`item_id`),
  CONSTRAINT `user_inventories_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE,
  CONSTRAINT `user_inventories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_inventories`
--

LOCK TABLES `user_inventories` WRITE;
/*!40000 ALTER TABLE `user_inventories` DISABLE KEYS */;
INSERT INTO `user_inventories` VALUES (1,2,5,'2023-09-30 05:31:44','2023-09-30 05:31:44'),(2,2,4,'2023-09-30 05:31:51','2023-09-30 05:31:51'),(3,2,9,'2023-09-30 05:31:58','2023-09-30 05:31:58'),(4,2,10,'2023-09-30 05:32:05','2023-09-30 05:32:05'),(5,2,2,'2023-09-30 05:32:11','2023-09-30 05:32:11'),(6,2,8,'2023-09-30 05:32:18','2023-09-30 05:32:18'),(7,2,6,'2023-09-30 05:32:22','2023-09-30 05:32:22'),(8,2,1,'2023-09-30 05:32:29','2023-09-30 05:32:29'),(9,2,7,'2023-09-30 05:32:37','2023-09-30 05:32:37'),(10,2,3,'2023-09-30 05:32:43','2023-09-30 05:32:43'),(11,11,1,'2023-09-30 18:21:05','2023-09-30 18:21:05'),(12,11,9,'2023-09-30 18:21:37','2023-09-30 18:21:37');
/*!40000 ALTER TABLE `user_inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `users_user_name_unique` (`user_name`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'testName','test@test.com','$2y$10$DLDqeR9y1KjvAIZ1D71.GuFnSgv9/VuCUX20fcYtdugrfDJn47ckm','2023-09-29 20:28:18','2023-09-29 20:28:18'),(2,'ren','ren.finalfantasy@hotmail.co.jp','$2y$10$SXdPAn9q8hkEp0oo/Som4eOqenU.4OirfiWu4Tx/5E6hnWLmH8qru','2023-09-30 05:29:20','2023-09-30 05:29:20'),(7,'muneren','renpandora@gmail.com','$2y$10$/jh6tr/x03W3rCgScoSDMOZ6PtAF3pVjQS7zzqVKG/bqKeqA62Kk6','2023-09-30 08:29:41','2023-09-30 08:29:41'),(8,'munerena','ren.finalfantasy@hotmail.com','$2y$10$VhZx0Wcx6VSDw4ln4ZDSluqLhv9PiGwySfFk5IZZ3fonKSREiNoSK','2023-09-30 11:11:22','2023-09-30 11:11:22'),(11,'munere','ren.finalfantasy@hotmail.co.j','$2y$10$lHXtFEMS5dpSMeWVFwx7W.bHpMOHxz0UKy.OKK3vRHveO231tm0.S','2023-09-30 13:36:56','2023-09-30 13:36:56');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view_item_histories`
--

DROP TABLE IF EXISTS `view_item_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view_item_histories` (
  `view_item_history_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `item_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`view_item_history_id`),
  UNIQUE KEY `view_item_histories_user_id_item_id_unique` (`user_id`,`item_id`),
  KEY `view_item_histories_item_id_foreign` (`item_id`),
  KEY `view_item_histories_user_id_item_id_index` (`user_id`,`item_id`),
  CONSTRAINT `view_item_histories_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE,
  CONSTRAINT `view_item_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_item_histories`
--

LOCK TABLES `view_item_histories` WRITE;
/*!40000 ALTER TABLE `view_item_histories` DISABLE KEYS */;
INSERT INTO `view_item_histories` VALUES (13,2,5,NULL,'2023-09-30 17:48:03'),(14,2,4,NULL,'2023-09-30 05:31:48'),(15,2,9,NULL,'2023-09-30 05:31:55'),(16,2,10,NULL,'2023-09-30 05:32:02'),(17,2,2,NULL,'2023-09-30 05:32:09'),(18,2,8,NULL,'2023-09-30 05:32:15'),(19,2,6,NULL,'2023-09-30 17:47:56'),(20,2,1,NULL,'2023-09-30 17:47:16'),(21,2,7,NULL,'2023-09-30 05:32:34'),(22,2,3,NULL,'2023-09-30 17:48:09'),(23,7,1,NULL,'2023-09-30 09:07:53'),(24,11,4,NULL,'2023-09-30 17:58:31'),(25,11,5,NULL,'2023-09-30 17:28:12'),(26,11,1,NULL,'2023-09-30 18:21:03'),(27,11,2,NULL,'2023-09-30 17:57:23'),(28,11,9,NULL,'2023-09-30 18:21:32');
/*!40000 ALTER TABLE `view_item_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view_layout_histories`
--

DROP TABLE IF EXISTS `view_layout_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view_layout_histories` (
  `view_layout_history_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `layout_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`view_layout_history_id`),
  UNIQUE KEY `view_layout_histories_user_id_layout_id_unique` (`user_id`,`layout_id`),
  KEY `view_layout_histories_layout_id_foreign` (`layout_id`),
  KEY `view_layout_histories_user_id_layout_id_index` (`user_id`,`layout_id`),
  CONSTRAINT `view_layout_histories_layout_id_foreign` FOREIGN KEY (`layout_id`) REFERENCES `layouts` (`layout_id`) ON DELETE CASCADE,
  CONSTRAINT `view_layout_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_layout_histories`
--

LOCK TABLES `view_layout_histories` WRITE;
/*!40000 ALTER TABLE `view_layout_histories` DISABLE KEYS */;
INSERT INTO `view_layout_histories` VALUES (1,2,1,NULL,'2023-09-30 07:56:51'),(2,2,2,NULL,'2023-09-30 17:47:08'),(3,11,1,NULL,'2023-09-30 18:10:02'),(4,11,2,NULL,'2023-09-30 18:21:27');
/*!40000 ALTER TABLE `view_layout_histories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-02  1:38:29
