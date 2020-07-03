-- Produce a query to list the code, description and duration of all holidays with a duration greater than ten days that are £2000 or cheaper. 
SELECT Holiday_Code, Durration_Holiday, Desc_Holiday
FROM tblHolidayDetails
WHERE
Durration_Holiday > 10 and Hol_Total_Cost <= 2000;

-- Produce a query that presents a count of the holidays to the USA. The output must list only the count, and not the actual records. 
SELECT Country_Visited,
COUNT(Country_Visited)
FROM tblHolidayDetails
WHERE 
Country_Visited = 'USA'
GROUP BY Country_Visited;

-- Produce a GROUP BY query showing a count of the holidays to each country. 
SELECT Country_Visited,
COUNT(Country_Visited)
FROM tblHolidayDetails
GROUP BY Country_Visited;

-- Produce a query to list the holiday code, holiday description, holiday duration and site description for all holidays which visit site code 101. Your answer must not assume that site code 101 will always have the same site description. 
SELECT tblHolidayDetails.Desc_Holiday, tblHolidayDetails.Holiday_Code, tblHolidayDetails.Durration_Holiday, tblDetailsOfSites.Site_Name
FROM tblHolidayDetails
INNER JOIN tblSitesVisited
ON tblHolidayDetails.Holiday_Code = tblSitesVisited.Holiday_Code
INNER JOIN tblDetailsOfSites
ON tblSitesVisited.Site_Code = tblDetailsOfSites.Site_Code
WHERE tblDetailsOfSites.Site_Code = 101

-- Create an OUTER JOIN query to list every difficulty description and, where applicable, the holidays for that difficulty description. The query should sort the output by difficulty description, with rows having the same difficulty description being further sorted by holiday code. 
SELECT tblDetailsOfRatings.Desc_Difficulty_Rating, tblHolidayDetails.Holiday_Code
FROM tblHolidayDetails
FULL OUTER JOIN tblDetailsOfRatings
ON tblHolidayDetails.DR_Code = tblDetailsOfRatings.DR_Code
ORDER BY tblDetailsOfRatings.Desc_Difficulty_Rating, tblHolidayDetails.Holiday_Code;