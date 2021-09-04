select Invoice.InvoiceId, convert(varchar, Invoice.InvoiceDate, 1) as [Date], count(*) as [Line Items] from Invoice
join InvoiceLine on Invoice.InvoiceId = InvoiceLine.InvoiceId
group by Invoice.InvoiceId, Invoice.InvoiceDate


