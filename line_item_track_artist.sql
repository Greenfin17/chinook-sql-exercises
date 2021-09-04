select InvoiceLine.InvoiceId as [Invoice], Track.Name as [Track Name], Artist.Name as [Artist]
from InvoiceLine join Track
on InvoiceLine.TrackId = Track.TrackId
join Album 
on Track.AlbumId = Album.AlbumId
join Artist
on Album.ArtistId = Artist.ArtistId
Order by Artist.Name;

