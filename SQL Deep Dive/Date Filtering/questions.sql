/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT *, AGE(birth_date) AS "Age" FROM employees
WHERE EXTRACT(YEAR FROM AGE(birth_date)) > 60;

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

SELECT COUNT(*) As "Amount of Employees" FROM employees
WHERE date_part('month', hire_date) = 2;

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/


SELECT COUNT(*) As "Born in November" FROM employees
WHERE date_part('month', birth_date) = 11;

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

SELECT MAX(AGE(birth_date)) AS "Age" FROM employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

SELECT COUNT(*) AS "Orders Amount" FROM orders
WHERE EXTRACT(MONTH FROM orderdate)=1 AND EXTRACT(YEAR FROM orderdate)=2004;

