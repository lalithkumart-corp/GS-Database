DROP TABLE IF EXISTS `fund_accounts`;
CREATE TABLE `fund_accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
);

INSERT INTO `fund_accounts` (`name`) VALUES ('shop');
INSERT INTO `fund_accounts` (`name`) VALUES ('bank');


DROP TABLE IF EXISTS `fund_transactions`;
CREATE TABLE `fund_transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `gs_uid_UNIQUE` (`gs_uid`)
);
