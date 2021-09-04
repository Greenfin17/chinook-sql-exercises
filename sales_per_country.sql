select IV.BillingCountry, format(sum(IL.Quantity * IL.UnitPrice), 'C') as [Total Sales]
from Invoice IV
join InvoiceLine IL
	on IL.InvoiceId = IV.InvoiceId
group by IV.BillingCountry
order by IV.BillingCountry