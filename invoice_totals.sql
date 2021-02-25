1. `invoice_totals.sql`: Provide a query that shows 
the Invoice Total, 
Customer name, 
Country and 
Sale Agent name for 
all invoices and customers.

SELECT I.InvoiceId, C.FirstName CustomerName, E.FirstName SalesAgentName, C.Country, I.Total
FROM Employee E
JOIN Customer C
ON E.EmployeeId = C.SupportRepId
JOIN Invoice I
ON I.CustomerId = C.CustomerId
ORDER BY CustomerName;