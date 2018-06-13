					--komentarz liniowy
					/*komentarz blokowy*/

/*
USE [master];
GO
CREATE DATABASE [sr_12_14];
GO
USE [sr_12_14];

CREATE TABLE [dzialy]
(
	ID_dzialy BIGINT NOT NULL IDENTITY(1,1),
	Nazwa VARCHAR(MAX)
);

CREATE TABLE [pracownicy]
(
	ID_pracownicy BIGINT NOT NULL IDENTITY(1,1),
	Imie VARCHAR(50) NOT NULL,
	Nazwisko VARCHAR(50) NOT NULL,
	Wiek INT,
	ID_dzialy BIGINT
);

CREATE TABLE [zarobki]
(
	ID_zarobki BIGINT NOT NULL IDENTITY(1,1),
	Data DATETIME NOT NULL,
	Brutto MONEY NOT NULL,
	ID_pracownicy BIGINT
);
GO
ALTER TABLE dzialy ADD nazwa_kolumny INT; --dodanie kolumny
GO
ALTER TABLE dzialy ALTER COLUMN nazwa_kolumny BIGINT NOT NULL; --zmiana kolumny
GO
ALTER TABLE dzialy DROP COLUMN nazwa_kolumny; --usuniecie kolumny
GO
ALTER TABLE dzialy ADD CONSTRAINT PK_ID_dzialy PRIMARY KEY(ID_dzialy);
GO
ALTER TABLE pracownicy ADD CONSTRAINT PK_ID_pracownicy PRIMARY KEY(ID_pracownicy);
GO
ALTER TABLE zarobki ADD CONSTRAINT PK_ID_zarobki PRIMARY KEY(ID_zarobki);
GO
ALTER TABLE pracownicy ADD CONSTRAINT FK_ID_dzialy FOREIGN KEY(ID_dzialy) REFERENCES dzialy(ID_dzialy);
GO
ALTER TABLE zarobki ADD CONSTRAINT FK_ID_pracownicy FOREIGN KEY(ID_pracownicy) REFERENCES pracownicy(ID_pracownicy);
GO
ALTER TABLE pracownicy ALTER COLUMN plec varchar(1) NOT NULL;
GO
ALTER TABLE pracownicy ADD CONSTRAINT DF_plec DEFAULT 'M' FOR plec;
GO
ALTER TABLE pracownicy ADD CONSTRAINT CHK_plec CHECK(LOWER(plec) = 'k' OR UPPER(plec) = 'm');
GO
ALTER TABLE pracownicy ADD nr_unikalny BIGINT NOT NULL;
GO
ALTER TABLE pracownicy ADD CONSTRAINT DF_nr_unikalny DEFAULT IDENT_CURRENT('pracownicy') + 1 FOR nr_unikalny;
GO
ALTER TABLE pracownicy ADD CONSTRAINT UN_nr_unikalny UNIQUE(nr_unikalny);
GO
ALTER TABLE pracownicy DROP CONSTRAINT UN_nr_unikalny;
GO
INSERT INTO [dzialy](nazwa) VALUES('Marketing');

SELECT * from dzialy;
SELECT nazwa from dzialy;

SELECT nazwa from dzialy ORDER BY nazwa;

SELECT nazwa from dzialy ORDER BY nazwa DESC;
SELECT nazwa from dzialy ORDER BY nazwa ASC;

SELECT top 2 nazwa from dzialy order by nazwa;

SELECT top 2 nazwa from dzialy order by nazwa desc;

SELECT nazwa FROM (
 SELECT TOP 2 nazwa FROM dzialy ORDER BY nazwa DESC
) AS tab
 ORDER BY nazwa;
 SELECT * FROM pracownicy WHERE LOWER(imie) LIKE 'j%';
 
 SELECT imie, nazwisko, wiek,
 CASE 
 when wiek <=20 then 'mlody'
 when wiek BETWEEN 26 AND 45 then 'dorosly'
 when wiek > 46 then 'podeszly'
 else 'nieokreslony'
 END AS 'Jaki wiek?'
 FROM pracownicy;

 SELECT imie +' '+ nazwisko AS dane FROM pracownicy ORDER BY dane;
 
 SELECT p.imie+' '+ p.nazwisko AS dane, d.nazwa FROM pracownicy AS p, dzialy AS d WHERE p.ID_dzialy = d.ID_dzialy ORDER BY dane;
 
 SELECT p.imie+' '+p.nazwisko AS dane, d.nazwa FROM pracownicy as p
				JOIN dzialy AS d ON p.ID_dzialy = d.ID_dzialy 
ORDER BY dane;
 
 SELECT	d.nazwa, z.brutto FROM pracownicy AS p
				JOIN dzialy AS d ON p.ID_dzialy=d.ID_dzialy
				JOIN zarobki AS z ON z.ID_pracownicy =p.ID_pracownicy
 ORDER BY d.nazwa;
 
 SELECT	d.nazwa, AVG(z.brutto) AS srednie FROM pracownicy AS p
				JOIN dzialy AS d ON p.ID_dzialy=d.ID_dzialy
				JOIN zarobki AS z ON z.ID_pracownicy =p.ID_pracownicy
 GROUP BY d.nazwa ORDER BY d.nazwa;
 
 SELECT COUNT(*) FROM pracownicy;
 SELECT COUNT(wiek) FROM pracownicy;
 SELECT COUNT(nazwisko) FROM pracownicy;
 SELECT SUM(wiek) FROM pracownicy;
 SELECT MAX(wiek) FROM pracownicy;
 SELECT MIN(wiek) FROM pracownicy;
 SELECT AVG(wiek) FROM pracownicy;
 
 SELECT d.nazwa, AVG(p.wiek)AS sredni FROM pracownicy as p
 JOIN dzialy AS d ON p.ID_dzialy=d.ID_dzialy
 GROUP BY d.Nazwa ORDER BY d.nazwa;
 
 
 SELECT TOP 1 tab.nazwa, tab.sredni
 FROM(
 SELECT d.nazwa, AVG(z.brutto) AS sredni FROM pracownicy AS p
 JOIN dzialy AS d ON p.ID_dzialy=d.ID_dzialy
 JOIN zarobki AS z ON z.ID_pracownicy=p.ID_pracownicy
 GROUP BY d.Nazwa
 )AS Tab
 ORDER BY tab.sredni DESC;
 

 SELECT d.nazwa, AVG(z.brutto) AS sredni FROM pracownicy AS p
 JOIN dzialy AS d ON p.ID_dzialy=d.ID_dzialy
 JOIN zarobki AS z ON z.ID_pracownicy=p.ID_pracownicy
 GROUP BY d.Nazwa HAVING AVG(z.brutto) > 3000 ORDER BY d.nazwa
 
 SELECT d.nazwa FROM dzialy AS d WHERE
EXISTS(SELECT * FROM pracownicy AS p WHERE p.ID_dzialy=d.ID_dzialy);
 
SELECT d.nazwa FROM dzialy AS d WHERE
NOT EXISTS(SELECT * FROM pracownicy AS p WHERE p.ID_dzialy=d.ID_dzialy);

SELECT imie + ' ' + nazwisko AS dane, wiek FROM pracownicy
WHERE wiek IN(20, 30, 40, 50) ORDER BY dane;

SELECT imie + ' ' + nazwisko AS dane, wiek FROM pracownicy
WHERE LOWER(imie) IN('jan', 'janusz') ORDER BY dane;

SELECT imie + ' ' + nazwisko AS dane, wiek FROM pracownicy
WHERE ID_pracownicy IN(
SELECT DISTINCT ID_pracownicy FROM zarobki WHERE brutto>3000) ORDER BY dane;


SELECT GETDATE();

SELECT FORMAT(GETDATE(), 'dd-MM-yyyy H:m:s');

SELECT DATEPART(YEAR, GETDATE());

SELECT DATEPART(MONTH, GETDATE());

SELECT DATEPART(WEEK, GETDATE());

SELECT DATEPART(DAY, GETDATE());

SELECT DATEDIFF(MONTH, '1984-01-01 10:00:00', GETDATE());

SELECT DATEDIFF(YEAR, '1984-01-01 10:00:00', GETDATE());

SELECT DATEADD(YEAR, 1, GETDATE());

SELECT DATEADD(MONTH, 2, GETDATE());

SELECT CONCAT('TO', 'JEST', 'TEKST', 'ZŁĄCZONY');

SELECT CONCAT('TO', ' ', 'JEST', ' ', 'TEKST', ' ', 'ZŁĄCZONY', ' ', 'ZE', ' ', 'SPACJAMI');

SELECT CONVERT(int, 199.99);


--wyswietlic nazwe i c.jednostkowa najtanszego zakupionego produktu

SELECT DISTINCT tab.productid, p.productname, tab.UnitPrice
FROM [order details] tab
INNER JOIN [products] p ON p.Productid=tab.Productid
WHERE tab.UnitPrice IN (SELECT MIN(unitprice) FROM [Order Details]);






										WIDOKI




CREATE VIEW [vTest] 
AS
SELECT * FROM dzialy;



ALTER VIEW [vTest]
AS
SELECT * FROM zarobki;

SELECT * FROM vTest;

DROP VIEW [Vtest]

CREATE VIEW [vPracownicy] AS
SELECT p.imie, p.nazwisko,p.wiek,p.plec, d.nazwa AS [dzialy]
FROM [dzialy] AS d
INNER JOIN [pracownicy] AS p ON p.ID_dzialy=d.ID_dzialy;


SELECT * FROM [vPracownicy] ORDER BY [wiek];

SELECT [dzialy], AVG(wiek) AS [ŚREDNIA] FROM [vPracownicy]
GROUP BY [dzialy] ORDER BY [ŚREDNIA] DESC;


 CREATE VIEW [vSred_Zarobki] AS
 SELECT d.nazwa, AVG(z.brutto) AS srednie FROM pracownicy AS p
 JOIN dzialy AS d ON p.ID_dzialy = d.ID_dzialy
 JOIN zarobki AS z ON z.ID_pracownicy=p.ID_pracownicy
 GROUP BY d.nazwa HAVING AVG(z.brutto) > 3000;

 SELECT * FROM [vSred_Zarobki] ORDER BY [srednie];

 
CREATE VIEW [vZlec_Sped] AS
SELECT s.CompanyName, COUNT(o.OrderID) AS [Ilość zleceń]
FROM [Orders] AS o
INNER JOIN [Shippers] AS s ON o.ShipVia=s.ShipperID
GROUP BY s.CompanyName;

SELECT CompanyName, [Ilość zleceń] FROM [vZlec_Sped]
WHERE [Ilość zleceń] IN (SELECT MAX([Ilość zleceń]) FROM [vZlec_Sped]);
*/

/*stworzyc widok wyswietlajacy produkty i ich ceny jednostkowe, dla zaczynajacych sie od c do p,
 oraz ceny z przedzialu od 10 do 100, bez 10 i 97 */
 /*
CREATE VIEW [vProdukty_Cena] AS 
SELECT ProductName, UnitPrice 
FROM Products
WHERE productname LIKE '[C-P c-p]%'
AND unitprice BETWEEN '10' AND '100'
AND unitprice <>'10'
AND unitprice <>'97';

SELECT * FROM [vProdukty_Cena] ORDER BY [UnitPrice];


INSERT INTO [dzialy](ID_dzialy, nazwa) VALUES(5,'MAGAZYN');

INSERT INTO [dzialy](nazwa) VALUES('OCHRONA');

INSERT INTO [dzialy](nazwa) VALUES('OCHRONA2'),('OCHRONA3'),('OCHRONA3')

INSERT INTO [dzialy](nazwa)
						(SELECT nazwa+'_BIS' FROM [dzialy] WHERE ID_dzialy IN(2,4));
CREATE TABLE test_prac
(
	ID_pracownicy BIGINT NOT NULL,
	imie VARCHAR(50) NULL,
	nazwisko VARCHAR(50) NULL,
	wiek INT NULL,
	nazwa_dzialu VARCHAR(max) NOT NULL,
	data DATETIME NOT NULL,
	brutto MONEY NOT NULL
);

INSERT INTO [test_prac](ID_pracownicy, imie, nazwisko, wiek, nazwa_dzialu, data, brutto) VALUES(209405,'Michał','Nawrot', 21,'magazyn',2018-04-11, 2550.00);
INSERT INTO [test_prac](ID_pracownicy, imie, nazwisko, wiek, nazwa_dzialu, data, brutto)
SELECT p.ID_pracownicy,p.Imie,p.Nazwisko,p.Wiek,d.Nazwa, z.Data, z.Brutto FROM [pracownicy] AS p
INNER JOIN [dzialy] AS d ON d.ID_dzialy=p.ID_dzialy
INNER JOIN [zarobki] AS z ON z.ID_pracownicy=p.ID_pracownicy


CREATE TABLE test_prac_2
(
	ID_pracownicy BIGINT NOT NULL,
	imie VARCHAR(50) NULL,
	nazwisko VARCHAR(50) NULL,
	wiek INT NULL,
	nazwa_dzialu VARCHAR(max) NOT NULL,
	data DATETIME NOT NULL,
	brutto MONEY NOT NULL
);


CREATE VIEW [vtest_prac]
AS
SELECT p.ID_pracownicy, p.imie, p.nazwisko, p.wiek, d.nazwa, z.data, z.brutto
FROM [pracownicy] AS p
INNER JOIN [dzialy] AS d ON d.ID_dzialy=p.ID_dzialy
INNER JOIN [zarobki] AS z ON z.ID_pracownicy=p.ID_pracownicy
WHERE p.wiek BETWEEN 25 AND 35;

INSERT INTO [test_prac_2](ID_pracownicy, imie, nazwisko,  wiek,nazwa_dzialu, data, brutto)
(SELECT * FROM [vtest_prac]);

CREATE TABLE [orders2](
orderID INT NOT NULL,
customerID NCHAR(5) NULL,
employeeID INT NULL,
orderdate DATETIME NULL,
requireddate DATETIME NULL,
shippeddate DATETIME NULL,
shipvia INT NULL,
freight MONEY NULL DEFAULT (0),
shipname NVARCHAR(max) NULL,
shipaddress NVARCHAR(max) NULL,
shipcity NVARCHAR(max) NULL,
shipregion NVARCHAR(max) NULL,
shippostalcode NVARCHAR(max) NULL,
shipcountry NVARCHAR(max) NULL
);


INSERT INTO [orders2](orderID,customerID,employeeID,orderdate,
requireddate,shippeddate,shipvia,freight,
shipname, shipaddress, shipcity, shipregion,
shippostalcode,shipcountry)
(SELECT [OrderID],[CustomerID],[EmployeeID],[Orderdate],
[Requireddate],[Shippeddate],[ShipVia],[Freight],
[Shipname], [Shipaddress], [Shipcity], [Shipregion],
[Shippostalcode],[Shipcountry]
FROM [north_eng].[dbo].[Orders] W
WHERE DATEPART(YEAR, [OrderDate])='1997');


UPDATE [test_prac_2] SET imie = (CASE
WHEN lower(imie) like 'janusz' THEN 'ROBERT'
WHEN lower(imie) like 'tomasz' THEN 'ADAM'
ELSE imie 
END ),
nazwisko = (CASE
WHEN lower(nazwisko) like 'piątasa' THEN 'ROZMUS'
WHEN lower(nazwisko) like'ziomek' THEN 'ADAMCZYK'
ELSE nazwisko
END);

DELETE FROM [test_prac];
TRUNCATE TABLE [test_prac];



Create function dbo.test()
returns int
as 
begin
	return 10;
end;


select dbo.test();

alter function dbo.test()
returns varchar(max)
as
begin
	return 'Witaj świecie!';
end;

select dbo.test();

drop function dbo.test;

create function dbo.netto(@brutto money)
returns money
as
begin
	declare @netto money;

	set @netto=@brutto/1.23;

	return @netto;
end;

select dbo.netto(Brutto) from zarobki;

Create function dbo.vat(@brutto money, @netto money)
returns money
as
begin
	declare @vat money;

	set @vat=@brutto-@netto

	return @vat;
end;

Create function dbo.vat2(@brutto money, @netto money)
returns money
as
begin
	return(@brutto-@netto);
end;

select tab.*,dbo.vat(Brutto,tab.netto) as vat
from (select *, dbo.netto(Brutto)as netto from zarobki) as tab;

select tab.*,dbo.vat2(Brutto,tab.netto) as vat
from (select *, dbo.netto(Brutto)as netto from zarobki) as tab;

Create function dbo.vat3(@brutto money)
returns money
as 
begin
	declare @netto money;
	set @netto = @brutto/1.23
	--set @netto = (select dbo.netto(@brutto));
	return(@brutto-@netto);
end;

select *, dbo.vat3(Brutto) as VAT from zarobki;

select *, dbo.netto(Brutto) as netto, dbo.vat3(Brutto) as vat from zarobki;


Create function dbo.Wynik()
returns Table
as
	return(Select *, dbo.netto(brutto), dbo.vat2(brutto) FROM zarobki);


select * from dbo.Wynik();



Create function dbo.Wiek(@wiek int)
Returns varcahr(max)
as
begin
	Declare @wynik varchar(max);

	if @wiek < 25
		begin
			set @wynik = 'Mlody'
		end
	if @wiek >= 25 AND @wiek <=65
	begin
		set @wynik='Sredni'
	end

	if @wiek > 65
		begin
			set @wynik = 'Stary'
		end
	else
		begin	
			set @wynik='nieznany'
		end

end;


select imie,nazwisko,wiek,dbo.wiek(wiek) as 'Jaki wiek?' from pracownicy;


CREATE FUNCTION dbo.potega(@liczba float)
RETURNS float
AS
BEGIN
	DECLARE @wynik float;

	SET @wynik=POWER(@liczba, 2);

	RETURN @wynik;
END;

SELECT dbo.potega(5);

CREATE FUNCTION dbo.Pola(@figura varchar(20), @bok1 float, @bok2 float =0)
RETURNS float
AS 
BEGIN
	DECLARE @wynik float;
	if Upper(@figura)='Trojkąt'
	BEGIN
		SET @wynik=@bok1*@bok2/2;
	END
	if Upper(@figura)='Kwadrat'
	BEGIN
		SET @wynik=dbo.potega(@bok1);
	END;
	if Upper(@figura)='Prostokat'
	BEGIN
		SET @wynik=@bok1*@bok2;
	END;
	if Upper(@figura)='Trapez'
	BEGIN
		SET @wynik=(@bok1+@bok2)/2;
	END;
	if Upper(@figura)='Koło'
	BEGIN
		SET @wynik=PI()*@bok1*@bok2;
	END;
	if Upper(@figura)='Równoległobok'
	BEGIN
		SET @wynik=@bok1*@bok2;
	END;
	RETURN @wynik;
END;


USE [Northwind]

CREATE FUNCTION dbo.North_5_TOP(@rok int)
RETURNS TABLE
AS
RETURN(SELECT TOP 5 SUM(od.Quantity) AS [Ilość_zamówień], p.ProductName AS [Produkt],s.CompanyName AS [Dostawca]
	FROM [Northwind].[dbo].[Order Details] AS od
	INNER JOIN [Northwind].[dbo].Products AS p ON od.ProductID =p.ProductID
	INNER JOIN [Northwind].[dbo].Orders AS o ON o.OrderID = od.OrderID
	INNER JOIN [Northwind].[dbo].Suppliers AS s ON s.SupplierID=p.SupplierID
GROUP BY od.ProductID, p.ProductName, s.CompanyName ORDER BY 1 DESC
);

SELECT * FROM dbo.North_5_TOP(1998);


CREATE FUNCTION dbo.Add_Reverser(@tekst1 varchar(100), @tekst2 varchar(100))
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


SELECT dbo.Add_Reverser('abcd', 'efgh');


CREATE PROCEDURE test
as
begin 
select * from pracownicy
end;


exec test;

Alter procedure test(@imie varchar (max)= '%', @nazwisko varchar(max))
as
begin
select * from pracownicy where imie like @imie and nazwisko like @nazwisko
end;

exec test 'j%', '%p';
exec test @nazwisko='j%';

Alter procedure test
as
begin
	Declare @zmienna varchar(100);
	set @zmienna = 'Zmienna';
	print @zmienna;

	select @zmienna = nazwa from dzialy where nazwa like 'M%' order by nazwa;
	print @zmienna;
end;

exec test;

alter procedure test(@Bok int, @Wynik int OUTPUT)
as 
begin
	SET @Wynik = POWER(@Bok, 2);
end;


declare @Pole int;
exec test 5, @Pole OUTPUT;
PRINT 'Pole powierzchni kwadratu wynosi: ' +CONVERT(varchar, @Pole);
*/
/*
create procedure test(@Data datetime= NULL)
as 
begin
IF @Data IS NULL
BEGIN 
	SET @Data= GetDate();
END
	PRINT 'Data :' +
	CASE DATEPART(dw, @Data)
	WHEN 1 THEN 'Niedziela'
	WHEN 2 THEN 'Poniedzialek'
	WHEN 3 THEN 'Wtorek'
	WHEN 4 THEN 'Sroda'
	WHEN 5 THEN 'Czwartek'
	WHEN 6 THEN 'Piatek'
	WHEN 7 THEN 'Sobota'
	END
	+ ', ' + CONVERT(varchar, DAY(@Data))+' '+ DATENAME(month, @Data) + ' ' +CONVERT(varchar, YEAR(@Data));
END;

exec test

--declare @Pole int;
--exec test 5, @Pole OUTPUT;
--PRINT 'Pole powierzchni kwadratu wynosi: ' +CONVERT(varchar, @Pole);

drop procedure test

*/
/*
create procedure Adress_Split(@adres varchar(max))
AS
BEGIN
	DECLARE @pozycja integer;
	
	PRINT 'Adres wejściowy: ' + @adres;

	PRINT 'Adres wyjściowy: ';

	SET @pozycja = CHARINDEX(' ', @adres)
	PRINT SUBSTRING(@adres, 0, @pozycja+1)

	WHILE(LEN(@adres)>2)
	BEGIN
	SET @adres = SUBSTRING(@adres, @pozycja + 1, LEN(@adres))
	SET @pozycja = CHARINDEX(' ', @adres)
	
		IF @pozycja = 0
			SET @pozycja = LEN(@adres) + 1;

		PRINT SUBSTRING(@adres, 0, @pozycja + 1)
	END	
END



EXEC Adress_Split 'Piotrkowska 123/23 m.30 90-123 Łódź'
*/
/*
CREATE PROCEDURE blad
AS
BEGIN
	BEGIN TRY
		SELECT 1/0 AS [Dzielenie]
	END TRY
	BEGIN CATCH
		SELECT ERROR_NUMBER() AS [Numer błędu]
			  ,ERROR_SEVERITY() AS [istotność błędu]
			  ,ERROR_STATE() AS [Stan błędu]
			  ,ERROR_PROCEDURE() AS [Błąd procedury]
			  ,ERROR_LINE() AS [Linia Błędu]
			  ,ERROR_MESSAGE() AS [Wiadomość błędu]
	END CATCH;
END;

EXEC blad;

*/
/*

CREATE PROCEDURE CREATE_DB(@nazwa_db varchar(max))
AS
BEGIN
	BEGIN TRY
		EXEC('CREATE DATABASE [' + @nazwa_db + ']');
	END TRY
	BEGIN CATCH
		SELECT ERROR_NUMBER() AS [Numer błędu]
			  ,ERROR_SEVERITY() AS [istotność błędu]
			  ,ERROR_STATE() AS [Stan błędu]
			  ,ERROR_PROCEDURE() AS [Błąd procedury]
			  ,ERROR_LINE() AS [Linia Błędu]
			  ,ERROR_MESSAGE() AS [Wiadomość błędu]
	END CATCH;
END;


CREATE PROCEDURE CREATE_TABLES(@nazwa_db varchar(max))
AS
BEGIN
	BEGIN TRY
		EXEC ('CREATE TABLE [' + @nazwa_db + '].[dbo].[produkty]
		(
			ID_produktu BIGINT NOT NULL IDENTITY(1,1),
			nazwa VARCHAR(max) NOT NULL,
			opis VARCHAR(max) NOT NULL,
			ilosc_w_magazynie INT NOT NULL,
			cena_netto MONEY NOT NULL,
			stawka_vat INT NOT NULL,
			CONSTRAINT [PK_ID_produktu] PRIMARY KEY(ID_produktu)
			)');
		EXEC ('CREATE TABLE [' + @nazwa_db + '].[dbo].[klienci]
		(
			ID_klienta BIGINT NOT NULL IDENTITY(1,1),
			imie VARCHAR(10) NOT NULL,
			nazwisko VARCHAR(40) NOT NULL,
			plec VARCHAR(1) NOT NULL,
			data_urodzenia DATE NOT NULL,
			adres VARCHAR(max) NOT NULL,
			miasto VARCHAR(50) NOT NULL,
			kod_pocztowy VARCHAR(6) NOT NULL,
			email VARCHAR(max) NOT NULL,
			telefon INT NULL,
			CONSTRAINT [PK_ID_klienta] PRIMARY KEY(ID_klienta),
			CONSTRAINT [CHK_plec] CHECK(UPPER(plec) = ''K''
			OR UPPER(plec) = ''M'')
			)');
		EXEC ('CREATE TABLE [' + @nazwa_db + '].[dbo].[zamowienia]
		(
			ID_zamowienia BIGINT NOT NULL IDENTITY(1,1),
			ID_klienta BIGINT NOT NULL,
			numer_zamowienia INT NULL CONSTRAINT [DF_numer_zamowienia] DEFAULT(0),
			data_zamowienia DATETIME NOT NULL,
			data_realizacji DATETIME NULL,
			suma_wartosci_netto MONEY NULL,
			suma_wartosci_brutto MONEY NULL,
			suma_wartosci_vat MONEY NULL,
			CONSTRAINT [PK_ID_zamowienia] PRIMARY KEY(ID_zamowienia),
			CONSTRAINT [FK_ID_klienta] FOREIGN KEY(ID_klienta) REFERENCES [klienci](ID_klienta)
			)');
		EXEC ('CREATE TABLE [' + @nazwa_db + '].[dbo].[dane]
		(
			ID_danych BIGINT NOT NULL IDENTITY(1,1),
			ID_zamowienia BIGINT NOT NULL,
			imie VARCHAR(10) NOT NULL,
			nazwisko VARCHAR(40) NOT NULL,
			adres VARCHAR(max) NOT NULL,
			miasto VARCHAR(50) NOT NULL,
			kod_pocztowy VARCHAR(6) NOT NULL,
			CONSTRAINT [PK_ID_danych] PRIMARY KEY(ID_danych),
			CONSTRAINT [FK_ID_zamowienia_1] FOREIGN KEY(ID_zamowienia) REFERENCES [zamowienia](ID_zamowienia)
			)');
		EXEC ('CREATE TABLE [' + @nazwa_db + '].[dbo].[zamowienia_pozycje]
		(
			ID_zamowienia_pozycji BIGINT NOT NULL IDENTITY(1,1),
			ID_zamowienia BIGINT NOT NULL,
			ID_produktu BIGINT NOT NULL,
			nazwa VARCHAR(max) NOT NULL,
			opis VARCHAR(max) NOT NULL,
			ilosc_sztuk INT NOT NULL,
			cena_netto MONEY NOT NULL,
			stawka_vat INT NOT NULL,
			wartosc_netto MONEY NULL,
			wartosc_brutto MONEY NULL,
			wartosc_vat MONEY NULL,
			uwagi VARCHAR(max) NULL,
			CONSTRAINT [PK_ID_zamowienia_pozycji] PRIMARY KEY(ID_zamowienia_pozycji),
			CONSTRAINT [FK_ID_zamowienia_2] FOREIGN KEY(ID_zamowienia) REFERENCES [zamowienia](ID_zamowienia),
			CONSTRAINT [FK_ID_produktu] FOREIGN KEY(ID_produktu) REFERENCES [produkty](ID_produktu)
			)');

	END TRY
	BEGIN CATCH
		SELECT ERROR_NUMBER() AS [Numer błędu]
			  ,ERROR_SEVERITY() AS [istotność błędu]
			  ,ERROR_STATE() AS [Stan błędu]
			  ,ERROR_PROCEDURE() AS [Błąd procedury]
			  ,ERROR_LINE() AS [Linia Błędu]
			  ,ERROR_MESSAGE() AS [Wiadomość błędu]
	END CATCH;
END;

CREATE PROCEDURE CREATE_NEW_CLIENT(@nazwa_db varchar(max))
AS
BEGIN
	BEGIN TRY
		EXEC CREATE_DB @nazwa_db;

		EXEC CREATE_TABLES @nazwa_db;
END TRY
	BEGIN CATCH
		SELECT ERROR_NUMBER() AS [Numer błędu]
			  ,ERROR_SEVERITY() AS [istotność błędu]
			  ,ERROR_STATE() AS [Stan błędu]
			  ,ERROR_PROCEDURE() AS [Błąd procedury]
			  ,ERROR_LINE() AS [Linia Błędu]
			  ,ERROR_MESSAGE() AS [Wiadomość błędu]
	END CATCH;
END;

--DROP DATABASE sr_12_14_test
EXEC CREATE_NEW_CLIENT 'sr_12_14_test'

--DROP PROCEDURE CREATE_NEW_CLIENT;
--EXEC CREATE_DB baza;

CREATE FUNCTION TRIM(@tekst varchar(max))
RETURNS VARCHAR(max)
AS
BEGIN
	RETURN LTRIM(RTRIM(@tekst));
END;

SELECT dbo.Trim(' xyz ');

CREATE FUNCTION dbo.InitCap(@tekst varchar(max))
RETURNS VARCHAR(max)
AS
BEGIN
	RETURN UPPER(SUBSTRING(dbo.Trim(@tekst), 1, 1)) +
	LOWER(SUBSTRING(dbo.Trim(@tekst), 2, LEN(dbo.Trim(@tekst))));
END;

SELECT dbo.InitCap('TEST');
SELECT dbo.InitCap('test ');


 CREATE TRIGGER test
 ON dzialy
 AFTER insert
 as
 begin
	select * from dzialy;
 end;

 insert into dzialy(nazwa) values('test');

 alter trigger test
 on dzialy
 after insert,update,delete
 as 
 begin
	select * from inserted;
	select * from deleted;
 end;
  */
 /* 
 UPDATE dzialy SET nazwa = 'xxx' WHERE ID_dzialy = 1;
 
 DELETE FROM dzialy WHERE ID_dzialy = 1;
 */
 /*
 alter trigger test
 on dzialy
 after insert,update,delete
 as 
 begin
	if not exists(select * from deleted)
	and exists(select * from inserted)
	begin
		print 'insert'
	end
else if exists(Select * From deleted)
	and not exists(select * from inserted)
	begin
		print 'delete';
	end
else if exists(select * from deleted)
	and exists(select * from inserted)
	begin
		print 'UPDATE';
	end
end;

DROP trigger test;
ALTER TABLE pracownicy ADD iloscZarobkow INT NULL;

*/
/*
create trigger licznik
on zarobki
 after insert,update
 as 
  DECLARE @ID BIGINT;
  SET @ID =(SELECT ID_pracownicy FROM inserted);
 begin
	if @ID is NOT NULL
	begin
		Select count(brutto) AS 'iloscZarobkow', ID_pracownicy
		FROM zarobki GROUP BY ID_pracownicy;
	end
end;
*/
/*
alter trigger licznik
on zarobki
 after insert,update
 as 
  DECLARE @ID BIGINT, @ilosc INT;
  SET @ID =(SELECT ID_pracownicy FROM inserted);
 begin
	if @ID is NOT NULL
	begin
		SET @ilosc = (SELECT count(brutto) FROM zarobki
		WHERE ID_pracownicy = @ID GROUP BY ID_pracownicy);

		UPDATE pracownicy SET iloscZarobkow = @ilosc
		WHERE ID_Pracownicy = @ID;
		end
end;

INSERT INTO zarobki(data,brutto,ID_pracownicy) VALUES(GETDATE(),10000,1);

create trigger licznik2
on zarobki
 after insert
 as 
  DECLARE @ID BIGINT;
  SET @ID =(SELECT ID_pracownicy FROM inserted);
 begin
	if @ID is NOT NULL
	begin
		INSERT INTO zarpblo(data, brutto, ID_pracownicy)
		SELECT data,brutto,ID_pracownicy FROM inserted
		
		UPDATE pracownicy SET iloscZarobkow = dbo.ilosc(@ID)
		WHERE ID_Pracownicy = @ID;
		end
end;

 */
/*
alter trigger licznik
on zarobki
 Instead of insert
 as 
  DECLARE @ID BIGINT;
  SET @ID =(SELECT ID_pracownicy FROM inserted);
 begin
	if @ID is NOT NULL
	begin
		INSERT INTO zarpblo(data, brutto, ID_pracownicy)
		SELECT data,brutto,ID_pracownicy FROM inserted
		
		UPDATE pracownicy SET iloscZarobkow = dbo.ilosc(@ID)
		WHERE ID_Pracownicy = @ID;
		end
end;
*/

CREATE TABLE [zarobki_audyt](
	ID_audyt BIGINT NOT NULL IDENTITY(1,1),
	ID_zarobki BIGINT NOT NULL,
	data DATETIME NOT NULL,
	brutto MONEY NULL,
	ID_pracownicy BIGINT NOT NULL,
	operacja VARCHAR(max) NOT NULL,
	data_operacji DATETIME NOT NULL,
	CONSTRAINT [PK_ID_audyt] PRIMARY KEY (ID_audyt),
	CONSTRAINT [CHK_operacja] CHECK(UPPER(operacja) = 'INSERT' OR UPPER(operacja) = 'UPDATE' OR UPPER(operacja) = 'DELETE')
	);

CREATE TRIGGER audyt
ON [zarobki]
AFTER INSERT, UPDATE, DELETE
AS
begin
	if NOT EXISTS(SELECT * FROM deleted)
		AND EXISTS(SELECT * FROM inserted)
		BEGIN
			INSERT INTO [zarobki_audyt](ID_zarobki, data, brutto, ID_pracownicy,operacja,data_operacji)(SELECT ID_zarobki, data, brutto, ID_pracownicy, 'INSERT', GETDATE() FROM [inserted]);
		END
	ELSE IF EXISTS(SELECT * FROM deleted)
		AND NOT EXISTS(SELECT * FROM inserted)
		BEGIN
			INSERT INTO [zarobki_audyt](ID_zarobki, data, brutto, ID_pracownicy,operacja,data_operacji)(SELECT ID_zarobki, data, brutto, ID_pracownicy, 'DELETED', GETDATE() FROM [deleted]);
		END
	ELSE IF EXISTS(SELECT * FROM deleted)
			AND EXISTS(SELECT * FROM inserted)
		BEGIN
			INSERT INTO [zarobki_audyt](ID_zarobki, data, brutto, ID_pracownicy,operacja,data_operacji)(SELECT ID_zarobki, data, brutto, ID_pracownicy, 'UPDATE', GETDATE() FROM [inserted]);
		END
END;

SELECT * FROM [zarobki_audyt]

CREATE TRIGGER [zamowienia_audyt]
ON [zamowienia]
AFTER INSERT
AS
	DECLARE @ID BIGINT, @ID_k BIGINT;
	DECLARE @NR INT, @data DATETIME;
	SELECT @ID = [ID_zamowienia], @ID_k = [ID_Klienta] FROM [inserted];
	SELECT @NR = MAX([numer_zamowienia]) FROM [zamowienia];
	SELECT @data = [data_zamowienia] FROM [zamowienia] WHERE [ID_zamowienia] = @ID;
begin
	if (@ID IS NOT NULL) AND (@ID_k IS NOT NULL)
	BEGIN
			INSERT INTO [dane]([ID_zamowienia], [imie], [nazwisko],[adres],[miasto],[kod_pocztowy])(SELECT @ID, [imie], [nazwisko], [adres], [miasto], [kod_pocztowy] FROM [klienci] WHERE [ID_klienta] =@ID_k);
			
			IF @NR IS NULL
				BEGIN
					SET @NR = 0;
				END
			UPDATE [zamowienia] SET [numer_zamowienia] = (@NR+1),
			[data_realizacji] = DATEADD(DAY, 7, @data)
			WHERE [ID_zamowienia] = @ID;
	END
END;


/*
Utworzyc wyzwalacz na tabeli - zamowienia_pozycje - ktory uruchamiany jest zamiast INSERT INTO. 
Wyzwalacz ma sprawdzic roznice ilosci w magazynie oraz ilosc sztuk zamawianych produktu. 
Ich roznica ma byc wieksza badz rowna 0 i jest to warunek.

- Jesli spelniony jest warunek wyzwalacz ma obliczyc wartosc netoo, brutto oraz VAT 
nastepnie wstawic rekord do tabeli - zamowienia_pozycje - uzupelniajac wszystkie pola danymi z odpowiednie tabeli oraz wynikami z wyliczen
Zaktualizowac w tabeli - produkty - ilosc w magazynie o wartosc z roznicy

- Jesli nie jest spelniony warunek wyzwalacz ma przypisac 0 do wartosci netto, brutto oraz VAT, a 
w uwadze dac informacje: "!!UWAGA!! Zbyt malo towaru, aby zamowic" nastepnie wstawic rekord
do tabeli - zamowienia_pozycje - uzupelniajac wszystkie pola danymi z odpowiedniej tabeli.

Obliczyc sume wartosci netto brutto oraz VAT na podstawie tabeli -zamowienia_pozycje - 
nastepnie zaktualizowwac w tabeli - zamowienia - odpowiednie pola o wyniki z wyliczen.

Przed wyzwalaczem
Utworzyc 3 funkcje o nazwach:
1. wartosc_netto - zwracana wartosc to iloczyn ilosc sztuk i cena netto;
2. wartosc_brutto - zwracana wartosc to iloczyn stawka VAT i wartosc netto - Stawka VAT oblicza sie ze wzoru: (stawka_vat/100.)+1;
3. wartosc_vat - zwracana wartosc to roznica wartosc brutto i wartosc netto
*/