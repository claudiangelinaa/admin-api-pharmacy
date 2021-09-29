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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `nomor_telepon` varchar(45) NOT NULL,
  `umur` int DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `profile_picture` varchar(200) DEFAULT NULL,
  `role` varchar(45) NOT NULL DEFAULT 'user',
  `verifikasi` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Claudia','claudia@mail.com','$2b$10$4JzZvd2xFhs7nRnOqA6sdeeOk54uxdrN4u99rL3rO2GPT/laEjlGm','kelapa gading','08123456789',27,'Perempuan','','user','1'),(2,'Haryo','haryoharyo2@gmail.com','$2b$10$4JzZvd2xFhs7nRnOqA6sdeeOk54uxdrN4u99rL3rO2GPT/laEjlGm','mampang','08789876543',30,'Laki-laki','','user','1'),(3,'Brian','brian@gmail.com','$2b$10$4JzZvd2xFhs7nRnOqA6sdeeOk54uxdrN4u99rL3rO2GPT/laEjlGm','senen','08176543212',17,'Laki-laki','','user','1'),(4,'Kris','kris@gmail.com','$2b$10$4JzZvd2xFhs7nRnOqA6sdeeOk54uxdrN4u99rL3rO2GPT/laEjlGm','sunter','08987654321',28,'Laki-laki','','user','1'),(5,'Wenny','wenny@gmail.com','$2b$10$4JzZvd2xFhs7nRnOqA6sdeeOk54uxdrN4u99rL3rO2GPT/laEjlGm','bekasi','08167891233',32,'Perempuan','','admin','1'),(6,'haryo test','haryo@doogether.id','$2b$10$4JzZvd2xFhs7nRnOqA6sdeeOk54uxdrN4u99rL3rO2GPT/laEjlGm','jl mawadah 3 no 16, tangerang kota','0897643311527',19,'Pria','http://localhost:5001/images/user-profile/6/UIMG-1632920007949-51972696','user','1');
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

-- Dump completed on 2021-09-29 21:17:06
