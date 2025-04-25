/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT COUNT(e.emp_no), e.hire_date
FROM employees as e
GROUP By e.hire_date;

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

SELECT COUNT(e.emp_no), t.title
FROM employees as e
INNER JOIN titles as t USING(emp_no)
WHERE EXTRACT(YEAR FROM e.hire_date) > 1991
GROUP By t.title;

/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT e.emp_no, e.first_name, e.last_name, de.from_date, de.to_date
FROM employees as e
INNER JOIN dept_emp as de USING(emp_no)
INNER JOIN departments as d USING (dept_no)
WHERE d.dept_name ILIKE 'development'
GROUP BY e.emp_no, de.from_date, de.to_date
ORDER BY e.emp_no;
