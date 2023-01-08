ALTER TABLE `gsprod`.`jewellery_invoice_details_1` 
ADD COLUMN `archived` INT NULL DEFAULT 0 AFTER `invoice_data`;

ALTER TABLE `gsprod`.`stock_1` 
ADD COLUMN `archived` INT NULL DEFAULT 0 AFTER `avl_p_wt`;

ALTER TABLE `gsprod`.`stock_sold_1` 
ADD COLUMN `archived` INT NULL DEFAULT 0 AFTER `invoice_ref`;

ALTER TABLE `gsprod`.`old_items_stock_1` 
ADD COLUMN `archived` INT NULL DEFAULT 0 AFTER `invoice_ref`;
