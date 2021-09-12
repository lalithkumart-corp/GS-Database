CREATE PROCEDURE `my_proc_1`(IN Date1 varchar(100), IN Date2 varchar(100), IN UserId int(20))
BEGIN


DROP TABLE IF EXISTS gs_temp_table;

CREATE TABLE gs_temp_table (
	id INT NOT NULL,
	transaction_date DATETIME NOT NULL,
	user_id INT NOT NULL,
	account_id INT NOT NULL,
	gs_uid VARCHAR(45) NULL,
	category VARCHAR(200) NOT NULL,
	remarks TEXT NULL,
	deleted INT NULL,
	cash_in DECIMAL NULL,
	cash_out DECIMAL NULL,
	created_date DATETIME NULL,
	modified_date DATETIME NULL,
	cash_out_mode VARCHAR(45) NULL,
	cash_out_to_bank_id INT NULL,
	cash_out_to_bank_acc_no VARCHAR(45) NULL,
	cash_out_to_bank_ifsc VARCHAR(45) NULL,
	cash_out_to_upi VARCHAR(45) NULL,
	cash_in_mode VARCHAR(45) NULL,
	beforeBal DECIMAL NULL,
	afterBal DECIMAL NULL
);


INSERT INTO gs_temp_table (id, transaction_date, user_id, account_id, gs_uid, category, remarks, deleted, cash_in, cash_out, created_date, modified_date, cash_out_mode, cash_out_to_bank_id, cash_out_to_bank_acc_no, cash_out_to_bank_ifsc, cash_out_to_upi, cash_in_mode)
SELECT
	id,
	transaction_date,
	user_id,
	account_id,
	gs_uid,
	category,
	remarks,
	deleted,
	cash_in,
	cash_out,
	created_date,
	modified_date,
	cash_out_mode,
	cash_out_to_bank_id,
	cash_out_to_bank_acc_no,
	cash_out_to_bank_ifsc,
	cash_out_to_upi,
	cash_in_mode
FROM
	fund_transactions
WHERE
	deleted = 0
	AND fund_transactions.user_id = UserId
	AND(transaction_date BETWEEN Date1
		AND Date2)
ORDER BY
	transaction_date ASC;


SET @bal = (
SELECT
	IFNULL(SUM(cash_in - cash_out), 0) AS openingBalByPage
	FROM
		fund_transactions
	WHERE
		deleted = 0
		AND fund_transactions.user_id = UserId
		AND transaction_date < Date1);

UPDATE
	gs_temp_table
SET
	beforeBal = @bal,
	afterBal = (@bal:=@bal + (gs_temp_table.cash_in - gs_temp_table.cash_out));

END

-- CALL my_proc_1('2021-07-11 18:29:59.059', '2021-09-11 18:29:59.059', 1);




CREATE TABLE `gsprod`.`temporary_table_manager` (
  `table_name` VARCHAR(100) NOT NULL,
  `is_locked` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`table_name`));

INSERT INTO `gsprod`.`temporary_table_manager` (`table_name`, `is_locked`) VALUES ('gs_temp_table', '0');
