select Track.Name as [Track], 
	Album.Title as [Album], 
	MediaType.Name as [Media],
	Genre.Name as [Genre]
from Track
	join Album on Track.AlbumId = Album.AlbumId
	join MediaType on MediaType.MediaTypeId = Track.MediaTypeId
	join Genre on Genre.GenreId = Track.GenreId
	order by Track;
