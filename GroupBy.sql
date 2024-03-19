/* Group by, Order by */
/* Returns Null if the firstname is NOT Null */
SELECT *
FROM Employee_Demographics;

/* Returns Null if the firstname is NOT Null */
SELECT Gender, Age, COUNT(Gender)
FROM Employee_Demographics
Group By Gender, Age;

/* Returns the gender of people that are of age > 31 */
SELECT Gender, COUNT(Gender)
FROM Employee_Demographics
WHERE Age > 31
Group By Gender;

/* Returns the gender of people that are of age > 31 in descending order */
SELECT Gender, COUNT(Gender) AS countGender
FROM Employee_Demographics
WHERE Age > 31
Group By Gender
ORDER BY countGender DESC;


































