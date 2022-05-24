ALTER TABLE `fund_transactions_1` 
ADD COLUMN `alert` INT NULL DEFAULT NULL AFTER `cash_in_mode`;


ALTER TABLE `fund_trns_tmp_1` 
ADD COLUMN `alert` INT NULL DEFAULT NULL AFTER `cash_in_mode`;
