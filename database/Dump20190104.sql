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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `major` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,'人文與資訊學系'),(2,'新媒體藝術學系'),(3,'資訊傳播工程學系'),(4,'資訊傳播學系'),(5,'運動資訊傳播學系'),(6,'資訊與圖書館學系'),(7,'圖書館資訊學系'),(8,'生物產業機電工程學系'),(9,'生物資訊學系'),(10,'生物機電工程學系'),(11,'多媒體動畫藝術學系'),(12,'動畫遊戲設計學系'),(13,'創意產業與數位電影學士學位學程'),(14,'媒體設計科技學系'),(15,'媒體設計學系'),(16,'媒體傳達遊戲'),(17,'資訊模擬與設計學系'),(18,'數位多媒體設計學系'),(19,'數位科技設計學系'),(20,'數位媒體設計學系'),(21,'教育科技學系'),(22,'數位媒體與文教產業學系'),(23,'數位學系科技學系'),(24,'數位學系設計與管理學系'),(25,'科技工程與管理學系'),(26,'資訊工程學系'),(27,'資訊科學系'),(28,'資訊科學與工程學系'),(29,'資訊創新與科技學系'),(30,'電腦與通訊工程學系'),(31,'電腦與智慧型機器人學士學位學程'),(32,'電機資訊學士班'),(33,'電機自訓學院學士班'),(34,'資訊科技與管理學系'),(35,'資訊管理學系'),(36,'資訊管理與財務金融學系'),(37,'資訊應用學系'),(38,'多媒體與行動商務學系'),(39,'資訊經營學系');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `id` varchar(45) NOT NULL,
  `birthday` date NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `tel` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `student_id_UNIQUE` (`student_id`),
  KEY `school_id_idx` (`school_id`),
  KEY `major_id_idx` (`major_id`),
  KEY `team_id_idx` (`team_id`),
  CONSTRAINT `major_id` FOREIGN KEY (`major_id`) REFERENCES `major` (`m_id`) ON UPDATE CASCADE,
  CONSTRAINT `school_id` FOREIGN KEY (`school_id`) REFERENCES `school` (`s_id`) ON UPDATE CASCADE,
  CONSTRAINT `team_id` FOREIGN KEY (`team_id`) REFERENCES `team` (`t_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `school` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'國立台灣大學'),(2,'國立師範大學'),(3,'東吳大學'),(4,'國立政治大學'),(5,'中國文化大學'),(6,'大同大學'),(7,'國立陽明大學'),(8,'國立台北藝術大學'),(9,'國立台北教育大學'),(10,'臺北市立大學'),(11,'銘傳大學'),(12,'世新大學'),(13,'實踐大學'),(14,'台北醫學大學'),(15,'淡江大學'),(16,'輔仁大學'),(17,'華梵大學'),(18,'國立台灣藝術大學'),(19,'真理大學'),(20,'國立台北大學'),(21,'馬偕醫學院'),(22,'台北基督學院');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `number` int(11) NOT NULL,
  `state` varchar(45) NOT NULL,
  `pay` varchar(45) NOT NULL,
  `t_s_id` int(11) DEFAULT NULL,
  `t_m_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`t_id`),
  KEY `s_id_idx` (`t_s_id`),
  KEY `m_id_idx` (`t_m_id`),
  CONSTRAINT `t_m_id` FOREIGN KEY (`t_m_id`) REFERENCES `major` (`m_id`),
  CONSTRAINT `t_s_id` FOREIGN KEY (`t_s_id`) REFERENCES `school` (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_member`
--

DROP TABLE IF EXISTS `team_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team_member` (
  `t_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  KEY `t_id_idx` (`t_id`),
  KEY `m_id_idx` (`m_id`),
  CONSTRAINT `m_id` FOREIGN KEY (`m_id`) REFERENCES `member` (`m_id`),
  CONSTRAINT `t_id` FOREIGN KEY (`t_id`) REFERENCES `team` (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_member`
--

LOCK TABLES `team_member` WRITE;
/*!40000 ALTER TABLE `team_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-04 22:42:34
