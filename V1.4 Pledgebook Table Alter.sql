ALTER TABLE `pledgebook_1` 
ADD COLUMN `PresentValue` INT NULL DEFAULT 0 AFTER `Amount`,
ADD COLUMN `PaymentMode` INT NULL DEFAULT 1 AFTER `LandedCost`;


ALTER TABLE `pledgebook_closed_bills_1` 
ADD COLUMN `payment_mode` INT NULL DEFAULT 1 AFTER `handed_over_to_person`,
ADD COLUMN `remarks` TEXT NULL AFTER `payment_mode`;
