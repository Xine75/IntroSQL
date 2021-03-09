
SELECT
    Id,
    Label
FROM Genre;

SELECT 
Id,
ArtistName,
YearEstablished
FROM Artist
ORDER BY ArtistName;

SELECT  s.Title,
        a.ArtistName
FROM Song s
JOIN Artist a on s.ArtistId=a.id;

Select	DISTINCT
	    a.ArtistName
FROM	Album
JOIN	Artist a on ArtistId = a.id
JOIN	Genre g on GenreId = g.id
WHERE	g.id = 7;

Select  DISTINCT
        a.ArtistName
FROM    Album
JOIN    Artist a on ArtistId = a.id
JOIN    Genre g on GenreId = g.id
WHERE   g.id = 2 OR g.id = 4;

Select  Title
FROM    Album 
WHERE   AlbumLength IS NULL;

select *
from Album

select *
from Song
        


