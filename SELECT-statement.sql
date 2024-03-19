/* Inner joins, Full/Left/Right/Outer Joins */
/* A join is a way to combine multiple tables into a single output */

SELECT * FROM public.employee_demographics;
SELECT * FROM public.employee_salary;

/* */
SELECT * FROM employee_demographics
INNER JOIN employee_salary
ON employee_demographics.EmployeeID = employee_salary.EmployeeID;

/* */
SELECT * 
FROM public.employee_demographics
FULL Outer Join employee_salary
ON employee_demographics.EmployeeID = employee_salary.EmployeeID;

/* */
SELECT employee_salary.EmployeeID, firstname, lastname, jobtitle, salary
FROM employee_demographics
FULL Outer Join employee_salary
ON employee_demographics.EmployeeID = employee_salary.EmployeeID;

/* */
SELECT employee_demographics.EmployeeID, firstname, lastname, jobtitle, salary
FROM employee_demographics
FULL Outer Join employee_salary
ON employee_demographics.EmployeeID = employee_salary.EmployeeID;

/* */
SELECT employee_salary.EmployeeID, firstname, lastname, jobtitle, salary
FROM employee_demographics
Inner Join employee_salary
ON employee_demographics.EmployeeID = employee_salary.EmployeeID;

/* */
SELECT employee_demographics.EmployeeID, firstname, lastname, jobtitle, salary
FROM employee_demographics
Right Outer Join employee_salary
ON employee_demographics.EmployeeID = employee_salary.EmployeeID;

/* */
SELECT employee_demographics.EmployeeID, firstname, lastname, jobtitle, salary
FROM employee_demographics
Inner Join employee_salary
	ON employee_demographics.EmployeeID = employee_salary.EmployeeID
WHERE firstname <> 'Michael'
ORDER BY salary DESC;
























