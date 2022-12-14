-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ebook-app
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `book_dtls`
--

DROP TABLE IF EXISTS `book_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_dtls` (
  `bookId` int NOT NULL AUTO_INCREMENT,
  `bookname` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `bookCategory` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_dtls`
--

LOCK TABLES `book_dtls` WRITE;
/*!40000 ALTER TABLE `book_dtls` DISABLE KEYS */;
INSERT INTO `book_dtls` VALUES (1,'Computer Programming Book','Alexander Belli',250,'New','Active','computer_programming.jpg','admin'),(2,'Node','Amannuale Dobono',300,'New','Active','Node.jpg','admin'),(5,'PyThon Programming','Amannuale Dobono',300,'New','Active','Python.jpg','admin'),(6,'Aduino Programming','Tiemiea',350,'New','Active','Aduino.jpg','admin'),(7,'Discrete Mathematics','NorrMan L.X',400,'Old','Active','Discrete.jpg','admin'),(8,'Database','Sam Smith',234,'Old','Active','data.jpg','admin'),(9,'Computer Networking','Ramon Base',123,'New','Active','Networking.jpg','admin'),(14,'Computer Programming','Tiemiea',100,'Old','Active','computer_programming.jpg','1901040224@s.hanu.edu.vn');
/*!40000 ALTER TABLE `book_dtls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_order`
--

DROP TABLE IF EXISTS `book_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phno` varchar(45) DEFAULT NULL,
  `book_name` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_order`
--

LOCK TABLES `book_order` WRITE;
/*!40000 ALTER TABLE `book_order` DISABLE KEYS */;
INSERT INTO `book_order` VALUES (11,'BOOK-ORD-00878','thuongdeptrai','1901040224@s.hanu.edu.vn','PhapKe,QuangPhuong,QuangBinh,QuangTrach,789','0364951619','Computer Networking','Ramon Base',123,'COD'),(12,'BOOK-ORD-00186','thuongdeptrai','1901040224@s.hanu.edu.vn','PhapKe,QuangPhuong,QuangBinh,QuangTrach,789','0364951619','PyThon Programming','Amannuale Dobono',300,'COD'),(23,'BOOK-ORD-00533','thuongdeptrai','1901040224@s.hanu.edu.vn','PhapKe,PhapKe,QuangBinh,QuangTrach,789','0364951619','Computer Networking','Ramon Base',123,'COD'),(24,'BOOK-ORD-00536','thuongdeptrai','1901040224@s.hanu.edu.vn','PhapKe,PhapKe,QuangBinh,QuangTrach,789','0364951619','Aduino Programming','Tiemiea',350,'COD'),(25,'BOOK-ORD-00357','thuongdeptrai','1901040224@s.hanu.edu.vn','PhapKe,QuangPhuong,QuangBinh,QuangTrach,789','0364951619','Computer Networking','Ramon Base',123,'COD'),(26,'BOOK-ORD-00214','thuongdeptrai','1901040224@s.hanu.edu.vn','PhapKe,QuangPhuong,QuangBinh,QuangTrach,789','0364951619','Aduino Programming','Tiemiea',350,'COD'),(27,'BOOK-ORD-00933','thuongdeptrai','1901040224@s.hanu.edu.vn','PhapKe,QuangPhuong,QuangBinh,QuangTrach,354','0364951619','Computer Networking','Ramon Base',123,'COD');
/*!40000 ALTER TABLE `book_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `bid` int DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `bookName` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (22,5,2,'PyThon Programming','Amannuale Dobono',300,300),(23,2,2,'Node','Amannuale Dobono',300,300),(31,9,1,'Computer Networking','Ramon Base',123,123);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phno` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `landmark` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'thuongdeptrai','1901040224@s.hanu.edu.vn','0364951619','123',NULL,NULL,NULL,NULL,NULL),(2,'Nguyen','1901040223@s.hanu.edu.vn','0373776432','1234',NULL,NULL,NULL,NULL,NULL),(3,'Nam','13438@gmail.com','08473882747','12345',NULL,NULL,NULL,NULL,NULL),(4,'Nam','13438@gmail.com','08473882747','12345',NULL,NULL,NULL,NULL,NULL),(5,'Nam','13438@gmail.com','08473882747','12345',NULL,NULL,NULL,NULL,NULL),(6,'Thanh','Thanhthanh98@gmail.com','0373776432','201044',NULL,NULL,NULL,NULL,NULL),(7,'Nam','1901040221@s.hanu.edu.vn','035678456','567',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-26  9:57:35
