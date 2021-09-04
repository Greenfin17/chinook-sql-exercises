select count(*) as [Line Item Count], Invoice.InvoiceId
from Invoice
join InvoiceLine on Invoice.InvoiceId = InvoiceLine.InvoiceId
where InvoiceLine.InvoiceId = 37
group by Invoice.InvoiceId;