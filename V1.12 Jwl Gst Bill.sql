ALTER TABLE `stores` 
ADD COLUMN `gst_no` VARCHAR(155) NULL DEFAULT NULL AFTER `email`;


CREATE TABLE `jewellery_bill_avl_template_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  `template_id` int DEFAULT NULL,
  `screenshot_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `jewellery_bill_avl_template_list` (`category`, `template_id`, `screenshot_url`) VALUES ('gst', '1', '/uploads/system/jewellery_gst_bill_template1.jpeg');


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

INSERT INTO `jewellery_bill_settings` (`user_id`, `category`, `bill_series`, `bill_no`, `selected_template`) VALUES ('1', 'gst', 'A', '1', '1');

-- Adding new col "wastage_val" in stock_sold_1
ALTER TABLE `stock_sold_1` 
ADD COLUMN `wastage_val` FLOAT NULL AFTER `wastage`;

-- Alter in old_items_stock_1 table
ALTER TABLE `old_items_stock_1` 
DROP COLUMN `user_id`,
DROP COLUMN `qty`,
DROP COLUMN `prod_id`,
DROP COLUMN `ornament`,
DROP COLUMN `retail_rate`,
DROP COLUMN `wastage`,
DROP COLUMN `touch_id`,
ADD COLUMN `item_type` VARCHAR(45) NULL AFTER `id`,
ADD COLUMN `wastage_val` FLOAT NULL AFTER `net_wt`,
CHANGE COLUMN `invoice_ref` `invoice_ref` VARCHAR(45) NULL DEFAULT NULL ;

ALTER TABLE `old_items_stock_1` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT;

ALTER TABLE `invoice_details_1` 
ADD COLUMN `invoice_no` VARCHAR(45) NOT NULL AFTER `ukey`;

ALTER TABLE `invoice_details_1` 
ADD COLUMN `raw_data` TEXT NULL AFTER `raw_payment_data`;

ALTER TABLE `invoice_details_1` 
RENAME TO  `jewellery_invoice_details_1` ;

ALTER TABLE `jewellery_invoice_details_1` 
ADD COLUMN `invoice_data` TEXT NULL AFTER `raw_data`;
