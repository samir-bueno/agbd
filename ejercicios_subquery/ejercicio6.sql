DELETE from invoice_items 
where InvoiceId in (SELECT InvoiceId from invoices
where BillingState ISNULL or BillingPostalCode ISNULL);

DELETE from invoices
where BillingState ISNULL or BillingPostalCode ISNULL;