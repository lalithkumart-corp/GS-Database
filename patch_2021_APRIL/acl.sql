-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: gsprod
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `acl`
--

DROP TABLE IF EXISTS `acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `acl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(255) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL,
  `accessType` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `principalType` varchar(255) DEFAULT NULL,
  `principalId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl`
--

LOCK TABLES `acl` WRITE;
/*!40000 ALTER TABLE `acl` DISABLE KEYS */;
INSERT INTO `acl` VALUES (1,'GsUser','loginUser','*','ALLOW','ROLE','$everyone'),(2,'GsUser','signupNewCustomer','*','ALLOW','ROLE','$everyone'),(3,'GsUser','*','*','ALLOW','ROLE','1'),(4,'GsUser','*','*','ALLOW','ROLE','2'),(5,'Pledgebook','*','*','DENY','ROLE','$everyone'),(6,'Pledgebook','*','*','ALLOW','ROLE','1'),(7,'Pledgebook','*','*','ALLOW','ROLE','2'),(8,'Pledgebook','*','*','ALLOW','ROLE','3'),(9,'Pledgebook','*','*','ALLOW','ROLE','4'),(10,'Stock','*','*','DENY','ROLE','$everyone'),(11,'Stock','*','*','ALLOW','ROLE','1'),(12,'Stock','*','*','ALLOW','ROLE','2'),(13,'Stock','*','*','ALLOW','ROLE','3'),(14,'Stock','*','*','ALLOW','ROLE','5'),(15,'GsUser','*','*','ALLOW','ROLE','3'),(16,'Pledgebook','archiveBillsApiHandler','*','DENY','ROLE','3'),(17,'Pledgebook','unArchiveBillsApiHandler','*','DENY','ROLE','3'),(18,'Pledgebook','trashBillsApiHandler','*','DENY','ROLE','3'),(19,'Pledgebook','deleteBillApiHandler','*','DENY','ROLE','3'),(20,'Pledgebook','archiveBillsApiHandler','*','DENY','ROLE','4'),(21,'Pledgebook','archiveBillsApiHandler','*','DENY','ROLE','4'),(22,'Pledgebook','trashBillsApiHandler','*','DENY','ROLE','4'),(23,'Pledgebook','deleteBillApiHandler','*','DENY','ROLE','4');
/*!40000 ALTER TABLE `acl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-11 19:39:42
