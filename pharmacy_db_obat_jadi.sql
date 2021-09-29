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
-- Table structure for table `obat_jadi`
--

DROP TABLE IF EXISTS `obat_jadi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obat_jadi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  `deskripsi` varchar(1200) NOT NULL,
  `kategori` varchar(45) NOT NULL,
  `stock` int NOT NULL,
  `harga` int NOT NULL,
  `foto_produk` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obat_jadi`
--

LOCK TABLES `obat_jadi` WRITE;
/*!40000 ALTER TABLE `obat_jadi` DISABLE KEYS */;
INSERT INTO `obat_jadi` VALUES (14,'Panadol Cold & Flu isi 10 Kaplet','PANADOL COLD & FLU merupakan obat batuk dan pereda flu dengan kandungan Paracetamol, Pseudoephedrine HCl, dan Dextromethorphan HBr. Paracetamol digunakan sebagai pereda demam dan sakit kepala. Dextromethorphan HBr sebagai antitusif yang bisa menekan refleks batuk. Pseudoephedrine HCl bekerja membantu meredakan pembengkakan pembuluh darah di dalam hidung, sehingga obat ini dapat digunakan untuk meredakan gejala hidung tersumbat, batuk tidak berdahak, dan demam yang menyertai flu.','',100,12500,'https://d2qjkwm11akmwu.cloudfront.net/products/727931_2-7-2021_20-20-31.webp'),(15,'Panadol Cold & Flu isi 10 Kaplet','PANADOL COLD & FLU merupakan obat batuk dan pereda flu dengan kandungan Paracetamol, Pseudoephedrine HCl, dan Dextromethorphan HBr. Paracetamol digunakan sebagai pereda demam dan sakit kepala. Dextromethorphan HBr sebagai antitusif yang bisa menekan refleks batuk. Pseudoephedrine HCl bekerja membantu meredakan pembengkakan pembuluh darah di dalam hidung, sehingga obat ini dapat digunakan untuk meredakan gejala hidung tersumbat, batuk tidak berdahak, dan demam yang menyertai flu.','',95,12500,'https://d2qjkwm11akmwu.cloudfront.net/products/727931_2-7-2021_20-20-31.webp'),(16,'Sanmol 500 mg 4 tablet','SANMOL merupakan obat dengan kandungan Paracetamol 500 mg. Obat ini digunakan untuk meringankan rasa sakit pada keadaan sakit kepala, sakit gigi dan menurunkan demam. Sanmol bekerja pada pusat pengatur suhu di hipotalamus untuk menurunkan suhu tubuh (antipiretik) serta menghambat sintesis prostaglandin sehingga dapat mengurangi nyeri ringan sampai sedang (analgesik).','',24,3900,'https://d2qjkwm11akmwu.cloudfront.net/products/daf98ec4-d04d-434b-bcce-19866070216b_product_image_url.webp'),(17,'Ibuprofen 400 mg 10 tablet','IBUPROFEN merupakan obat generik dimana pada kadar 400 mg atau lebih digunakan untuk rasa nyeri dan inflamasi sebagai gejala utama. Obat ini digunakan sebagai analgesik yaitu untuk meringankan nyeri ringan sampai sedang antara lain nyeri pada sakit kepala, nyeri haid, nyeri pada penyakit gigi atau pencabutan gigi, dan nyeri setelah operasi. Selain itu, obat ini digunakan sebagai analgesik dan anti inflamasi dengan meringankan gejala-gejala penyakit rematik tulang, sendi dan non sendi, meringankan gejala-gejala akibat trauma otot dan tulang/sendi. Ibuprofen adalah golongan obat anti inflamasi non steroid yang mempunyai efek anti inflamasi, analgesik dan antipiretik. Obat ini bekerja dengan cara menghambat prostaglandin. Dalam penggunaan obat ini harus SESUAI DENGAN PETUNJUK DOKTER.','',66,7000,'https://d2qjkwm11akmwu.cloudfront.net/products/7689ed7d-1187-46a8-b919-978989e010ea_product_image_url.webp'),(18,'X-Flam 50 mg 10 tablet','X-FLAM TABLET merupakan obat yang mengandung zat aktif kalium diklofenak. Obat ini termasuk golongan obat anti inflamasi non steroid (OAINS). X-FLAM digunakan untuk rheumatoid arthritis akut dan kronis, meredakan rasa nyeri, nyeri saat haid, migraine akut, dan paska operasi gigi. Obat ini bekerja dengan menghambat biosintesis prostaglandin yang berperan dalam inflamasi, rasa nyeri, dan demam. Dalam penggunaan obat ini harus SESUAI DENGAN PETUNJUK DOKTER.','',15,32000,'https://d2qjkwm11akmwu.cloudfront.net/products/3bba58e5-b5a7-46f8-a326-3ee4c8915f03_product_image_url.webp'),(19,'Mertigo 6 mg 10 tablet','MERTIGO 6 MG TABLET merupakan obat dengan kandungan Betahistine Mesylate 6 mg per tablet. Betahistine adalah suatu analog histamin dan dapat mengurangi tekanan endolimfatik dengan cara memperbaiki mikrosirkulasi. Obat ini digunakan untuk mengobati vertigo, tinitus dan gangguan pendengaran yang terkait dengan penyakit meniere. Dalam penggunaan obat ini HARUS SESUAI DENGAN PETUNJUK DOKTER.','',36,64200,'https://d2qjkwm11akmwu.cloudfront.net/products/32d89f51-4682-4448-9895-13da168c6d99_product_image_url.webp'),(20,'Methylprednisolone 8 mg 10 tablet','METHYLPREDNISOLONE 8 MG merupakan obat yang termasuk dalam golongan kortikosteroid, Golongan obat ini merupakan obat yang meredakan peradangan. Methylprednisolone di gunakan dalam penanganan penyakit paru obstruksi kronik, croup, radang sendi, lupus, psoriasis, colitis ulcerosa, lalergi, gangguan fungsi kelenjar endokrin, gangguan lain pada kulit, mata, paru, lambung, sistem saraf dan juga sel darah. Dalam penggunaan obat ini HARUS SESUAI DENGAN PETUNJUK DOKTER.','',200,14200,'https://d2qjkwm11akmwu.cloudfront.net/products/57999105-340f-4fdd-92d6-e91cb038f108_product_image_url.webp'),(21,'Methylprednisolone 4 mg 10 tablet','METHYLPREDNISOLONE 4 MG merupakan obat yang termasuk dalam golongan kortikosteroid, Golongan obat ini merupakan obat yang meredakan peradangan. Methylprednisolone di gunakan dalam penanganan penyakit paru obstruksi kronik, croup, radang sendi, lupus, psoriasis, colitis ulcerosa, lalergi, gangguan fungsi kelenjar endokrin, gangguan lain pada kulit, mata, paru, lambung, sistem saraf dan juga sel darah. Dalam penggunaan obat ini HARUS SESUAI DENGAN PETUNJUK DOKTER.','',250,12200,'https://d2qjkwm11akmwu.cloudfront.net/products/5145210e-e750-44c6-8655-95d857961f22_product_image_url.webp'),(22,'Dextamine Sirup 60 ml','DEXTAMINE SIRUP merupakan obat yang mengandung Dexamethasone dan Dexchlorpheniramine Maleate. Dexamethasone merupakan obat kortikosteroid yang digunakan sebagai agen anti alergi, imunosupresan, anti inflamasi dan anti shock yang sangat kuat. Obat ini menekan migrasi neutrofil, mengurangi produksi prostaglandin (senyawa yang berfungsi sebagai mediator inflamasi), dan menyebabkan dilatasi kapiler. Hal ini akan mengurangi respon tubuh terhadap kondisi peradangan (inflamasi). Dexchlorpheniramine Maleate merupakan golongan anti histamine dengan sifat antikolinergik dan sedatif. Obat ini bekerja dengan cara menghambat efek dari histamin sehingga berbagai reaksi alergi itu dapat dikurangi. Penggunaan kombinasi dari kedua obat ini ditujukan untuk mengurangi gejala-gejala alergi yang disertai peradangan. Dalam penggunaan obat ini harus SESUAI DENGAN PETUNJUK DOKTER.','',35,33000,'https://d2qjkwm11akmwu.cloudfront.net/products/f888afc9-37ed-45f0-8a37-c5360c0414a3_product_image_url.webp'),(23,'Interhistin 50 mg 10 tablet','INTERHISTIN 50 MG TABLET merupakan obat dengan kandungan Mebhydrolin napadisylate. Mebhydrolin napadisylate termasuk golongan anthistamin H1 generasi pertama yang digunakan untuk mengobati alergi seperti urtikaria, rinitis dan gatal pada kulit. Obat ini bekerja dengan memblok aksi histamin (mediator alergi) pada reseptor H1, sehingga terjadi penghambatan reaksi inflamasi dan gejala alergi. Dalam penggunaan obat ini HARUS SESUAI DENGAN PETUNJUK DOKTER.','',500,12500,'https://d2qjkwm11akmwu.cloudfront.net/products/e037118f-9938-4446-9f08-40d4f08fe89a_product_image_url.webp'),(24,'Amplodipine 5 mg 10 tablet','AMLODIPINE merupakan obat antihipertensi golongan Calcium Channel Blockers (CCB). Obat ini bekerja dengan cara menghambat kalsium masuk ke dalam sel sehingga salah satu efeknya adalah menyebabkan vasodilatasi, memperlambat laju jantung, dan menurunkan kontraktilitas miokard sehingga menurunkan tekanan darah. Dalam penggunaan obat ini harus SESUAI DENGAN PETUNJUK DOKTER.','',988,3500,'https://d2qjkwm11akmwu.cloudfront.net/products/0798a96f-9c88-4bc0-b1a3-08551ac737d2_product_image_url.webp'),(25,'Amplodipine 10 mg 10 tablet','AMLODIPINE merupakan obat antihipertensi golongan Calcium Channel Blockers (CCB). Obat ini bekerja dengan cara menghambat kalsium masuk ke dalam sel sehingga salah satu efeknya adalah menyebabkan vasodilatasi, memperlambat laju jantung, dan menurunkan kontraktilitas miokard sehingga menurunkan tekanan darah. Dalam penggunaan obat ini harus SESUAI DENGAN PETUNJUK DOKTER.','',1000,8200,'https://d2qjkwm11akmwu.cloudfront.net/products/19676f7a-471f-40f3-b840-b284b6ee95b3_product_image_url.webp'),(26,'Floragyn 10 kapsul','FLORAGYN mengandung Lactobacillus rhamnosus dan lactobacillus reuteri, bakteri yang merupakan floral normal (bakteri baik) vagina. floragyn merupakan suplemen untuk membantu membantu terapi tambahan untuk kandidiasis vulvovag , vaginosis bakterial . Obat ini juga dapat digunakan untuk infeksi saluran kemih.','',117,137000,'https://d2qjkwm11akmwu.cloudfront.net/products/e9a40b9c-f4d8-48d9-9b04-c69087102649_product_image_url.webp');
/*!40000 ALTER TABLE `obat_jadi` ENABLE KEYS */;
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
