SELECT Title, Duration
FROM Tracks
ORDER BY Duration DESC
LIMIT 1;



SELECT *
FROM Tracks
WHERE Duration >= '00:03:30';






SELECT Name
FROM Collections
WHERE ReleaseYear BETWEEN 2018 AND 2020;




SELECT Title
FROM Tracks
WHERE 
    LOWER(Title) ~* '\mмой\M' OR
    LOWER(Title) ~* '\mmy\M';


SELECT DISTINCT c.Name AS Collection
FROM Collections c
JOIN CollectionsTracks ct ON c.CollectionID = ct.CollectionID  
JOIN Tracks t ON ct.TrackID = t.TrackID                        
JOIN Albums a ON t.AlbumID = a.AlbumID                        
JOIN SingersAlbums sa ON a.AlbumID = sa.AlbumID               
JOIN Singers s ON sa.SingerID = s.SingerID                    
WHERE s.Name ILIKE '%Beatles%';  





SELECT COUNT(t.TrackID) AS NumberOfTracks
FROM Tracks t
JOIN Albums a ON t.AlbumID = a.AlbumID
WHERE a.ReleaseYear BETWEEN 2019 AND 2020;

SELECT 
    a.Title AS Album, 
    AVG(t.Duration) AS AvgDuration
FROM Albums a
JOIN Tracks t ON a.AlbumID = t.AlbumID
GROUP BY a.Title;


SELECT s.Name AS SingerName
FROM Singers s
WHERE s.SingerID NOT IN (
    SELECT sa.SingerID
    FROM SingersAlbums sa
    JOIN Albums a ON sa.AlbumID = a.AlbumID
    WHERE a.ReleaseYear = 2020
);
