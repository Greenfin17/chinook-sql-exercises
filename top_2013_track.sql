
select top(1) TR.Name, count(TR.Name) * il.Quantity as [Downloads]
from Invoice IV
join InvoiceLine IL
	on IL.InvoiceId = IV.InvoiceId
join track TR
	on TR.TrackId = IL.TrackId
where year(IV.InvoiceDate) = '2013'
group by TR.Name, IL.InvoiceId, IL.Quantity
order by [Downloads]  desc


