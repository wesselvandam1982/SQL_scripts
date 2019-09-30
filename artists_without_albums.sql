-- Name and ID of the artists who do not have albums.

SELECT Name AS Artist,
       Artists.ArtistId,
       Albums.Title AS Album
FROM Artists
LEFT JOIN Albums
ON Artists.ArtistId = Albums.ArtistId
WHERE Album IS NULL
