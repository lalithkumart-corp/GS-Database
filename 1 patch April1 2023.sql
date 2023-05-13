-- Script Added date: 1st April 2023
ALTER TABLE `gsprod`.`stock_sold_1` 
ADD COLUMN `huid` VARCHAR(45) NULL DEFAULT NULL AFTER `prod_id`;
-- Updated in all base sql(till user-6) files
-- Updated in client-6 machine


-- Script Added date: 1st April 2023
CREATE TABLE `gsprod`.`jewellery_tag_settings` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `selected_tag_template_id` INT NULL,
  `store_name_abbr` VARCHAR(100) NULL,
  `customization` TEXT NULL,
  PRIMARY KEY (`id`));
-- Updated in client-6 machine

-- Script Added date: 1st April 2023
CREATE TABLE `gsprod`.`jewellery_tag_avl_template_list` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `template_id` INT NOT NULL,
  `screenshot_url` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));
-- Updated in client-6 machine

-- script added date: 7th May 2023
ALTER TABLE `gsprod`.`udhaar_1` 
ADD COLUMN `interest_pct` FLOAT NULL AFTER `notes`,
ADD COLUMN `interest_val` FLOAT NULL AFTER `interest_pct`,
ADD COLUMN `landed_cost` FLOAT NULL AFTER `interest_val`;
-- Updated only in base(user -6).sql file