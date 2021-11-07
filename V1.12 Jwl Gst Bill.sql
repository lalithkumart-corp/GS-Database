ALTER TABLE `stores` 
ADD COLUMN `gst_no` VARCHAR(155) NULL DEFAULT NULL AFTER `email`;


CREATE TABLE `gsprod`.`jewellery_bill_avl_template_list` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `template_id` INT NULL,
  `screenshot_url` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `jewellery_bill_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `bill_series` varchar(45) DEFAULT NULL,
  `bill_no` varchar(45) DEFAULT NULL,
  `selected_template` int DEFAULT NULL,
  `custom_css` text,
  PRIMARY KEY (`id`)
);

INSERT INTO `gsprod`.`jewellery_bill_template_settings` (`user_id`, `category`, `selected_template`) VALUES ('1', 'gst', '1');
