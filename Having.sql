/* Having Clause */
/* We cannot use the aggregate function in a WHERE statement 
	The aggregate function needs to go after the group by function 
	because we cannot look at an aggregate function before it is aggregated in the group by statement */
SELECT jobtitle, COUNT(jobtitle)
FROM public.employee_demographics
JOIN public.employee_salary
	ON employee_demographics.EmployeeID = employee_salary.EmployeeID
GROUP BY jobtitle
HAVING COUNT(jobtitle) > 1;

/* Returns the jobs that have an average salary of over 45000 */
SELECT jobtitle, AVG(salary)
FROM public.employee_demographics
JOIN public.employee_salary
	ON employee_demographics.EmployeeID = employee_salary.EmployeeID
GROUP BY jobtitle
HAVING AVG(salary) > 45000
ORDER BY AVG(salary);