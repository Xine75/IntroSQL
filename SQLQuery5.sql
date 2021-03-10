
--10. Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
SELECT  s.Title as SongTitle, al.Title as AlbumTitle, a.ArtistName
FROM    Song s
JOIN    Artist a on ArtistId = a.id
JOIN    Album al on AlbumId = al.id
WHERE	a.ArtistName = 'Janet Jackson'
--WHERE	s.ArtistId = 28;



--6. Write a SELECT statement that lists the Albums with no songs
SELect	DISTINCT
	al.Id,
	al.Title
FROM Album al
LEFT JOIN Song s ON al.Id = s.AlbumId
WHERE s.AlbumId IS NULL
ORDER BY Title;

--11. Write a SELECT statement to display how many songs exist for each album. 
--You'll need to use the COUNT() function and the GROUP BY keyword sequence. (I also added Artist Name)

SELECT		count(s.id)as NumSongs, al.Title as AlbumTitle, a.ArtistName as Artist
From		Song s
LEFT JOIN	Album al on s.AlbumId=al.Id
LEFT JOIN	Artist a on al.ArtistId = a.Id
GROUP BY	al.Title, a.ArtistName;


--14. Write a SELECT query that lists the Artists that have put out records on more than one record label. 
--Hint: When using GROUP BY instead of using a WHERE clause, use the HAVING keyword

SELECT	count(distinct al.label) as NumRecLabels, ar.ArtistName
From	Artist ar
JOIN	Album al on ar.id = al.ArtistId
GROUP BY	ar.ArtistName
Having	count(distinct al.label) > 1

--16.  Using MAX() function, write a select statement to find the song with the longest duration. 
--The result should display the song title and the duration.
--This is a query within a query
SELECT	s.Title, s.SongLength
from	Song s
WHERE	s.SongLength = (
Select max(s.SongLength)
FROM	Song s);

SELEct	top 1 s.Title, s.SongLength
from	song s
order by	s.SongLength desc;