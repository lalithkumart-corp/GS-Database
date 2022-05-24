-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: base
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
-- Table structure for table `accesstoken`
--

DROP TABLE IF EXISTS `accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accesstoken` (
  `id` varchar(255) NOT NULL,
  `ttl` int DEFAULT NULL,
  `scopes` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `sso_token` text,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(255) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL,
  `accessType` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `principalType` varchar(255) DEFAULT NULL,
  `principalId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl`
--

LOCK TABLES `acl` WRITE;
/*!40000 ALTER TABLE `acl` DISABLE KEYS */;
INSERT INTO `acl` VALUES (1,'GsUser','loginUser','*','ALLOW','ROLE','$everyone'),(2,'GsUser','signupNewCustomer','*','ALLOW','ROLE','$everyone'),(3,'GsUser','*','*','ALLOW','ROLE','1'),(4,'GsUser','*','*','ALLOW','ROLE','2'),(5,'Pledgebook','*','*','DENY','ROLE','$everyone'),(6,'Pledgebook','*','*','ALLOW','ROLE','1'),(7,'Pledgebook','*','*','ALLOW','ROLE','2'),(8,'Pledgebook','*','*','ALLOW','ROLE','3'),(9,'Pledgebook','*','*','ALLOW','ROLE','4'),(10,'Stock','*','*','DENY','ROLE','$everyone'),(11,'Stock','*','*','ALLOW','ROLE','1'),(12,'Stock','*','*','ALLOW','ROLE','2'),(13,'Stock','*','*','ALLOW','ROLE','3'),(14,'Stock','*','*','ALLOW','ROLE','5'),(15,'GsUser','*','*','ALLOW','ROLE','3'),(16,'Pledgebook','archiveBillsApiHandler','*','DENY','ROLE','3'),(17,'Pledgebook','unArchiveBillsApiHandler','*','DENY','ROLE','3'),(18,'Pledgebook','trashBillsApiHandler','*','DENY','ROLE','3'),(19,'Pledgebook','deleteBillApiHandler','*','DENY','ROLE','3'),(20,'Pledgebook','archiveBillsApiHandler','*','DENY','ROLE','4'),(21,'Pledgebook','archiveBillsApiHandler','*','DENY','ROLE','4'),(22,'Pledgebook','trashBillsApiHandler','*','DENY','ROLE','4'),(23,'Pledgebook','deleteBillApiHandler','*','DENY','ROLE','4'),(24,'GsUser','checkEmailExistance','*','ALLOW','ROLE','$everyone'),(25,'GsUser','ssoLogin','*','ALLOW','ROLE','$everyone');
/*!40000 ALTER TABLE `acl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alerts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) DEFAULT NULL,
  `trigger_time` datetime NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` text,
  `extra_ctx` text,
  `has_read` int DEFAULT '0',
  `archived` int DEFAULT '0',
  `module` varchar(45) DEFAULT NULL,
  `read_time` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `trigger_time_idx` (`trigger_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytics_app_login`
--

DROP TABLE IF EXISTS `analytics_app_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analytics_app_login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `wmic` varchar(245) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `resp` varchar(45) DEFAULT NULL,
  `other` varchar(45) DEFAULT NULL,
  `synced` tinyint DEFAULT '0',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytics_app_login`
--

LOCK TABLES `analytics_app_login` WRITE;
/*!40000 ALTER TABLE `analytics_app_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytics_app_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytics_app_usage`
--

DROP TABLE IF EXISTS `analytics_app_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analytics_app_usage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_uid` varchar(45) DEFAULT NULL,
  `wmic` varchar(245) DEFAULT NULL,
  `is_safe` tinyint DEFAULT NULL,
  `server_action` varchar(45) DEFAULT NULL,
  `synced` tinyint DEFAULT '0',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytics_app_usage`
--

LOCK TABLES `analytics_app_usage` WRITE;
/*!40000 ALTER TABLE `analytics_app_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytics_app_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytics_locations`
--

DROP TABLE IF EXISTS `analytics_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analytics_locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytics_locations`
--

LOCK TABLES `analytics_locations` WRITE;
/*!40000 ALTER TABLE `analytics_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytics_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytics_module_used`
--

DROP TABLE IF EXISTS `analytics_module_used`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analytics_module_used` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `ctx1` varchar(100) DEFAULT NULL,
  `ctx2` varchar(100) DEFAULT NULL,
  `ctx3` text,
  `is_sy` tinyint DEFAULT '0',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytics_module_used`
--

LOCK TABLES `analytics_module_used` WRITE;
/*!40000 ALTER TABLE `analytics_module_used` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytics_module_used` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytics_pledgebook`
--

DROP TABLE IF EXISTS `analytics_pledgebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analytics_pledgebook` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `unique_identifier` varchar(45) DEFAULT NULL,
  `bill_no` varchar(45) DEFAULT NULL,
  `bill_date` datetime DEFAULT NULL,
  `cust_id` int DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `is_sy` tinyint DEFAULT '0',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytics_pledgebook`
--

LOCK TABLES `analytics_pledgebook` WRITE;
/*!40000 ALTER TABLE `analytics_pledgebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytics_pledgebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app`
--

DROP TABLE IF EXISTS `app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app`
--

LOCK TABLES `app` WRITE;
/*!40000 ALTER TABLE `app` DISABLE KEYS */;
INSERT INTO `app` VALUES (1,1,'abcdefgh',1,1,'2021-01-11 00:00:00','2023-01-11 00:00:00','2021-01-11 00:00:00');
/*!40000 ALTER TABLE `app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks_list`
--

DROP TABLE IF EXISTS `banks_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banks_list` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks_list`
--

LOCK TABLES `banks_list` WRITE;
/*!40000 ALTER TABLE `banks_list` DISABLE KEYS */;
INSERT INTO `banks_list` VALUES (1,'ICICI'),(2,'HDFC'),(3,'Axis'),(4,'IDBI'),(5,'YesBank'),(6,'Kotak Mahindra Bank'),(7,'IndusInd Bank'),(8,'Federal Bank'),(9,'IDFC First Bank'),(10,'State Bank of India (SBI)'),(11,'Punjab National Bank'),(12,'Union Bank of India'),(13,'Canara Bank'),(14,'Bank of Baroda'),(15,'Bank of India'),(16,'Indian Bank'),(17,'Indian Overseas Bank'),(18,'Central Bank of India'),(19,'UPI');
/*!40000 ALTER TABLE `banks_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_1`
--

DROP TABLE IF EXISTS `customer_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_1` (
  `CustomerId` int NOT NULL AUTO_INCREMENT,
  `UserId` int DEFAULT NULL,
  `NamePrefix` varchar(45) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `GuardianRelation` varchar(45) DEFAULT 'c/o',
  `GuardianNamePrefix` varchar(45) DEFAULT NULL,
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
-- Dumping data for table `customer_1`
--

LOCK TABLES `customer_1` WRITE;
/*!40000 ALTER TABLE `customer_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_1` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `analytics_customer_insert` AFTER INSERT ON `customer_1` FOR EACH ROW BEGIN
    INSERT INTO analytics_module_used
    SET module = 'CUSTOMER_INSERT',
    user_id=1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `analytics_customer_update` AFTER UPDATE ON `customer_1` FOR EACH ROW BEGIN
    INSERT INTO analytics_module_used
    SET module = 'CUSTOMER_UPDATE';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customer_metadata_list`
--

DROP TABLE IF EXISTS `customer_metadata_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `fund_accounts`
--

DROP TABLE IF EXISTS `fund_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fund_accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `account_no` varchar(45) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_default` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_accounts`
--

LOCK TABLES `fund_accounts` WRITE;
/*!40000 ALTER TABLE `fund_accounts` DISABLE KEYS */;
INSERT INTO `fund_accounts` VALUES (1,1,'SHOP',NULL,'MYBRANCH_NAME','2021-07-21 09:26:59','2021-07-21 09:26:59',1);
/*!40000 ALTER TABLE `fund_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund_transactions_1`
--

DROP TABLE IF EXISTS `fund_transactions_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fund_transactions_1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `customer_id` varchar(45) DEFAULT NULL,
  `account_id` varchar(45) DEFAULT NULL,
  `transaction_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gs_uid` varchar(45) DEFAULT NULL,
  `cash_in` int NOT NULL DEFAULT '0',
  `cash_out` int DEFAULT '0',
  `category` varchar(45) DEFAULT NULL,
  `remarks` text,
  `deleted` tinyint DEFAULT '0',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `cash_out_mode` varchar(45) DEFAULT NULL,
  `cash_out_to_bank_id` int DEFAULT NULL,
  `cash_out_to_bank_acc_no` varchar(45) DEFAULT NULL,
  `cash_out_to_bank_ifsc` varchar(45) DEFAULT NULL,
  `cash_out_to_upi` varchar(45) DEFAULT NULL,
  `cash_in_mode` varchar(45) DEFAULT NULL,
  `alert` int DEFAULT NULL,
  `is_internal` int DEFAULT '0',
  `tag_indicator` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `gs_uid_idx` (`gs_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_transactions_1`
--

LOCK TABLES `fund_transactions_1` WRITE;
/*!40000 ALTER TABLE `fund_transactions_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `fund_transactions_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund_trns_tmp_1`
--

DROP TABLE IF EXISTS `fund_trns_tmp_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fund_trns_tmp_1` (
  `id` int NOT NULL,
  `transaction_date` datetime NOT NULL,
  `user_id` int NOT NULL,
  `account_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `gs_uid` varchar(45) DEFAULT NULL,
  `category` varchar(200) NOT NULL,
  `remarks` text,
  `deleted` int DEFAULT NULL,
  `cash_in` decimal(10,0) DEFAULT NULL,
  `cash_out` decimal(10,0) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `cash_out_mode` varchar(45) DEFAULT NULL,
  `cash_out_to_bank_id` int DEFAULT NULL,
  `cash_out_to_bank_acc_no` varchar(45) DEFAULT NULL,
  `cash_out_to_bank_ifsc` varchar(45) DEFAULT NULL,
  `cash_out_to_upi` varchar(45) DEFAULT NULL,
  `cash_in_mode` varchar(45) DEFAULT NULL,
  `alert` int DEFAULT NULL,
  `is_internal` int DEFAULT NULL,
  `tag_indicator` int DEFAULT NULL,
  `beforeBal` decimal(10,0) DEFAULT NULL,
  `afterBal` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_trns_tmp_1`
--

LOCK TABLES `fund_trns_tmp_1` WRITE;
/*!40000 ALTER TABLE `fund_trns_tmp_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `fund_trns_tmp_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interest_rates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `range_from` int DEFAULT NULL,
  `range_to` int DEFAULT NULL,
  `rate_of_interest` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interest_rates`
--

LOCK TABLES `interest_rates` WRITE;
/*!40000 ALTER TABLE `interest_rates` DISABLE KEYS */;
INSERT INTO `interest_rates` VALUES (1,1,'gold',1,9999,3),(2,1,'gold',10000,1000000,2),(3,1,'silver',1,1000000,4),(4,1,'brass',1,1000000,10),(21,2,'gold',0,10000000,2);
/*!40000 ALTER TABLE `interest_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_category`
--

DROP TABLE IF EXISTS `item_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_subcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_subcategory`
--

LOCK TABLES `item_subcategory` WRITE;
/*!40000 ALTER TABLE `item_subcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jewellery_bill_avl_template_list`
--

DROP TABLE IF EXISTS `jewellery_bill_avl_template_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jewellery_bill_avl_template_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  `template_id` int DEFAULT NULL,
  `screenshot_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jewellery_bill_avl_template_list`
--

LOCK TABLES `jewellery_bill_avl_template_list` WRITE;
/*!40000 ALTER TABLE `jewellery_bill_avl_template_list` DISABLE KEYS */;
INSERT INTO `jewellery_bill_avl_template_list` VALUES (1,'gst',1,'/uploads/system/jewellery_gst_bill_template1.jpeg'),(2,'gst',2,'/uploads/system/jewellery_gst_bill_template2.jpeg');
/*!40000 ALTER TABLE `jewellery_bill_avl_template_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jewellery_bill_settings`
--

DROP TABLE IF EXISTS `jewellery_bill_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jewellery_bill_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `bill_series` varchar(45) DEFAULT NULL,
  `bill_no` varchar(45) DEFAULT NULL,
  `selected_template` int DEFAULT NULL,
  `custom_css` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jewellery_bill_settings`
--

LOCK TABLES `jewellery_bill_settings` WRITE;
/*!40000 ALTER TABLE `jewellery_bill_settings` DISABLE KEYS */;
INSERT INTO `jewellery_bill_settings` VALUES (1,1,'gst','A','1',2,NULL);
/*!40000 ALTER TABLE `jewellery_bill_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jewellery_invoice_details_1`
--

DROP TABLE IF EXISTS `jewellery_invoice_details_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jewellery_invoice_details_1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ukey` varchar(45) DEFAULT NULL,
  `invoice_no` varchar(45) NOT NULL,
  `cust_id` int DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `paid_amt` float DEFAULT NULL,
  `balance_amt` float DEFAULT NULL,
  `payment_mode` varchar(45) DEFAULT NULL,
  `raw_payment_data` text,
  `raw_data` text,
  `invoice_data` text,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_UNIQUE` (`ukey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jewellery_invoice_details_1`
--

LOCK TABLES `jewellery_invoice_details_1` WRITE;
/*!40000 ALTER TABLE `jewellery_invoice_details_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `jewellery_invoice_details_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_bill_avl_template_list`
--

DROP TABLE IF EXISTS `loan_bill_avl_template_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_bill_avl_template_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `template_id` int DEFAULT NULL,
  `screenshot_url` varchar(455) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_bill_avl_template_list`
--

LOCK TABLES `loan_bill_avl_template_list` WRITE;
/*!40000 ALTER TABLE `loan_bill_avl_template_list` DISABLE KEYS */;
INSERT INTO `loan_bill_avl_template_list` VALUES (1,1,'/uploads/system/template1.jpeg'),(2,2,'/uploads/system/template2.jpeg'),(3,3,'/uploads/system/template3.jpeg'),(4,4,'/uploads/system/template4.jpeg');
/*!40000 ALTER TABLE `loan_bill_avl_template_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_bill_tempate_settings`
--

DROP TABLE IF EXISTS `loan_bill_tempate_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_bill_tempate_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `header` text,
  `body_template` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_bill_tempate_settings`
--

LOCK TABLES `loan_bill_tempate_settings` WRITE;
/*!40000 ALTER TABLE `loan_bill_tempate_settings` DISABLE KEYS */;
INSERT INTO `loan_bill_tempate_settings` VALUES (1,1,'{\"firstLine\":{\"left\":{\"text\":\"Form F (Sec. 7 - Rule8)\"},\"center\":{\"text\":\"PAWN TICKET\"},\"right\":{\"text\":\"PBL No. 3/87-88\"},\"styles\":{\"marginTop\":null,\"marginBottom\":null,\"marginRight\":null,\"marginLeft\":null}},\"secondLine\":{\"text\":\"P.TEJARAM\",\"styles\":{\"fontSize\":\"45\",\"letterSpacing\":\"15\",\"color\":\"red\"}},\"thirdLine\":{\"text\":\"PAWN BROKER\",\"styles\":{\"fontSize\":\"17\"}},\"fourthLine\":{\"text\":\"2/34 MOUNT POONAMALLE ROAD, KATTUPPAKKAM, CHENNAI - 600 056\",\"styles\":{\"fontSize\":null}},\"fifthLine\":{\"text\":\"\",\"styles\":{\"fontSize\":null}}}',1),(5,2,'{\"firstLine\":{\"left\":{\"text\":\"\"},\"center\":{\"text\":\"\"},\"right\":{\"text\":\"\"},\"styles\":{\"marginTop\":null,\"marginBottom\":null,\"marginRight\":null,\"marginLeft\":null}},\"secondLine\":{\"text\":\"STORE NAME\",\"styles\":{\"fontSize\":\"42\",\"letterSpacing\":\"1\",\"color\":\"red\"}},\"thirdLine\":{\"text\":\"PAWN BROKER\",\"styles\":{\"fontSize\":\"20\"}},\"fourthLine\":{\"text\":\"2/34 TRUNK ROAD, KATTUPAKKAM, CHENNAI-600056\",\"styles\":{\"fontSize\":\"20\"}},\"fifthLine\":{\"text\":\"\",\"styles\":{\"fontSize\":\"-3\"}}}',NULL);
/*!40000 ALTER TABLE `loan_bill_tempate_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metal`
--

DROP TABLE IF EXISTS `metal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metal`
--

LOCK TABLES `metal` WRITE;
/*!40000 ALTER TABLE `metal` DISABLE KEYS */;
/*!40000 ALTER TABLE `metal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes_1`
--

DROP TABLE IF EXISTS `notes_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes_1` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CustomerId` int NOT NULL,
  `CustomerHashKey` varchar(45) DEFAULT NULL,
  `Notes` text,
  `Archived` tinyint DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes_1`
--

LOCK TABLES `notes_1` WRITE;
/*!40000 ALTER TABLE `notes_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `old_items_stock_1`
--

DROP TABLE IF EXISTS `old_items_stock_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `old_items_stock_1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_type` varchar(45) DEFAULT NULL,
  `gross_wt` float DEFAULT NULL,
  `net_wt` float DEFAULT NULL,
  `wastage_val` float DEFAULT NULL,
  `applied_retail_rate` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `invoice_ref` varchar(45) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `old_items_stock_1`
--

LOCK TABLES `old_items_stock_1` WRITE;
/*!40000 ALTER TABLE `old_items_stock_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `old_items_stock_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orn_images`
--

DROP TABLE IF EXISTS `orn_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orn_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orn_list`
--

LOCK TABLES `orn_list` WRITE;
/*!40000 ALTER TABLE `orn_list` DISABLE KEYS */;
INSERT INTO `orn_list` VALUES (1,1,'G','Adikey'),(2,1,'G','Chain kalkash'),(3,1,'G','Chain Long'),(4,1,'G','Chain Muthu'),(5,1,'G','Chain Short'),(6,1,'G','Coin'),(7,1,'G','Pair Lolak'),(8,1,'G','Pair Lolak kamal'),(9,1,'G','Pair Mattel Dilli'),(10,1,'G','Lakshmi Bottu'),(11,1,'G','Wallship'),(12,1,'S','Glass'),(13,1,'G','Pair Dilli Mattel'),(14,1,'B','A-Chetty'),(15,1,'B','Deksa'),(16,1,'G','Dollar'),(17,1,'G','Dollar Fish'),(18,1,'G','Dollar Heart'),(19,1,'G','Earing'),(20,1,'G','Baby Ring'),(21,1,'G','Pair Earing Muthu'),(22,1,'G','Pair Earing Plain'),(23,1,'G','Gulush'),(24,1,'G','Gundu'),(25,1,'G','Pair 123 L.Tops'),(26,1,'G','Gundu Nellikai'),(27,1,'G','Gundu Pattai'),(28,1,'G','Haram'),(29,1,'G','Pair Jalary Mattel'),(30,1,'G','Pair Jimiky'),(31,1,'G','Baby T.v Ring'),(32,1,'G','Kalkash'),(33,1,'G','Kamal'),(34,1,'G','Kamal Full Stone'),(35,1,'G','Pair Kamal Jimiky'),(36,1,'G','Pair Kamal Patla'),(37,1,'G','Ladies Ring'),(38,1,'G','Ladies Ring Fancy'),(39,1,'G','Pair Lolak Tops'),(40,1,'G','Pair Mani Mattel'),(41,1,'G','Pair Mattel'),(42,1,'G','Bangle'),(43,1,'G','pair Mattel Fancy'),(44,1,'G','Pair Mattel Jalary'),(45,1,'G','Pair Mattel Muthu'),(46,1,'G','Pair Mattel Neer'),(47,1,'G','Mattel Ner'),(48,1,'G','Moppu'),(49,1,'G','Moppu Full Stone'),(50,1,'G','Mukuthi'),(51,1,'G','Mukuthi Plain'),(52,1,'G','Pair Nadhiya Kamal'),(53,1,'G','Bracelet'),(54,1,'G','Nanakola'),(55,1,'G','Neckles'),(56,1,'G','Of Lot'),(57,1,'G','Ring'),(58,1,'G','Ring Fancy'),(59,1,'G','Ring Kambi'),(60,1,'G','Ring Navarathinam'),(61,1,'G','Ring Round'),(62,1,'G','Ring T.V'),(63,1,'G','Sarad'),(64,1,'G','Bressar'),(65,1,'G','Pair Suthu Mattel'),(66,1,'G','T.V Ring'),(67,1,'G','Tali'),(68,1,'G','Tali - Bottu'),(69,1,'G','Tali christian'),(70,1,'G','Tali M-Tali'),(71,1,'G','Tali - Patta'),(72,1,'G','Pair Tops'),(73,1,'G','Pair Tops Jimiky'),(74,1,'G','Pair Tops Plain'),(75,1,'G','Chain'),(76,1,'G','Vanki Ring'),(77,1,'G','Walaship'),(78,1,'S','Annakaiyar'),(79,1,'S','Annakaiyar Muthu'),(80,1,'S','Annakaiyar Patte'),(81,1,'S','Annakaiyar Urutu'),(82,1,'S','Baby Gulls'),(83,1,'S','Baby Muthu Gulls'),(84,1,'S','Chain'),(85,1,'S','Gulls'),(86,1,'G','Chain Dollar'),(87,1,'S','Gulls 3M'),(88,1,'S','Gulls Fancy'),(89,1,'S','Gulls Getti Muthu'),(90,1,'S','Gulls Jalary'),(91,1,'S','Gulls Kotamalli'),(92,1,'S','Gulls Muthu'),(93,1,'S','Gulls Patte'),(94,1,'S','Kappu'),(95,1,'S','Kinnam'),(96,1,'S','of Lot'),(97,1,'G','Chain Godume'),(98,1,'S','Kamatchi Valak'),(99,1,'G','Chain Dilli'),(100,1,'G','Baby L-Ring'),(101,1,'G','L-Bracelet'),(102,1,'S','Gulls Getti-muthu'),(103,1,'G','Baby L-Tops'),(104,1,'G','Urupdi'),(105,1,'G','Pair Dilli Suthu Mattel'),(107,1,'G','Thayat'),(108,1,'G','E.H. Ring'),(109,1,'S','Coin'),(110,1,'S','Chavi-Kothu'),(111,1,'S','Fancy Item'),(112,1,'G','Kini Bottu'),(113,1,'S','Pooja Plate'),(114,1,'S','Pooja Spoon'),(115,1,'G','Dollar Chain'),(116,1,'S','Bracelet'),(117,1,'G','Oval Ring'),(118,1,'G','Pawalam Ring'),(119,1,'G','Koppu'),(120,1,'G','Pair Nadhiya Mattel'),(121,1,'G','kappu'),(122,1,'S','KuthuValak'),(123,1,'S','Plate Small'),(124,1,'G','Manga'),(125,1,'G','Gundu Lolak Tops'),(126,1,'S','Sombu - Small'),(127,1,'S','Tamlar'),(128,1,'S','Dollar'),(129,1,'S','Valak'),(131,1,'G','Tali - Thoppa'),(151,2,'G','CHAIN'),(152,1,'G','Pair Tops Fancy');
/*!40000 ALTER TABLE `orn_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orn_list_jewellery`
--

DROP TABLE IF EXISTS `orn_list_jewellery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orn_list_jewellery`
--

LOCK TABLES `orn_list_jewellery` WRITE;
/*!40000 ALTER TABLE `orn_list_jewellery` DISABLE KEYS */;
INSERT INTO `orn_list_jewellery` VALUES (5,1,'G','CHAIN','LOTUS','','24',NULL,15,'Z1rCGje'),(6,1,'G','CHAIN','GODUME','','24',NULL,15,'ZKFxt2');
/*!40000 ALTER TABLE `orn_list_jewellery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orn_list_jewellery_settings`
--

DROP TABLE IF EXISTS `orn_list_jewellery_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `pledgebook`
--

DROP TABLE IF EXISTS `pledgebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `pledgebook_1`
--

DROP TABLE IF EXISTS `pledgebook_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pledgebook_1` (
  `UniqueIdentifier` varchar(45) NOT NULL DEFAULT '',
  `BillNo` varchar(45) DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `PresentValue` int DEFAULT '0',
  `Date` varchar(45) DEFAULT NULL,
  `CustomerId` int DEFAULT NULL,
  `Orn` text,
  `OrnPictureId` int DEFAULT NULL,
  `OrnCategory` varchar(45) DEFAULT NULL,
  `TotalWeight` float NOT NULL DEFAULT '0',
  `IntPercent` float DEFAULT NULL,
  `IntVal` float DEFAULT NULL,
  `OtherCharges` float DEFAULT NULL,
  `LandedCost` float DEFAULT NULL,
  `PaymentMode` int DEFAULT '1',
  `Remarks` text,
  `Status` int NOT NULL DEFAULT '1',
  `closedBillReference` varchar(45) DEFAULT NULL,
  `History` text,
  `ExpiryDate` datetime DEFAULT NULL,
  `Alert` int DEFAULT NULL,
  `Archived` int DEFAULT '0',
  `Trashed` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`UniqueIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pledgebook_1`
--

LOCK TABLES `pledgebook_1` WRITE;
/*!40000 ALTER TABLE `pledgebook_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pledgebook_1` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `analytics_pledgebook` AFTER INSERT ON `pledgebook_1` FOR EACH ROW BEGIN
    INSERT INTO analytics_pledgebook
	SET unique_identifier = New.UniqueIdentifier,
		bill_no = New.BillNo,
		user_id=1,
		bill_date = New.CreatedDate,
		action = 'NEW_BILL',
		cust_id = New.CustomerId,
        amount = NEW.Amount;
    INSERT INTO analytics_module_used
    SET module = 'BILL_CREATION';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pledgebook_closed_bills`
--

DROP TABLE IF EXISTS `pledgebook_closed_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `pledgebook_closed_bills_1`
--

DROP TABLE IF EXISTS `pledgebook_closed_bills_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pledgebook_closed_bills_1` (
  `uid` bigint NOT NULL,
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
  `payment_mode` int DEFAULT '1',
  `remarks` text,
  PRIMARY KEY (`pledgebook_uid`),
  KEY `UniqueIdentifier_idx` (`pledgebook_uid`),
  CONSTRAINT `pledgebook_closed_bills_1_ibfk_1` FOREIGN KEY (`pledgebook_uid`) REFERENCES `pledgebook_1` (`UniqueIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pledgebook_closed_bills_1`
--

LOCK TABLES `pledgebook_closed_bills_1` WRITE;
/*!40000 ALTER TABLE `pledgebook_closed_bills_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pledgebook_closed_bills_1` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `analytics_pledgebook_closed` AFTER INSERT ON `pledgebook_closed_bills_1` FOR EACH ROW BEGIN
    INSERT INTO analytics_pledgebook
	SET unique_identifier = New.uid,
		bill_no = New.bill_no,
		user_id=1,
		bill_date = New.closed_date,
		action = 'REDEEM_BILL',
        amount = NEW.paid_amt;
    INSERT INTO analytics_module_used
    SET module = 'BILL_REDEEM';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pledgebook_settings`
--

DROP TABLE IF EXISTS `pledgebook_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pledgebook_settings` (
  `s_no` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `bill_series` varchar(45) DEFAULT NULL,
  `last_created_bill_no` int DEFAULT NULL,
  `bill_start` int DEFAULT NULL,
  `bill_limit` int DEFAULT NULL,
  PRIMARY KEY (`s_no`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pledgebook_settings`
--

LOCK TABLES `pledgebook_settings` WRITE;
/*!40000 ALTER TABLE `pledgebook_settings` DISABLE KEYS */;
INSERT INTO `pledgebook_settings` VALUES (1,1,'B',1,1,10000);
/*!40000 ALTER TABLE `pledgebook_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_code`
--

DROP TABLE IF EXISTS `product_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_code` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `code` varchar(45) NOT NULL,
  `next_serial` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolemapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `principalType` varchar(45) DEFAULT NULL,
  `principalId` varchar(45) DEFAULT NULL,
  `roleId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolemapping`
--

LOCK TABLES `rolemapping` WRITE;
/*!40000 ALTER TABLE `rolemapping` DISABLE KEYS */;
INSERT INTO `rolemapping` VALUES (1,'USER','1',2);
/*!40000 ALTER TABLE `rolemapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_1`
--

DROP TABLE IF EXISTS `stock_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  `ornament` int DEFAULT NULL,
  `pr_code` varchar(45) DEFAULT NULL,
  `pr_number` varchar(45) DEFAULT NULL,
  `prod_id` varchar(45) DEFAULT NULL,
  `touch_id` int DEFAULT NULL,
  `i_touch` varchar(45) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `gross_wt` decimal(6,3) DEFAULT NULL,
  `net_wt` decimal(6,3) DEFAULT NULL,
  `pure_wt` decimal(6,3) DEFAULT NULL,
  `labour_charge` float DEFAULT '0',
  `labour_charge_unit` varchar(45) DEFAULT 'FX',
  `calc_labour_amt` float DEFAULT '0',
  `metal_rate` float DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `cgst_percent` float DEFAULT NULL,
  `cgst_amt` float DEFAULT NULL,
  `sgst_percent` float DEFAULT NULL,
  `sgst_amt` float DEFAULT NULL,
  `igst_percent` float DEFAULT NULL,
  `igst_amt` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `supplierId` int DEFAULT NULL,
  `personName` varchar(255) DEFAULT NULL,
  `avl_qty` int DEFAULT NULL,
  `sold_qty` int DEFAULT NULL,
  `sold_g_wt` decimal(6,3) DEFAULT NULL,
  `sold_n_wt` decimal(6,3) DEFAULT NULL,
  `sold_p_wt` decimal(6,3) DEFAULT NULL,
  `invoice_ref` varchar(45) DEFAULT NULL,
  `avl_g_wt` decimal(6,3) DEFAULT NULL,
  `avl_n_wt` decimal(6,3) DEFAULT NULL,
  `avl_p_wt` decimal(6,3) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prod_id_UNIQUE` (`prod_id`),
  KEY `touch_idx` (`touch_id`),
  KEY `supplier_idx` (`supplierId`),
  KEY `ornament_1_idx` (`ornament`),
  KEY `touch_1_idx` (`touch_id`),
  KEY `supplier_1_idx` (`supplierId`),
  CONSTRAINT `ornament_11` FOREIGN KEY (`ornament`) REFERENCES `orn_list_jewellery` (`id`),
  CONSTRAINT `supplier_11` FOREIGN KEY (`supplierId`) REFERENCES `suppliers` (`id`),
  CONSTRAINT `touch_11` FOREIGN KEY (`touch_id`) REFERENCES `touch` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_1`
--

LOCK TABLES `stock_1` WRITE;
/*!40000 ALTER TABLE `stock_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_sold_1`
--

DROP TABLE IF EXISTS `stock_sold_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_sold_1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prod_id` varchar(45) DEFAULT NULL,
  `metal_rate` int DEFAULT NULL,
  `retail_rate` int DEFAULT NULL,
  `ornament` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `gross_wt` float DEFAULT NULL,
  `net_wt` float DEFAULT NULL,
  `pure_wt` float DEFAULT NULL,
  `wastage` float DEFAULT NULL,
  `wastage_val` float DEFAULT NULL,
  `labour` float DEFAULT NULL,
  `cgst_percent` float DEFAULT NULL,
  `cgst_amt` float DEFAULT NULL,
  `sgst_percent` float DEFAULT NULL,
  `sgst_amt` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `invoice_ref` varchar(45) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_sold_1`
--

LOCK TABLES `stock_sold_1` WRITE;
/*!40000 ALTER TABLE `stock_sold_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_sold_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `store_name` varchar(500) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(155) DEFAULT NULL,
  `gst_no` varchar(155) DEFAULT NULL,
  `loan_license_name` varchar(155) DEFAULT NULL,
  `loan_bill_address_line1` varchar(255) DEFAULT NULL,
  `loan_bill_address_line2` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,1,'STORE NAME','SOME ADDR','PLACE','CHENNAI','600056','1231231231','','12345678910','Loan License Name','Addr as in loan license book','CHENNAI-600056','2021-04-15 10:02:03','2021-04-15 10:02:03');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stock_id` int NOT NULL,
  `tag` varchar(45) NOT NULL,
  `active` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_code_UNIQUE` (`tag`),
  UNIQUE KEY `stock_id_UNIQUE` (`stock_id`),
  KEY `stockId_idx` (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_indicator_list`
--

DROP TABLE IF EXISTS `tag_indicator_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_indicator_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_indicator_list`
--

LOCK TABLES `tag_indicator_list` WRITE;
/*!40000 ALTER TABLE `tag_indicator_list` DISABLE KEYS */;
INSERT INTO `tag_indicator_list` VALUES (1,'blue'),(2,'red'),(3,'orange'),(4,'brown'),(5,'green'),(6,'grey'),(7,'yellow'),(8,'cross'),(9,'tick'),(10,'doubletick');
/*!40000 ALTER TABLE `tag_indicator_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `touch`
--

DROP TABLE IF EXISTS `touch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `touch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metal` varchar(45) DEFAULT NULL,
  `purity` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `touch`
--

LOCK TABLES `touch` WRITE;
/*!40000 ALTER TABLE `touch` DISABLE KEYS */;
INSERT INTO `touch` VALUES (10,'G','100','24K'),(11,'G','91.6','916'),(12,'G','83','20K'),(13,'G','75','18K'),(14,'S','100','100'),(15,'S','90','90'),(16,'S','75','75'),(17,'S','50','50'),(18,'S','80','80');
/*!40000 ALTER TABLE `touch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udhaar_1`
--

DROP TABLE IF EXISTS `udhaar_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udhaar_1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unique_identifier` varchar(45) DEFAULT NULL,
  `bill_no` varchar(45) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `date` datetime NOT NULL,
  `account_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `notes` text,
  `status` int DEFAULT '1',
  `trashed` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_identifier_UNIQUE` (`unique_identifier`),
  UNIQUE KEY `bill_no_UNIQUE` (`bill_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udhaar_1`
--

LOCK TABLES `udhaar_1` WRITE;
/*!40000 ALTER TABLE `udhaar_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `udhaar_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udhaar_settings`
--

DROP TABLE IF EXISTS `udhaar_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udhaar_settings` (
  `udhaar_settings_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `bill_series` varchar(45) DEFAULT NULL,
  `next_bill_no` int DEFAULT NULL,
  PRIMARY KEY (`udhaar_settings_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udhaar_settings`
--

LOCK TABLES `udhaar_settings` WRITE;
/*!40000 ALTER TABLE `udhaar_settings` DISABLE KEYS */;
INSERT INTO `udhaar_settings` VALUES (1,1,'U',1);
/*!40000 ALTER TABLE `udhaar_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
  `gateway` varchar(45) DEFAULT 'direct',
  `sso_userid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,0,NULL,'Amith','','$2a$10$diPCcasWAOrCgUQ9FCJduuAA3mt9yo6hZy.BU9CMRwUJjKoYR6rK.','sonu@123#','mj@trsoftware.in','1231231231',NULL,NULL,'direct',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `analytics_new_user_creation` AFTER INSERT ON `user` FOR EACH ROW BEGIN
    INSERT INTO analytics_module_used
    SET module = 'USER_CREATION',
    user_id=1,
    ctx1=NEW.username;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `analytics_new_user_update` AFTER UPDATE ON `user` FOR EACH ROW BEGIN
    INSERT INTO analytics_module_used
    SET module = 'USER_UPDATE',
    user_id=1,
    ctx1=NEW.username;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_preferences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `bill_create_place_default` varchar(255) DEFAULT '',
  `bill_create_city_default` varchar(255) DEFAULT NULL,
  `bill_create_pincode_default` varchar(255) DEFAULT NULL,
  `auto_print_receipt` varchar(255) DEFAULT NULL,
  `loan_bill_print_model` varchar(45) DEFAULT 'full',
  PRIMARY KEY (`id`,`user_id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'base'
--

--
-- Dumping routines for database 'base'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-25  0:10:41
