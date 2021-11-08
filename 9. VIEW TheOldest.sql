CREATE VIEW TheOldest AS
SELECT 
	F.ID, 
	F.FilmName, 
	A.ActorName 
FROM Films F
JOIN FilmsActors FA ON F.ID = FA.IdFilm
JOIN Actors A ON FA.IdActor = A.ID
WHERE A.Birthdate = 
(
SELECT MIN(A.Birthdate) MINDate
FROM FilmsActors FA_S 
JOIN Actors A ON FA_S.IdActor = A.ID
WHERE FA_S.IdFilm = FA.IdFilm
) 



