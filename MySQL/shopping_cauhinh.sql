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
-- Table structure for table `cauhinh`
--

DROP TABLE IF EXISTS `cauhinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cauhinh` (
  `MaCauHinh` int NOT NULL AUTO_INCREMENT,
  `ManHinh` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `HeDieuHanh` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CameraSau` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CameraTruoc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CPU` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Ram` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Rom` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TheSim` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DungLuongPin` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MaSP` int DEFAULT NULL,
  PRIMARY KEY (`MaCauHinh`),
  KEY `MaSP` (`MaSP`),
  CONSTRAINT `cauhinh_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cauhinh`
--

LOCK TABLES `cauhinh` WRITE;
/*!40000 ALTER TABLE `cauhinh` DISABLE KEYS */;
INSERT INTO `cauhinh` VALUES (1,'6.5, Super Retina XDR','IOS 13','12 MP','12 MP','Apple A13 Bionic 6 nhân','4GB','512GB','2 SIM','3500 mAh',1),(2,'6.5, Super Retina XDR','IOS 13','12 MP','12 MP','Apple A13 Bionic 6 nhân','4GB','256GB','2 SIM','3300 mAh',2),(3,'6.5, Super Retina','IOS 12','12 MP','12 MP','Apple A12 Bionic 6 nhân','4GB','256GB','2 SIM','3300 mAh',3),(4,'5.8, Super Retina','IOS 12','12 MP','7 MP','Apple A11 Bionic 6 nhân','3GB','256GB','2 SIM','3100 mAh',4),(5,'5.8, Super Retina','IOS 12','12 MP','7 MP','Apple A12 Bionic 6 nhân','4GB','64GB','2 SIM','3500 mAh',5),(6,'6.1, Liquid Retina','IOS 12','12 MP','7 MP','Apple A12 Bionic 6 nhân','3GB','128GB','2 SIM','3300 mAh',6),(7,'5.5, Retina HD','IOS 12','12 MP','7 MP','Apple A11 Bionic 6 nhân','3GB','64GB','1 SIM','2900 mAh',7),(8,'5.5, Retina HD','IOS 13','12 MP','7 MP','Apple A10 Fusion 4 nhân 64-bit','3GB','32GB','2 SIM','2800 mAh',8),(9,'4.7, Retina HD','IOS 12','12 MP','7 MP','Apple A10 Fusion 4 nhân 64-bit','2GB','32GB','1 SIM','2800 mAh',9),(10,'5.5, Retina HD','IOS 12','12 MP','7 MP','Apple A9 2 nhân 64-bit','2GB','32GB','1 SIM','2500 mAh',10),(11,'6.4, Quad HD+ (2K+)','Android 9.0 (Pie)','Chính 12 MP & Phụ 12 MP, 16 MP','Chính 10 MP & Phụ 8 MP','Exynos 9820 8 nhân 64-bit','8GB','512GB','2 SIM','4500 mAh',11),(12,'6.8, Quad HD+ (2K+)','Android 9.0 (Pie)','Chính 12 MP & Phụ 12 MP, 16 MP, TOF 3D','10 MP','Exynos 9825 8 nhân 64-bit','12GB','256GB','2 SIM','4300 mAh',12),(13,'6.4, Quad HD+ (2K+)','Android 8.1 (Oreo)','Chính 12 MP & Phụ 12 MP','12 MP','Exynos 9810 8 nhân 64-bit','6GB','128GB','2 SIM','4500 mAh',13),(14,'6.4, Full HD+','Android 9.0 (Pie)','Chính 12 MP & Phụ 12 MP','10 MP','Exynos 9825 8 nhân 64-bit','8GB','256GB','2 SIM','4100 mAh',14),(15,'6.4, Quad HD+ (2K+)','Android 9.0 (Pie)','Chính 12 MP & Phụ 12 MP','Chính 10 MP & Phụ 8 MP','Exynos 9820 8 nhân 64-bit','8GB','128GB','2 SIM','4500 mAh',15),(16,'6.1, Quad HD+ (2K+)','Android 9.0 (Pie)3','Chính 12 MP & Phụ 12 MP, 16 MP','10 MP','Exynos 9820 8 nhân 64-bit','8GB','128GB','2 SIM','4400 mAh',16),(17,'6.6, Full HD+','Android 9.0 (Pie)','Chính 48 MP & Phụ 13 MP, 8 MP','16 MP','Snapdragon 855 8 nhân 64-bit','8GB','256GB','2 SIM','4700 mAh',17),(18,'6.5, Full HD+','IOS 13','Chính 48 MP & Phụ 13 MP, 8 MP, 2 MP','16 MP','Snapdragon 730G 8 nhân','8GB','256GB','2 SIM','4600 mAh',18),(19,'6.4, Full HD+','Android 9.0 (Pie)','Chính 48 MP & Phụ 5 MP','16 MP','Snapdragon 710 8 nhân 64-bit','6GB','256GB','2 SIM','4000 mAh',19),(20,'6.5, Full HD+','Android 9.0 (Pie)','Chính 48 MP & Phụ 5 MP','16 MP','MediaTek Helio P70 8 nhân','6GB','128GB','2 SIM','4100 mAh',20);
/*!40000 ALTER TABLE `cauhinh` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-23 22:21:35
