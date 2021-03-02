22. `sales_per_country.sql`: Provide a query that shows the 
total sales per country.

SELECT '$'||printf('%.2f',(TotalSales)) AS GrandeTotale, DAMNCOUNTRY
FROM (
    SELECT SUM(Total) as TotalSales, 
    i.BillingCountry AS DAMNCOUNTRY
    
    FROM Invoice i
    
GROUP BY DAMNCOUNTRY
)
ORDER BY TotalSales DESC
;

-- it works but except for the sorting part