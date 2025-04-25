
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/

SELECT o.orderid, c.firstname, c.lastname, c.state FROM orders as o
INNER JOIN customers AS c ON c.customerid = o.customerid
WHERE c.state IN ('OH', 'NY', 'OR')
ORDER BY o.orderid;

/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/

SELECT p.prod_id, p.title, p.price, i.quan_in_stock FROM products AS p
INNER JOIN inventory AS i ON i.prod_id = p.prod_id  

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

SELECT e.first_name, e.last_name, d.dept_name FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON de.dept_no=d.dept_no
ORDER by d.dept_name;


