1. `sales_agent_invoices.sql`: Provide a query that shows 
the invoices associated with each sales agent. 
The resultant table should include the Sales Agent 
full name.

SELECT I.InvoiceId, E.FirstName, E.LastName
FROM Employee E
JOIN Customer C
ON E.EmployeeId = C.SupportRepId
JOIN Invoice I
ON I.CustomerId = C.CustomerId
ORDER BY E.LastName;
