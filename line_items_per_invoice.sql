select count(*) as [Line Item Count], Invoice.InvoiceId
from Invoice
join InvoiceLine on Invoice.InvoiceId = InvoiceLine.InvoiceId
group by Invoice.InvoiceId;