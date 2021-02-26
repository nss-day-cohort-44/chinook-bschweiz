17. `invoices_line_item_count.sql`: Provide a query that shows 
all Invoices but 
includes the # of invoice line items.

SELECT I.InvoiceId, COUNT(IL.InvoiceId) NumberOfLineItems
FROM Invoice I
JOIN InvoiceLine IL
ON I.InvoiceId = IL.InvoiceId
GROUP BY IL.InvoiceId;