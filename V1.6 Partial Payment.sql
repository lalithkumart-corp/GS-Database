ALTER TABLE `gsprod`.`fund_transactions` 
DROP INDEX `gs_uid_UNIQUE` ,
ADD UNIQUE INDEX `gs_uid_UNIQUE` (`gs_uid` ASC, `user_id` ASC, `category` ASC) VISIBLE;