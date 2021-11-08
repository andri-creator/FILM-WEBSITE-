ALTER PROCEDURE FilmYears(@YYearOfRelease INT) 
AS
    IF @YYearOfRelease IN (SELECT YearOfRelease FROM Films)
    BEGIN
       THROW 50500, 'Such statistics already exists', 1
    END

  ELSE 
    
    IF @YYearOfRelease NOT IN (SELECT YearOfRelease FROM Films)
    BEGIN
       THROW 50700, 'There are no film releases of this Year in our database', 1
    END

  ELSE

    BEGIN
       DECLARE
       @FilmName VARCHAR(30),
	   @YearOfRelease INT,
       @DirectorName VARCHAR(30),
       @DirCountry VARCHAR(30),
       @DirTown VARCHAR(30),
       @ActorName VARCHAR(30),
       @ActorAge INT,
       @Country VARCHAR(30),
       @Town VARCHAR(30),
       @ComName VARCHAR(30),
       @ProdCountry VARCHAR(30)
	      DECLARE OurCursor CURSOR FOR
         
		      SELECT 
			  f.FilmName, 
			  f.YearOfRelease, 
			  d.DirectorName, 
			  d.DirCountry, 
			  d.DirTown, 
			  a.ActorName, 
			  YearOfRelease - YEAR(Birthdate) AS ActorAge,
			  a.Country, 
			  a.Town, 
			  p.ComName, 
			  p.ProdCountry
			  FROM Films f Join FilmsDirectors fd 
			  ON f.ID = fd.IdFilm
			  Join Directors d
			  ON fd.IdDirector = d.ID
			  Join 
			  FilmsActors fa
			  ON f.ID = fa.IdFilm
			  Join 
			  Actors a 
			  ON fa.IdActor = a.ID
			  Join 
			  FilmsProduction fp
			  ON f.ID = fp.IdFilm
			  Join
			  ProductionCompany p
			  ON fp.IdProd = p.ID
			  WHERE YearOfRelease = @YYearOfRelease
			  ORDER BY f.YearOfRelease

				  OPEN OurCursor 
				  FETCH NEXT FROM OurCursor INTO
				  @FilmName, 
				  @YearOfRelease,
				  @DirectorName,
				  @DirCountry,
				  @DirTown,
			      @ActorName,
				  @ActorAge,
				  @Country,
			      @Town,
				  @ComName,
				  @ProdCountry
	              WHILE @@FETCH_STATUS = 0

					  BEGIN
					  INSERT INTO Staatistics
					  VALUES (@FilmName,
						      @YearOfRelease,
							  @DirectorName,
							  @DirCountry,
							  @DirTown,
							  @ActorName,
							  @ActorAge,
							  @Country,
							  @Town,
							  @ComName,
							  @ProdCountry)

	                  FETCH NEXT FROM OurCursor INTO
							  @FilmName,
							  @YearOfRelease,
							  @DirectorName,
							  @DirCountry,
							  @DirTown,
							  @ActorName,
							  @ActorAge,
							  @Country,
							  @Town,
							  @ComName,
							  @ProdCountry


                      END
END

CLOSE OurCursor; 
DEALLOCATE OurCursor;