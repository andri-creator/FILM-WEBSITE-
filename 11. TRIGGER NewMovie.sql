CREATE TRIGGER NewMovie ON Films
AFTER INSERT 
AS  
DECLARE @filmsid int 
SELECT @filmsid = INSERTED.ID FROM INSERTED
  PRINT @filmsid
  INSERT INTO Reviews 
              (Username, ReviewDate, IdFilm) 
       VALUES ('NEW MOVIE!', GETDATE(), @filmsid)
  
