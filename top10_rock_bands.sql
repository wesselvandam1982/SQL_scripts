-- Artist name and total track count of the top 10 rock bands.

SELECT artists.ArtistId, artists.Name, COUNT(tracks.Name) AS Songs
FROM artists
JOIN albums
ON albums.ArtistId = artists.ArtistId
JOIN tracks
ON albums.AlbumId = tracks.AlbumId
JOIN genres
ON tracks.GenreId = genres.GenreId
WHERE genres.Name = 'Rock'
GROUP BY artists.ArtistId, artists.Name, genres.Name
ORDER BY Songs DESC
LIMIT 10;