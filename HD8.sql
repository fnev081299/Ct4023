-- a)	Implement a PL/SQL trigger and an audit table to automatically log all changes made to data in the table hosing the difficulty codes and their descriptions.  Your trigger should automatically update your audit table whenever changes are made to data in the original table.  Your audit table will need to record the user and date, together with the old and new values for the data.  It should also record the type of transaction (i.e. Insert, Update, or Delete). Fully test your trigger and explain your test strategy. 
DROP TABLE tblTest CASCADE CONSTRAINTS;
CREATE TABLE tblTest (
    DR_Code VARCHAR2(1) NOT NULL,
    Desc_Difficulty_Rating VARCHAR2(15) NOT NULL
);

INSERT INTO tblTest
    (DR_Code, Desc_Difficulty_Rating)
    VALUES
    ('A', 'Easy');
INSERT INTO tblTest
    (DR_Code, Desc_Difficulty_Rating)
    VALUES
    ('B', 'Moderate');

DROP TABLE tbl_A CASCADE CONSTRAINTS;
CREATE TABLE tbl_A (
    User_name VARCHAR2(20) NOT NULL,
    Edit_Date DATE NOT NULL,
    Old_DR_Code VARCHAR2(1) NULL,
    Old_Desc_Difficulty_Rating VARCHAR2(15) NULL,
    New_DR_Code VARCHAR2(1) NULL,
    New_Desc_Difficulty_Rating VARCHAR2(15) NULL,
    Type_of_Trans VARCHAR2(100) NOT NULL
);

CREATE OR REPLACE TRIGGER Trg_HD8
	AFTER DELETE OR INSERT OR UPDATE
		ON tblTest
		FOR EACH ROW

	DECLARE
		User_name VARCHAR2(20);
	BEGIN
        SELECT sys_context('USERENV', 'CURRENT_USER') INTO User_name FROM dual;

        IF DELETING THEN

        INSERT INTO tbl_A (User_name, Edit_Date, Old_DR_Code, Old_Desc_Difficulty_Rating, Type_of_Trans)
	    	VALUES (User_name, sysdate, :old.DR_Code, :old.Desc_Difficulty_Rating, 'DELETED');
	    END IF;

	    IF INSERTING THEN
     
           INSERT INTO tbl_A (User_name, Edit_Date, New_DR_Code, New_Desc_Difficulty_Rating, Type_of_Trans)
            VALUES (User_name, sysdate, :new.DR_Code, :new.Desc_Difficulty_Rating, 'INSERTED');
        END IF;

        IF UPDATING THEN
     
           INSERT INTO tbl_A (User_name, Edit_Date, Old_DR_Code, Old_Desc_Difficulty_Rating, New_DR_Code, New_Desc_Difficulty_Rating, Type_of_Trans)
            VALUES (User_name, sysdate, :old.DR_Code, :old.Desc_Difficulty_Rating, :new.DR_Code, :new.Desc_Difficulty_Rating, 'UPDATING');
        END IF;

	END;


DELETE FROM tblTest
WHERE DR_Code = 'A';

INSERT INTO tblTest
    (DR_Code, Desc_Difficulty_Rating)
    VALUES
    ('N', 'INSERT');

UPDATE tblTest
SET DR_Code = 'U'
WHERE DR_Code = 'B';

SELECT * FROM tbl_A;

-- b)	Implement a BERFORE INSERT trigger to enforce a business rule limiting the maximum number of departures any holiday can have to no more than four each month.  Fully test your trigger and explain your test strategy. 
CREATE OR REPLACE TRIGGER Trg_HD8b
	BEFORE INSERT ON tblDepartureDates
	FOR EACH ROW
	
	DECLARE
	Max_Num EXCEPTION;
	n NUMBER;

	BEGIN
	SELECT COUNT(*) INTO n
		FROM tblDepartureDates
		WHERE EXTRACT(MONTH FROM Departure_Date) = EXTRACT(MONTH FROM :NEW.Departure_Date)
		AND EXTRACT(YEAR FROM Departure_Date) = EXTRACT(YEAR FROM :NEW.Departure_Date)
		AND Holiday_Code = :NEW.Holiday_Code;
		IF (n > 4) THEN
			RAISE Max_Num;
		END IF;
	EXCEPTION 
		WHEN Max_Num THEN 
		RAISE_APPLICATION_ERROR(-20000, 'Max Number is 4 Departures per holiday ' || :New.Holiday_Code);
	END;

INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H1', '01-17-2014');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H1', '01-18-2014');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H1', '01-19-2014');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H1', '01-20-2014');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H1', '01-21-2014');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H1', '01-22-2014');






