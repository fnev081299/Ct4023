-- site details, holiday codes, holiday descriptions and depart dates -- June 2015 sorted by depart date
CREATE OR REPLACE VIEW viewHol AS
SELECT tblDetailsOfSites.Site_Name, tblHolidayDetails.Holiday_Code, tblHolidayDetails.Desc_Holiday, tblDepartureDates.Departure_Date
FROM tblHolidayDetails
INNER JOIN tblSitesVisited
ON tblHolidayDetails.Holiday_Code = tblSitesVisited.Holiday_Code
INNER JOIN tblDetailsOfSites
ON tblSitesVisited.Site_Code = tblDetailsOfSites.Site_Code
INNER JOIN  tblDepartureDates
ON tblHolidayDetails.Holiday_Code = tblDepartureDates.Holiday_Code;

SELECT * FROM viewHol
WHERE Departure_Date BETWEEN TO_DATE('06/01/2015') AND TO_DATE('06/30/2015')
ORDER BY Departure_Date;

-- holiday IDs, holiday description and countries
CREATE OR REPLACE VIEW  viewCont AS
SELECT Holiday_Code, Desc_Holiday,
DECODE(Country_Visited, 'China', 'Asia'
						'India', 'Asia'
						'Spain', 'Europe'
						'USA', 'America') AS "Content"
FROM tblHolidayDetails;

SELECT * FROM viewCont