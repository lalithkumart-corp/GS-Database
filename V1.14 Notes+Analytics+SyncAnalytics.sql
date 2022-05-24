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
  `action` varchar(45) DEFAULT NULL,
  `resp` varchar(45) DEFAULT NULL,
  `other` varchar(45) DEFAULT NULL,
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
  `action` varchar(45) DEFAULT NULL,
  `resp` varchar(45) DEFAULT NULL,
  `other` varchar(45) DEFAULT NULL,
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
