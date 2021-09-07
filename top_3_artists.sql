select top(3) AR.Name, sum(IL.Quantity)  as [Downloads],
ROW_NUMBER() OVER (PARTITION BY SUM(IL.Quantity) ORDER BY SUM(IL.Quantity) desc) AS [POSITION]
from Invoice IV
join InvoiceLine IL
	on IL.InvoiceId = IV.InvoiceId
join track TR
	on TR.TrackId = IL.TrackId
join Album AL
	on AL.AlbumId = TR.AlbumId
join Artist AR
	on AR.ArtistId = AL.ArtistId
group by IL.Quantity, AR.Name
order by [Downloads]  desc, AR.Name