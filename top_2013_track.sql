
select  TR.Name, count(TR.Name) * IL.Quantity as [Downloads]
from Invoice IV
join InvoiceLine IL
	on IL.InvoiceId = IV.InvoiceId
join track TR
	on TR.TrackId = IL.TrackId
	where year(IV.InvoiceDate) = '2013'
group by TR.Name, IL.Quantity
order by [Downloads]  desc


