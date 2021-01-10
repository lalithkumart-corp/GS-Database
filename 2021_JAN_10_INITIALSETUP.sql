-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: gsprod-new
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
-- Table structure for table `app`
--

DROP TABLE IF EXISTS `app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '0',
  `used_trial_offer` int DEFAULT '0',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `valid_till_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_UNIQUE` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app`
--

LOCK TABLES `app` WRITE;
/*!40000 ALTER TABLE `app` DISABLE KEYS */;
/*!40000 ALTER TABLE `app` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
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
/*!40000 ALTER TABLE `interest_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_category`
--

DROP TABLE IF EXISTS `item_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_category`
--

LOCK TABLES `item_category` WRITE;
/*!40000 ALTER TABLE `item_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_subcategory`
--

DROP TABLE IF EXISTS `item_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item_subcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_subcategory`
--

LOCK TABLES `item_subcategory` WRITE;
/*!40000 ALTER TABLE `item_subcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metal`
--

DROP TABLE IF EXISTS `metal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `metal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metal`
--

LOCK TABLES `metal` WRITE;
/*!40000 ALTER TABLE `metal` DISABLE KEYS */;
/*!40000 ALTER TABLE `metal` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
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
/*!40000 ALTER TABLE `orn_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orn_list_jewellery`
--

DROP TABLE IF EXISTS `orn_list_jewellery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orn_list_jewellery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `metal` varchar(45) DEFAULT NULL,
  `item_name` varchar(45) DEFAULT NULL,
  `item_category` varchar(45) DEFAULT NULL,
  `item_subcategory` varchar(45) DEFAULT NULL,
  `dimension` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `code_id` int DEFAULT NULL,
  `hashkey` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orn_list_jewellery`
--

LOCK TABLES `orn_list_jewellery` WRITE;
/*!40000 ALTER TABLE `orn_list_jewellery` DISABLE KEYS */;
/*!40000 ALTER TABLE `orn_list_jewellery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orn_list_jewellery_settings`
--

DROP TABLE IF EXISTS `orn_list_jewellery_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orn_list_jewellery_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `lastEnteredNumber` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orn_list_jewellery_settings`
--

LOCK TABLES `orn_list_jewellery_settings` WRITE;
/*!40000 ALTER TABLE `orn_list_jewellery_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `orn_list_jewellery_settings` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pledgebook_settings`
--

LOCK TABLES `pledgebook_settings` WRITE;
/*!40000 ALTER TABLE `pledgebook_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `pledgebook_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_code`
--

DROP TABLE IF EXISTS `product_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_code` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `code` varchar(45) NOT NULL,
  `next_serial` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_code`
--

LOCK TABLES `product_code` WRITE;
/*!40000 ALTER TABLE `product_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_code` ENABLE KEYS */;
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
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `suppliers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stock_id` int NOT NULL,
  `tag` varchar(45) NOT NULL,
  `active` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_code_UNIQUE` (`tag`),
  UNIQUE KEY `stock_id_UNIQUE` (`stock_id`),
  KEY `stockId_idx` (`stock_id`),
  CONSTRAINT `stockId` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `touch`
--

DROP TABLE IF EXISTS `touch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `touch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metal` varchar(45) DEFAULT NULL,
  `purity` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `touch`
--

LOCK TABLES `touch` WRITE;
/*!40000 ALTER TABLE `touch` DISABLE KEYS */;
INSERT INTO `touch` VALUES (1,'G','100','24K'),(2,'G','91.6','916'),(3,'G','83','20K'),(4,'G','75','18K'),(5,'S','100','100'),(6,'S','90','90'),(7,'S','75','75'),(8,'S','50','50'),(9,'S','80','80');
/*!40000 ALTER TABLE `touch` ENABLE KEYS */;
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
  `pwd` varchar(255) DEFAULT NULL,
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
  `user_id` int unsigned NOT NULL,
  `bill_create_place_default` varchar(255) DEFAULT '',
  `bill_create_city_default` varchar(255) DEFAULT NULL,
  `bill_create_pincode_default` varchar(255) DEFAULT NULL,
  `auto_print_receipt` varchar(255) DEFAULT 'true',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
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

-- Dump completed on 2021-01-10 16:38:01
