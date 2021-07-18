CREATE TABLE `banks_list` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `banks_list` VALUES (1,'ICICI'),(2,'HDFC'),(3,'Axis'),(4,'IDBI'),(5,'YesBank'),(6,'Kotak Mahindra Bank'),(7,'IndusInd Bank'),(8,'Federal Bank'),(9,'IDFC First Bank'),(10,'State Bank of India (SBI)'),(11,'Punjab National Bank'),(12,'Union Bank of India'),(13,'Canara Bank'),(14,'Bank of Baroda'),(15,'Bank of India'),(16,'Indian Bank'),(17,'Indian Overseas Bank'),(18,'Central Bank of India'),(19,'UPI');


ALTER TABLE `gsprod`.`fund_accounts` 
ADD COLUMN `user_id` INT NULL AFTER `id`,
ADD COLUMN `account_no` VARCHAR(45) NULL AFTER `name`,
ADD COLUMN `branch` VARCHAR(45) NULL AFTER `account_no`,
ADD COLUMN `created_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP AFTER `branch`,
ADD COLUMN `modified_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP AFTER `created_date`,
ADD COLUMN `is_default` INT NULL AFTER `modified_date`;


ALTER TABLE `gsprod`.`fund_transactions` 
ADD COLUMN `cash_out_mode` VARCHAR(45) NULL AFTER `modified_date`,
ADD COLUMN `cash_out_to_bank_id` INT(12) NULL AFTER `cash_out_mode`,
ADD COLUMN `cash_out_to_bank_acc_no` VARCHAR(45) NULL AFTER `cash_out_to_bank_id`,
ADD COLUMN `cash_out_to_bank_ifsc` VARCHAR(45) NULL AFTER `cash_out_to_bank_acc_no`,
ADD COLUMN `cash_out_to_upi` VARCHAR(45) NULL AFTER `cash_out_to_bank_ifsc`,
ADD COLUMN `cash_in_mode` VARCHAR(45) NULL AFTER `cash_out_to_upi`;
