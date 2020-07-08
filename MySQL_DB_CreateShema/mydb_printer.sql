CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `printer`
--

DROP TABLE IF EXISTS `printer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `printer` (
  `printer_id` smallint(7) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `analog` varchar(125) DEFAULT NULL,
  `similar` varchar(255) DEFAULT NULL,
  `printer_yield` smallint(7) DEFAULT NULL,
  `printer_tipe_id` smallint(7) unsigned NOT NULL,
  `printer_brand_id` smallint(7) unsigned NOT NULL,
  `printer_format_id` smallint(7) unsigned NOT NULL,
  `printer_firmware_id` smallint(7) unsigned NOT NULL,
  PRIMARY KEY (`printer_id`,`printer_tipe_id`,`printer_brand_id`,`printer_format_id`,`printer_firmware_id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_printer_printer_tipe1_idx` (`printer_tipe_id`),
  KEY `fk_printer_printer_brand1_idx` (`printer_brand_id`),
  KEY `fk_printer_printer_format1_idx` (`printer_format_id`),
  KEY `fk_printer_printer_firmware1_idx` (`printer_firmware_id`),
  CONSTRAINT `fk_printer_printer_brand1` FOREIGN KEY (`printer_brand_id`) REFERENCES `printer_brand` (`printer_brand_id`),
  CONSTRAINT `fk_printer_printer_firmware1` FOREIGN KEY (`printer_firmware_id`) REFERENCES `printer_firmware` (`printer_firmware_id`),
  CONSTRAINT `fk_printer_printer_format1` FOREIGN KEY (`printer_format_id`) REFERENCES `printer_format` (`printer_format_id`),
  CONSTRAINT `fk_printer_printer_tipe1` FOREIGN KEY (`printer_tipe_id`) REFERENCES `printer_tipe` (`printer_tipe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printer`
--

LOCK TABLES `printer` WRITE;
/*!40000 ALTER TABLE `printer` DISABLE KEYS */;
INSERT INTO `printer` VALUES (1,'P1102','CE651A','Принтер HP LaserJet Pro P1102','принтер, лазерный, черно-белый, формат A4 (210x297 мм), скорость ч/б печати 18 стр/мин, разрешение 600 dpi',NULL,NULL,NULL,1,1,2,2),(2,'P1005','CB410A','Принтер HP LaserJet P1005','принтер, лазерный, черно-белый, формат A4 (210x297 мм), скорость ч/б печати 14 стр/мин, разрешение 600 dpi',NULL,NULL,NULL,1,1,2,2),(3,'LBP6000','LBP6000','Принтер Canon i-SENSYS LBP6000 White','принтер, лазерный, черно-белый, формат A4 (210x297 мм), скорость ч/б печати 18 стр/мин, разрешение 2400x600 dpi',NULL,NULL,NULL,1,2,2,2),(4,'LBP6020B','LBP6020B','Принтер Canon i-SENSYS LBP6020B','принтер, лазерный, черно-белый, формат A4 (210x297 мм), скорость ч/б печати 18 стр/мин, разрешение 2400x600 dpi',NULL,NULL,NULL,1,2,2,2);
/*!40000 ALTER TABLE `printer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-07 22:36:22
