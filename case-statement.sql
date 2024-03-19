/* Case Statement */
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