-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quanao
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `binhluan`
--

DROP TABLE IF EXISTS `binhluan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `binhluan` (
  `ngaybl` datetime(6) NOT NULL,
  `MATK` int(11) NOT NULL,
  `MAMH` int(11) NOT NULL,
  `NOIDUNG` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ngaybl`,`MATK`,`MAMH`),
  KEY `FK_BINHLUAN_MATHANG` (`MAMH`),
  KEY `FK_BINHLUAN_TAIKHOAN` (`MATK`),
  CONSTRAINT `FK_BINHLUAN_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`mamh`),
  CONSTRAINT `FK_BINHLUAN_TAIKHOAN` FOREIGN KEY (`MATK`) REFERENCES `taikhoan` (`matk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binhluan`
--

LOCK TABLES `binhluan` WRITE;
/*!40000 ALTER TABLE `binhluan` DISABLE KEYS */;
INSERT INTO `binhluan` VALUES ('2023-08-08 00:00:00.000000',1,2,'đẹp quá!'),('2023-08-10 00:00:00.000000',25,2,'quá đẹp'),('2023-08-14 00:00:00.000000',1,2,'áo đẹp!'),('2023-10-07 00:00:00.000000',1,1,'ko'),('2023-10-07 00:00:00.000000',1,2,'ko'),('2023-10-08 00:00:00.000000',1,1,'ko'),('2023-10-09 00:00:00.000000',1,1,'đẹp');
/*!40000 ALTER TABLE `binhluan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatlieu`
--

DROP TABLE IF EXISTS `chatlieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chatlieu` (
  `MACL` int(11) NOT NULL AUTO_INCREMENT,
  `TENVAI` varchar(45) NOT NULL,
  PRIMARY KEY (`MACL`),
  UNIQUE KEY `TENVAI_UNIQUE` (`TENVAI`),
  UNIQUE KEY `UK2g39wwetaq5k5k3lornkes1se` (`TENVAI`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatlieu`
--

LOCK TABLES `chatlieu` WRITE;
/*!40000 ALTER TABLE `chatlieu` DISABLE KEYS */;
INSERT INTO `chatlieu` VALUES (1,'COTTON'),(3,'JEAN'),(2,'KAKI'),(5,'NHÀ LÀM'),(6,'NHÀ LÀM 1');
/*!40000 ALTER TABLE `chatlieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `color` (
  `MACOLOR` int(11) NOT NULL AUTO_INCREMENT,
  `TENCOLOR` varchar(45) NOT NULL,
  PRIMARY KEY (`MACOLOR`),
  UNIQUE KEY `UKfh2l9dnwu6xgr7c9u2yyokh0d` (`TENCOLOR`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Nâu Cafe'),(2,'Vàng Neon'),(3,'Xám'),(4,'Xanh'),(5,'Xanh Rêu');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_hoadon`
--

DROP TABLE IF EXISTS `ct_hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ct_hoadon` (
  `MAHD` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `SOLUONG` int(11) DEFAULT NULL,
  `GIA` int(11) DEFAULT NULL,
  PRIMARY KEY (`MAHD`,`ID`),
  KEY `FK_CT_HOADON_CT_MATHANG` (`ID`),
  CONSTRAINT `FK_CT_HOADON_CT_MATHANG` FOREIGN KEY (`ID`) REFERENCES `ct_mathang` (`id`),
  CONSTRAINT `FK_CT_HOADON_HOADON` FOREIGN KEY (`MAHD`) REFERENCES `hoadon` (`mahd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_hoadon`
--

LOCK TABLES `ct_hoadon` WRITE;
/*!40000 ALTER TABLE `ct_hoadon` DISABLE KEYS */;
INSERT INTO `ct_hoadon` VALUES (24,10,1,20000),(28,10,2,20000),(29,10,5,20000),(30,10,6,20000),(31,10,2,20000),(32,9,1,20000),(33,10,1,20000),(34,10,1,20000),(35,10,5,20000),(36,10,5,20000),(37,10,5,20000),(38,10,5,20000),(39,10,5,20000),(40,11,5,20000),(41,9,1,20000),(42,4,1,123456),(42,10,2,20000),(43,10,2,20000),(44,9,2,20000),(45,9,2,20000),(46,9,2,20000),(47,10,2,20000),(48,10,2,40000),(49,10,2,40000),(50,9,2,40000),(51,10,15,300000),(52,9,4,80000);
/*!40000 ALTER TABLE `ct_hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_khuyenmai`
--

DROP TABLE IF EXISTS `ct_khuyenmai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ct_khuyenmai` (
  `MAKM` int(11) NOT NULL,
  `MAMH` int(11) NOT NULL,
  `MUCGIAM` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MAKM`,`MAMH`),
  KEY `FK_CT_KHUYENMAI_MATHANG` (`MAMH`),
  CONSTRAINT `FK_CT_KHUYENMAI_KHUYENMAI` FOREIGN KEY (`MAKM`) REFERENCES `khuyenmai` (`makm`),
  CONSTRAINT `FK_CT_KHUYENMAI_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`mamh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_khuyenmai`
--

LOCK TABLES `ct_khuyenmai` WRITE;
/*!40000 ALTER TABLE `ct_khuyenmai` DISABLE KEYS */;
INSERT INTO `ct_khuyenmai` VALUES (15,6,'80%'),(15,7,'70%'),(16,43,'10%'),(16,44,'30%');
/*!40000 ALTER TABLE `ct_khuyenmai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_mathang`
--

DROP TABLE IF EXISTS `ct_mathang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ct_mathang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MACOLOR` int(11) DEFAULT NULL,
  `MASIZE` int(11) DEFAULT NULL,
  `CURRENT_NUMBEER` varchar(45) DEFAULT NULL,
  `MAMH` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CT_MATHANG_MATHANG` (`MAMH`),
  KEY `FK_CT_MATHANG_SIZE_idx` (`MASIZE`),
  KEY `FK_CT_MATHANG_COLOR_idx` (`MACOLOR`),
  CONSTRAINT `FK_CT_MATHANG_COLOR` FOREIGN KEY (`MACOLOR`) REFERENCES `color` (`macolor`),
  CONSTRAINT `FK_CT_MATHANG_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`mamh`),
  CONSTRAINT `FK_CT_MATHANG_SIZE` FOREIGN KEY (`MASIZE`) REFERENCES `size` (`masize`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_mathang`
--

LOCK TABLES `ct_mathang` WRITE;
/*!40000 ALTER TABLE `ct_mathang` DISABLE KEYS */;
INSERT INTO `ct_mathang` VALUES (1,1,2,'4',1),(2,2,1,'0',1),(3,3,4,'4',1),(4,4,3,'6',1),(5,5,2,'8',1),(6,1,1,'20',1),(7,2,4,'1',1),(8,3,3,'6',1),(9,4,2,'7',2),(10,5,1,'41',2),(11,1,4,'15',2),(39,2,3,'19',43),(40,3,2,'10',43),(42,4,1,'10',44),(43,5,4,'10',44),(45,1,3,'10000',46),(47,2,2,'10',47),(48,3,1,'10',47),(50,4,4,'10',48),(51,5,3,'10',48),(53,1,2,'10',49),(54,2,1,'10',49),(55,3,4,'10',50),(57,4,3,'10',51),(59,5,2,'10',52),(67,1,1,'20',60),(79,2,3,'123',71),(80,1,3,'10',71);
/*!40000 ALTER TABLE `ct_mathang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_phieudat`
--

DROP TABLE IF EXISTS `ct_phieudat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ct_phieudat` (
  `ID` int(11) NOT NULL,
  `MAPD` int(11) NOT NULL,
  `SOLUONG` varchar(45) DEFAULT NULL,
  `DONGIA` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`,`MAPD`),
  KEY `FK_CT_PHIEUDAT_PHIEUDAT` (`MAPD`),
  CONSTRAINT `FK_CT_PHIEUDAT_CT_MATHANG` FOREIGN KEY (`ID`) REFERENCES `ct_mathang` (`id`),
  CONSTRAINT `FK_CT_PHIEUDAT_PHIEUDAT` FOREIGN KEY (`MAPD`) REFERENCES `phieudat` (`mapd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_phieudat`
--

LOCK TABLES `ct_phieudat` WRITE;
/*!40000 ALTER TABLE `ct_phieudat` DISABLE KEYS */;
INSERT INTO `ct_phieudat` VALUES (1,18,'2','2'),(2,18,'1','2'),(4,18,'10','10'),(9,20,'1','100000'),(9,26,'10','100000'),(10,26,'10','1000000'),(10,27,'10','1000000'),(10,29,'10','1000000'),(11,27,'10','1000000'),(42,20,'10','1000000'),(45,23,'10','10000'),(47,24,'10','1000000'),(48,24,'1','100000'),(48,25,'10','100000'),(51,25,'10','100000'),(67,30,'10','1000000');
/*!40000 ALTER TABLE `ct_phieudat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_phieunhap`
--

DROP TABLE IF EXISTS `ct_phieunhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ct_phieunhap` (
  `MAPN` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `SOLUONG` int(11) DEFAULT NULL,
  `DONGIA` int(11) DEFAULT NULL,
  PRIMARY KEY (`MAPN`,`ID`),
  KEY `FK_CT_PHIEUNHAP_CT_MATHANG` (`ID`),
  CONSTRAINT `FK_CT_PHIEUNHAP_CT_MATHANG` FOREIGN KEY (`ID`) REFERENCES `ct_mathang` (`id`),
  CONSTRAINT `FK_CT_PHIEUNHAP_PHIEUNHAP` FOREIGN KEY (`MAPN`) REFERENCES `phieunhap` (`mapn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_phieunhap`
--

LOCK TABLES `ct_phieunhap` WRITE;
/*!40000 ALTER TABLE `ct_phieunhap` DISABLE KEYS */;
INSERT INTO `ct_phieunhap` VALUES (9,11,1,2),(10,40,10000,10),(10,42,1,100000),(15,47,10,1000000),(15,48,1,100000),(16,47,10,1000000),(16,50,10,1000000),(17,9,10,1000000),(17,10,10,1000000),(18,10,10,1000000),(18,11,10,1000000),(19,10,10,1000000),(20,67,10,1000000);
/*!40000 ALTER TABLE `ct_phieunhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_quyen`
--

DROP TABLE IF EXISTS `ct_quyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ct_quyen` (
  `ngaystart` datetime(6) NOT NULL,
  `MAQUYEN` int(11) NOT NULL,
  `MATK` int(11) NOT NULL,
  `NGAYEND` date DEFAULT NULL,
  PRIMARY KEY (`ngaystart`,`MAQUYEN`,`MATK`),
  KEY `FK_CT_QUYEN_QUYEN` (`MAQUYEN`),
  KEY `FK_CT_QUYEN_TAIKHOAN` (`MATK`),
  CONSTRAINT `FK_CT_QUYEN_QUYEN` FOREIGN KEY (`MAQUYEN`) REFERENCES `quyen` (`maquyen`),
  CONSTRAINT `FK_CT_QUYEN_TAIKHOAN` FOREIGN KEY (`MATK`) REFERENCES `taikhoan` (`matk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_quyen`
--

LOCK TABLES `ct_quyen` WRITE;
/*!40000 ALTER TABLE `ct_quyen` DISABLE KEYS */;
INSERT INTO `ct_quyen` VALUES ('2001-01-01 00:00:00.000000',3,1,'2024-02-02'),('2023-01-01 00:00:00.000000',1,6,'2024-02-02'),('2023-01-01 00:00:00.000000',3,7,'2024-02-02'),('2023-08-10 00:00:00.000000',3,24,'2100-01-01'),('2023-08-10 00:00:00.000000',3,25,'2100-01-01'),('2023-08-11 00:00:00.000000',1,27,'2024-01-01'),('2023-08-11 00:00:00.000000',2,27,'2024-01-01'),('2023-08-11 00:00:00.000000',3,26,'2100-01-01'),('2023-08-14 00:00:00.000000',1,28,'2025-01-01'),('2023-08-14 00:00:00.000000',2,28,'2025-01-01'),('2023-08-15 00:00:00.000000',1,29,'2024-01-01'),('2023-08-15 00:00:00.000000',1,30,'2023-01-01'),('2023-08-15 00:00:00.000000',2,29,'2023-01-01'),('2023-08-15 00:00:00.000000',2,30,'2023-01-01');
/*!40000 ALTER TABLE `ct_quyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_trangthai`
--

DROP TABLE IF EXISTS `ct_trangthai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ct_trangthai` (
  `MAHD` int(11) NOT NULL,
  `MATTHD` int(11) NOT NULL,
  `NGAYTAO` date DEFAULT NULL,
  PRIMARY KEY (`MAHD`,`MATTHD`),
  KEY `FK_CT_TRANGTHAI_TRANGTHAI` (`MATTHD`),
  CONSTRAINT `FK_CT_TRANGTHAI_HOADON` FOREIGN KEY (`MAHD`) REFERENCES `hoadon` (`mahd`),
  CONSTRAINT `FK_CT_TRANGTHAI_TRANGTHAI` FOREIGN KEY (`MATTHD`) REFERENCES `trangthaihd` (`matthd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_trangthai`
--

LOCK TABLES `ct_trangthai` WRITE;
/*!40000 ALTER TABLE `ct_trangthai` DISABLE KEYS */;
INSERT INTO `ct_trangthai` VALUES (24,2,'2023-08-10'),(24,3,'2023-08-09'),(24,4,'2023-08-10'),(24,5,'2023-08-11'),(25,1,'2023-08-09'),(25,3,'2023-08-10'),(25,4,'2023-08-09'),(25,5,'2023-08-11'),(26,1,'2023-08-09'),(26,2,'2023-08-10'),(26,3,'2023-08-15'),(26,4,'2023-08-15'),(26,5,'2023-08-15'),(28,1,'2023-08-09'),(28,6,'2023-08-10'),(29,1,'2023-08-09'),(29,6,'2023-08-10'),(30,1,'2023-08-10'),(30,6,'2023-08-10'),(31,1,'2023-08-11'),(31,3,'2023-08-14'),(31,4,'2023-08-14'),(31,5,'2023-08-14'),(32,1,'2023-08-11'),(32,3,'2023-08-11'),(32,4,'2023-08-14'),(32,5,'2023-08-14'),(33,2,'2023-08-11'),(33,3,'2023-08-11'),(33,4,'2023-08-11'),(33,5,'2023-08-11'),(34,1,'2023-08-11'),(34,6,'2023-08-11'),(35,1,'2023-08-14'),(35,6,'2023-08-14'),(36,1,'2023-08-15'),(36,6,'2023-08-15'),(37,1,'2023-08-15'),(37,3,'2023-08-15'),(37,4,'2023-08-15'),(37,5,'2023-08-15'),(38,1,'2023-08-15'),(38,6,'2023-08-15'),(39,1,'2023-08-15'),(39,6,'2023-08-15'),(40,1,'2023-08-15'),(40,3,'2023-08-15'),(40,4,'2023-08-15'),(40,5,'2023-08-15'),(41,1,'2023-08-16'),(42,2,'2023-08-19'),(42,3,'2023-08-19'),(42,4,'2023-10-06'),(42,5,'2023-10-06'),(43,1,'2023-10-12'),(44,1,'2023-10-12'),(45,1,'2023-10-12'),(46,1,'2023-10-10'),(46,3,'2023-10-17'),(47,1,'2023-10-12'),(47,3,'2023-10-16'),(48,1,'2023-10-12'),(48,6,'2023-10-14'),(49,1,'2023-10-12'),(49,6,'2023-10-14'),(50,1,'2023-10-16'),(50,3,'2023-10-16'),(51,1,'2023-10-17'),(52,1,'2023-10-19');
/*!40000 ALTER TABLE `ct_trangthai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danhgia`
--

DROP TABLE IF EXISTS `danhgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `danhgia` (
  `ngaydg` datetime(6) NOT NULL,
  `MATK` int(11) NOT NULL,
  `MAMH` int(11) NOT NULL,
  `NUMBER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ngaydg`,`MATK`,`MAMH`),
  KEY `FK_DANHGIA_MATHANG` (`MAMH`),
  KEY `FK_DANHGIA_TAIKHOAN` (`MATK`),
  CONSTRAINT `FK_DANHGIA_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`mamh`),
  CONSTRAINT `FK_DANHGIA_TAIKHOAN` FOREIGN KEY (`MATK`) REFERENCES `taikhoan` (`matk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danhgia`
--

LOCK TABLES `danhgia` WRITE;
/*!40000 ALTER TABLE `danhgia` DISABLE KEYS */;
INSERT INTO `danhgia` VALUES ('2023-08-08 00:00:00.000000',1,2,5),('2023-10-07 00:00:00.000000',1,1,4),('2023-10-08 00:00:00.000000',1,1,5);
/*!40000 ALTER TABLE `danhgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gia`
--

DROP TABLE IF EXISTS `gia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gia` (
  `MAMH` int(11) NOT NULL,
  `ngayapdung` datetime(6) NOT NULL,
  `MANV` int(11) NOT NULL,
  `GIA` int(11) DEFAULT NULL,
  `NGAYKT` date DEFAULT NULL,
  PRIMARY KEY (`MAMH`,`ngayapdung`,`MANV`),
  KEY `FK_GIA_NHANVIEN` (`MANV`),
  CONSTRAINT `FK_GIA_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`mamh`),
  CONSTRAINT `FK_GIA_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`manv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gia`
--

LOCK TABLES `gia` WRITE;
/*!40000 ALTER TABLE `gia` DISABLE KEYS */;
INSERT INTO `gia` VALUES (1,'2023-07-01 00:00:00.000000',1,123456,'2023-02-27'),(1,'2023-08-01 00:00:00.000000',1,123456,'2023-09-29'),(2,'2023-11-07 00:00:00.000000',1,20000,'2023-12-07'),(3,'2023-11-07 00:00:00.000000',1,25000,'2023-12-07'),(4,'2023-11-07 00:00:00.000000',1,15000,'2023-12-07'),(5,'2023-11-07 00:00:00.000000',1,50000,'2023-12-07'),(6,'2023-11-07 00:00:00.000000',1,55000,'2023-12-07'),(7,'2023-11-07 00:00:00.000000',1,60000,'2023-12-07'),(8,'2023-11-07 00:00:00.000000',1,23000,'2023-12-07'),(14,'2023-11-06 00:00:00.000000',1,15000,'2023-12-06'),(19,'2023-11-09 00:00:00.000000',1,56000,'2023-12-09'),(20,'2023-07-30 00:00:00.000000',1,990000,'2023-09-27'),(27,'2023-07-30 00:00:00.000000',1,10000,'2023-09-27'),(28,'2023-07-30 00:00:00.000000',1,10000,'2023-09-27'),(29,'2023-08-06 00:00:00.000000',1,10000,'2023-09-27'),(30,'2023-08-06 00:00:00.000000',1,111111,'2023-09-27'),(31,'2023-08-06 00:00:00.000000',1,10000,'2023-09-27'),(32,'2023-08-06 00:00:00.000000',1,10001,'2023-09-27'),(40,'2023-08-08 00:00:00.000000',1,10000,'2023-09-27'),(41,'2023-08-08 00:00:00.000000',1,10000,'2023-09-27'),(42,'2023-08-08 00:00:00.000000',1,40000,'2023-09-27'),(43,'2023-08-08 00:00:00.000000',1,10000,'2023-09-27'),(44,'2023-08-08 00:00:00.000000',1,10000,'2023-09-27'),(46,'2023-08-11 00:00:00.000000',1,50000,'2023-09-27'),(47,'2023-08-14 00:00:00.000000',1,100000,'2023-09-27'),(48,'2023-08-15 00:00:00.000000',1,100000,'2023-09-27'),(49,'2023-08-15 00:00:00.000000',1,100000,'2023-09-27'),(50,'2023-08-15 00:00:00.000000',1,100000,'2023-09-27'),(51,'2023-08-15 00:00:00.000000',1,100000,'2023-09-27'),(52,'2023-08-15 00:00:00.000000',1,1000000,'2023-09-27'),(53,'2023-08-17 00:00:00.000000',1,100000,'2023-09-27'),(54,'2023-08-17 00:00:00.000000',1,100000,'2023-09-27'),(55,'2023-08-17 00:00:00.000000',1,100000,'2023-09-27'),(56,'2023-08-17 00:00:00.000000',1,100000,'2023-09-27'),(57,'2023-08-17 00:00:00.000000',1,100000,'2023-09-27'),(58,'2023-08-17 00:00:00.000000',1,100000,'2023-09-27'),(59,'2023-08-17 00:00:00.000000',1,100000,'2023-09-27'),(60,'2023-08-17 00:00:00.000000',1,100000,'2023-09-27'),(68,'2023-10-14 17:43:01.325000',1,123456,'2023-10-14'),(69,'2023-10-14 17:44:17.299000',1,123456,'2023-10-14'),(70,'2023-10-14 17:50:13.837000',1,123456,'2023-10-14'),(70,'2023-10-19 10:50:36.043000',1,0,'2023-10-19'),(70,'2023-10-19 10:51:01.037000',1,0,'2023-10-19'),(70,'2023-10-19 10:51:12.895000',1,0,'2023-10-19'),(71,'2023-10-14 17:54:36.983000',1,123456,'2023-10-14'),(71,'2023-10-19 10:17:21.409000',1,0,'2023-10-19'),(71,'2023-10-19 10:18:24.124000',1,0,'2023-10-19'),(72,'2023-10-19 10:56:39.314000',1,150000,'2023-10-19'),(73,'2023-10-19 11:26:27.829000',1,160000,'2023-10-26');
/*!40000 ALTER TABLE `gia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hinhanhmh`
--

DROP TABLE IF EXISTS `hinhanhmh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hinhanhmh` (
  `MAHA` int(11) NOT NULL AUTO_INCREMENT,
  `DUONGDAN` varchar(200) DEFAULT NULL,
  `MAMH` int(11) DEFAULT NULL,
  PRIMARY KEY (`MAHA`),
  KEY `FK_HINHANHMH_MATHANG` (`MAMH`),
  CONSTRAINT `FK_HINHANHMH_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`mamh`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinhanhmh`
--

LOCK TABLES `hinhanhmh` WRITE;
/*!40000 ALTER TABLE `hinhanhmh` DISABLE KEYS */;
INSERT INTO `hinhanhmh` VALUES (1,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d.jpg',7),(2,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d.jpg',7),(3,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d.jpg',7),(4,'https://sadesign.vn/wp-content/uploads/2021/04/cach-chup-anh-quan-ao-tre-em-dep.jpg',2),(6,'https://sadesign.vn/wp-content/uploads/2021/04/cach-chup-anh-quan-ao-tre-em-dep.jpg',4),(7,'https://sadesign.vn/wp-content/uploads/2021/04/cach-chup-anh-quan-ao-tre-em-dep.jpg',3),(8,'https://sadesign.vn/wp-content/uploads/2021/04/cach-chup-anh-quan-ao-tre-em-dep.jpg',5),(9,'https://sadesign.vn/wp-content/uploads/2021/04/cach-chup-anh-quan-ao-tre-em-dep.jpg',6),(10,'https://sadesign.vn/wp-content/uploads/2021/04/cach-chup-anh-quan-ao-tre-em-dep.jpg',7),(11,'https://sadesign.vn/wp-content/uploads/2021/04/cach-chup-anh-quan-ao-tre-em-dep.jpg',8),(13,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d333.jpg',7),(14,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d33344.jpg',2),(15,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3daaa.jpg',8),(16,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d.jpg',3),(17,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d.jpg',3),(18,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d.jpg',3),(19,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d333.jpg',3),(20,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d.jpg',14),(21,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d.jpg',14),(22,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d.jpg',14),(23,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d333.jpg',14),(24,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d.jpg',14),(29,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d.jpg',20),(30,'https://sadesign.vn/wp-content/uploads/2020/12/chup-anh-quan-ao-3d.jpg',28),(31,'url 1',29),(32,'guci url',30),(33,'1',29),(34,'1',29),(35,'123guci ',29),(36,'1',43),(37,'http://localhost:3000/img/default.png',44),(38,'http://localhost/default.png',46),(39,'http://localhost/default.png',47),(40,'http://localhost/img/default.png',48),(41,'http://localhost/img/default.png',49),(42,'http://localhost/img/default.png',51),(43,'http://localhost/img/default.png',52);
/*!40000 ALTER TABLE `hinhanhmh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hoadon` (
  `MAHD` int(11) NOT NULL AUTO_INCREMENT,
  `NGAYTAO` date DEFAULT NULL,
  `TONGTIEN` int(11) DEFAULT NULL,
  `MANV` int(11) DEFAULT NULL,
  `MAKH` int(11) DEFAULT NULL,
  `MASHIPPER` int(11) DEFAULT NULL,
  `DIACHI` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MAHD`),
  KEY `FK_HOADON_NHANVIEN` (`MANV`),
  KEY `FK_HOADON_KHACHHANG` (`MAKH`),
  KEY `FK_HOADON_SHIPPER_idx` (`MASHIPPER`),
  CONSTRAINT `FK_HOADON_KHACHHANG` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`makh`),
  CONSTRAINT `FK_HOADON_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`manv`),
  CONSTRAINT `FK_HOADON_SHIPPER` FOREIGN KEY (`MASHIPPER`) REFERENCES `shipper` (`MASHIPPER`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (24,'2023-07-30',20000,1,1,NULL,NULL),(25,'2023-08-07',20000,1,1,NULL,NULL),(26,'2023-08-05',10000,1,1,NULL,NULL),(28,'2023-08-07',20000,1,9,NULL,NULL),(29,'2023-08-09',20000,1,9,NULL,NULL),(30,'2023-08-09',20000,1,9,NULL,NULL),(31,'2023-08-08',20000,1,1,NULL,NULL),(32,'2023-08-08',20000,1,1,NULL,NULL),(33,'2023-08-08',20000,1,1,NULL,NULL),(34,'2023-08-10',20000,1,1,NULL,NULL),(35,'2023-08-13',20000,1,1,NULL,NULL),(36,'2023-08-14',20000,1,1,NULL,NULL),(37,'2023-08-12',20000,1,1,NULL,NULL),(38,'2023-08-14',20000,1,1,NULL,NULL),(39,'2023-08-14',20000,1,1,NULL,NULL),(40,'2023-08-12',20000,1,1,NULL,NULL),(41,'2023-08-16',20000,1,1,NULL,NULL),(42,'2023-08-14',163456,3,1,NULL,NULL),(43,'2023-10-12',20000,1,1,NULL,NULL),(44,'2023-10-12',20000,1,1,NULL,NULL),(45,'2023-10-12',40000,1,1,NULL,NULL),(46,'2023-10-08',40000,3,1,1,NULL),(47,'2023-10-09',40000,NULL,1,NULL,NULL),(48,'2023-10-09',40000,1,1,NULL,NULL),(49,'2023-10-06',40000,3,1,NULL,NULL),(50,'2023-10-14',40000,3,1,1,NULL),(51,'2023-10-17',300000,NULL,1,NULL,NULL),(52,'2023-10-19',80000,NULL,1,NULL,'12b');
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `khachhang` (
  `MAKH` int(11) NOT NULL AUTO_INCREMENT,
  `HOTENKH` varchar(45) DEFAULT NULL,
  `GIOITINH` varchar(45) DEFAULT NULL,
  `NGAYSINH` date DEFAULT NULL,
  `SDT` varchar(45) DEFAULT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  `DIACHI` varchar(45) DEFAULT NULL,
  `CMND` varchar(45) DEFAULT NULL,
  `MATK` int(11) DEFAULT NULL,
  PRIMARY KEY (`MAKH`),
  UNIQUE KEY `MATK_UNIQUE` (`MATK`),
  UNIQUE KEY `UKgjyb5klls2kruf42mbei0qgrc` (`MATK`),
  CONSTRAINT `FK_KHACHHANG_TAIKHOAN` FOREIGN KEY (`MATK`) REFERENCES `taikhoan` (`matk`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'hung thanh','nam','2001-03-03','012312','hung2@gmail.com','12b','012312',NULL),(2,'hung thanh 1','nam','2001-01-01','012312','hung@gmail.com','12b',NULL,NULL),(8,'default name 10','nam','1991-01-01','123456','email10@gmail.com','default','123456',NULL),(9,'default name 10','nam','1991-01-01','123456','email101@gmail.com','default','123456',NULL),(10,'hung thanh thanh','nam','1999-01-11','0123456789','hungthanh@gmail.com','Hiệp Phú, tp Thủ Đức','123456789',NULL);
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khuyenmai`
--

DROP TABLE IF EXISTS `khuyenmai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `khuyenmai` (
  `MAKM` int(11) NOT NULL AUTO_INCREMENT,
  `LYDO` varchar(45) DEFAULT NULL,
  `MANV` int(11) DEFAULT NULL,
  `NGAYBD` date DEFAULT NULL,
  `NGAYKT` date DEFAULT NULL,
  PRIMARY KEY (`MAKM`),
  KEY `FK_KHUYENMAI_NHANVIEN` (`MANV`),
  CONSTRAINT `FK_KHUYENMAI_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`manv`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khuyenmai`
--

LOCK TABLES `khuyenmai` WRITE;
/*!40000 ALTER TABLE `khuyenmai` DISABLE KEYS */;
INSERT INTO `khuyenmai` VALUES (15,'name 1',3,NULL,NULL),(16,'Siêu sale tưng bừng 8/8',3,NULL,NULL);
/*!40000 ALTER TABLE `khuyenmai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaimh`
--

DROP TABLE IF EXISTS `loaimh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `loaimh` (
  `MALOAIMH` int(11) NOT NULL AUTO_INCREMENT,
  `TENLOADIMH` varchar(45) NOT NULL,
  PRIMARY KEY (`MALOAIMH`),
  UNIQUE KEY `TENLOADIMH_UNIQUE` (`TENLOADIMH`),
  UNIQUE KEY `UK5j912iotx7opm3eawo57fu4ct` (`TENLOADIMH`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaimh`
--

LOCK TABLES `loaimh` WRITE;
/*!40000 ALTER TABLE `loaimh` DISABLE KEYS */;
INSERT INTO `loaimh` VALUES (3,'ÁO KHOÁT'),(2,'ÁO SƠ MI'),(1,'ÁO THUN'),(4,'QUẦN JEAN'),(6,'QUẦN SHORT'),(5,'QUẦN TÂY');
/*!40000 ALTER TABLE `loaimh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mathang`
--

DROP TABLE IF EXISTS `mathang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mathang` (
  `MAMH` int(11) NOT NULL AUTO_INCREMENT,
  `TENMH` varchar(45) DEFAULT NULL,
  `MOTA` varchar(45) DEFAULT NULL,
  `TRANGTHAI` varchar(45) DEFAULT NULL,
  `CACHLAM` varchar(45) DEFAULT NULL,
  `PHANLOAI` varchar(45) DEFAULT NULL,
  `MANH` int(11) NOT NULL,
  `MACL` int(11) NOT NULL,
  `MALOAIMH` int(11) DEFAULT NULL,
  PRIMARY KEY (`MAMH`),
  KEY `FK_MATHANG_NHANHIEU` (`MANH`),
  KEY `FK_MATHANG_CHATLIEU` (`MACL`),
  KEY `FK_MATHANG_LOAIMH` (`MALOAIMH`),
  CONSTRAINT `FK_MATHANG_CHATLIEU` FOREIGN KEY (`MACL`) REFERENCES `chatlieu` (`macl`),
  CONSTRAINT `FK_MATHANG_LOAIMH` FOREIGN KEY (`MALOAIMH`) REFERENCES `loaimh` (`maloaimh`),
  CONSTRAINT `FK_MATHANG_NHANHIEU` FOREIGN KEY (`MANH`) REFERENCES `nhanhieu` (`manh`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mathang`
--

LOCK TABLES `mathang` WRITE;
/*!40000 ALTER TABLE `mathang` DISABLE KEYS */;
INSERT INTO `mathang` VALUES (1,'test 34','KO','0','HAND','CAO CAP',5,1,1),(2,'Áo DAMIER GEANT AVENTURIER','KO','0','HAND','BINH DAN',1,1,1),(3,'Áo Sơ Mi Gucci King Snake Logo 333','KO','1','HAND','TAM TRUNG',2,3,3),(4,'Áo MLB UNI MONOGRAM STRAIGHT','KO','0','HAND','CAO CAP',3,2,3),(5,'Áo TAIGA HANDMADE','KO','0','HAND','BINH DAN',1,3,2),(6,'Áo HM MINI DA CÁ SẤU','KO','1','HAND','TAM TRUNG',1,3,2),(7,'Áo Jeans Baggy','KO','0','HAND','TAM TRUNG',2,3,5),(8,'Áo CHANEL 2.55','KO','0','HAND','CAO CAP',3,1,6),(14,'Áo MONOGRAM MULTICOLORE2','KO','0','HAND','CAO CAP',5,1,1),(19,'Áo MONOGRAM MULTICOLORE - KEEPALL','KO','0','HAND','CAO CAP',5,1,1),(20,'Áo MONOGRAM MULTICOLORE - KEEPALL99','KO','0','HAND','CAO CAP',5,1,1),(27,'Áo MONOGRAM MULTICOLORE - 2','KO','0','HAND','CAO CAP',5,1,1),(28,'Áo MONOGRAM MULTICOLORE - 28','KO','0','HAND','CAO CAP',5,1,1),(29,'test 35 - 1','KO','0','HAND','',5,1,2),(30,'qa 1','KO','0','HAND','',2,1,5),(31,'qa 10','KO','0','HAND','',1,1,2),(32,'qa 10','KO','0','HAND','',4,1,5),(40,'name 1','KO','1','HAND','CAO CAP',5,1,3),(41,'name 10','KO','0','HAND','CAO CAP',5,1,5),(42,'default name 11','KO','1','HAND','CAO CAP',5,3,3),(43,'123','KO','0','HAND','CAO CAP',5,3,3),(44,'Quần áo 10','KO','1','HAND','CAO CAP',5,3,3),(45,'Test delete','KO','1','HAND','CAO CAP',5,1,1),(46,'test sản phẩm','KO','1','HAND','CAO CAP',5,3,5),(47,'áo lụa làm thủ công','KO','1','HAND','CAO CAP',2,1,3),(48,'áo lụa làm thủ công','KO','1','HAND','CAO CAP',5,1,3),(49,'áo lụa làm thủ công','KO','1','HAND','CAO CAP',5,1,3),(50,'áo lụa làm thủ công','KO','0','HAND','CAO CAP',5,1,3),(51,'áo đẹp 1','KO','1','HAND','CAO CAP',5,1,3),(52,'áo lụa','KO','1','HAND','CAO CAP',5,1,3),(53,'áo xịn','KO','0','HAND','CAO CAP',5,1,3),(54,NULL,'KO','0','HAND','CAO CAP',5,1,1),(55,'default name 10','KO','0','MACHINE','CAO CAP',5,1,1),(56,'default name 10','KO','0','MACHINE','CAO CAP',5,1,1),(57,'default name 10','KO','0','MACHINE','BINH DAN',5,1,1),(58,'default name 10','KO','0','MACHINE','BINH DAN',5,1,1),(59,'default name 100','KO','0','MACHINE','BINH DAN',5,1,1),(60,'áo thái','KO','0','MACHINE','BINH DAN',5,1,1),(68,'123','KO','0','HAND',NULL,5,1,3),(69,'default name 10','KO','0','HAND',NULL,5,1,3),(70,'default name 10','KO','1','HAND',NULL,5,1,3),(71,'default name 10','KO','0','MACHINE',NULL,5,1,3),(72,'quần áo đẹp quá','KO','0','MACHINE','',5,1,3),(73,'áo mới Cà Mau','KO','1','MACHINE','',5,1,3);
/*!40000 ALTER TABLE `mathang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nhacungcap` (
  `MANCC` int(11) NOT NULL AUTO_INCREMENT,
  `TENNCC` varchar(45) DEFAULT NULL,
  `DIACHI` varchar(45) DEFAULT NULL,
  `SODT` varchar(45) DEFAULT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MANCC`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhacungcap`
--

LOCK TABLES `nhacungcap` WRITE;
/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
INSERT INTO `nhacungcap` VALUES (1,'THANH HUNG','123B','0974204901','hung@gmail.com'),(2,'VAN DANH','122C','0123456789','danh@gmail.com'),(3,'VAN HIEU','167B','0974204907','hieu@gmail.com'),(6,'THANH HUNG2','123B','0974204901','hung@gmail.com'),(7,'VAN DANH2','122C','0123456789','danh@gmail.com');
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanhieu`
--

DROP TABLE IF EXISTS `nhanhieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nhanhieu` (
  `MANH` int(11) NOT NULL AUTO_INCREMENT,
  `TENNH` varchar(45) NOT NULL,
  PRIMARY KEY (`MANH`),
  UNIQUE KEY `TENNH_UNIQUE` (`TENNH`),
  UNIQUE KEY `UKo0t4rklns7m0eypb78segok0f` (`TENNH`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanhieu`
--

LOCK TABLES `nhanhieu` WRITE;
/*!40000 ALTER TABLE `nhanhieu` DISABLE KEYS */;
INSERT INTO `nhanhieu` VALUES (5,'CHANEL'),(2,'GUCCI'),(3,'HERMES'),(1,'LOUIS VUITTON'),(4,'PRADA');
/*!40000 ALTER TABLE `nhanhieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nhanvien` (
  `MANV` int(11) NOT NULL AUTO_INCREMENT,
  `TENNV` varchar(45) DEFAULT NULL,
  `GIOITINH` varchar(45) DEFAULT NULL,
  `NGAYSINH` date DEFAULT NULL,
  `SDT` varchar(45) DEFAULT NULL,
  `DIACHI` varchar(45) DEFAULT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  `CMND` varchar(45) DEFAULT NULL,
  `TRANGTHAI` varchar(45) DEFAULT NULL,
  `MATK` int(11) DEFAULT NULL,
  PRIMARY KEY (`MANV`),
  UNIQUE KEY `MATK_UNIQUE` (`MATK`),
  UNIQUE KEY `UKbwa7uhv3il2gq0nj8ins3es10` (`MATK`),
  CONSTRAINT `FK_NHANVIEN_TAIKHOAN` FOREIGN KEY (`MATK`) REFERENCES `taikhoan` (`matk`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (1,'hung','nam','2001-01-01','0123','12B','hung@gmail.com','082132','1',1),(3,'kiet',NULL,'2001-02-02','0123','13C','hung@gmail','08123','0',NULL),(5,'name 1','nam','1999-01-09','123456','default','hung1@gmail.com','123456','1',NULL),(11,'default name 10','nam','1990-12-27','123456789','default','email10.com','123456','1',NULL),(12,'Nguyen Van A','nam','1991-01-01','123456789','default','hung100@gmail','123456789','1',NULL),(13,'Nguyen Van B','nam','1991-01-01','0912345678','Hiệp Phú, tp Thủ Đức','hung404@gmail','9999999999','1',NULL),(14,'Nguyen Van A','nam','2023-01-01','0123456789','Hiệp Phú, tp Thủ Đức','hung200@gmail','0123456789987','0',NULL),(15,'Hùng','nam',NULL,'0123456789','Hiệp Phú, tp Thủ Đức','email.com','987654321123','1',NULL);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieudat`
--

DROP TABLE IF EXISTS `phieudat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `phieudat` (
  `MAPD` int(11) NOT NULL AUTO_INCREMENT,
  `NGAYDAT` date DEFAULT NULL,
  `MANCC` int(11) DEFAULT NULL,
  `MANV` int(11) DEFAULT NULL,
  PRIMARY KEY (`MAPD`),
  KEY `FK_PHIEUDAT_NHACUNGCAP` (`MANCC`),
  KEY `FK_PHIEUDAT_NHANVIEN` (`MANV`),
  CONSTRAINT `FK_PHIEUDAT_NHACUNGCAP` FOREIGN KEY (`MANCC`) REFERENCES `nhacungcap` (`mancc`),
  CONSTRAINT `FK_PHIEUDAT_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`manv`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieudat`
--

LOCK TABLES `phieudat` WRITE;
/*!40000 ALTER TABLE `phieudat` DISABLE KEYS */;
INSERT INTO `phieudat` VALUES (18,'2023-08-07',1,3),(20,'2023-08-08',1,3),(23,'2023-08-11',1,3),(24,'2023-08-14',1,3),(25,'2023-08-15',1,3),(26,'2023-08-15',1,3),(27,'2023-08-15',1,3),(29,'2023-08-15',2,3),(30,'2023-08-19',1,3);
/*!40000 ALTER TABLE `phieudat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `phieunhap` (
  `MAPN` int(11) NOT NULL AUTO_INCREMENT,
  `NGAYNHAP` date DEFAULT NULL,
  `MANV` int(11) DEFAULT NULL,
  `MAPD` int(11) DEFAULT NULL,
  PRIMARY KEY (`MAPN`),
  KEY `FK_PHIEUNHAP_NHANVIEN` (`MANV`),
  KEY `FK_PHIEUNHAP_PHIEUDAT` (`MAPD`),
  CONSTRAINT `FK_PHIEUNHAP_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`manv`),
  CONSTRAINT `FK_PHIEUNHAP_PHIEUDAT` FOREIGN KEY (`MAPD`) REFERENCES `phieudat` (`mapd`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieunhap`
--

LOCK TABLES `phieunhap` WRITE;
/*!40000 ALTER TABLE `phieunhap` DISABLE KEYS */;
INSERT INTO `phieunhap` VALUES (9,'2023-08-07',3,18),(10,'2023-08-08',3,20),(14,'2023-08-11',3,23),(15,'2023-08-14',3,24),(16,'2023-08-15',3,25),(17,'2023-08-15',3,26),(18,'2023-08-15',3,27),(19,'2023-08-15',3,29),(20,'2023-08-19',3,30);
/*!40000 ALTER TABLE `phieunhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quyen`
--

DROP TABLE IF EXISTS `quyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `quyen` (
  `MAQUYEN` int(11) NOT NULL AUTO_INCREMENT,
  `TENQUYEN` varchar(45) NOT NULL,
  PRIMARY KEY (`MAQUYEN`),
  UNIQUE KEY `TENQUYEN_UNIQUE` (`TENQUYEN`),
  UNIQUE KEY `UKtfsqh65otxyyebohtp71bdwce` (`TENQUYEN`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quyen`
--

LOCK TABLES `quyen` WRITE;
/*!40000 ALTER TABLE `quyen` DISABLE KEYS */;
INSERT INTO `quyen` VALUES (1,'ADMIN'),(2,'NHANVIEN'),(3,'USER');
/*!40000 ALTER TABLE `quyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipper`
--

DROP TABLE IF EXISTS `shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shipper` (
  `MASHIPPER` int(11) NOT NULL AUTO_INCREMENT,
  `TENSHIPPER` varchar(45) DEFAULT NULL,
  `SDT` varchar(11) DEFAULT NULL,
  `DIACHI` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MASHIPPER`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipper`
--

LOCK TABLES `shipper` WRITE;
/*!40000 ALTER TABLE `shipper` DISABLE KEYS */;
INSERT INTO `shipper` VALUES (1,'SHOP',NULL,NULL);
/*!40000 ALTER TABLE `shipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `size` (
  `MASIZE` int(11) NOT NULL AUTO_INCREMENT,
  `TENSIZE` varchar(45) NOT NULL,
  PRIMARY KEY (`MASIZE`),
  UNIQUE KEY `TENSIZE_UNIQUE` (`TENSIZE`),
  UNIQUE KEY `UKmwc6y0eagx8a0fbvgdhml67ep` (`TENSIZE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (3,'L'),(2,'M'),(1,'S'),(4,'XL');
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `taikhoan` (
  `MATK` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(45) DEFAULT NULL,
  `MATKHAU` varchar(45) DEFAULT NULL,
  `MANV` int(11) DEFAULT NULL,
  `MAKH` int(11) DEFAULT NULL,
  PRIMARY KEY (`MATK`),
  UNIQUE KEY `EMAIL_UNIQUE` (`EMAIL`),
  UNIQUE KEY `MANV_UNIQUE` (`MANV`),
  UNIQUE KEY `MAKH_UNIQUE` (`MAKH`),
  UNIQUE KEY `UKnhke55fm5sdbcthqxq3v1yrai` (`EMAIL`),
  UNIQUE KEY `UKcck2tjqjj9mojyl0ckg9w1o9n` (`MAKH`),
  UNIQUE KEY `UKm9b9vj3jjooy8wutegw2jmycb` (`MANV`),
  CONSTRAINT `FK_TAIKHOAN_KHACHHANG` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`makh`),
  CONSTRAINT `FK_TAIKHOAN_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`manv`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES (1,'hung@gmail.com','Hung123',NULL,1),(6,'hungg@gmail.com','Hung123',3,NULL),(7,'hung1@gmail.com','123456789',NULL,2),(24,'email10@gmail.com','123456',NULL,8),(25,'email101@gmail.com','123456',NULL,9),(26,'hungthanh@gmail.com','123456789',NULL,10),(27,'hung100@gmail','123456789',12,NULL),(28,'hung404@gmail','123456789',13,NULL),(29,'hung200@gmail','123456789',14,NULL),(30,'email.com','123456789',15,NULL);
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trangthaihd`
--

DROP TABLE IF EXISTS `trangthaihd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trangthaihd` (
  `MATTHD` int(11) NOT NULL AUTO_INCREMENT,
  `TRANGTHAI` varchar(45) NOT NULL,
  PRIMARY KEY (`MATTHD`),
  UNIQUE KEY `TRANGTHAI_UNIQUE` (`TRANGTHAI`),
  UNIQUE KEY `UK3itxa9p4n59cxf79bcyl4v4sa` (`TRANGTHAI`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trangthaihd`
--

LOCK TABLES `trangthaihd` WRITE;
/*!40000 ALTER TABLE `trangthaihd` DISABLE KEYS */;
INSERT INTO `trangthaihd` VALUES (1,'CHUA THANH TOAN'),(5,'DA GIAO'),(4,'DANG GIAO'),(3,'DUYET'),(6,'HUY'),(2,'THANH TOAN');
/*!40000 ALTER TABLE `trangthaihd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'quanao'
--

--
-- Dumping routines for database 'quanao'
--
/*!50003 DROP PROCEDURE IF EXISTS `checkMH_HD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `checkMH_HD`(IN MAMH1 int)
BEGIN
SELECT * FROM quanao.ct_hoadon 
WHERE MAMH=MAMH1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getBinhluan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getBinhluan`(IN MAMH1 int)
BEGIN
SELECT * FROM quanao.binhluan
WHERE MAMH=MAMH1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCT_Hoadon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getCT_Hoadon`(IN MAHD1 int)
BEGIN
SELECT * FROM quanao.ct_hoadon 
WHERE MAHD=MAHD1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCT_Pd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getCT_Pd`(IN MAPD1 int)
BEGIN
SELECT * FROM quanao.ct_phieudat
WHERE MAPD=MAPD1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCT_Pn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getCT_Pn`(IN MAPN1 int)
BEGIN
SELECT * FROM quanao.ct_phieunhap
WHERE MAPN=MAPN1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCt_q` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getCt_q`(IN MAQ1 int)
BEGIN
SELECT * from quanao.ct_quyen
where MAQUYEN = MAQ1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCt_q1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getCt_q1`(IN MATK1 int)
BEGIN
SELECT * from quanao.ct_quyen
where MATK = MATK1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCT_TrangThai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getCT_TrangThai`(IN MAHD1 int)
BEGIN
SELECT * FROM quanao.ct_trangthai 
WHERE MAHD=MAHD1
ORDER BY MATTHD desc, NGAYTAO asc
LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDanhgia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getDanhgia`(IN MAMH1 int)
BEGIN
SELECT * FROM quanao.danhgia
WHERE MAMH=MAMH1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getGia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getGia`(IN MAMH1 int)
BEGIN
SELECT *
FROM quanao.gia
WHERE NGAYKT > CURDATE() AND MAMH=MAMH1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getHAByMH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getHAByMH`(IN MAMH1 int)
BEGIN
SELECT * FROM quanao.hinhanhmh
WHERE mamh=MAMH1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getKhuyenmai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getKhuyenmai`(IN MAMH1 int)
BEGIN
SELECT khuyenmai.MAKM,MAMH,NGAYBD,NGAYKT,MUCGIAM FROM quanao.khuyenmai, quanao.ct_khuyenmai
WHERE MAMH=MAMH1 and ngaybd < ngaykt and khuyenmai.makm = ct_khuyenmai.makm and ngaykt >= curdate()
order by ngaybd desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getKhuyenmai1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getKhuyenmai1`(IN MAKM1 int)
BEGIN
SELECT * FROM quanao.ct_khuyenmai
WHERE MAKM=MAKM1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMathangByCl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getMathangByCl`(IN MACL1 varchar(5))
BEGIN
SELECT * FROM `datn-quanao`.mathang
WHERE MACL=MACL1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMathangByLoai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getMathangByLoai`(IN MALOAIMH1 int)
BEGIN
SELECT * FROM quanao.mathang
WHERE MALOAIMH=MALOAIMH1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMathangByNh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getMathangByNh`(IN MANH1 int)
BEGIN
SELECT * FROM quanao.mathang
WHERE MANH=MANH1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPdByNcc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getPdByNcc`(IN MANCC1 int)
BEGIN
SELECT * FROM quanao.phieudat
WHERE MANCC=MANCC1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPns` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getPns`(IN MAPD1 int)
BEGIN
SELECT * FROM quanao.phieunhap
WHERE MAPD=MAPD1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSoluong` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`sa`@`localhost` PROCEDURE `getSoluong`(IN MAMH1 int)
BEGIN
SELECT *FROM quanao.ct_mathang
WHERE mamh=MAMH1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-19 11:27:22
