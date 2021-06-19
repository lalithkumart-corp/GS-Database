DROP TABLE IF EXISTS `loan_bill_avl_template_list`;
CREATE TABLE `loan_bill_avl_template_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `template_id` int DEFAULT NULL,
  `screenshot_url` varchar(455) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
);

LOCK TABLES `loan_bill_avl_template_list` WRITE;
INSERT INTO `loan_bill_avl_template_list` VALUES (1,1,'http://localhost:3003/uploads/system/template1.jpeg'),(2,2,'http://localhost:3003/uploads/system/template2.jpeg');
UNLOCK TABLES;


DROP TABLE IF EXISTS `loan_bill_tempate_settings`;
CREATE TABLE `loan_bill_tempate_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `header` text,
  `body_template` int DEFAULT NULL,
  PRIMARY KEY (`id`)
);