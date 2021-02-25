1. `brazil_customers_invoices.sql`: Provide a query showing the Invoices of customers who are from Brazil. 
The resultant table should show
 the customer full name, 
 Invoice ID, 
 Date of the invoice and 
 billing country.

SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry 
    FROM Customer C
    JOIN Invoice I
    ON C.CustomerId = I.CustomerId
    WHERE C.Country LIKE 'Brazil';