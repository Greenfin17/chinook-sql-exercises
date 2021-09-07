--- Subqueries ---

-- nesting one query inside another --

-- subquery, and correlated subquery

-- artists and their longest track

-- joining to a subquery

select a.ArtistId, Name, LongestSongLength
from Artist a
	left outer join ( select ArtistId, max(Milliseconds) LongestSongLength
	from track t
	join Album a
		on a.AlbumId = t.AlbumId
group by ArtistId
	) maxSong
	on a.ArtistId = maxSong.ArtistId

-- correlated subquery in the select statement

select a.ArtistId,
		a.name,
	( select max(Milliseconds) LongestSongLength
	from track t
	join Album al
		on al.AlbumId = t.AlbumId
	where al.ArtistId = a.ArtistId
	group by ArtistId
	) 
from Artist a

-- what artists have no tracks
-- correlated subquery in the where clause

select *
from Artist a
where not exists(
select 'poop'
from track t
join Album al
on al.AlbumId = t.AlbumId
where al.ArtistId = a.ArtistId
)


-- regular subquery
select *
from Artist a
where ArtistId not in(
	select ArtistId
	from track t
		join Album al
			on al.AlbumId = t.AlbumId
)

-- Artists who don't have albums.
select ArtistId
from Artist a
except
select ArtistId
from Album

-- Artists who have albums
select ArtistId
from Artist a
intersect
select ArtistId
from Album

select left(FirstName,1)
from Customer 
except
select left(FirstName,1)
from Employee

select left(FirstName,1)
from Customer 
union
select left(FirstName,1)
from Employee
