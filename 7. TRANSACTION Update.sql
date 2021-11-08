BEGIN TRANSACTION
UPDATE Reviews 
SET Username = 'eattenburrow4'
WHERE ID = 2

UPDATE Reviews 
SET Username = 'edonny'
WHERE ID = 8

UPDATE Reviews 
SET Username = 'qallans27'
WHERE ID = 15 

UPDATE Reviews 
SET Username = 'kennew2l'
WHERE ID = 17 

UPDATE Reviews 
SET Username = 'focurrigan1x'
WHERE ID = 18 

COMMIT TRANSACTION

SELECT *
FROM Reviews
