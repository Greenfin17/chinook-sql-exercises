select Invoice.BillingCountry, count(distinct(invoiceid)) as Invoices
from Invoice
group by Invoice.BillingCountry
order by Invoices desc