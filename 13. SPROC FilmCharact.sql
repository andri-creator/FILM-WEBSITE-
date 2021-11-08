CREATE PROCEDURE FilmCharact
       @FilmName varchar(30)
AS
BEGIN
SELECT f.FilmName, f.YearOfRelease, d.DirectorName, a.ActorName
FROM Films f Join FilmsDirectors fd 
ON f.ID = fd.IdFilm
Join Directors d
ON fd.IdDirector = d.ID
Join 
FilmsActors fa
ON f.ID = fa.IdFilm
Join Actors a 
ON fa.IdActor = a.ID
WHERE f.FilmName LIKE @FilmName + '%';
END 