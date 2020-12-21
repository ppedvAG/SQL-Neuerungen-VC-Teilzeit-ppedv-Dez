--SETUP

/*
MAXDOP
Anzahl der Kerne, die eine Abfrage ax verwwenden soll
früher: MAXDOP = 0 = Alle  Kostenschwellwert: 5
--Anzahl der Kerne für maxdop (max 8)
--> evtl mal mit 50% der Kerne

-->Kostenschwellwert OLAP 50  OLTP 25 Faustregel

--> Erkennen im Plan: Repartition Stream Gather Stream 

--> Einstellung (neu) Scoped databases)

RAM
default: 0 bis 2 PB RAM 
autom Vorschlag Gesamt mius OS--> musss erst akzeptieren


Trenne Daten von Logfiles



besonders tempdb optimieren:
--> Trenne Daten von Logfiles
--> Anzahl der kerne = Anzahl der Datendatein , aber max 8
--> -T 1117 -T1118

--autmatische Wachsen aller Datedateien.. nicht rumpfuschen...
--jeder Block wird nur eine Tabelle enthalten.. keine mixed extents


--evtl zeilenversionierung




*/

select * from sys.database_scoped_configurations

USE [Northwind]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO


use northwind

select* into ku2 from ku



--Statsistiken.. evtl lauf Legacy Kardinalschätzung umstellen




select * from ku2 where ID = 100
select * from ku2 where city = 'Berlin'

select * from ku2 where country = 'UK' and freight < 0.5

--ADR aktivieren

ALTER  DATABASE NewStyle SET ACCELERATED_DATABASE_RECOVERY = ON;