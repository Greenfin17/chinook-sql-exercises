-- Which country's customers spent the most --

select top(1) IV.BillingCountry, sum(IL.Quantity * IL.UnitPrice) as [Total Sales]
from Invoice IV
join InvoiceLine IL
	on IL.InvoiceId = IV.InvoiceId
group by IV.BillingCountry
order by [Total Sales] DESC