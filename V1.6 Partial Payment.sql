ALTER TABLE `gsprod`.`fund_transactions` 
DROP INDEX `gs_uid_UNIQUE` ,
ADD UNIQUE INDEX `gs_uid_UNIQUE` (`gs_uid` ASC, `user_id` ASC, `category` ASC) VISIBLE;

ALTER TABLE `gsprod`.`fund_transactions` 
DROP INDEX `gs_uid_UNIQUE` ;

ALTER TABLE `gsprod`.`fund_transactions` 
ADD COLUMN `customer_id` VARCHAR(45) NULL AFTER `user_id`;

ALTER TABLE `gsprod`.`fund_transactions` 
ADD INDEX `category` (`category` ASC) VISIBLE;
