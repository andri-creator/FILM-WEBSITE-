CREATE VIEW AverageRating AS
SELECT Films.ID, FilmName, avg(Rating) AvgRating
FROM Films LEFT JOIN Reviews
ON Reviews.IdFilm = Films.ID
GROUP BY Films.ID, FilmName
