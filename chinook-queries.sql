--01 Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country <> "USA"

--02 Provide a query only showing the Customers from Brazil.
SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country = "Brazil"

--03 Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Customer c, Invoice i
WHERE i.BillingCountry = "Brazil"

--04 Provide a query showing only the Employees who are Sales Agents.


--05 Provide a query showing a unique list of billing countries from the Invoice table.
--06 Provide a query showing the invoices of customers who are from Brazil.
--07 Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
--08 Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
--09 How many Invoices were there in 2009 and 2011? What are the respective total sales for each of those years?
--10 Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
--11 Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY
--12 Provide a query that includes the track name with each invoice line item.
--13 Provide a query that includes the purchased track name AND artist name with each invoice line item.
--14 Provide a query that shows the # of invoices per country. HINT: GROUP BY
--15 Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resultant table.
--16 Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include the Album name, Media type and Genre.
--17 Provide a query that shows all Invoices but includes the # of invoice line items.
--18 Provide a query that shows total sales made by each sales agent.
--19 Which sales agent made the most in sales in 2009?
--20 Which sales agent made the most in sales in 2010?
--21 Which sales agent made the most in sales over all?
--22 Provide a query that shows the # of customers assigned to each sales agent.
--23 Provide a query that shows the total sales per country. Which country's customers spent the most?
--24 Provide a query that shows the most purchased track of 2013.
--25 Provide a query that shows the top 5 most purchased tracks over all.
--26 Provide a query that shows the top 3 best selling artists.
--27 Provide a query that shows the most purchased Media Type.