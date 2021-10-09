------------------------------------------------------------
ALTER TABLE `gsprod`.`accesstoken` 
RENAME TO  `gsprod`.`AccessToken` ;

ALTER TABLE `gsprod`.`acl` 
RENAME TO  `gsprod`.`ACL` ;

ALTER TABLE `gsprod`.`role` 
RENAME TO  `gsprod`.`Role` ;

ALTER TABLE `gsprod`.`rolemapping` 
RENAME TO  `gsprod`.`RoleMapping` ;

ALTER TABLE `gsprod`.`user` 
RENAME TO  `gsprod`.`User` ;


------------------------------------------------------------
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS customer_14;
DROP TABLE IF EXISTS pledgebook_closed_bills_14;
DROP TABLE IF EXISTS pledgebook_14;
DROP TABLE IF EXISTS stock_14;
DROP TABLE IF EXISTS stock_sold_14;
DROP TABLE IF EXISTS old_items_stock_14;
DROP TABLE IF EXISTS invoice_details_14;
DROP TABLE IF EXISTS fund_transactions_14;
DROP TABLE IF EXISTS fund_trns_tmp_14;
DROP TABLE IF EXISTS udhaar_14;

DROP PROCEDURE IF EXISTS fund_trns_procedure_14;

SET FOREIGN_KEY_CHECKS=1;


------------------------------------------------------------