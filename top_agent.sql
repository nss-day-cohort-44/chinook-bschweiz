20. `top_agent.sql`: Which sales agent made the most in sales over all?

SELECT MAX(TotalSales),
    EmployeeDamnName

    FROM (
        SELECT 
        SUM(i.Total) AS TotalSales,
        e.FirstName ||' '|| e.LastName AS EmployeeDamnName,
        strftime('%Y', i.InvoiceDate) AS THEDAMNYEARDAMMIT

        FROM 
        Invoice i,
        Employee e,
        Customer c

        WHERE
        i.CustomerId = c.CustomerId
        AND c.SupportRepId = e.EmployeeId
        AND THEDAMNYEARDAMMIT = '2009'

        GROUP BY
        EmployeeDamnName,
        THEDAMNYEARDAMMIT
    )
;



