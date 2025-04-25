
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/

SELECT e.emp_no, e.first_name, e.last_name, count(t.title) as "Amount of titles"
FROM employees as e
JOIN titles as t USING(emp_no)
WHERE EXTRACT(YEAR FROM e.hire_date) > 1991
GROUP BY e.emp_no
HAVING COUNT(t.title) > 2;

/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/


SELECT e.emp_no, d.dept_name, e.first_name, e.last_name, count(s.salary) as "Salary changes"
FROM employees as e
JOIN salaries as s USING(emp_no)
JOIN dept_emp AS dep USING(emp_no)
JOIN departments as d USING(dept_no)
WHERE d.dept_name ILIKE 'development'
GROUP BY e.emp_no, d.dept_name
HAVING COUNT(s.salary) > 15
ORDER BY COUNT(s.salary) DESC;


/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/
SELECT e.emp_no, e.first_name, e.last_name, COUNT(de.emp_no) AS "Work for # dep" FROM employees AS e
JOIN dept_emp as de USING(emp_no)
GROUP BY e.emp_no
HAVING COUNT(de.emp_no) > 1
ORDER BY COUNT(de.emp_no) DESC
