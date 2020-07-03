-- a)	Write a query to find which sites, including their descriptions, are visited on holidays with a difficulty description longer than 6 characters.  Sites satisfying the criteria should only be listed once and sorted by their site code. 
SELECT tblDetailsOfSites.Site_Name, tblDetailsOfRatings.Desc_Difficulty_Rating, tblHolidayDetails.Holiday_Code, tblDetailsOfRatings.DR_Code, tblSitesVisited.Site_Code
FROM tblDetailsOfRatings, tblHolidayDetails, tblDetailsOfSites, tblSitesVisited
WHERE tblHolidayDetails.DR_Code = tblDetailsOfRatings.DR_Code AND tblSitesVisited.Site_Code = tblDetailsOfSites.Site_Code AND tblHolidayDetails.Holiday_Code = tblSitesVisited.Holiday_Code
AND LENGTH(tblDetailsOfRatings.Desc_Difficulty_Rating) >= 6
ORDER BY tblSitesVisited.Site_Code;

-- b)	The company wants to ensure that every available site is included on at least one holiday that is easy or moderate.  Write a query that lists sites that are not yet included on any easy or moderate holiday.  
SELECT tblDetailsOFSites.Site_Code, tblDetailsOFSites.Site_Name, tblDetailsOfRatings.Desc_Difficulty_Rating AS "Difficulty"
FROM tblDetailsOfSites
FULL OUTER JOIN tblSitesVisited
ON tblSitesVisited.Site_Code = tblDetailsOfSites.Site_Code
FULL OUTER JOIN tblHolidayDetails
ON tblSitesVisited.Holiday_Code = tblHolidayDetails.Holiday_Code
LEFT OUTER JOIN tblDetailsOfRatings
ON tblDetailsOfRatings.DR_Code = tblHolidayDetails.DR_Code

MINUS

SELECT tblDetailsOFSites.Site_Code, tblDetailsOFSites.Site_Name, tblDetailsOfRatings.Desc_Difficulty_Rating
FROM tblDetailsOfRatings
INNER JOIN tblHolidayDetails
ON tblDetailsOfRatings.DR_Code = tblHolidayDetails.DR_Code
INNER JOIN tblSitesVisited
ON tblHolidayDetails.Holiday_Code = tblSitesVisited.Holiday_Code
INNER JOIN  tblDetailsOfSites
ON tblSitesVisited.Site_Code = tblDetailsOfSites.Site_Code
WHERE (
    tblDetailsOfRatings.Desc_Difficulty_Rating = 'Easy'
    OR tblDetailsOfRatings.Desc_Difficulty_Rating = 'Moderate'
)
-- use set operator minus