-- See if there are any customers who have a different city listed in their billing city versus their customer city.


Select C.FirstName,
       C.LastName,
       C.City AS CustomerCity,
       I.BillingCity
From Customers C
INNER JOIN Invoices I 
ON C.CustomerId = I.CustomerId
WHERE CustomerCity != I.BillingCity

