22. `sales_per_country.sql`: Provide a query that shows the 
total sales per country.

SELECT '$'||printf('%.2f',SUM(Total)) AS TotalSales, BillingCountry
FROM
Invoice i
GROUP BY BillingCountry
ORDER BY TotalSales DESC
;

-- it works but except for the sorting part