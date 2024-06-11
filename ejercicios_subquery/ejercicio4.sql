UPDATE tracks
set GenreId = null
where GenreId in (SELECT g.GenreId from genres g
left join tracks t on t.GenreId = g.GenreId
group by g.name 
HAVING count(t.name) < 50);

DELETE FROM Genres
where GenreId in (SELECT g.GenreId from genres g
left join tracks t on t.GenreId = g.GenreId
group by g.name 
HAVING count(t.name) < 50);