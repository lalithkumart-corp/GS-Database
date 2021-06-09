-- -------------------------------------------------------------
-- TablePlus 2.11.2(278)
--
-- https://tableplus.com/
--
-- Database: gsprod
-- Generation Time: 2020-01-04 18:47:25.5150
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL,
  `accessType` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `principalType` varchar(255) DEFAULT NULL,
  `principalId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO `acl` (`id`, `model`, `property`, `accessType`, `permission`, `principalType`, `principalId`) VALUES ('1', 'GsUser', 'loginUser', '*', 'ALLOW', 'ROLE', '$everyone'),
('2', 'GsUser', 'signupNewCustomer', '*', 'ALLOW', 'ROLE', '$everyone'),
('3', 'GsUser', '*', '*', 'ALLOW', 'ROLE', '1'),
('4', 'GsUser', '*', '*', 'ALLOW', 'ROLE', '2'),
('5', 'Pledgebook', 'insertNewBillAPIHandler', '*', 'DENY', 'ROLE', '$everyone'),
('6', 'Pledgebook', 'insertNewBillAPIHandler', '*', 'ALLOW', 'ROLE', '2'),
('7', 'Pledgebook', 'insertNewBillAPIHandler', '*', 'ALLOW', 'ROLE', '4');


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;