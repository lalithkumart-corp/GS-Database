ALTER TABLE `gsprod`.`pledgebook_1` 
ADD COLUMN `Archived` INT NULL DEFAULT 0 AFTER `Alert`;

ALTER TABLE `gsprod`.`pledgebook_1` 
ADD COLUMN `Trashed` INT NULL DEFAULT 0 AFTER `Archived`;