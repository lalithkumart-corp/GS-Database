CREATE TABLE udhaar_1 (
    id int NOT NULL AUTO_INCREMENT,
    unique_identifier varchar(45) DEFAULT NULL,
    bill_no varchar(45) DEFAULT NULL,
    amount int DEFAULT NULL,
    date datetime NOT NULL,
    account_id int NOT NULL,
    customer_id int NOT NULL,
    notes text,
    status int NULL DEFAULT 1,
    trashed int DEFAULT NULL,
    created_date datetime DEFAULT CURRENT_TIMESTAMP,
    modified_date datetime DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    UNIQUE KEY unique_identifier_UNIQUE (unique_identifier),
    UNIQUE KEY bill_no_UNIQUE (bill_no)
);

CREATE TABLE udhaar_settings (
  udhaar_settings_id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  bill_series VARCHAR(45) NULL,
  next_bill_no INT NULL,
  PRIMARY KEY (udhaar_settings_id, user_id));

INSERT INTO udhaar_settings (user_id, bill_series, next_bill_no) VALUES ('1', 'U', '1');


ALTER TABLE fund_transactions_1 
ADD COLUMN is_internal INT NULL DEFAULT 0 AFTER alert;

ALTER TABLE fund_trns_tmp_1 
ADD COLUMN is_internal INT NULL DEFAULT 0 AFTER alert;


ALTER TABLE `gsprod`.`customer` 
RENAME TO  `gsprod`.`customer_1` ;
