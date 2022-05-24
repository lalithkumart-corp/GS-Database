ALTER TABLE `fund_transactions` 
DROP INDEX `gs_uid_UNIQUE` ,
ADD UNIQUE INDEX `gs_uid_UNIQUE` (`gs_uid` ASC, `user_id` ASC, `category` ASC) VISIBLE;

ALTER TABLE `fund_transactions` 
DROP INDEX `gs_uid_UNIQUE` ;

ALTER TABLE `fund_transactions` 
ADD COLUMN `customer_id` INT NULL AFTER `user_id`;

ALTER TABLE `fund_transactions` 
ADD INDEX `category` (`category` ASC) VISIBLE;
