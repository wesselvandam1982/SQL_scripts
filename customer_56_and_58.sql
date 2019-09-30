-- all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.

Select *
From Invoices
Where (CustomerId = '56' OR CustomerId = '58') AND 
Total Between '1.00' and '5.00'