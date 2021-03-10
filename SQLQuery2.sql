--1. Query all of the entries in the Genre table
SELECT
    Id,
    Label
FROM Genre;

--2. Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords
SELECT 
Id,
ArtistName,
YearEstablished
FROM Artist
ORDER BY ArtistName;

--3. Write a SELECT query that lists all the songs in the Song table and include the Artist name
SELECT  s.Title,
        a.ArtistName
FROM Song s
JOIN Artist a on s.ArtistId=a.id;

--4. Write a SELECT query that lists all the Artists that have a Pop Album
Select	DISTINCT
	    a.ArtistName
FROM	Album
JOIN	Artist a on ArtistId = a.id
JOIN	Genre g on GenreId = g.id
WHERE	g.id = 7;

--5. Write a SELECT query that lists all the Artists that have a Jazz or Rock Album
Select  DISTINCT
        a.ArtistName
FROM    Album
JOIN    Artist a on ArtistId = a.id
JOIN    Genre g on GenreId = g.id
WHERE   g.id = 2 OR g.id = 4;

--6.  Write a SELECT statement that lists the Albums with no songs (see file 5 for the correct answer)
Select  Title
FROM    Album 
WHERE   AlbumLength IS NULL;

--Checking that the album I added is there
select *
from Album;

--Checking the song I added is there
select *
from Song;
  


