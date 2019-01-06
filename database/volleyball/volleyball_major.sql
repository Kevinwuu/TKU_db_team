-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: volleyball
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `major` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,'人文與資訊學系'),(2,'新媒體藝術學系'),(3,'資訊傳播工程學系'),(4,'資訊傳播學系'),(5,'運動資訊傳播學系'),(6,'資訊與圖書館學系'),(7,'圖書館資訊學系'),(8,'生物產業機電工程學系'),(9,'生物資訊學系'),(10,'生物機電工程學系'),(11,'多媒體動畫藝術學系'),(12,'動畫遊戲設計學系'),(13,'創意產業與數位電影學士學位學程'),(14,'媒體設計科技學系'),(15,'媒體設計學系'),(16,'媒體傳達遊戲'),(17,'資訊模擬與設計學系'),(18,'數位多媒體設計學系'),(19,'數位科技設計學系'),(20,'數位媒體設計學系'),(21,'教育科技學系'),(22,'數位媒體與文教產業學系'),(23,'數位學系科技學系'),(24,'數位學系設計與管理學系'),(25,'科技工程與管理學系'),(26,'資訊工程學系'),(27,'資訊科學系'),(28,'資訊科學與工程學系'),(29,'資訊創新與科技學系'),(30,'電腦與通訊工程學系'),(31,'電腦與智慧型機器人學士學位學程'),(32,'電機資訊學士班'),(33,'電機自訓學院學士班'),(34,'資訊科技與管理學系'),(35,'資訊管理學系'),(36,'資訊管理與財務金融學系'),(37,'資訊應用學系'),(38,'多媒體與行動商務學系'),(39,'資訊經營學系');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-04 23:01:46
