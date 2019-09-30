-- a UNION to create a list of all the employee's and customer's first names 
--and last names ordered by the last name in descending order.

SELECT FirstName, 
       LastName
FROM Employees
UNION
SELECT FirstName,
       LastName
FROM Customers
order by LastName DESC