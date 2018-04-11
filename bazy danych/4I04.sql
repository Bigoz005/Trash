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

SELECT CONCAT('TO', 'JEST', 'TEKST', 'Z£¥CZONY');

SELECT CONCAT('TO', ' ', 'JEST', ' ', 'TEKST', ' ', 'Z£¥CZONY', ' ', 'ZE', ' ', 'SPACJAMI');

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

SELECT [dzialy], AVG(wiek) AS [ŒREDNIA] FROM [vPracownicy]
GROUP BY [dzialy] ORDER BY [ŒREDNIA] DESC;


 CREATE VIEW [vSred_Zarobki] AS
 SELECT d.nazwa, AVG(z.brutto) AS srednie FROM pracownicy AS p
 JOIN dzialy AS d ON p.ID_dzialy = d.ID_dzialy
 JOIN zarobki AS z ON z.ID_pracownicy=p.ID_pracownicy
 GROUP BY d.nazwa HAVING AVG(z.brutto) > 3000;

 SELECT * FROM [vSred_Zarobki] ORDER BY [srednie];

 
CREATE VIEW [vZlec_Sped] AS
SELECT s.CompanyName, COUNT(o.OrderID) AS [Iloœæ zleceñ]
FROM [Orders] AS o
INNER JOIN [Shippers] AS s ON o.ShipVia=s.ShipperID
GROUP BY s.CompanyName;

SELECT CompanyName, [Iloœæ zleceñ] FROM [vZlec_Sped]
WHERE [Iloœæ zleceñ] IN (SELECT MAX([Iloœæ zleceñ]) FROM [vZlec_Sped]);
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

INSERT INTO [test_prac](ID_pracownicy, imie, nazwisko, wiek, nazwa_dzialu, data, brutto) VALUES(209405,'Micha³','Nawrot', 21,'magazyn',2018-04-11, 2550.00);
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

*/

UPDATE [test_prac_2] SET imie = (CASE
WHEN lower(imie) like 'janusz' THEN 'ROBERT'
WHEN lower(imie) like 'tomasz' THEN 'ADAM'
ELSE imie 
END ),
nazwisko = (CASE
WHEN lower(nazwisko) like 'pi¹tasa' THEN 'ROZMUS'
WHEN lower(nazwisko) like'ziomek' THEN 'ADAMCZYK'
ELSE nazwisko
END);

DELETE FROM [test_prac];
TRUNCATE TABLE [test_prac];