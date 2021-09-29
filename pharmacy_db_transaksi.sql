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
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaksi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL DEFAULT '0',
  `total` int NOT NULL DEFAULT '0',
  `alamat` varchar(45) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resep_image` varchar(500) DEFAULT NULL,
  `bukti_bayar_image` varchar(500) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES (1,'4',29000,'jl.mawar no 4','2021-09-21 00:00:00',NULL,NULL,3),(8,'4',100000,'jl.rosa no 50','2021-09-21 00:00:00',NULL,NULL,3),(50,'4',74000,'jl.rossa no 100','2021-09-22 00:00:00',NULL,NULL,3),(51,'4',12000,'jl.rossa no 100','2021-09-22 00:00:00',NULL,NULL,3),(52,'4',18700,'jl mawaddah 4 blok n2 no 5  tangerang','2021-09-22 00:00:00',NULL,NULL,2),(53,'4',269100,'jl mawaddah 4 blok n2 no 5  tangerang','2021-09-22 00:00:00',NULL,NULL,2),(54,'4',87400,'jl mawaddah 4 blok n2 no 5  tangerang','2021-09-22 00:00:00',NULL,NULL,2),(56,'4',130000,'jl mawar no 5 tangerang','2021-09-22 00:00:00',NULL,NULL,2),(58,'4',224200,'jl mawar no 5, jakarta','2021-09-22 00:00:00',NULL,NULL,2),(59,'4',174500,'jl mawar no 5, jakarta','2021-09-22 00:00:00',NULL,NULL,2),(60,'4',18700,'jl mawar no 5, jakarta','2021-09-23 00:00:00',NULL,NULL,2),(61,'4',78400,'jl mawaddah 4 blok n2 no 5  tangerang','2021-09-23 00:00:00',NULL,NULL,2),(62,'4',37300,'jl mawar no 5 tangerang','2021-09-23 00:00:00',NULL,NULL,2),(63,'4',76700,'jl mawaddah 4 blok n2 no 5  tangerang','2021-09-23 00:00:00',NULL,NULL,2),(64,'4',10900,'jl mawaddah 4 blok n2 no 5  tangerang','2021-09-23 00:00:00',NULL,NULL,2),(65,'4',12500,'jl mawar no 5 tangerang','2021-09-23 00:00:00',NULL,NULL,2),(66,'4',872000,'Jl ciledug no 3, tangerang','2021-09-24 00:00:00',NULL,NULL,2),(67,'4',106800,'Jl ciledug no 5, tangerang','2021-09-24 00:00:00',NULL,NULL,2),(68,'4',281000,'Senayan city, jakarta','2021-09-25 00:00:00',NULL,NULL,2),(69,'4',18700,'Jl ciledug no 5, tangerang','2021-09-25 00:00:00',NULL,NULL,2),(70,'4',938400,'Senayan city, jakarta','2021-09-25 00:00:00',NULL,NULL,2),(71,'4',436700,'null','2021-09-25 00:00:00',NULL,NULL,4),(72,'4',38600,'Senayan, jakarta pusat','2021-09-25 00:00:00',NULL,NULL,4),(73,'4',40500,'kelapa gading, jakarta utara','2021-09-25 00:00:00',NULL,NULL,1),(74,'4',128500,'Senayan city, jakarta','2021-09-25 00:00:00',NULL,NULL,1),(75,'4',23400,'Senayan city, jakarta','2021-09-25 00:00:00',NULL,NULL,1),(76,'4',200000,'jl.senayan no 15, jakarta pusat','2021-01-03 00:00:00',NULL,NULL,1),(77,'4',180000,'jl.lingkar muara no 14, jakarta pusat','2021-01-20 00:00:00',NULL,NULL,2),(78,'4',25000,'jl.lingkar muara no 14, jakarta pusat','2021-01-16 00:00:00',NULL,NULL,2),(79,'4',21000,'jl.lingkar muara no 14, jakarta pusat','2021-02-16 00:00:00',NULL,NULL,2),(80,'4',66000,'jl.lingkar muara no 14, jakarta pusat','2021-02-12 00:00:00',NULL,NULL,2),(81,'4',7800,'jl.lingkar muara no 14, jakarta pusat','2021-04-12 00:00:00',NULL,NULL,2),(82,'4',25000,'jl.lingkar muara no 14, jakarta pusat','2021-05-12 00:00:00',NULL,NULL,2),(83,'4',25000,'jl.lingkar muara no 14, jakarta pusat','2021-05-12 00:00:00',NULL,NULL,2),(84,'4',16400,'jl.lingkar muara no 14, jakarta pusat','2021-06-12 00:00:00',NULL,NULL,2),(85,'4',25000,'jl.muara karang no 15, jakarta pusat','2021-01-12 00:00:00',NULL,NULL,4),(86,'4',28000,'jl.muara karang no 15, jakarta pusat','2021-01-24 00:00:00',NULL,NULL,4),(87,'4',137000,'jl.muara karang no 15, jakarta pusat','2021-02-24 00:00:00',NULL,NULL,4),(88,'4',125000,'jl.muara buaya no 15, jakarta pusat','2021-02-24 00:00:00',NULL,NULL,1),(89,'4',64200,'jl.muara buaya no 15, jakarta pusat','2021-07-24 00:00:00',NULL,NULL,1),(90,'4',64200,'jl.muara buaya no 15, jakarta pusat','2021-06-24 00:00:00',NULL,NULL,1),(91,'4',64200,'jl.muara buaya no 15, jakarta pusat','2021-06-24 00:00:00',NULL,NULL,1),(92,'4',64200,'jl.muara karang no 15, jakarta pusat','2021-05-24 00:00:00',NULL,NULL,3),(93,'4',25000,'jl.muara karang no 15, jakarta pusat','2021-08-24 00:00:00',NULL,NULL,3),(94,'4',25000,'jl.muara karang no 15, jakarta pusat','2021-08-24 00:00:00',NULL,NULL,4),(95,'4',25000,'jl.muara karang no 15, jakarta pusat','2021-08-20 00:00:00',NULL,NULL,2),(96,'4',7000,'jl.ciledug no 2, tangerang','2021-08-10 00:00:00',NULL,NULL,2),(97,'4',7000,'jl.mawar merah no 2, tangerang','2021-10-10 00:00:00',NULL,NULL,4),(98,'4',25000,'jl.mawar merah no 2, tangerang','2021-10-10 00:00:00',NULL,NULL,4),(99,'4',25000,'jl.mawar merah no 2, tangerang','2021-12-10 00:00:00',NULL,NULL,4),(100,'4',25000,'jl.bukit sinai no 7, tangerang','2021-12-10 00:00:00',NULL,NULL,2),(101,'4',25000,'jl.bukit sinai no 7, tangerang','2021-03-10 09:15:00',NULL,NULL,1),(102,'4',25000,'jl.bukit sinai no 7, tangerang','2021-03-10 09:15:00',NULL,NULL,1),(103,'4',25000,'jl.bukit sinai no 7, tangerang','2021-12-10 09:15:00',NULL,NULL,1),(104,'4',25000,'jl.bukit sinai no 7, tangerang','2021-11-10 09:15:00',NULL,NULL,1),(105,'4',16400,'null','2021-09-27 14:35:25',NULL,NULL,2),(106,'4',62500,'Jl ciledug no 5, tangerang','2021-09-27 15:34:13',NULL,NULL,2),(107,'4',62500,'Jl ciledug no 5, tangerang','2021-09-27 15:35:55',NULL,NULL,2),(108,'4',11700,'Jl ciledug no 5, tangerang','2021-09-27 15:37:28',NULL,NULL,2),(109,'4',62500,'Jl ciledug no 5, tangerang','2021-09-27 15:38:07',NULL,NULL,2),(110,'4',42000,'null','2021-09-27 16:07:37',NULL,NULL,2),(111,'4',3900,'null','2021-09-27 16:45:25',NULL,NULL,2),(112,'4',14800,'jl mawaddah 4 blok n2 no 5  tangerang','2021-09-28 09:44:21',NULL,NULL,2),(113,'4',10900,'Senayan city, jakarta','2021-09-28 09:45:56',NULL,NULL,2),(114,'4',7000,'Jl ciledug no 3, tangerang','2021-09-28 10:00:06',NULL,NULL,2),(115,'4',7000,'Jl ciledug no 5, tangerang','2021-09-28 10:00:33',NULL,NULL,2),(116,'4',0,'jl mawar no 4','2021-09-28 10:42:44','http://localhost:5001/images/receipt/2/RECEIPT_IMG-1632800564229-652417581',NULL,2),(117,'4',10000,'jl sinai no 5, medan','2021-09-29 12:36:54','http://localhost:5001/images/receipt/2/RECEIPT_IMG-1632800564229-652417581','',2),(118,'3',3900,'jl valencia blok k12, Jakarta','2021-09-29 19:21:43',NULL,NULL,2),(119,'3',274000,'Jl ciledug no 3, tangerang','2021-09-29 19:22:38',NULL,NULL,2),(120,'3',137000,'Jl ciledug no 5, tangerang','2021-09-29 19:23:30',NULL,NULL,2),(121,'3',3900,'Senayan city, jakarta','2021-09-29 19:52:04',NULL,NULL,6);
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-29 21:17:07
