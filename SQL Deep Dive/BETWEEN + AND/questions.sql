-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)

/*
* Write your query here
*/
SELECT * FROM customers
WHERE income < 50000 AND age BETWEEN 30 AND 50;

-- What is the average income between the ages of 20 and 50? (Including 20 and 50)
/*
* Write your query here
*/

SELECT AVG(income) AS "Average income 20-50 y.o" FROM customers
WHERE age BETWEEN 20 AND 50;
