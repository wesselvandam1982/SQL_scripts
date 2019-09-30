-- Number of orders placed by each customer (hint: this is found in the invoices table) 
-- and sort the result by the number of orders in descending order.

Select *, COUNT(CustomerId)
From Invoices
Group by CustomerId
Order by COUNT(CustomerId) DESC;