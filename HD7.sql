-- a)	Create and demonstrate an SQL script that creates a site details table and populates it with the records listed in this document  (make sure you give this copy a different name to your existing table).  The script should be capable of being re-run many times (should the new table need overwriting and repopulating with the original data) and must create and use a sequence to insert the correct values into the site code field.  You script INSERT statements must include direct calls to the sequence. In this task it is acceptable for you to only include a subset of records, for example the first five listed sites, rather than include all the sites listed in the original table. 
-- create a sequence techonthenet.com/oracle/sequences.php
DROP TABLE tblDoSiteSequence CASCADE CONSTRAINTS;
CREATE TABLE tblDoSiteSequence (
    Site_Code VARCHAR2(3) NOT NULL,
    Site_Name VARCHAR2(30) NOT NULL
);

-- create a table . make a sequence that makes the site code in order
DROP SEQUENCE SiteCodeSeq;
CREATE SEQUENCE SiteCodeSeq
  MINVALUE 101
  MAXVALUE 124
  START WITH 101
  INCREMENT BY 1
  CACHE 20;

-- insert into  + the additional site name next to it

INSERT INTO  tblDoSiteSequence
    (Site_Code, Site_Name)
    VALUES
    (SiteCodeSeq.NEXTVAL, 'Ysemite National Park');
INSERT INTO  tblDoSiteSequence
    (Site_Code, Site_Name)
    VALUES
    (SiteCodeSeq.NEXTVAL, 'Xian');
INSERT INTO  tblDoSiteSequence
    (Site_Code, Site_Name)
    VALUES
    (SiteCodeSeq.NEXTVAL, 'Seville');
INSERT INTO  tblDoSiteSequence
    (Site_Code, Site_Name)
    VALUES
    (SiteCodeSeq.NEXTVAL, 'Grand Canyon');
INSERT INTO  tblDoSiteSequence
    (Site_Code, Site_Name)
    VALUES
    (SiteCodeSeq.NEXTVAL, 'San Francisco');

 -- b)	Create a PL/SQL function to subtract a percentage discount from any returned numeric value.  The user should be able to specify the discount amount as part of the function call, for example my_function(table_column, 15) for deducting a 15% discount.  Test your function using SQL queries. Note that this question tests your PL/SQL skills; merely writing an SQL statement to try to deduct the discount will receive no marks. 
CREATE OR REPLACE Function Discounting
  (Cost IN number, p_discount IN number)
  RETURN number
IS 

BEGIN
  RETURN(Cost - (Cost * p_discount / 100));
END Discounting;
/

-- just a discount
SELECT Discounting(75, 15)
FROM dual

-- whole table
SELECT Hol_Total_Cost,
Discounting(Hol_Total_Cost, 15) as "Discounted prices" 
FROM tblHolidayDetails;
-- SELECT Hol_Total_Cost into hol_Cost FROM tblHolidayDetails;
-- get - oracle pl/sql book functions and triggers