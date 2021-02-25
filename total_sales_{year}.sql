1. `total_sales_{year}.sql`: What are the respective total sales for each of those years?

SELECT InvoiceDate, SUM(Total)
FROM Invoice
WHERE InvoiceDate LIKE "2009%" OR InvoiceDate LIKE "2011%"
GROUP BY InvoiceDate LIKE "2009%";