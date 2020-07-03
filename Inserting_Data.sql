-- inserting data into the tables

-- Details of difficulty ratings
INSERT INTO tblDetailsOfRatings
    (DR_Code, Desc_Difficulty_Rating)
    VALUES
    ('A', 'Easy');
INSERT INTO tblDetailsOfRatings
    (DR_Code, Desc_Difficulty_Rating)
    VALUES
    ('B', 'Moderate');
INSERT INTO tblDetailsOfRatings
    (DR_Code, Desc_Difficulty_Rating)
    VALUES
    ('C', 'Strenuous');
INSERT INTO tblDetailsOfRatings
    (DR_Code, Desc_Difficulty_Rating)
    VALUES
    ('D', 'Tough');
INSERT INTO tblDetailsOfRatings
    (DR_Code, Desc_Difficulty_Rating)
    VALUES
    ('E', 'Very Strenuous');

-- Holiday details
INSERT INTO tblHolidayDetails
    (Holiday_Code, Country_Visited, Durration_Holiday, DR_Code, Desc_Holiday, Hol_Total_Cost)
    VALUES
    ('H4', 'China', 21, 'C', 'Olympic Sites', 2108);
INSERT INTO tblHolidayDetails
    (Holiday_Code, Country_Visited, Durration_Holiday, DR_Code, Desc_Holiday, Hol_Total_Cost)
    VALUES
    ('H7', 'USA', 10, 'B', 'Olypics Site', 749);
INSERT INTO tblHolidayDetails
    (Holiday_Code, Country_Visited, Durration_Holiday, DR_Code, Desc_Holiday, Hol_Total_Cost)
    VALUES
    ('H3', 'USA', 16, 'E', 'Yellowstone', 1021);
INSERT INTO tblHolidayDetails
    (Holiday_Code, Country_Visited, Durration_Holiday, DR_Code, Desc_Holiday, Hol_Total_Cost)
    VALUES
    ('H1', 'India', 10, 'B', 'Monghul', 1095);
INSERT INTO tblHolidayDetails
    (Holiday_Code, Country_Visited, Durration_Holiday, DR_Code, Desc_Holiday, Hol_Total_Cost)
    VALUES
    ('H9', 'Spain', 15, 'B', 'Andalusian Walks', 851);
INSERT INTO tblHolidayDetails
    (Holiday_Code, Country_Visited, Durration_Holiday, DR_Code, Desc_Holiday, Hol_Total_Cost)
    VALUES
    ('H5', 'India', 21, 'C', 'Tiger Safari', 2100);
INSERT INTO tblHolidayDetails
    (Holiday_Code, Country_Visited, Durration_Holiday, DR_Code, Desc_Holiday, Hol_Total_Cost)
    VALUES
    ('H6', 'China', 11, 'B', 'China Highlights', 1201);
INSERT INTO tblHolidayDetails
    (Holiday_Code, Country_Visited, Durration_Holiday, DR_Code, Desc_Holiday, Hol_Total_Cost)
    VALUES
    ('H2', 'USA', 21, 'C', 'Western National Parks', 1400);
INSERT INTO tblHolidayDetails
    (Holiday_Code, Country_Visited, Durration_Holiday, DR_Code, Desc_Holiday, Hol_Total_Cost)
    VALUES
    ('H8', 'Spain', 8, 'A', 'Andalusian Towns', 647);

-- Departure Dates of holiday
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H1', '10-17-2014');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H2', '11-20-2014');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H1', '12-30-2014');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H2', '11-01-2014');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H3', '12-01-2014');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H4', '01-01-2015');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H5', '02-01-2015');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H5', '03-01-2015');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H8', '11-22-2014');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H8', '12-17-2014');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H2', '06-29-2015');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H6', '10-01-2014');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H7', '12-19-2015');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H1', '09-01-2014');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H9', '06-01-2015');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H3', '04-01-2015');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H2', '03-12-2015');
INSERT INTO tblDepartureDates
    (Holiday_Code, Departure_Date)
    VALUES
    ('H1', '05-01-2015');

-- Details of sites avaliable to company
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (101, 'Ysemite National Park');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (102, 'Xian');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (103, 'Seville');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (104, 'Grand Canyon');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (105, 'San Francisco');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (106, 'Taj Mahal');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (107, 'Zion National Park');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (108, 'Yellowstone National Park');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (109, 'Arches National Park');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (110, 'Granada');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (111, 'Los Angeles');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (112, 'Eastern Qing Tomb');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (113, 'Ranthambhore National Park');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (114, 'Juipur');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (115, 'Bandhavgarh National Park');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (116, 'Beiging');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (117, 'Shanghaiguan');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (118, 'Oorty');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (119, 'Malaga');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (120, 'Cordoba');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (121, 'Grazalema');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (122, 'Sierra de Cazorla');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (123, 'Jinshanling');
INSERT INTO  tblDetailsOfSites
    (Site_Code, Site_Name)
    VALUES
    (124, 'Delhi');

-- sites visited on each holiday
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H7', 101);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H2', 104);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H1', 114);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H2', 101);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H6', 116);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H7', 111);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H1', 124);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H7', 109);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H4', 116);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H9', 122);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H9', 121);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H9', 120);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H9', 103);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H8', 103);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H9', 119);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H1', 106);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H5', 115);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H4', 117);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H3', 108);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H5', 113);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H6', 102);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H4', 112);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H4', 123);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H6', 112);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H2', 105);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H2', 111);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H8', 120);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H7', 105);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H7', 107);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H2', 107);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H5', 124);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H2', 109);
INSERT INTO tblSitesVisited
    (Holiday_Code, Site_Code)
    VALUES
    ('H8', 119);
