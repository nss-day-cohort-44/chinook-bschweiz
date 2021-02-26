18.`sales_agent_total_sales.sql`: Provide a query that shows 
total sales made by 
each sales agent.

SELECT C.FirstName RepName, C.LastName RepLast, SUM(I.Total)
FROM Invoice I
JOIN Customer C
ON I.CustomerId = C.CustomerId
JOIN Employee E
ON E.EmployeeId = C.SupportRepId
GROUP BY RepName;
