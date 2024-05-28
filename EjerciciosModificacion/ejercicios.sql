------------------INSERT--------------------
insert into artists(name)                   
VALUES("Sam")                               
                                            
INSERT into albums(Title, ArtistId)         
values("ejemplo disco", 276)                 
                                            
INSERT into tracks(name, MediaTypeId, Milliseconds, UnitPrice)
values ("cancion1", 2, 300000, 1.29), ("cancion2", 1, 200000, 1.9), ("cancion3", 1, 100000, 0.99)
                                             
-------------UPDATE--------------------------
UPDATE tracks                                
set MediaTypeId = 1, GenreId = 11, Composer = "ejemplo"
where TrackId > 3500                         
                                             
-------------DELETE--------------------------
DELETE FROM tracks 
where TrackId = 3504 or TrackId = 3507 or TrackId = 3508 or TrackId = 3509;

DELETE FROM albums 
WHERE AlbumId = 348;

DELETE FROM artists
WHERE ArtistId = 276;