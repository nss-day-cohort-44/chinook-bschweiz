25. `top_5_tracks.sql`: Provide a query that shows the 
top 5 most purchased tracks over all.


SELECT t.Name AS TrackTitle, 
        COUNT(il.InvoiceLineId) AS BuyCount, i.InvoiceDate

FROM
    Invoice i
    JOIN InvoiceLine il 
    ON il.InvoiceId = i.InvoiceId
    JOIN Track t
    ON t.TrackId = il.TrackId

    GROUP BY TrackTitle
    ORDER BY BuyCount DESC
    LIMIT 5;

