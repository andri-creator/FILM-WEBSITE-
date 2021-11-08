CREATE TABLE Films (ID INT NOT NULL IDENTITY(1,1),
                    FilmName VARCHAR(30),
					YearOfRelease INT,
					PRIMARY KEY (ID))

CREATE TABLE Directors (ID INT NOT NULL IDENTITY(1,1),
                        DirectorName VARCHAR(30),
					    DirBirthdate DATE,
					    DirCountry VARCHAR(30),
					    DirTown VARCHAR(30),
						PRIMARY KEY (ID))

CREATE TABLE FilmsDirectors (ID INT NOT NULL IDENTITY(1,1),
                              IdFilm INT,
					          IdDirector INT,
							  PRIMARY KEY (ID))

CREATE TABLE Actors (ID INT NOT NULL IDENTITY(1,1),
                    ActorName VARCHAR(30),
					Birthdate DATE,
					Country VARCHAR(30),
					Town VARCHAR(30),
					PRIMARY KEY (ID))

CREATE TABLE FilmsActors (ID INT NOT NULL IDENTITY(1,1),
                           IdFilm INT,
					       IdActor INT,
						   PRIMARY KEY (ID))

CREATE TABLE Reviews (ID INT NOT NULL IDENTITY(1,1),
                      Username VARCHAR(30),
					  ReviewDate DATE,
					  Rating INT,
					  IdFilm INT,
					  PRIMARY KEY (ID))

CREATE TABLE ProductionCompany (ID INT NOT NULL IDENTITY(1,1),
                                ComName VARCHAR(30),
								ProdCountry VARCHAR(30),
								PRIMARY KEY(ID))

CREATE TABLE FilmsProduction (ID INT NOT NULL IDENTITY (1,1),
                              IdFilm INT,
							  IdProd INT,
							  PRIMARY KEY (ID))