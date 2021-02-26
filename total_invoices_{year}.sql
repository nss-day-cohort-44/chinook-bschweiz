
total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?

SELECT InvoiceDate, COUNT(InvoiceId)
FROM Invoice
WHERE InvoiceDate LIKE "2009%" OR InvoiceDate LIKE "2011%"
GROUP BY InvoiceDate LIKE "2011%";

SELECT
    COUNT(i.InvoiceId) NumberOfInvoices,
    STRFTIME('%Y', i.InvoiceDate) InvoiceYear
FROM Invoice i
WHERE
	InvoiceYear = '2011' OR InvoiceYear = '2009'
GROUP BY InvoiceYear
;

-- STFTIME = String From Time