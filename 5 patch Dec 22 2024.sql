ALTER TABLE `gsprod`.`jewellery_tag_avl_template_list` 
ADD COLUMN `parameters_json` TEXT NULL AFTER `screenshot_url`;

ALTER TABLE `gsprod`.`stock_8` 
ADD COLUMN `sales_wsg_percent` FLOAT NULL DEFAULT NULL AFTER `calc_labour_amt`,
ADD COLUMN `sales_mc` FLOAT NULL DEFAULT NULL AFTER `sales_wsg_percent`;

UPDATE `gsprod`.`jewellery_tag_avl_template_list` SET `parameters_json` = '{\"labelWidth\": 80, \"labelHeight\": 12, \"linearLeft\": 2, \"linearRight\": 4, \"totalWidth\": 86, \"tagBody\": 54, \"tagStem\": 26}' WHERE (`id` = '1');
UPDATE `gsprod`.`jewellery_tag_avl_template_list` SET `parameters_json` = '{\"labelWidth\": 80, \"labelHeight\": 12, \"linearLeft\": 2, \"linearRight\": 4, \"totalWidth\": 86, \"tagBody\": 54, \"tagStem\": 26}' WHERE (`id` = '2');


UPDATE `gsprod`.`jewellery_tag_settings` SET `customization` = '{\"css\": {\"topOffsetPx\": 4}}' WHERE (`id` = '2');


CREATE TABLE `gsprod`.`udhaar_closed_bills_1` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `uid` INT NULL,
  `udhaar_tbl_uid` INT NULL,
  `principal_amt` FLOAT NULL,
  `closing_amt` FLOAT NULL,
  `interest_amt` FLOAT NULL,
  `created_datetime` DATETIME NULL,
  `modified_datetime` DATETIME NULL,
  PRIMARY KEY (`id`));
