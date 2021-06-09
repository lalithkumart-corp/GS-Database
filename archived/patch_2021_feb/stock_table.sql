ALTER TABLE `gsprod`.`stock_1` 
ADD COLUMN `avl_g_wt` FLOAT NULL AFTER `avl_qty`,
ADD COLUMN `avl_n_wt` FLOAT NULL AFTER `avl_g_wt`,
ADD COLUMN `avl_p_wt` FLOAT NULL AFTER `avl_n_wt`,
ADD COLUMN `sold_g_wt` FLOAT NULL AFTER `sold_qty`,
ADD COLUMN `sold_n_wt` FLOAT NULL AFTER `sold_g_wt`,
ADD COLUMN `sold_p_wt` FLOAT NULL AFTER `sold_n_wt`,
CHANGE COLUMN `avl_qty` `avl_qty` INT NULL DEFAULT NULL AFTER `personName`;


-- ALTER TABLE `gsprod`.`stock_1` 
-- CHANGE COLUMN `sold_g_wt` `sold_g_wt` FLOAT NULL DEFAULT NULL ,
-- CHANGE COLUMN `sold_n_wt` `sold_n_wt` FLOAT NULL DEFAULT NULL ,
-- CHANGE COLUMN `sold_p_wt` `sold_p_wt` FLOAT NULL DEFAULT NULL ,
-- CHANGE COLUMN `avl_g_wt` `avl_g_wt` FLOAT NULL DEFAULT NULL ,
-- CHANGE COLUMN `avl_n_wt` `avl_n_wt` FLOAT NULL DEFAULT NULL ,
-- CHANGE COLUMN `avl_p_wt` `avl_p_wt` FLOAT NULL DEFAULT NULL ;

-- ALTER TABLE `gsprod`.`stock_1` 
-- CHANGE COLUMN `avl_qty` `avl_qty` INT NULL DEFAULT 0 AFTER `invoice_ref`,
-- CHANGE COLUMN `sold_qty` `sold_qty` INT NULL DEFAULT 0 ,
-- CHANGE COLUMN `sold_g_wt` `sold_g_wt` FLOAT NULL DEFAULT 0 ,
-- CHANGE COLUMN `sold_n_wt` `sold_n_wt` FLOAT NULL DEFAULT 0 ,
-- CHANGE COLUMN `sold_p_wt` `sold_p_wt` FLOAT NULL DEFAULT 0 ,
-- CHANGE COLUMN `avl_g_wt` `avl_g_wt` FLOAT NULL DEFAULT 0 ,
-- CHANGE COLUMN `avl_n_wt` `avl_n_wt` FLOAT NULL DEFAULT 0 ,
-- CHANGE COLUMN `avl_p_wt` `avl_p_wt` FLOAT NULL DEFAULT 0 ;

ALTER TABLE `gsprod`.`stock_1` 
CHANGE COLUMN `gross_wt` `gross_wt` DECIMAL(6,3) NULL DEFAULT NULL ,
CHANGE COLUMN `net_wt` `net_wt` DECIMAL(6,3) NULL DEFAULT NULL ,
CHANGE COLUMN `pure_wt` `pure_wt` DECIMAL(6,3) NULL DEFAULT NULL ,
CHANGE COLUMN `sold_g_wt` `sold_g_wt` DECIMAL(6,3) NULL DEFAULT NULL ,
CHANGE COLUMN `sold_n_wt` `sold_n_wt` DECIMAL(6,3) NULL DEFAULT NULL ,
CHANGE COLUMN `sold_p_wt` `sold_p_wt` DECIMAL(6,3) NULL DEFAULT NULL ,
CHANGE COLUMN `avl_g_wt` `avl_g_wt` DECIMAL(6,3) NULL DEFAULT NULL ,
CHANGE COLUMN `avl_n_wt` `avl_n_wt` DECIMAL(6,3) NULL DEFAULT NULL ,
CHANGE COLUMN `avl_p_wt` `avl_p_wt` DECIMAL(6,3) NULL DEFAULT NULL ;


ALTER TABLE `gsprod`.`stock_1` 
ADD COLUMN `uid` VARCHAR(45) NOT NULL DEFAULT NULL AFTER `id`;
