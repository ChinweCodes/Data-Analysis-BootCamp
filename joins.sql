/* Case Statement: Allows you specify conditions and also allows you specify the return after that condition is met. */

/* Returns old if the employee is above 30 and young if they are not. */
SELECT firstname, lastname, Age,
CASE 
	WHEN Age > 30 THEN 'old'
	ELSE 'Young'
END
FROM public.employee_demographics
WHERE Age is NOT NULL;

/* Returns old if the employee is above 30, young if they are between 27 and 30 and young if they are below 27. */
SELECT firstname, lastname, Age,
CASE 
	WHEN Age > 30 THEN 'old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM public.employee_demographics
WHERE Age is NOT NULL;

/*Returns the salary of the employees based on the increment specified */
SELECT firstname, lastname, jobtitle, salary,
CASE 
	WHEN jobtitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN jobtitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN jobtitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE Salary + (Salary * .03)
END AS SalaryIncrease
FROM public.employee_demographics
JOIN public.employee_salary
	ON employee_demographics.EmployeeID = employee_salary.EmployeeID































