-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: gs
-- ------------------------------------------------------
-- Server version	5.5.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesstoken` (
  `id` varchar(255) NOT NULL,
  `ttl` int(11) DEFAULT NULL,
  `scopes` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesstoken`
--

LOCK TABLES `accesstoken` WRITE;
/*!40000 ALTER TABLE `accesstoken` DISABLE KEYS */;
INSERT INTO `accesstoken` VALUES ('0uBLW1cNApKB8IcBYsod4JXT4Bnsc3xNU1iyBMdb4QuHZzSTLmR1rhfHC7esqyt7',1209600,NULL,'2018-11-20 14:29:56',2),('3AK8OSq4xJYnG8GyohTX7HaMhccHrFoesNHU0F52mLAlKHtuPuYE2Dm1wVvQ616B',1209600,NULL,'2018-11-17 11:32:39',2),('4Yh1te1OgxEMDnpdpltF6tALtfBiEjubyo1ZbnkV1cfmYLi3hV4XMuJrG3HUHuHy',1209600,NULL,'2018-11-20 14:32:05',2),('7kV8mRH0qSmVjtDmvWUu3OgHREnyLHRQNJpH1lD67uFFkcHlwFShlRDldmmk8U8B',1209600,NULL,'2018-10-16 13:09:21',2),('A3B06P4lK55WIvlZu1myZxHTeEkDriGOwqSDLl6rcfSfYRRzCUXvUdq9421Asey5',1209600,NULL,'2018-10-18 12:30:02',2),('AL0XOFOIQ4CJ82VYJsfRxNJ3yJh0ekERVka4xGZOVqvdchxD7VunWEO22LbZhD59',1209600,NULL,'2018-11-20 14:32:27',2),('BmgvC6A9qXSLnxJTRl7KK3LRz263XB31NLq8F7IkFEJHFBtou6cro5o0W72Ia0gH',1209600,NULL,'2018-11-14 13:59:43',2),('Dj2CBPlCSyMsKwwlBtqHoIB2IExG2DUi4MzbRjcgKvP37ZADWU2LA2aRi3EIG5Zx',1209600,NULL,'2018-11-03 11:17:07',2),('EqtOHMMXDoQf4ko6kBwXy6eVMpao9TcG0qUbK9pjQShB7K9r6oVH19r5W0NFxdV4',1209600,NULL,'2018-11-20 14:37:08',2),('fDnUS6mL5dB9yFqByccCYTVbH7ITYrKdFi85S1Ygqw6kCtkf5lfwWVQKCmC8bxA6',1209600,NULL,'2018-11-20 14:32:39',2),('FhQEQoHYTX0xMP5FQJJHvTEcjux1xzWskx1s3cE7YmhDuAkAqWd05voLEOqL0qkN',1209600,NULL,'2018-11-20 14:37:27',2),('fjxRuheMchRxm5C8U0hbvYpj60f0EhFTDvyfQZLRk8dKYPhQYSIEVAs7Mub8DkEu',1209600,NULL,'2018-10-21 15:05:06',2),('fWhXx7hqrGCcyPZBZb0GuAF0aY0vfK2rIKL6ZIojKxAp2l5fkjP5hq9jhP1MtMZg',1209600,NULL,'2018-10-15 13:41:45',2),('GJ121vPcXlyIjdQCBJl5bCfdoU5ZGt5at6mh497dni3694lKKienXv0bBmqWLlNm',1209600,NULL,'2018-10-13 03:34:05',2),('HmEHsCFf0oEBmIFBeg160M5co6llQc2T14UPxX0rrk5AuCHGBmZFSQyqEDfmUAeO',1209600,NULL,'2018-11-15 17:45:52',2),('IE1eb4ux2JFBq7HQHK61jZugIQ4MNdVgIIhgJMa1tfhG1yPffJoDtSN4ffecI6Ox',1209600,NULL,'2018-10-17 15:08:59',2),('MJVcCsbMfmUQhVsZ16FoBGa9DGR9sGMcxpK7KWEAMuDVAc49ePGrlJBijjLgUC65',1209600,NULL,'2018-11-20 14:33:24',2),('NA1b0jtB9rbN4aTiI0vxu6ni1I5lZFt8IyTnh9POZBuLzhcQWgN0LAEEx7YM0wcu',1209600,NULL,'2018-10-14 12:04:40',2),('nwcOBiFz4sCUbra9mDwCd25UPxxVCGhfPXPGLmtVd0GHIVfGHJNm9b50Vzfhu2Gl',1209600,NULL,'2018-11-11 12:04:30',2),('o2h7RBoy2JHKUk0c6ON01RL2jxHRgfxZ6wPNbnSvg18DnmePrjY5haIHTFMTWgmn',1209600,NULL,'2018-10-21 09:01:32',2),('otWF0yf6F0RaUrzDjgYVqFu2gCjrXb4Gq9tT6c86lf3CXnCr5GR8JAF3S9txMEJy',1209600,NULL,'2018-11-15 15:22:03',2),('p9tzrGtzfaEjvB9iickyFyIMmdJ2Jq88snvT3YvWXtV8KnHUeSPR7yTj6bMsTDeC',1209600,NULL,'2018-10-26 15:25:05',2),('PRAxNhlDtwVE8WlvKN6DcmkD8WAqfc3Era6dPEi9xhITyHDU8sUpW4dKJs9TmxOe',1209600,NULL,'2018-11-20 14:29:11',2),('q2FsTwloJenW0e0C3VfGfl0OdzMpXB2LsnZVAvLj00kJRZ8c3GdOBLk72QILKfJA',1209600,NULL,'2018-10-13 13:01:42',2),('q9OF6GO0Pef4DKBfQkcOf0gu0bT7vZ7ENdEUvRpkSqWSDNnsT6UhwbYkYwJ6nq6R',1209600,NULL,'2018-11-18 06:25:45',2),('qSw6tFfxPBFqFCdUunawLgTFvIPZg65nN8vP1lPdRvr8ldrreuyX5Y2ad5NNFtpQ',1209600,NULL,'2018-11-20 14:40:40',2),('RfF92Fy6XPpk3D7M3EcO4VM7SH18QAtMhpbd3aT1cCKZK1DGZHBuPCbP7VqpxqHC',1209600,NULL,'2018-11-20 14:39:20',2),('SCTrDTjU5g1XwPBoUB2bbrw3903SkYg9qDpFGITQIvf8MC40YdHLb0pEb2CdC5rD',1209600,NULL,'2018-10-15 16:36:26',2),('twE1GXywhHE2GM5B5o4OruLZsNELMnoAcovS29h0vjMT6wCBuJqcto9K3CckPg6z',1209600,NULL,'2018-10-14 05:19:19',2),('U4kEGElF1RY2UlReMazS0JF8LbdAKN4AIxu6nQa0562h53YEucZYFkeaLVpP45el',1209600,NULL,'2018-10-13 04:13:39',2),('vi5oq2LbAAqkT2VEjmgFwCltGTMdw3hUidte0FsKYpIB33hp8dMd5i4lbWmyBDOs',1209600,NULL,'2018-10-27 12:29:22',2),('vZHfJz22nxqTnpYWW0OCEv3e2VqHmdPolQXRnPXGdO0HOyVtIkzPeOHilDBD1O4X',1209600,NULL,'2018-11-20 14:28:30',2),('wwEHKadfwwZS8FyO2CeRUJYvPAl5ucbEEMzvX4fhguR1CuNmgb4cNCUmeWeFWJdR',1209600,NULL,'2018-11-20 16:01:51',2),('XRi6G61bwfVGIleTck290gJAj6fkrtgRvyDucEf7Nv2hZkdCjgpMQd9SoQDmBoQw',1209600,NULL,'2018-11-12 13:16:53',2),('YcQrbgYQhi5twFZ0atT3yEvyWN1e9w1wWYO7Zw2BnBc91HSqWg9hnGeCHzLy2apV',1209600,NULL,'2018-11-20 14:28:08',2),('YUCre83529c89VI1HXjNsYfthqBMvCOspElkZKgCF35JMAC25kNWCuptNa4Kgcst',1209600,NULL,'2018-10-20 12:59:07',2);
/*!40000 ALTER TABLE `accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl`
--

DROP TABLE IF EXISTS `acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL,
  `accessType` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `principalType` varchar(255) DEFAULT NULL,
  `principalId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl`
--

LOCK TABLES `acl` WRITE;
/*!40000 ALTER TABLE `acl` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CustomerId` int(22) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `GaurdianName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Place` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Pincode` int(11) DEFAULT NULL,
  `Mobile` bigint(20) DEFAULT NULL,
  `OtherRemarks` text,
  `HashKey` varchar(45) DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  `ModifiedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_metadata_list` (
  `SerialNo` int(11) NOT NULL AUTO_INCREMENT,
  `Key` int(11) NOT NULL,
  `DisplayText` varchar(50) NOT NULL,
  PRIMARY KEY (`SerialNo`,`Key`,`DisplayText`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_metadata_list`
--

LOCK TABLES `customer_metadata_list` WRITE;
/*!40000 ALTER TABLE `customer_metadata_list` DISABLE KEYS */;
INSERT INTO `customer_metadata_list` VALUES (1,1,'Aadhar Card Number'),(2,2,'License Number'),(3,3,'Voter Id'),(4,4,'SBI Acc Number'),(5,5,'ICICI Acc Number'),(6,6,'Email Id'),(7,7,'Pan Card'),(8,8,'Passport');
/*!40000 ALTER TABLE `customer_metadata_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Hashkey` varchar(255) DEFAULT NULL,
  `Image` blob,
  `Format` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pledgebook`
--

DROP TABLE IF EXISTS `pledgebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pledgebook` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UniqueIdentifier` varchar(45) DEFAULT NULL,
  `BillNo` varchar(45) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `CustomerId` int(11) DEFAULT NULL,
  `ImageId` int(11) DEFAULT NULL,
  `Orn` varchar(500) DEFAULT NULL,
  `CreatedDate` varchar(45) DEFAULT NULL,
  `ModifiedDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pledgebook`
--

LOCK TABLES `pledgebook` WRITE;
/*!40000 ALTER TABLE `pledgebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `pledgebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolemapping`
--

DROP TABLE IF EXISTS `rolemapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rolemapping` (
  `id` int(11) NOT NULL,
  `principalType` varchar(45) DEFAULT NULL,
  `principalId` varchar(45) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realm` varchar(512) DEFAULT NULL,
  `username` varchar(512) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `emailVerified` tinyint(1) DEFAULT NULL,
  `verificationToken` varchar(512) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,'lalith','$2a$10$JhaDwnp26BDOCEVrq5n7aug3dWOYvfT/67AIEZyMfJfFFHKNIZ97G',NULL,NULL,'lalith@lalith.com'),(2,NULL,'lalith','$2a$10$JhaDwnp26BDOCEVrq5n7aug3dWOYvfT/67AIEZyMfJfFFHKNIZ97G',NULL,NULL,'lalith@prod.com');
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

-- Dump completed on 2018-11-20 23:06:22
