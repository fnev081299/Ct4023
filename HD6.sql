-- a)	Write a query that uses GROUP BY to show how many holidays are provided at each difficulty level. 
SELECT tblDetailsOfRatings.Desc_Difficulty_Rating,
COUNT (tblHolidayDetails.DR_Code) AS "Holidays"
FROM tblDetailsOfRatings
LEFT OUTER JOIN tblHolidayDetails
ON tblDetailsOfRatings.DR_Code = tblHolidayDetails.DR_Code
GROUP BY tblDetailsOfRatings.Desc_Difficulty_Rating;

-- b)	Restrict the above query to list only difficulty levels with 3 or more holidays. 
SELECT tblDetailsOfRatings.Desc_Difficulty_Rating,
COUNT(tblHolidayDetails.DR_Code)
FROM tblDetailsOfRatings
LEFT OUTER JOIN tblHolidayDetails
ON tblDetailsOfRatings.DR_Code = tblHolidayDetails.DR_Code
GROUP BY tblDetailsOfRatings.Desc_Difficulty_Rating
HAVING COUNT(tblHolidayDetails.DR_Code) >=3;

-- c)	Write a query to list the holiday(s) with the lowest daily cost.  Note that your solution must not assume that only one holiday will be uniquely the cheapest. During the life of the system, there might be times when two or more holidays are jointly the cheapest
SELECT Holiday_Code, Country_Visited, Durration_Holiday, DR_Code, Desc_Holiday, Hol_Total_Cost, Daily_Cost as "Daily Cost"
FROM (SELECT Holiday_Code, Country_Visited, Durration_Holiday, DR_Code, Desc_Holiday, Hol_Total_Cost, 
	ROUND((Hol_Total_Cost / Durration_Holiday), 2) AS Daily_Cost,
	RANK() OVER (ORDER BY ROUND((Hol_Total_Cost / Durration_Holiday), 2)) AS rnk
	FROM tblHolidayDetails)
WHERE rnk = 1;
-- d)	Write a query to list only the holiday(s) with the highest number of site visits.  Note that throughout the life of the system, there might be times when two or more holidays might visit the same number of sites.  So if two holidays share the highest number of site visits, the query should list both; and if three jointly share the most sites visits, your query should list those three, etc. Creating a VIEW as part of the solution to this question is perfectly acceptable. 
CREATE OR REPLACE VIEW viewHD6d AS
SELECT Holiday_Code, Hol_Count
FROM (SELECT Holiday_Code, COUNT(Site_Code) AS Hol_Count,
RANK() OVER (ORDER BY COUNT(Site_Code) DESC) AS rnk
FROM tblSitesVisited
GROUP BY Holiday_Code)
WHERE rnk = 1;

-- d) select
SELECT tblHolidayDetails.Holiday_Code, tblHolidayDetails.Country_Visited, tblHolidayDetails.Durration_Holiday, tblHolidayDetails.DR_Code, tblHolidayDetails.Desc_Holiday, tblHolidayDetails.Hol_Total_Cost, Hol_Count AS "Visits"
FROM viewHD6d
INNER JOIN tblHolidayDetails
ON viewHD6d.Holiday_Code = tblHolidayDetails.Holiday_Code
