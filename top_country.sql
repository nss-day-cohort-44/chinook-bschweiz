23. `top_country.sql`: Which countrys customers spent the most?


SELECT (TotalSales), Country
FROM (
    SELECT '$'||printf('%.2f',SUM(Total)) AS TotalSales, c.Country
FROM
Customer c,
Invoice i)
GROUP BY Country;