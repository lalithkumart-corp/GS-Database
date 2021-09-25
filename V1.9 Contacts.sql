CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `name_prefix` varchar(45) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `guardian_relation` varchar(45) DEFAULT NULL,
  `guardian_name_prefix` varchar(45) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `firm_name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `place` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  `hashkey` varchar(100) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `sec_mobile` varchar(45) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);
