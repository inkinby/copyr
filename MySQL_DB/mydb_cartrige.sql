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
-- Table structure for table `cartrige`
--

DROP TABLE IF EXISTS `cartrige`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartrige` (
  `cartrige_id` smallint(7) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `analog` varchar(125) DEFAULT NULL,
  `similar` varchar(255) DEFAULT NULL,
  `cartrige_yield` smallint(7) DEFAULT NULL,
  `toner_weight` smallint(7) DEFAULT NULL,
  `toner` varchar(255) DEFAULT NULL,
  `chip_info` varchar(255) DEFAULT NULL,
  `brand_id` smallint(7) unsigned NOT NULL,
  `color_id` smallint(7) unsigned NOT NULL,
  `cartrige_tipe_id` smallint(7) unsigned NOT NULL,
  PRIMARY KEY (`cartrige_id`,`brand_id`,`color_id`,`cartrige_tipe_id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_cartrige_brand1_idx` (`brand_id`),
  KEY `fk_cartrige_color1_idx` (`color_id`),
  KEY `fk_cartrige_cartrige_tipe1_idx` (`cartrige_tipe_id`),
  CONSTRAINT `fk_cartrige_brand1` FOREIGN KEY (`brand_id`) REFERENCES `cartrige_brand` (`cartrige_brand_id`),
  CONSTRAINT `fk_cartrige_cartrige_tipe1` FOREIGN KEY (`cartrige_tipe_id`) REFERENCES `cartrige_tipe` (`cartrige_tipe_id`),
  CONSTRAINT `fk_cartrige_color1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartrige`
--

LOCK TABLES `cartrige` WRITE;
/*!40000 ALTER TABLE `cartrige` DISABLE KEYS */;
INSERT INTO `cartrige` VALUES (1,'35A','CB435A','HP 35a Тонер-картридж черный','Лазерный картридж HP 435а для монохромной печати. ','712','85A, 725',1500,65,'HP 1005, IMEX ','не блокирует',2,3,1),(2,'85A','CE285A','HP 85a Тонер-картридж черный','Лазерный картридж HP 285а для монохромной печати. ','725','35A, 712',1600,80,'HP 1005, IMEX ','не блокирует',2,3,1),(3,'712','1870B002','Canon 712 Тонер-картридж черный','Лазерный картридж Canon 712  для монохромной печати. ','35A','85A, 725',1500,65,'HP 1005, IMEX ','не блокирует',3,3,1),(4,'725','3484B002','Canon 725 Тонер-картридж черный','Лазерный картридж Canon 725  для монохромной печати. ','85A','712, 35A',1600,80,'HP 1005, IMEX ','не блокирует',3,3,1),(5,'05A','CE505A','HP 05A Тонер-картридж черный','Лазерный картридж HP 05A для монохромной печати. ','719','80A',2300,150,'HP P2015, 1200, HB 1.0J','не блокирует',2,3,1),(6,'05X','CE505X','HP 05X Тонер-картридж черный','Лазерный картридж HP 05X для монохромной печати. ','719H','80X',6500,290,'HP P2015, 1200, HB 1.0J','не блокирует',2,3,1),(7,'12A','Q2612A','HP 12A Тонер-картридж черный','Лазерный картридж HP12A для монохромной печати. ','703','FX-10',2000,130,'HP 1010, 1200, HB 1.0J','не блокирует',2,3,1),(8,'13A','Q2613A','HP 13A Тонер-картридж черный','Лазерный картридж HP13A для монохромной печати. ','EP-25','15A',2500,180,'HP 1010, 1200, HB 1.0J','не блокирует',2,3,1),(9,'101S','MLT-D101S','MLT-D101S Samsung 101S Тонер-картридж черный','Лазерный картридж Samsung 101S для монохромной печати. ','D111S','106R02773',1500,60,'SB 8.1, ML-1210','замена, прошивка аппарата',1,3,1),(10,'104S','MLT-D104S','MLT-D104S Samsung 104S Тонер-картридж черный','Лазерный картридж Samsung 104S для монохромной печати. ','нет','106A',1500,60,'SB 8.1, ML-1210','замена, прошивка аппарата',1,3,1);
/*!40000 ALTER TABLE `cartrige` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-07 22:33:12
