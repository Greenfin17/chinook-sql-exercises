

select  TR.Name, IV.InvoiceDate, IV.Total, IL.InvoiceLineId, IL.Quantity
from Invoice IV
join InvoiceLine IL
	on IL.InvoiceId = IV.InvoiceId
join track TR
	on TR.TrackId = IL.TrackId
where year(IV.InvoiceDate) = '2013'
order by IL.Quantity

