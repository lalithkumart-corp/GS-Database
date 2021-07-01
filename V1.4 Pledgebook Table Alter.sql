ALTER TABLE `gsprod`.`pledgebook_1` 
ADD COLUMN `PresentValue` INT NULL DEFAULT 0 AFTER `Amount`,
ADD COLUMN `PaymentMode` INT NULL DEFAULT 1 AFTER `LandedCost`;
