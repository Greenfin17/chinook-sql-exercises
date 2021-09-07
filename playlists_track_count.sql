select Playlist.Name as [Playlist Name], count(*) as [Tracks]
from Playlist
join PlaylistTrack on Playlist.PlaylistId = PlaylistTrack.PlaylistId
group by Playlist.Name
order by Playlist.Name desc;
