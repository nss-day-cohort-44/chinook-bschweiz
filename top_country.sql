23. `top_country.sql`: Which countrys customers spent the most?





SELECT '$'||printf('%.2f',MAX(Total)) AS TotalSales, Country

    FROM (
        
        SELECT
        c.Country AS Country,
        SUM(Total) as Total

        FROM
        Customer c
        JOIN
        Invoice i 
        ON i.CustomerId = c.CustomerId

        GROUP BY c.Country
    )


