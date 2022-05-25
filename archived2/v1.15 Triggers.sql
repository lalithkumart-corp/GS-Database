DELIMITER |
CREATE TRIGGER analytics_pledgebook
AFTER INSERT ON gsprod.pledgebook_1
FOR EACH ROW
BEGIN
    INSERT INTO analytics_pledgebook
	SET unique_identifier = New.UniqueIdentifier,
        user_id=1,
		bill_no = New.BillNo,
		bill_date = New.CreatedDate,
		action = 'NEW_BILL',
		cust_id = New.CustomerId,
        amount = NEW.Amount;
    INSERT INTO analytics_module_used
    SET module = 'BILL_CREATION';
END;
|
DELIMITER ;

DELIMITER |
CREATE TRIGGER analytics_pledgebook_closed
AFTER INSERT ON pledgebook_closed_bills_1
FOR EACH ROW
BEGIN
    INSERT INTO analytics_pledgebook
	SET unique_identifier = New.uid,
        user_id=1,
		bill_no = New.bill_no,
		bill_date = New.closed_date,
		action = 'REDEEM_BILL',
        amount = NEW.paid_amt;
    INSERT INTO analytics_module_used
    SET module = 'BILL_REDEEM';
END;
|
DELIMITER ;

DELIMITER |
CREATE TRIGGER analytics_customer_insert
AFTER INSERT ON customer_1
FOR EACH ROW
BEGIN
    INSERT INTO analytics_module_used
    SET module = 'CUSTOMER_INSERT',
    user_id=1;
END;
|
DELIMITER ;

DELIMITER |
CREATE TRIGGER analytics_customer_update
AFTER UPDATE ON customer_1
FOR EACH ROW
BEGIN
    INSERT INTO analytics_module_used
    SET module = 'CUSTOMER_UPDATE',
    user_id=1;
END;
|
DELIMITER ;

DELIMITER |
CREATE TRIGGER analytics_new_user_creation
AFTER INSERT ON User
FOR EACH ROW
BEGIN
    INSERT INTO analytics_module_used
    SET module = 'USER_CREATION',
    user_id=1,
    ctx1=NEW.username;
END;
|
DELIMITER ;

DELIMITER |
CREATE TRIGGER analytics_new_user_update
AFTER UPDATE ON User
FOR EACH ROW
BEGIN
    INSERT INTO analytics_module_used
    SET module = 'USER_UPDATE',
    user_id=1,
    ctx1=NEW.username;
END;
|
DELIMITER ;