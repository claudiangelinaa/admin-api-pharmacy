-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: pharmacy_db
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `transaksi_obat_jadi`
--

DROP TABLE IF EXISTS `transaksi_obat_jadi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaksi_obat_jadi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `obat_jadi_id` int NOT NULL,
  `transaksi_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `obat_jadi_id_idx` (`obat_jadi_id`),
  KEY `transaksi_id_idx` (`transaksi_id`),
  CONSTRAINT `obat_jadi_id` FOREIGN KEY (`obat_jadi_id`) REFERENCES `obat_jadi` (`id`),
  CONSTRAINT `transaksi_id` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi_obat_jadi`
--

LOCK TABLES `transaksi_obat_jadi` WRITE;
/*!40000 ALTER TABLE `transaksi_obat_jadi` DISABLE KEYS */;
INSERT INTO `transaksi_obat_jadi` VALUES (23,14,1,2),(51,19,52,1),(52,17,64,1),(53,16,64,1),(54,15,65,1),(55,23,66,4),(56,26,66,6),(57,19,67,1),(58,20,67,3),(59,26,68,2),(60,24,68,2),(61,16,69,3),(62,17,69,1),(63,26,70,5),(64,24,70,4),(65,22,70,4),(66,23,70,4),(67,25,70,7),(68,16,71,3),(69,17,71,2),(70,26,71,3),(71,21,72,2),(72,20,72,1),(73,17,73,4),(74,14,73,1),(75,14,74,3),(76,23,74,2),(77,22,74,2),(78,16,75,6),(79,14,76,2),(80,15,76,3),(81,16,76,1),(82,16,77,1),(83,16,77,1),(84,17,77,4),(85,18,77,2),(86,14,78,2),(87,17,79,3),(88,22,80,2),(89,16,81,2),(90,14,81,2),(91,14,82,2),(92,24,84,2),(93,14,85,2),(94,17,86,4),(95,26,87,1),(96,23,88,10),(99,19,91,1),(100,19,92,1),(102,23,93,2),(103,23,93,2),(104,15,94,2),(105,17,96,1),(106,23,98,2),(107,14,99,2),(108,23,100,2),(109,23,100,2),(111,23,102,2),(112,23,102,2),(113,23,103,2),(114,14,104,2),(115,15,105,1),(116,16,105,1),(117,15,109,5),(118,24,110,12),(119,16,111,1),(120,16,112,2),(121,17,112,1),(122,17,113,1),(123,16,113,1),(124,17,114,1),(125,17,115,1),(126,16,118,1),(127,26,119,2),(128,26,120,1),(129,16,121,1);
/*!40000 ALTER TABLE `transaksi_obat_jadi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-29 21:17:06
