-- START: Script added on May 1st 2024
INSERT INTO `gsprod`.`customer_metadata_list` (`UserId`, `Key`, `DisplayText`) VALUES ('0', '9', 'Occupation');
INSERT INTO `gsprod`.`customer_metadata_list` (`UserId`, `Key`, `DisplayText`) VALUES ('0', '10', 'Friend Of');
INSERT INTO `gsprod`.`customer_metadata_list` (`UserId`, `Key`, `DisplayText`) VALUES ('0', '11', 'Family Member of');
INSERT INTO `gsprod`.`customer_metadata_list` (`UserId`, `Key`, `DisplayText`) VALUES ('0', '12', 'Family Bond');
INSERT INTO `gsprod`.`customer_metadata_list` (`UserId`, `Key`, `DisplayText`) VALUES ('0', '13', 'More');

ALTER TABLE `gsprod`.`pledgebook_1` 
ADD COLUMN `PledgedFor` INT NULL AFTER `Remarks`;

ALTER TABLE `gsprod`.`pledgebook_1` 
ADD COLUMN `SecJewelRedemeer` INT NULL AFTER `PledgedFor`;

CREATE TABLE `gsprod`.`customer_attachments_1` (
  `CustomerAttachmentId` INT NOT NULL AUTO_INCREMENT,
  `UserId` INT NOT NULL,
  `CustomerId` INT NOT NULL,
  `ImageId` INT NOT NULL,
  `HintText` INT NULL,
  `CreatedDate` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedDate` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CustomerAttachmentId`));



CREATE TABLE `customer_attachment_images` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Hashkey` varchar(255) DEFAULT NULL,
  `Image` blob,
  `Format` varchar(500) DEFAULT NULL,
  `Path` varchar(500) DEFAULT NULL,
  `StorageMode` varchar(100) NOT NULL,
  `Optional` text,
  `Caption` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5585 DEFAULT CHARSET=latin1;


ALTER TABLE `gsprod`.`user_preferences` 
ADD COLUMN `bill_create_alert_offline_date` VARCHAR(45) NULL DEFAULT 'false' AFTER `loan_bill_print_model`;

ALTER TABLE `gsprod`.`customer_1` 
ADD COLUMN `IsBlacklisted` INT NULL DEFAULT 0 AFTER `CustStatus`;

-- END: Script added on May 1st 2024
-- Above script updated in user-1(MJ) machine