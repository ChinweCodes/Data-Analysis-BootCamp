/* WHERE statement 
=, <>, <, >, AND, OR, LIKE, NULL, NOT NULL, IN
*/

/* Returns an Employee name Jim */
SELECT *
FROM Employee_Demographics
WHERE Firstname = 'Jim';

/* Returns all employees except Jim */
SELECT *
FROM Employee_Demographics
WHERE Firstname <> 'Jim';

/* Returns a list of Employess that are older than 30 */
SELECT *
FROM Employee_Demographics
WHERE Age > 30;

/* Returns a list of Employess that are 30 and older */
SELECT *
FROM Employee_Demographics
WHERE Age >= 30;

/* Returns a list of Employee that are Male and 32 */
SELECT *
FROM Employee_Demographics
WHERE Age <= 32 AND Gender = 'Male';

/* Returns a list of Employee that are Male Or 32 years old */
SELECT *
FROM Employee_Demographics
WHERE Age <= 32 OR Gender = 'Male';

/* A wild card that returns lastnames starting with an S */
SELECT *
FROM Employee_Demographics
WHERE Lastname LIKE 'S%';

/* A wild card that returns lastnames that have an S anywhere */
SELECT *
FROM Employee_Demographics
WHERE Lastname LIKE '%S%';

/* A wild card that returns lastnames starting with an S */
SELECT *
FROM Employee_Demographics
WHERE Lastname LIKE 'S%o%';

/* Returns Null if the firstname is Null */
SELECT *
FROM Employee_Demographics
WHERE Firstname is NULL;

/* Returns Null if the firstname is NOT Null */
SELECT *
FROM Employee_Demographics
WHERE Firstname is NOT NULL;

/* Returns firstname if the firstname is IN the employee demographics */
/* IN is like an equal statement but multiple equal statements*/
SELECT *
FROM Employee_Demographics
WHERE Firstname IN ('Jim', 'Michael') ;



































