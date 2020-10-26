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
-- Table structure for table `accesstoken`
--

DROP TABLE IF EXISTS `accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accesstoken` (
  `id` varchar(255) NOT NULL,
  `ttl` int DEFAULT NULL,
  `scopes` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesstoken`
--

LOCK TABLES `accesstoken` WRITE;
/*!40000 ALTER TABLE `accesstoken` DISABLE KEYS */;
INSERT INTO `accesstoken` VALUES ('h99jWrc2Cppt8BA1arqWxodGbAEQzlyL8WWXGOac7qiCAaL5obt4iOzrZnOvy93O',1209600,NULL,'2020-07-05 05:02:58',1);
/*!40000 ALTER TABLE `accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl`
--

LOCK TABLES `acl` WRITE;
/*!40000 ALTER TABLE `acl` DISABLE KEYS */;
INSERT INTO `acl` VALUES (1,'GsUser','loginUser','*','ALLOW','ROLE','$everyone'),(2,'GsUser','signupNewCustomer','*','ALLOW','ROLE','$everyone'),(3,'GsUser','*','*','ALLOW','ROLE','1'),(4,'GsUser','*','*','ALLOW','ROLE','2'),(5,'Pledgebook','insertNewBillAPIHandler','*','DENY','ROLE','$everyone'),(6,'Pledgebook','insertNewBillAPIHandler','*','ALLOW','ROLE','2'),(7,'Pledgebook','insertNewBillAPIHandler','*','ALLOW','ROLE','4');
/*!40000 ALTER TABLE `acl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `CustomerId` int NOT NULL AUTO_INCREMENT,
  `UserId` int DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `GaurdianName` varchar(255) DEFAULT NULL,
  `ImageId` int DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Place` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Pincode` int DEFAULT NULL,
  `Mobile` bigint DEFAULT NULL,
  `SecMobile` bigint DEFAULT NULL,
  `OtherDetails` text,
  `Notes` text,
  `HashKey` varchar(45) DEFAULT NULL,
  `CustStatus` int DEFAULT '1',
  `CreatedAt` datetime DEFAULT NULL,
  `ModifiedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_metadata_list`
--

DROP TABLE IF EXISTS `customer_metadata_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer_metadata_list` (
  `SerialNo` int NOT NULL AUTO_INCREMENT,
  `UserId` int DEFAULT NULL,
  `Key` int NOT NULL,
  `DisplayText` varchar(50) NOT NULL,
  PRIMARY KEY (`SerialNo`,`Key`,`DisplayText`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_metadata_list`
--

LOCK TABLES `customer_metadata_list` WRITE;
/*!40000 ALTER TABLE `customer_metadata_list` DISABLE KEYS */;
INSERT INTO `customer_metadata_list` VALUES (1,0,1,'Aadhar Card Number'),(2,0,2,'License Number'),(3,0,3,'Voter Id'),(4,0,4,'SBI Acc Number'),(5,0,5,'ICICI Acc Number'),(6,0,6,'Email Id'),(7,0,7,'Pan Card'),(8,0,8,'Passport');
/*!40000 ALTER TABLE `customer_metadata_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `image` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Hashkey` varchar(255) DEFAULT NULL,
  `Image` blob,
  `Format` varchar(500) DEFAULT NULL,
  `Path` varchar(500) DEFAULT NULL,
  `StorageMode` varchar(100) NOT NULL,
  `Optional` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interest_rates`
--

DROP TABLE IF EXISTS `interest_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `interest_rates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `range_from` int DEFAULT NULL,
  `range_to` int DEFAULT NULL,
  `rate_of_interest` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interest_rates`
--

LOCK TABLES `interest_rates` WRITE;
/*!40000 ALTER TABLE `interest_rates` DISABLE KEYS */;
INSERT INTO `interest_rates` VALUES (1,1,'gold',1,9999,3),(2,1,'gold',10000,1000000,2),(3,1,'silver',1,1000000,4),(4,1,'brass',1,1000000,10);
/*!40000 ALTER TABLE `interest_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `notes` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CustomerId` int NOT NULL,
  `Notes` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orn_images`
--

DROP TABLE IF EXISTS `orn_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orn_images` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Hashkey` varchar(255) DEFAULT NULL,
  `Image` blob,
  `Format` varchar(500) DEFAULT NULL,
  `Path` varchar(500) DEFAULT NULL,
  `StorageMode` varchar(100) NOT NULL,
  `Optional` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orn_images`
--

LOCK TABLES `orn_images` WRITE;
/*!40000 ALTER TABLE `orn_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `orn_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orn_list`
--

DROP TABLE IF EXISTS `orn_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orn_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orn_list`
--

LOCK TABLES `orn_list` WRITE;
/*!40000 ALTER TABLE `orn_list` DISABLE KEYS */;
INSERT INTO `orn_list` VALUES (1,1,'G','Adikey'),(2,1,'G','Chain kalkash'),(3,1,'G','Chain Long'),(4,1,'G','Chain Muthu'),(5,1,'G','Chain Short'),(6,1,'G','Coin'),(7,1,'G','Lolak'),(8,1,'G','Lolak kamal'),(9,1,'G','Mattel Dilli'),(10,1,'G','Lakshmi Bottu'),(11,1,'G','Wallship'),(12,1,'S','Glass'),(13,1,'G','Dilli Mattel'),(14,1,'B','A-Chetty'),(15,1,'B','Deksa'),(16,1,'G','Dollar'),(17,1,'G','Dollar Fish'),(18,1,'G','Dollar Heart'),(19,1,'G','Earing'),(20,1,'G','Baby Ring'),(21,1,'G','Earing Muthu'),(22,1,'G','Earing Plain'),(23,1,'G','Gulush'),(24,1,'G','Gundu'),(25,1,'G','Gundu Lolak'),(26,1,'G','Gundu Nellikai'),(27,1,'G','Gundu Pattai'),(28,1,'G','Haram'),(29,1,'G','Jalary Mattel'),(30,1,'G','Jimiky'),(31,1,'G','Baby T.v Ring'),(32,1,'G','Kalkash'),(33,1,'G','Kamal'),(34,1,'G','Kamal Full Stone'),(35,1,'G','Kamal Jimiky'),(36,1,'G','Kamal Patla'),(37,1,'G','Ladies Ring'),(38,1,'G','Ladies Ring Fancy'),(39,1,'G','Lolak Tops'),(40,1,'G','Mani Mattel'),(41,1,'G','Mattel'),(42,1,'G','Bangle'),(43,1,'G','Mattel Fancy'),(44,1,'G','Mattel Jalary'),(45,1,'G','Mattel Muthu'),(46,1,'G','Mattel Neer'),(47,1,'G','Mattel Ner'),(48,1,'G','Moppu'),(49,1,'G','Moppu Full Stone'),(50,1,'G','Mukuthi'),(51,1,'G','Mukuthi Plain'),(52,1,'G','Nadhiya Kamal'),(53,1,'G','Bracelet'),(54,1,'G','Nanakola'),(55,1,'G','Neckles'),(56,1,'G','Of Lot'),(57,1,'G','Ring'),(58,1,'G','Ring Fancy'),(59,1,'G','Ring Kambi'),(60,1,'G','Ring Navarathinam'),(61,1,'G','Ring Round'),(62,1,'G','Ring T.V'),(63,1,'G','Sarad'),(64,1,'G','Bressar'),(65,1,'G','Suthu Mattel'),(66,1,'G','T.V Ring'),(67,1,'G','Tali'),(68,1,'G','Tali Bottu'),(69,1,'G','Tali christian'),(70,1,'G','Tali M-Tali'),(71,1,'G','Tali Patta'),(72,1,'G','Tops'),(73,1,'G','Tops Jimiky'),(74,1,'G','Tops Plain'),(75,1,'G','Chain'),(76,1,'G','Vanki Ring'),(77,1,'G','Walaship'),(78,1,'S','Arnakaiyar'),(79,1,'S','Arnakaiyar Muthu'),(80,1,'S','Arnakaiyar Patte'),(81,1,'S','Arnakaiyar Urutu'),(82,1,'S','Baby Gulls'),(83,1,'S','Baby Muthu Gulls'),(84,1,'S','Chain'),(85,1,'S','Gulls'),(86,1,'G','Chain Dollar'),(87,1,'S','Gulls 3M'),(88,1,'S','Gulls Fancy'),(89,1,'S','Gulls Getti Muthu'),(90,1,'S','Gulls Jalary'),(91,1,'S','Gulls Kotamalli'),(92,1,'S','Gulls Muthu'),(93,1,'S','Gulls Patte'),(94,1,'S','Kappu'),(95,1,'S','Kinnam'),(96,1,'S','of Lot'),(97,1,'G','Chain Godume'),(98,1,'S','Kamatchi Valak'),(99,1,'G','Chain Dilli'),(100,1,'G','Baby L-Ring'),(101,1,'G','L-Bracelet'),(102,1,'S','Gulls Getti-muthu'),(103,1,'G','Baby L-Tops'),(104,1,'G','Urupdi'),(105,1,'G','Dilli Suthu Mattel'),(107,1,'G','Thayat'),(108,1,'G','E.H. Ring'),(109,1,'S','Coin'),(110,1,'S','Chavi-Kothu'),(111,1,'S','Fancy Item'),(112,1,'G','Kini Bottu'),(113,1,'S','Pooja Plate'),(114,1,'S','Pooja Spoon'),(115,1,'G','Dollar Chain'),(116,1,'S','Bracelet'),(117,1,'G','Oval Ring'),(118,1,'G','Pawalam Ring'),(119,1,'G','Koppu'),(120,1,'G','Nadhiya Mattel'),(121,1,'G','kappu');
/*!40000 ALTER TABLE `orn_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pledgebook`
--

DROP TABLE IF EXISTS `pledgebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pledgebook` (
  `Id` int NOT NULL DEFAULT '0',
  `UniqueIdentifier` varchar(45) DEFAULT NULL,
  `BillNo` varchar(45) NOT NULL,
  `Amount` int DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `CustomerId` int DEFAULT NULL,
  `ImageId` int DEFAULT NULL,
  `Orn` varchar(500) DEFAULT NULL,
  `Remarks` text,
  `Status` int NOT NULL DEFAULT '1',
  `closedBillReference` varchar(45) DEFAULT NULL,
  `History` text,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`,`BillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pledgebook`
--

LOCK TABLES `pledgebook` WRITE;
/*!40000 ALTER TABLE `pledgebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `pledgebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pledgebook_closed_bills`
--

DROP TABLE IF EXISTS `pledgebook_closed_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pledgebook_closed_bills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pledgebook_uid` varchar(45) NOT NULL,
  `bill_no` varchar(45) NOT NULL,
  `pledged_date` varchar(45) DEFAULT NULL,
  `closed_date` varchar(45) DEFAULT NULL,
  `principal_amt` int DEFAULT NULL,
  `no_of_month` int DEFAULT NULL,
  `rate_of_interest` varchar(45) DEFAULT NULL,
  `int_rupee_per_month` varchar(45) DEFAULT NULL,
  `interest_amt` varchar(45) DEFAULT NULL,
  `actual_estimated_amt` varchar(45) DEFAULT NULL,
  `discount_amt` varchar(45) DEFAULT NULL,
  `paid_amt` varchar(45) DEFAULT NULL,
  `handed_over_to_person` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`pledgebook_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pledgebook_closed_bills`
--

LOCK TABLES `pledgebook_closed_bills` WRITE;
/*!40000 ALTER TABLE `pledgebook_closed_bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `pledgebook_closed_bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pledgebook_settings`
--

DROP TABLE IF EXISTS `pledgebook_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pledgebook_settings` (
  `s_no` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `bill_series` varchar(45) DEFAULT NULL,
  `last_created_bill_no` int DEFAULT NULL,
  `bill_start` int DEFAULT NULL,
  `bill_limit` int DEFAULT NULL,
  PRIMARY KEY (`s_no`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pledgebook_settings`
--

LOCK TABLES `pledgebook_settings` WRITE;
/*!40000 ALTER TABLE `pledgebook_settings` DISABLE KEYS */;
INSERT INTO `pledgebook_settings` VALUES (1,1,'A',0,1,10000);
/*!40000 ALTER TABLE `pledgebook_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `rank` int NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'SUPER_ADMIN','Super admin user',1,NULL,NULL),(2,'STORE_OWNER','Owner of the store',2,NULL,NULL),(3,'EMPLOYEE','Employee of store',3,NULL,NULL),(4,'BILLING_USER','Creates Bill',3,NULL,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolemapping`
--

DROP TABLE IF EXISTS `rolemapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rolemapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `principalType` varchar(45) DEFAULT NULL,
  `principalId` varchar(45) DEFAULT NULL,
  `roleId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolemapping`
--

LOCK TABLES `rolemapping` WRITE;
/*!40000 ALTER TABLE `rolemapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `rolemapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ownerId` int DEFAULT '0',
  `realm` varchar(512) DEFAULT NULL,
  `username` varchar(512) DEFAULT NULL,
  `guardianName` varchar(512) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `emailVerified` tinyint(1) DEFAULT NULL,
  `verificationToken` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_preferences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `bill_create_place_default` varchar(255) DEFAULT '',
  `bill_create_city_default` varchar(255) DEFAULT NULL,
  `bill_create_pincode_default` varchar(255) DEFAULT NULL,
  `auto_print_receipt` varchar(255) DEFAULT 'true',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-05 10:41:35
