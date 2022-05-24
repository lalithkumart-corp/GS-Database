CREATE TABLE `notes_1` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CustomerId` int NOT NULL,
  `CustomerHashKey` varchar(45) DEFAULT NULL,
  `Notes` text,
  `Archived` tinyint DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
);

CREATE TABLE `analytics_app_login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `wmic` varchar(245) DEFAULT NULL,
  `action` varchar(245) DEFAULT NULL,
  `resp` varchar(245) DEFAULT NULL,
  `other` varchar(245) DEFAULT NULL,
  `synced` tinyint DEFAULT '0',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

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
);

CREATE TABLE `synced_analytics_app_login` (
  `myid` int NOT NULL AUTO_INCREMENT,
  `id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `wmic` varchar(245) DEFAULT NULL,
  `action` varchar(245) DEFAULT NULL,
  `resp` varchar(245) DEFAULT NULL,
  `other` varchar(245) DEFAULT NULL,
  `synced` tinyint DEFAULT '0',
  `created_date` varchar(45) DEFAULT NULL,
  `modified_date` varchar(45) DEFAULT NULL,
  `mycreated_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `mymodified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`myid`)
);

CREATE TABLE `synced_analytics_app_usage` (
  `myid` int NOT NULL AUTO_INCREMENT,
  `id` int DEFAULT NULL,
  `session_uid` varchar(45) DEFAULT NULL,
  `wmic` varchar(245) DEFAULT NULL,
  `is_safe` tinyint DEFAULT NULL,
  `server_action` varchar(45) DEFAULT NULL,
  `synced` tinyint DEFAULT '0',
  `created_date` varchar(45) DEFAULT NULL,
  `modified_date` varchar(45) DEFAULT NULL,
  `mycreated_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `mymodified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`myid`)
);

CREATE TABLE `analytics_module_used` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `ctx1` varchar(100) DEFAULT NULL,
  `ctx2` varchar(100) DEFAULT NULL,
  `ctx3` text,
  `is_sy` tinyint DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

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
);

CREATE TABLE `synced_analytics_module_used` (
  `myid` int NOT NULL AUTO_INCREMENT,
  `id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `ctx1` varchar(100) DEFAULT NULL,
  `ctx2` varchar(100) DEFAULT NULL,
  `ctx3` text,
  `is_sy` tinyint DEFAULT '0',
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `mycreated_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`myid`)
);

CREATE TABLE `synced_analytics_pledgebook` (
  `myid` int NOT NULL AUTO_INCREMENT,
  `id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `unique_identifier` varchar(45) DEFAULT NULL,
  `bill_no` varchar(45) DEFAULT NULL,
  `bill_date` datetime DEFAULT NULL,
  `cust_id` int DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `is_sy` tinyint DEFAULT '0',
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `mycreated_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`myid`)
);