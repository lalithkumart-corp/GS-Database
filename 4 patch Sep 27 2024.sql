ALTER TABLE `gsprod`.`old_items_stock_1` 
ADD COLUMN `purchased_from_cust_id` INT NOT NULL AFTER `item_type`;

ALTER TABLE `gsprod`.`old_items_stock_1` 
ADD COLUMN `daily_retail_rate` FLOAT NOT NULL AFTER `wastage_val`;

ALTER TABLE `gsprod`.`old_items_stock_1` 
CHANGE COLUMN `applied_retail_rate` `applied_retail_rate` FLOAT NOT NULL ;


CREATE TABLE `jewellery_invoices_1` (
  `jewellery_invoice_tbl_id` int NOT NULL AUTO_INCREMENT,
  `invoice_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `ukey` varchar(45) DEFAULT NULL,
  `invoice_no` varchar(45) NOT NULL,
  `cust_id` int DEFAULT NULL,
  `item_metal_type` varchar(45) DEFAULT NULL,
  `daily_retail_rate` float DEFAULT NULL,
  `total_initial_price` float DEFAULT NULL,
  `cgst_avg_percent` float DEFAULT NULL,
  `total_cgst_val` float DEFAULT NULL,
  `sgst_avg_percent` float DEFAULT NULL,
  `total_sgst_val` float DEFAULT NULL,
  `total_discount` float DEFAULT NULL,
  `total_purchase_final_price` float DEFAULT NULL,
  `total_exchange_final_price` float DEFAULT NULL,
  `roundoff_val` float DEFAULT NULL,
  `grand_total` float DEFAULT NULL,
  `paid_amt` float DEFAULT NULL,
  `balance_amt` float DEFAULT NULL,
  `payment_mode` varchar(45) DEFAULT NULL,
  `is_returned` int DEFAULT '0',
  `is_archived` int DEFAULT '0',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`jewellery_invoice_tbl_id`),
  UNIQUE KEY `uid_UNIQUE` (`ukey`)
);

CREATE TABLE `jewellery_invoice_items_1` (
  `invoice_item_id` int NOT NULL AUTO_INCREMENT,
  `invoice_ref` varchar(45) NOT NULL,
  `stock_tbl_item_uid` varchar(45) NOT NULL,
  `stock_tbl_prod_id` varchar(45) DEFAULT NULL,
  `qty` int NOT NULL,
  `gross_wt` float NOT NULL,
  `net_wt` float NOT NULL,
  `wastage_percent` float DEFAULT NULL,
  `wastage_val` float DEFAULT NULL,
  `making_charge` float DEFAULT NULL,
  `initial_price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `cgst_percent` float DEFAULT NULL,
  `cgst_val` float DEFAULT NULL,
  `sgst_percent` float DEFAULT NULL,
  `sgst_val` float DEFAULT NULL,
  `final_price` float DEFAULT NULL,
  PRIMARY KEY (`invoice_item_id`)
);


CREATE TABLE `jewellery_estimate_invoices_1` (
  `jewellery_estimate_invoice_tbl_id` int NOT NULL AUTO_INCREMENT,
  `invoice_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `ukey` varchar(45) DEFAULT NULL,
  `invoice_no` varchar(45) NOT NULL,
  `cust_id` int DEFAULT NULL,
  `item_metal_type` varchar(45) DEFAULT NULL,
  `daily_retail_rate` float DEFAULT NULL,
  `total_initial_price` float DEFAULT NULL,
  `cgst_avg_percent` float DEFAULT NULL,
  `total_cgst_val` float DEFAULT NULL,
  `sgst_avg_percent` float DEFAULT NULL,
  `total_sgst_val` float DEFAULT NULL,
  `total_discount` float DEFAULT NULL,
  `total_purchase_final_price` float DEFAULT NULL,
  `total_exchange_final_price` float DEFAULT NULL,
  `roundoff_val` float DEFAULT NULL,
  `grand_total` float DEFAULT NULL,
  `is_archived` int DEFAULT '0',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`jewellery_estimate_invoice_tbl_id`),
  UNIQUE KEY `uid_UNIQUE` (`ukey`)
);

CREATE TABLE `jewellery_estimate_invoice_items_1` (
  `invoice_item_id` int NOT NULL AUTO_INCREMENT,
  `invoice_ref` varchar(45) NOT NULL,
  `stock_tbl_item_uid` varchar(45) NOT NULL,
  `stock_tbl_prod_id` varchar(45) DEFAULT NULL,
  `qty` int NOT NULL,
  `gross_wt` float NOT NULL,
  `net_wt` float NOT NULL,
  `wastage_percent` float DEFAULT NULL,
  `wastage_val` float DEFAULT NULL,
  `making_charge` float DEFAULT NULL,
  `initial_price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `cgst_percent` float DEFAULT NULL,
  `cgst_val` float DEFAULT NULL,
  `sgst_percent` float DEFAULT NULL,
  `sgst_val` float DEFAULT NULL,
  `final_price` float DEFAULT NULL,
  PRIMARY KEY (`invoice_item_id`)
);

CREATE TABLE `old_items_estimates_1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_type` varchar(45) DEFAULT NULL,
  `cust_id` int NOT NULL,
  `gross_wt` float DEFAULT NULL,
  `net_wt` float DEFAULT NULL,
  `wastage_val` float DEFAULT NULL,
  `applied_retail_rate` float NOT NULL,
  `daily_retail_rate` float NOT NULL,
  `price` float DEFAULT NULL,
  `invoice_ref` varchar(45) DEFAULT NULL,
  `archived` int DEFAULT '0',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

CREATE TABLE `gsprod`.`fund_transaction_categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  `created_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));

ALTER TABLE `gsprod`.`fund_transactions_1` 
ADD COLUMN `category_id` INT NOT NULL AFTER `category`;

ALTER TABLE `gsprod`.`fund_transactions_1` 
ADD COLUMN `ctx1` VARCHAR(45) NULL DEFAULT NULL AFTER `tag_indicator`,
ADD COLUMN `ctx2` VARCHAR(45) NULL DEFAULT NULL AFTER `ctx1`,
ADD COLUMN `ctx3` VARCHAR(45) NULL DEFAULT NULL AFTER `ctx2`;


INSERT INTO `gsprod`.`fund_transaction_categories` (`user_id`, `category`) VALUES ('1', 'Girvi');
INSERT INTO `gsprod`.`fund_transaction_categories` (`user_id`, `category`) VALUES ('1', 'Investment');
INSERT INTO `gsprod`.`fund_transaction_categories` (`user_id`, `category`) VALUES ('1', 'Partial');
INSERT INTO `gsprod`.`fund_transaction_categories` (`user_id`, `category`) VALUES ('1', 'Redeem');


UPDATE fund_transactions_1 set category_id=1 where category='Girvi';
UPDATE fund_transactions_1 set category_id=2 where category='Investment';
UPDATE fund_transactions_1 set category_id=3 where category='Partial';
UPDATE fund_transactions_1 set category_id=4 where category='Redeem';

ALTER TABLE `gsprod`.`fund_transactions_1` 
DROP COLUMN `category`,
DROP INDEX `category` ;


ALTER TABLE `gsprod`.`fund_transactions_1` 
DROP COLUMN `cash_out_to_upi`,
DROP COLUMN `cash_out_to_bank_id`;

ALTER TABLE `gsprod`.`fund_trns_tmp_1` 
DROP COLUMN `cash_out_to_upi`,
DROP COLUMN `cash_out_to_bank_id`;


-- COLUMN ORDER CHANGES
ALTER TABLE `gsprod`.`fund_transactions_1` 
CHANGE COLUMN `cash_in_mode` `cash_in_mode` VARCHAR(45) NULL DEFAULT NULL AFTER `cash_in`,
CHANGE COLUMN `cash_out_mode` `cash_out_mode` VARCHAR(45) NULL DEFAULT NULL AFTER `cash_out`,
CHANGE COLUMN `cash_out_to_bank_acc_no` `cash_out_to_bank_acc_no` VARCHAR(45) NULL DEFAULT NULL AFTER `cash_out_mode`,
CHANGE COLUMN `cash_out_to_bank_ifsc` `cash_out_to_bank_ifsc` VARCHAR(45) NULL DEFAULT NULL AFTER `cash_out_to_bank_acc_no`,
CHANGE COLUMN `account_id` `account_id` VARCHAR(45) NULL DEFAULT NULL AFTER `cash_out_to_bank_ifsc`;


ALTER TABLE `gsprod`.`stock_sold_1` 
ADD COLUMN `is_returned` INT NULL DEFAULT 0 AFTER `invoice_ref`;

ALTER TABLE `gsprod`.`old_items_stock_1` 
ADD COLUMN `is_returned` INT NULL DEFAULT 0 AFTER `invoice_ref`;

ALTER TABLE `gsprod`.`jewellery_invoices_1` 
ADD COLUMN `return_charges_val` FLOAT NULL AFTER `is_returned`;
