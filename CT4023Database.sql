/* Details of the difficulty rating */
DROP TABLE tblDetailsOfRatings CASCADE CONSTRAINTS;
CREATE TABLE tblDetailsOfRatings (
    DR_Code VARCHAR2(1) NOT NULL,
    Desc_Difficulty_Rating VARCHAR2(15) NOT NULL
);

/*Adding a primary key*/
ALTER TABLE tblDetailsOfRatings
    ADD CONSTRAINT pk_tblDetailsOfRatings PRIMARY KEY (DR_Code);

/*Deatils of holiday*/
DROP TABLE tblHolidayDetails CASCADE CONSTRAINTS;
CREATE TABLE tblHolidayDetails (
    Holiday_Code VARCHAR2(2) NOT NULL,
    Country_Visited VARCHAR2(15) NOT NULL,
    Durration_Holiday NUMBER(2) NOT NULL,
    DR_Code VARCHAR2(1) NOT NULL,
    Desc_Holiday VARCHAR2(25) NOT NULL,
    Hol_Total_Cost NUMBER(6, 2) NOT NULL
);

/*Adding a primary key*/
ALTER TABLE tblHolidayDetails
    ADD CONSTRAINT pk_tblHolidayDetails PRIMARY KEY (Holiday_Code);

/*Departure dates for that holiday*/
DROP TABLE tblDepartureDates CASCADE CONSTRAINTS;
CREATE TABLE tblDepartureDates (
    Holiday_Code VARCHAR2(2) NOT NULL,
    Departure_Date DATE NOT NULL
);

/*Adding a primary key*/
ALTER TABLE tblDepartureDates
    ADD CONSTRAINT pk_tblDepartureDates PRIMARY KEY (Holiday_Code, Departure_Date);

/*Sites visited on the holiday*/
DROP TABLE tblSitesVisited CASCADE CONSTRAINTS;
CREATE TABLE tblSitesVisited (
    Holiday_Code VARCHAR2(2) NOT NULL,
    Site_Code VARCHAR2(3) NOT NULL
);

/*Adding a primary key*/
ALTER TABLE tblSitesVisited
    ADD CONSTRAINT pk_tblSitesVisited PRIMARY KEY (Site_Code, Holiday_Code);

/*Details of the sites*/
DROP TABLE tblDetailsOfSites CASCADE CONSTRAINTS;
CREATE TABLE tblDetailsOFSites (
    Site_Code VARCHAR2(3) NOT NULL,
    Site_Name VARCHAR2(30) NOT NULL
);

/*Adding a primary key*/
ALTER TABLE tblDetailsOfSites
    ADD CONSTRAINT pk_tblDetailsOfSites PRIMARY KEY (Site_Code);

-- Adding the foreign keys

ALTER TABLE tblHolidayDetails
    ADD CONSTRAINT fk_tblDtlOfRate_tblHdDet
    FOREIGN KEY(DR_Code)
    REFERENCES tblDetailsOfRatings(DR_Code);

ALTER TABLE tblDepartureDates
    ADD CONSTRAINT fk_tblHdDet_tbl_tblDepDates
    FOREIGN KEY(Holiday_Code)
    REFERENCES tblHolidayDetails(Holiday_Code);

ALTER TABLE tblSitesVisited
    ADD CONSTRAINT fk_tblHdDtl_tbl_tblSVisi
    FOREIGN KEY(Holiday_Code)
    REFERENCES tblHolidayDetails(Holiday_Code);

ALTER TABLE tblSitesVisited
    ADD CONSTRAINT fk_tblSVisi_tbl_tblDetOfS
    FOREIGN KEY(Site_Code)
    REFERENCES tblDetailsOfSites(Site_Code);