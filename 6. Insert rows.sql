INSERT INTO Films
            (FilmName, YearOfRelease)
      VALUES
            ('Silence', 2016),
			('The green pastures', 1936),
			('The master', 2012),
			('Native son', 1986),
			('Neon Demon', 2016),
			('Uptight', 1968),
			('Mudbound', 2017),
			('The matrix', 1999),
			('The matrix reloaded', 2003),
			('Maleficent', 2014), 
			('Titanic', 1997)

INSERT INTO Directors
            (DirectorName, DirBirthdate, DirCountry, DirTown)
      VALUES
            ('Martin Scorsese', '1942-11-17', 'USA', 'New York'),
			('Marc Connelly', '1890-12-13', 'USA', 'McKeesport'),
			('William Keighley', '1889-04-24', 'USA', 'Philadelphia'),
			('Paul Thomas Anderson', '1970-04-26', 'USA', 'Studio City'),
			('Jerrold Freedman', '1941-10-29', 'USA', 'Philadelphia'),
			('Nicolas Winding Refn', '1970-09-29', 'Denmark', 'Copenhagen'),
			('Jules Dassin', '1911-03-31', 'USA', 'Middletown'),
			('Dee Rees', '1977-02-07', 'USA', 'Nashville'),
			('Lana Wachowski', '1965-04-21', 'USA', 'Chicago'),
			('Lilly Wachowski', '1967-12-29', 'USA', 'Chicago'),
			('Robert Stromberg', '1965-01-27', 'USA', 'California')

INSERT INTO FilmsDirectors
            (IdFilm, IdDirector)
      VALUES
            (1, 1),
			(2, 2),
			(2, 3),
			(3, 4),
			(4, 5),
			(5, 6),
			(6, 7),
			(7, 8),
			(8, 9),
			(8, 10),
			(9, 9),
			(9, 10),
			(10, 11)
                     
INSERT INTO Actors
            (ActorName, Birthdate, Country, Town)
      VALUES 
			('Andrew Garfield', '1983-08-20', 'USA', 'Los Angeles'),
			('Adam Driver', '1983-11-19', 'USA', 'San Diego'),
			('Liam Neeson', '1952-04-07', 'United Kingdom', 'Ballymena'),
			('Rex Ingram', '1895-10-20', 'USA', 'Cairo'),
			('Oscar Polk', '1899-12-25', 'USA', 'Marianna'),
			('Eddie "Rochester" Anderson', '1905-09-18', 'USA', 'Oakland'),
			('Philip Seymour Hoffman', '1967-02-02', 'USA', 'Fairport'),
			('Joaquin Phoenix', '1974-10-28', 'Puerto Rico', 'San Juan'),
			('Amy Adams', '1974-08-20', 'Italy', 'Vicenza'),
			('Victor Love', '1957-08-04', 'USA', 'Camp Lejeune'),
			('Matt Dillon', '1964-02-18', 'USA', 'New Rochelle'),
			('Elizabeth McGovern', '1961-07-18', 'USA', 'Evanston'),
			('Elle Fanning', '1998-04-09', 'USA', 'Conyers'),
			('Christina Hendricks', '1975-05-03', 'USA', 'Knoxville'),
			('Keanu Reeves', '1964-11-02', 'Lebanon', 'Beirut'),
            ('Raymond St. Jacques', '1930-08-27', 'USA', 'Hartford'),
			('Ruby Dee', '1922-10-27', 'USA',  'Cleveland'),
			('Frank Silvera', '1914-07-24', 'Jamaica', 'Kingston'),
			('Jason Mitchell', '1987-07-16', 'USA', 'New Orleans'),
			('Carey Mulligan', '1985-05-28', 'United Kingdom', 'London'),
			('Jason Clarke', '1969-07-17', 'Australia', 'Winton')

INSERT INTO FilmsActors
            (IdFilm, IdActor) 
      VALUES 
			(1, 1),
			(1, 2),
			(1, 3),
			(2, 4),
			(2, 5),
			(2, 6),
			(3, 7),
			(3, 8),
			(3, 9),
			(4, 10),
			(4, 11),
			(4, 12),
			(5, 13),
			(5, 14),
			(5, 15), 
			(6, 16),
			(6, 17),
			(6, 18),
			(7, 19),
			(7, 20),
			(7, 21),
			(8, 15),
			(9, 15),
			(10, 13)

INSERT INTO Reviews
            (UserName, ReviewDate, Rating, IdFilm)
      VALUES 
            ('Mbraddik0', '2021-01-24', 6, 1),
			('rjoynt1', '2021-09-14', 6, 1),
			('Baucourte2', '2021-05-25', 9, 1),
			('Adomenge3', '2016-03-30', 8, 2),
			('cbellward7', '2017-05-12', 10, 2),
			('lskelbeck8', '2017-05-31', 7, 2),
			('Fgras9', '2015-01-04', 1, 3),
			('jstogilla', '2021-09-16', 2, 3),
			('Binnotb', '2021-02-07', 7, 3),
			('bsalergc', '2014-12-22', 2, 4),
			('ksimmgend', '2017-08-21', 5, 4),
			('Cloughnane', '2019-02-01', 1, 4),
			('gcarlislef', '2019-11-29', 2, 5),
			('Adomenyg', '2015-11-02', 8, 5),
			('htithacotth', '2018-01-06', 7, 5),
			('Abarabischi', '2020-09-11', 5, 6),
			('bwinnyj', '2016-09-07', 9, 6),
			('jnealeyk', '2020-04-30', 10, 6),
			('Abehanl', '2020-03-31', 6, 7),
			('Eleatonm', '2017-06-19', 8, 7),
			('Ihowgilln', '2021-04-21', 2, 7),
			('Vdello', '2020-03-26', 10, 8),
			('cvibertp', '2019-04-16', 4, 8),
			('rjoseferq', '2015-09-17', 2, 8),
			('hcarnduffr', '2016-08-17', 7, 9),
			('pboggess', '2015-01-17', 8, 9),
			('Kcolliart', '2017-01-19', 9, 9),
			('Dreichertu', '2020-10-30', 6, 10),
			('bjoshamv', '2017-07-31', 9, 10),
			('Blaurentyw', '2020-12-16', 4, 10)

INSERT INTO ProductionCompany 
            (ComName, ProdCountry)
	 VALUES 
	        ('SharpSword Films', 'USA'),
			('Annapurna Pictures', 'USA'),
			('Wild Bunch', 'Germany'),
			('Marlukin Productions','USA'),
			('Elevated Films', 'USA'),
			('Warner Bros. Pictures', 'USA'),
			('Walt Disney Pictures', 'USA'),
			('Paramount Pictures', 'USA'),
			('20th Century Studios', 'USA'),
			('Mod Atlas Media', 'USA')

INSERT INTO FilmsProduction
            (IdFilm, IdProd)
	 VALUES
	        (1, 1),
			(3, 2),
			(5, 3),
			(6, 4),
			(7, 5),
			(8, 6),
			(10, 7),
			(11, 8),
			(11, 9),
			(14, 10)