SELECT Title, Duration
FROM Tracks
ORDER BY Duration DESC
LIMIT 1;



SELECT Title
FROM Tracks
WHERE
  (CAST(split_part(Duration::text, ':', 1) AS INTEGER) * 60 +
   CAST(split_part(Duration::text, ':', 2) AS INTEGER)) >= 210;





SELECT Name
FROM Collections
WHERE ReleaseYear BETWEEN 2018 AND 2020;




SELECT Title
FROM Tracks
WHERE LOWER(Title) LIKE '%мой%' OR LOWER(Title) LIKE '%my%';


SELECT g.Name AS Genre, COUNT(sg.SingerID) AS NumberOfSingers
FROM Genres g
LEFT JOIN SingersGenres sg ON g.GenreID = sg.GenreID
GROUP BY g.Name;

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

SELECT DISTINCT c.Name AS Collection
FROM Collections c
JOIN Singers s ON c.Name ILIKE '%' || REPLACE(s.Name, 'The ', '') || '%';



