/* Displays all the data in the table */
SELECT * 
FROM world_life_expectancy;

/* Displays datasets that are duplicates */
SELECT Country, Year, CONCAT(Country, Year), COUNT(CONCAT(Country, Year))
FROM world_life_expectancy
GROUP BY Country, Year, CONCAT(Country, Year)
HAVING COUNT(CONCAT(Country, Year)) > 1;

/* This is a subQuery in the FROM statementworld_life_expectancy_backup */
SELECT *
FROM (
	SELECT Row_ID, 
    CONCAT(Country, Year),
	ROW_NUMBER() OVER( PARTITION BY CONCAT(Country, Year)) AS Row_Num
	FROM world_life_expectancy
    ) AS Row_table
WHERE Row_Num > 1;

/* Deletes the Duplicate IDs*/
DELETE FROM world_life_expectancy
WHERE 
	Row_ID IN 
    (
		SELECT Row_ID
		FROM 
        (
			SELECT Row_ID, 
			CONCAT(Country, Year),
			ROW_NUMBER() OVER( PARTITION BY CONCAT(Country, Year) 
			ORDER BY CONCAT(Country, Year)) AS Row_Num
			FROM world_life_expectancy
		) AS Row_table
	WHERE Row_Num > 1
	);
    
/* Displays dataset that has a null status  */
SELECT * 
FROM world_life_expectancy
WHERE Status = '';

/* Displays the statuses */
SELECT DISTINCT(Status)
FROM world_life_expectancy
WHERE Status <> '';

/* Returns the list of developing countries */
SELECT DISTINCT(Country)
FROM world_life_expectancy
WHERE Status = 'Developing';


/* Populates the developing countries with null statuses with their right status  */
UPDATE world_life_expectancy t1
JOIN world_life_expectancy t2
	ON t1.Country = t2.Country
SET t1.Status = 'Developing'
WHERE t1.Status = ''
AND t2.Status <> ''
AND t2.Status = 'Developing';

/* Populates the developed countries with null statuses with their right status  */
UPDATE world_life_expectancy t1
JOIN world_life_expectancy t2
	ON t1.Country = t2.Country
SET t1.Status = 'Developed'
WHERE t1.Status = ''
AND t2.Status <> ''
AND t2.Status = 'Developed';
 
/* Checks if there are any NULL statuses and returns the Null table if there are any */
SELECT * 
FROM world_life_expectancy
WHERE Status is NULL;

/* Populates all the null Life expectancy */
SELECT t1.Country, t1.Year, t1.`Life expectancy`,
t2.Country, t2.Year, t2.`Life expectancy`,
t3.Country, t3.Year, t3.`Life expectancy`,
ROUND((t2.`Life expectancy` + t3.`Life expectancy`)/2, 1)
FROM world_life_expectancy t1
JOIN world_life_expectancy t2
	ON t1.Country = t2.Country
    AND t1.Year = t2.Year - 1
JOIN world_life_expectancy t3
	ON t1.Country = t3.Country
    AND t1.Year = t3.Year + 1
WHERE t1.`Life expectancy` = '';

UPDATE world_life_expectancy t1
JOIN world_life_expectancy t2
	ON t1.Country = t2.Country
    AND t1.Year = t2.Year - 1
JOIN world_life_expectancy t3
	ON t1.Country = t3.Country
    AND t1.Year = t3.Year + 1
SET t1.`Life expectancy` = ROUND((t2.`Life expectancy` + t3.`Life expectancy`)/2, 1)
WHERE t1.`Life expectancy` = '';













    
    
    
    
    
    
    