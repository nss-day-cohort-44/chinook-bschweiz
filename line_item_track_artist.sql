line_item_track_artist.sql: Provide a query that includes the 
purchased track name AND 
artist name with 
each invoice line item.


SELECT Art.Name Artist, I.InvoiceLineId, T.Name TrackTitle
FROM InvoiceLine I
JOIN Track T
ON I.TrackId = T.TrackId
JOIN Album Alb
ON Alb.AlbumId = T.AlbumId
JOIN Artist Art
ON Art.ArtistId = Alb.AlbumId;