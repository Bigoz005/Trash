ALTER FUNCTION dbo.Add_Reverser(@tekst1 varchar(100), @tekst2 varchar(100))
RETURNS varchar(200)
AS
BEGIN
DECLARE @wynik varchar(200);
DECLARE @indexy INT;
DECLARE @char_1 varchar(200);
DECLARE @char_2 varchar(200);
	IF DATALENGTH(@tekst1) != DATALENGTH(@tekst2)
		SET @wynik = 'ZLE';
	ELSE
	BEGIN
		SET @indexy = DATALENGTH(@tekst1)
		WHILE @indexy >= 0
			BEGIN
				SET @char_1 = SUBSTRING(@tekst1,@indexy,1)
				SET @char_2 = SUBSTRING(@tekst2,@indexy,1)
				SET @indexy=@indexy-1
				SET @wynik=CONCAT(@wynik,@char_2,@char_1)
			END
	END
	RETURN @wynik
END;