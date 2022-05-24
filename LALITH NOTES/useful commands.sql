------------------------------------------------------------
ALTER TABLE `accesstoken` 
RENAME TO  `AccessToken` ;

ALTER TABLE `acl` 
RENAME TO  `ACL` ;

ALTER TABLE `role` 
RENAME TO  `Role` ;

ALTER TABLE `rolemapping` 
RENAME TO  `RoleMapping` ;

ALTER TABLE `user` 
RENAME TO  `User` ;


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