
-----INCOMPLETO Y ES DE PRUEBA LAS CONSULTAS ----------



--DELETE FROM genres
--where GenreId in (SELECT t.GenreId from tracks t
    -- join genres g on t.GenreId = g.GenreId
     --GROUP by g.name
     --HAVING count(t.name) < 50)


--DELETE FROM tracks
 --  where GenreId in (SELECT t.GenreId from tracks t
  --   join genres g on t.GenreId = g.GenreId
    -- GROUP by g.name
     --HAVING count(t.name) < 50)
     --order by canciones DESC);
	 
UPDATE tracks set TrackId = ISNULL
WHERE TrackId in (SELECT TrackId FROM playlist_track plt
                  join tracks t on plt.TrackId = t.TrackId);
	 