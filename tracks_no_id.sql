1. `tracks_no_id.sql`: Provide a query that shows all the 
Tracks, but displays no IDs. The result should include the 
Album name, 
Media type and 
Genre.

SELECT Alb.Title AlbumTitle, T.Name TrackTitle, MT.Name Media, G.Name Genre
FROM Track T
JOIN Album Alb
ON T.AlbumId = Alb.AlbumId
JOIN Genre G
ON G.GenreId = T.GenreId
JOIN MediaType MT
ON MT.MediaTypeId = T.MediaTypeId;