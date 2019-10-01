-- Using a subquery, find the names of all the tracks for the
-- album "Californication".

Select Name,AlbumId
From Tracks
Where AlbumId IN (Select AlbumId
From Albums
Where Title = "Californication");
