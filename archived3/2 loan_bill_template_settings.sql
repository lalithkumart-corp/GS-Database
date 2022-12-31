--- Date 31st December 2022

ALTER TABLE `gsprod`.`loan_bill_tempate_settings` 
ADD COLUMN `other` TEXT NULL DEFAULT NULL AFTER `body_template`;
