ALTER TABLE `gsprod`.`jewellery_invoice_details_5` 
ADD COLUMN `invoice_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP AFTER `id`;

ALTER TABLE `gsprod-maruti`.`stock_sold_5` 
CHANGE COLUMN `uid` `stock_tbl_uid` VARCHAR(45) NULL DEFAULT NULL ;
