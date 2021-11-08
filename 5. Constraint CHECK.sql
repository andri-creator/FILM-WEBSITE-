ALTER TABLE Reviews
ADD CONSTRAINT Rating CHECK(Rating <= 10 AND Rating >= 1) 