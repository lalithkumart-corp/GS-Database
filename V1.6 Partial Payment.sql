ALTER TABLE `gsprod-dev`.`fund_transactions` 
DROP INDEX `gs_uid_UNIQUE` ,
ADD UNIQUE INDEX `gs_uid_UNIQUE` (`gs_uid` ASC, `category` ASC) VISIBLE;
