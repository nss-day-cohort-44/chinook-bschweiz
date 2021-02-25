1. `line_item_track.sql`: Provide a query that includes the 
purchased track name 
with each invoice line item.

SELECT InvoiceId, InvoiceLineId, T.Name 
FROM InvoiceLine I
JOIN Track T
ON I.TrackId = T.TrackId;