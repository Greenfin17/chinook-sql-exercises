select top(1) MD.Name, sum(IL.Quantity)  as [Downloads],
ROW_NUMBER() OVER (PARTITION BY SUM(IL.Quantity) ORDER BY SUM(IL.Quantity) desc) AS [POSITION]
from Invoice IV
join InvoiceLine IL
	on IL.InvoiceId = IV.InvoiceId
join track TR
	on TR.TrackId = IL.TrackId
join MediaType MD
	on MD.MediaTypeId = TR.MediaTypeId
group by IL.Quantity, MD.Name
order by [Downloads]  desc, MD.Name