--01 Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT FirstName || " " || LastName AS "Customer", CustomerId, Country
FROM Customer
WHERE Country <> "USA"

--02 Provide a query only showing the Customers from Brazil.
SELECT FirstName || " " || LastName AS "Customer", CustomerId, Country
FROM Customer
WHERE Country = "Brazil"

--03 Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
SELECT c.FirstName || " " || c.LastName AS "Customer", i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Customer c, Invoice i
WHERE i.BillingCountry = "Brazil"

--04 Provide a query showing only the Employees who are Sales Agents.
SELECT FirstName || " " || LastName AS "Employee", Title
FROM Employee
WHERE Title = "Sales Support Agent"

--05 Provide a query showing a unique list of billing countries from the Invoice table.
SELECT BillingCountry
FROM Invoice
GROUP BY BillingCountry

--06 Provide a query showing the invoices of customers who are from Brazil.
SELECT *
FROM Invoice
WHERE BillingCountry = "Brazil"

--07 Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
SELECT e.FirstName || " " || e.LastName AS "Sales Person", i.*
FROM Employee e, Invoice i

--08 Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
SELECT c.FirstName || " " || c.LastName AS "Customer", i.Total, i.BillingCountry, e.FirstName || " " || e.LastName AS "Sales Agent"
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId

--09 How many Invoices were there in 2009 and 2011? What are the respective total sales for each of those years?
SELECT COUNT(InvoiceId) AS "# of 2009 Invoices", SUM(Total) AS "2009 InvoicesTotal"
FROM Invoice
WHERE InvoiceDate LIKE "2009%"

SELECT COUNT(InvoiceId) AS "# of 2011 Invoices", SUM(Total) AS "2011 InvoicesTotal"
FROM Invoice
WHERE InvoiceDate LIKE "2011%"

--10 Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
SELECT COUNT(InvoiceLineId) AS "# of Lines on Invoice 37"
FROM InvoiceLine
WHERE InvoiceID = 37

--11 Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY
SELECT InvoiceId, COUNT(InvoiceLineId) AS "# Line Items"
FROM InvoiceLine
GROUP BY InvoiceId

--12 Provide a query that includes the track name with each invoice line item.
SELECT i.InvoiceLineId, t.Name AS "Track Name"
FROM InvoiceLine i, Track t

--13 Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT i.InvoiceLineId, t.Name AS "Track Name", a.Name As "Artist Name"
FROM InvoiceLine i
JOIN Track t ON i.TrackId = t.TrackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist a ON al.ArtistId = a.ArtistId

--14 Provide a query that shows the # of invoices per country. HINT: GROUP BY
SELECT COUNT(i.InvoiceId) AS "# of Invoices", i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry

--15 Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resultant table.
SELECT p.Name, COUNT(t.TrackId) AS "# of Tracks"
FROM Track t
JOIN PlaylistTrack pl ON t.TrackId =  pl.TrackId
JOIN Playlist p ON pl.PlaylistId = p.PlaylistId
GROUP BY p.Name

--16 Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include the Album name, Media type and Genre.
SELECT t.Name AS "Track Name", a.Title AS "Album Title", m.Name AS "Media Type", g.Name AS "Genre", t.Composer, t.Milliseconds, t.Bytes, t.UnitPrice
FROM Track t
JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId
JOIN Album a ON t.AlbumId = a.AlbumId
JOIN Genre g ON t.GenreId = g.GenreId

--17 Provide a query that shows all Invoices but includes the # of invoice line items.
SELECT i.*, COUNT(il.InvoiceLineId) AS "Invoice Lines On Invoice"
FROM Invoice i
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceID

--18 Provide a query that shows total sales made by each sales agent.
SELECT e.FirstName || " " || e.LastName AS "Sales Agent", SUM(i.Total) AS "Total Sales"
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY e.LastName

--19 Which sales agent made the most in sales in 2009?
SELECT e.FirstName || " " || e.LastName AS "Sales Agent", SUM(i.Total) AS "TotalSales"
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
WHERE i.InvoiceDate LIKE "2009%"
GROUP BY e.LastName
ORDER BY TotalSales DESC
LIMIT 1

--20 Which sales agent made the most in sales in 2010?
SELECT e.FirstName || " " || e.LastName AS "Sales Agent", SUM(i.Total) AS "TotalSales"
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
WHERE i.InvoiceDate LIKE "2010%"
GROUP BY e.LastName
ORDER BY TotalSales DESC
LIMIT 1

--21 Which sales agent made the most in sales over all?


--22 Provide a query that shows the # of customers assigned to each sales agent.


--23 Provide a query that shows the total sales per country. Which country's customers spent the most?


--24 Provide a query that shows the most purchased track of 2013.


--25 Provide a query that shows the top 5 most purchased tracks over all.


--26 Provide a query that shows the top 3 best selling artists.


--27 Provide a query that shows the most purchased Media Type.
