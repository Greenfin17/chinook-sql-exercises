select InvoiceLine.InvoiceId as [Invoice], InvoiceLine.InvoiceLineId, Track.Name as [Track Name]
from InvoiceLine join Track
on InvoiceLine.TrackId = Track.TrackId
Order by Track.Name