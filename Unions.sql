/* Unions */
/* Unions enables you to select all the data from both tables and put it into one output where all the data is in each column seperated out
and you don't have to choose what table. 
Unions and joins are somewhat similar and closely related. */
SELECT *
	FROM public.employee_demographics
	FULL OUTER JOIN public.warehouseemployeedemographics
		ON employee_demographics.EmployeeID = warehouseemployeedemographics.EmployeeID;

/*Returns the output without the duplicates */
SELECT *
FROM public.employee_demographics
UNION
SELECT *
FROM public.warehouseemployeedemographics;

/* Returns all information regardless of if it's a duplicate or not. */
SELECT *
FROM public.employee_demographics
UNION ALL 
SELECT *
FROM public.warehouseemployeedemographics
ORDER BY EmployeeID;

/* */
SELECT EmployeeID, firstname, Age
FROM public.employee_demographics
UNION
SELECT EmployeeID, Jobtitle, Salary
FROM public.employee_salary
ORDER BY EmployeeID;






















