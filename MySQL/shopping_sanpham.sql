-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: shopping
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
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanpham` (
  `MaSP` int NOT NULL AUTO_INCREMENT,
  `TenSP` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Anh` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Gia` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MaNCC` int DEFAULT NULL,
  `MoTa` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT NULL,
  `MaNhomSP` int DEFAULT NULL,
  PRIMARY KEY (`MaSP`),
  KEY `MaNCC` (`MaNCC`),
  KEY `MaNhomSP` (`MaNhomSP`),
  CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`),
  CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaNhomSP`) REFERENCES `nhomsanpham` (`MaNhomSP`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (1,'Iphone 11 Pro Max 512GB','https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-gold-600x600.jpg','43.990',1,NULL,NULL,1),(2,'IPhone 11 Pro Max 256GB','https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-black-600x600.jpg','37.990',1,NULL,NULL,1),(3,'IPhone Xs Max 256GB','https://cdn.tgdd.vn/Products/Images/42/190322/iphone-xs-max-256gb-white-600x600.jpg','32.990',1,NULL,NULL,1),(4,'IPhone X 256GB','https://cdn.tgdd.vn/Products/Images/42/190324/iphone-xs-256gb-white-600x600.jpg','27.990',1,NULL,NULL,1),(5,'IPhone Xs 64GB','https://cdn.tgdd.vn/Products/Images/42/190321/iphone-xs-max-gold-600x600.jpg','24.990',1,NULL,NULL,1),(6,'IPhone XR 128GB','https://cdn.tgdd.vn/Products/Images/42/191483/iphone-xr-128gb-red-600x600.jpg','17.990',1,NULL,NULL,1),(7,'IPhone 8 Plus 64GB','https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-hh-600x600.jpg','16.590',1,NULL,NULL,1),(8,'IPhone 7 Plus 32GB','https://cdn.tgdd.vn/Products/Images/42/78124/iphone-7-plus-32gb-gold-600x600.jpg','12.490',1,NULL,NULL,1),(9,'IPhone 7 32GB','https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-gold-600x600.jpg','10.490',1,NULL,NULL,1),(10,'IPhone 6s Plus 32GB','https://cdn.tgdd.vn/Products/Images/42/87846/iphone-6s-plus-32gb-600x600.jpg','8.490',1,NULL,NULL,1),(11,'Samsung Galaxy S10+ (512GB)','https://cdn.tgdd.vn/Products/Images/42/198986/sieu-pham-galaxy-s-moi-2-512gb-black-600x600.jpg','26.990',2,NULL,NULL,2),(12,'Samsung Galaxy Note 10+','https://cdn.tgdd.vn/Products/Images/42/206176/samsung-galaxy-note-10-plus-white-600x600.jpg','26.990',2,NULL,NULL,2),(13,'Samsung Galaxy Note 9','https://cdn.tgdd.vn/Products/Images/42/154897/samsung-galaxy-note-9-black-600x600.jpg','16.990',2,NULL,NULL,2),(14,'Samsung Galaxy Note 10','https://cdn.tgdd.vn/Products/Images/42/191276/samsung-galaxy-note-10-pink-600x600.jpg','22.990',2,NULL,NULL,2),(15,'Samsung Galaxy S10+','https://cdn.tgdd.vn/Products/Images/42/179530/samsung-galaxy-s10-plus-black-600x600.jpg','22.990',2,NULL,NULL,2),(16,'Samsung Galaxy S10','https://cdn.tgdd.vn/Products/Images/42/161554/samsung-galaxy-s10-white-600x600.jpg','17.990',2,NULL,NULL,2),(17,'OPPO Reno 10x Zoom Edition','https://cdn.tgdd.vn/Products/Images/42/201235/oppo-reno-10x-zoom-edition-black-600x600.jpg','16.990',3,NULL,NULL,3),(18,'OPPO Reno2','https://cdn.tgdd.vn/Products/Images/42/209798/oppo-reno2-600x600.jpg','14.990',3,NULL,NULL,3),(19,'OPPO Reno','https://cdn.tgdd.vn/Products/Images/42/200438/oppo-reno-pink-600x600.jpg','10.990',3,NULL,NULL,3),(20,'OPPO F11 Pro 128GB','https://cdn.tgdd.vn/Products/Images/42/202703/oppo-f11-pro-128gb-600x600.jpg','7.490',3,NULL,NULL,3);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-23 22:21:36
