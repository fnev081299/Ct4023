-- a)	Write a query to output the average holiday cost rounded to the nearest penny. 
SELECT ROUND(AVG(Hol_Total_Cost),2) as Avg_Cost
FROM tblHolidayDetails;

-- b)	holiday code, duration, start dates and finish dates for each holiday. All listed dates should be formatted DD-MON-YYYY. 
SELECT tblHolidayDetails.Holiday_Code, TO_CHAR(Departure_Date, 'DD-MON-YYYY'), tblHolidayDetails.Durration_Holiday, TO_CHAR(Departure_Date + Durration_Holiday, 'DD-MON-YYYY')
FROM tblHolidayDetails
INNER JOIN  tblDepartureDates
ON tblHolidayDetails.Holiday_Code = tblDepartureDates.Holiday_Code;

-- c)	List holiday details and site details for holidays with departures in the calendar month that precedes the current month. and the departure date
SELECT tblHolidayDetails.Holiday_Code, Country_Visited, Durration_Holiday, DR_Code, Desc_Holiday, Hol_Total_Cost, Departure_Date
FROM tblHolidayDetails
INNER JOIN tblSitesVisited
ON tblSitesVisited.Holiday_Code = tblHolidayDetails.Holiday_Code
INNER JOIN tblDepartureDates
ON tblHolidayDetails.Holiday_Code = tblDepartureDates.Holiday_Code
INNER JOIN tblDetailsOFSites
ON tblSitesVisited.Site_Code = tblDetailsOFSites.Site_Code
WHERE Departure_Date
BETWEEN (Last_Day(ADD_MONTHS(sysdate,-2))+1) AND (Last_Day(ADD_MONTHS(sysdate,-1)));

-- d
SELECT Last_Day(ADD_MONTHS(sysdate,-2))+1 as First_Day, Last_Day(ADD_MONTHS(sysdate,-1)) as Last_Day FROM dual;

-- added dates for 2019 into departure dates
