playlists_track_count.sql: Provide a query that shows the 
total number of tracks in each playlist. The 
Playlist name should be included on the resulant table.

SELECT P.Name, COUNT(TrackId) TotalTracks
FROM Playlist P
JOIN PlaylistTrack PT 
ON P.PlaylistId = PT.PlaylistId
GROUP BY P.Name;
