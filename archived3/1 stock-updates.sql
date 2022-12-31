-- Date: 6th Aug 2022


ALTER TABLE `gsprod-local`.`stock_1` 
ADD COLUMN `huid` VARCHAR(200) NULL DEFAULT NULL AFTER `pr_number`;
