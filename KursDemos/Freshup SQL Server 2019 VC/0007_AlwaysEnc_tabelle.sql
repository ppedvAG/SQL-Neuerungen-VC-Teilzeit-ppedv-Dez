--Tabelle vorbereiten

create database AlwaysEnc;
GO

use AlwaysEnc;
GO

create table kunden
	(
		Kid int identity,
		Firma varchar(50),
		Stadt varchar(50),
		Budget nvarchar(100) --muss sein..int, money für Verschl. nicht erlaubt
	)
		
--drop table Kunden

insert into kunden (Firma, Stadt, Budget)
select companyname, City,  round(ABS(checksum(newid())) *0.01,0) 
from northwind..Customers


--Sapten verschlüsseln: SSMS ..rechte Maustatste... Saplte verschlüsseln

--Zertifikat im Zertifikatsspeicher (Windows: Benutzer, Computer oder Azure Enclave)


---Verbindung herstellen mit SSMS 18.0 
--Optionen in Verbindungsassistent.. AlwayS Encrypted aktivieren

--bei SSMS unter v18

--unter Verbindungsoptionen
--   column encryption setting=enabled

--verschlüsselt
select * from kunden

-- Daten lesen zu können muss SSMS ab v18 bei den Verbindungsoptien AlwaysEnc aktiviert haben

--Achtung paramtetirsiere Werte (Variable) können eigtl nicht verwendet werden ..
--ausser man gibt beim verbinden die Parametrisierung frei

--> Siehe auch https://docs.microsoft.com/de-de/sql/relational-databases/security/encryption/always-encrypted-query-columns-ssms?view=sql-server-ver15

DECLARE @SSN char(11) = '795-73-9838';
   
DECLARE @BirthDate date = '19990104';
DECLARE @Salary money = $30000;

DECLARE @Name nvarchar(50); --Initialization separate from declaration
SET @Name = 'Abel';

DECLARE @StartDate date = GETDATE(); -- a function used instead of a literal

DECLARE @NewSalary money = @Salary * 1.1; -- an expression used instead of a literal


