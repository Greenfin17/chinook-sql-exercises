select Invoice.BillingCountry, count(*) as invoices
from Invoice
group by Invoice.BillingCountry
order by Invoice.BillingCountry;