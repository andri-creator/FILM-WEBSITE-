CREATE TRIGGER Safety
ON DATABASE 
FOR DROP_TABLE AS
PRINT 'You must disable Trigger "Safety" to drop tables!'
ROLLBACK