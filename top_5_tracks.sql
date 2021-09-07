
select top(5)  TR.Name, count(TR.Name) * IL.Quantity as [Downloads]
from Invoice IV
join InvoiceLine IL
	on IL.InvoiceId = IV.InvoiceId
join track TR
	on TR.TrackId = IL.TrackId
group by IL.Quantity, TR.Name
order by [Downloads]  desc, TR.Name


