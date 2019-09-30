-- Albums with 12 or more tracks.

Select *,COUNT(TrackId)
From Tracks
Group by AlbumId
Having COUNT(TrackId) >= 12
Order by COUNT(TrackId) DESC;

SELECT BillingCountry, round(sum(Total),2) as Revenue
FROM invoices
group by BillingCountry
order by Revenue Desc;
