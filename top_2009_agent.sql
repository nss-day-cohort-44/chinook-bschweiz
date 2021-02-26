19. 1. `top_2009_agent.sql`: Which sales agent made the most in sales in 2009?

    > **Hint:** Use the [MAX](https://www.sqlite.org/lang_aggfunc.html#maxggunc) 
    function on a [subquery](http://beginner-sql-tutorial.com/sql-subquery.htm).

SELECT E.FirstName RepName, E.LastName RepLast, 
        '$' || printf('%.2f', SUM(I.Total)) TotalSales, strftime('%Y', I.InvoiceDate) AS YearWETALKINGBOUT
    FROM Invoice I
    JOIN Customer C
    ON I.CustomerId = C.CustomerId
    JOIN Employee E
    ON E.EmployeeId = C.SupportRepId
    WHERE I.InvoiceDate LIKE "2009%"
    GROUP BY RepName 
    ORDER BY TotalSales DESC
    LIMIT 1;

SELECT
    '$' || printf('%.2f', SUM(I.Total)) AS TotalSale$
    E.FirstName 