select top(5)  TR.Name, sum(IL.Quantity)  as [Downloads],
ROW_NUMBER() OVER (PARTITION BY SUM(IL.Quantity) ORDER BY SUM(IL.Quantity) desc) AS [POSITION]
from Invoice IV
join InvoiceLine IL
	on IL.InvoiceId = IV.InvoiceId
join track TR
	on TR.TrackId = IL.TrackId
group by IL.Quantity, TR.Name
order by [Downloads]  desc, TR.Name