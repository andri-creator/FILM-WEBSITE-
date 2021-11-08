ALTER TABLE FilmsActors
ADD FOREIGN KEY (IdFilm)
REFERENCES Films(ID)

ALTER TABLE FilmsActors
ADD FOREIGN KEY (IdActor)
REFERENCES Actors(ID)

ALTER TABLE FilmsDirectors
ADD FOREIGN KEY (IdFilm)
REFERENCES Films(ID)

ALTER TABLE FilmsDirectors
ADD FOREIGN KEY (IdDirector)
REFERENCES Directors(ID)

ALTER TABLE Reviews
ADD FOREIGN KEY (IdFilm)
REFERENCES Films(ID)

ALTER TABLE FilmsProduction
ADD FOREIGN KEY (IdFilm)
REFERENCES Films(ID)

ALTER TABLE FilmsProduction
ADD FOREIGN KEY (IdProd)
REFERENCES ProductionCompany(ID)