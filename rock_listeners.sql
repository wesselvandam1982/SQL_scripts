/*
Use your query to return the email, first name, last name, and Genre of all Rock Music listeners.
Return your list ordered alphabetically by email address starting with A.
*/

SELECT DISTINCT C.Email, C.FirstName, C.LastName, G.Name
FROM customers C
JOIN invoices I
ON C.CustomerId = I.CustomerId
JOIN invoice_items IL
ON I.InvoiceId = IL.InvoiceId
JOIN tracks T
ON IL.TrackId = T.TrackId
JOIN genres G
ON T.GenreId = G.GenreId
WHERE G.Name = "Rock"
ORDER BY C.Email;