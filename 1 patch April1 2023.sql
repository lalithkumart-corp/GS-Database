-- Script Added date: 1st April 2023
ALTER TABLE `gsprod`.`stock_sold_1` 
ADD COLUMN `huid` VARCHAR(45) NULL DEFAULT NULL AFTER `prod_id`;
-- Updated in all base sql(till user-6) files


-- Script Added date: 1st April 2023
CREATE TABLE `gsprod`.`jewellery_tag_settings` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `selected_tag_template_id` INT NULL,
  `store_name_abbr` VARCHAR(100) NULL,
  `customization` TEXT NULL,
  PRIMARY KEY (`id`));

-- Script Added date: 1st April 2023
CREATE TABLE `gsprod`.`jewellery_tag_avl_template_list` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `template_id` INT NOT NULL,
  `screenshot_url` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));
