--ORGA: AndreasR@ppedv.de

--9:00 -- 10:30-10:45 -----12:30

--Agenda

--Was ist neu....
--Security:

--Riskobewertung
--Datenklassifizierung

--Dynamic Data Masking

--Row Level Security

--Verschlüsseln der Daten  (AlwaysEncrypt)

--TDE


--SETUP
-------Dienst verw- Servicekonten vs DOmServiceKkonten
--Gem Auth vs Windows

Besitzverkettung..




--
--AlwaysOn AVGs


--Backup:
--Snapshots
--Fragmentsicherung.. RecModel.. LogResore mit geringst möglichen Datenverslust

--Zeilenversionierung
--ADR
---

schulung\Administrator
ppedv2019!

CREATE DATABASE [FRESHUP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FRESHUP', FILENAME = N'D:\_SQLDB\FRESHUP.mdf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FRESHUP_log', FILENAME = N'D:\_SQLDB\FRESHUP_log.ldf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FRESHUP] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [FRESHUP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FRESHUP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FRESHUP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FRESHUP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FRESHUP] SET ARITHABORT OFF 
GO
ALTER DATABASE [FRESHUP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FRESHUP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FRESHUP] SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF)
GO
ALTER DATABASE [FRESHUP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FRESHUP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FRESHUP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FRESHUP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FRESHUP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FRESHUP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FRESHUP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FRESHUP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FRESHUP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FRESHUP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FRESHUP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FRESHUP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FRESHUP] SET  READ_WRITE 
GO
ALTER DATABASE [FRESHUP] SET RECOVERY FULL 
GO
ALTER DATABASE [FRESHUP] SET  MULTI_USER 
GO
ALTER DATABASE [FRESHUP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FRESHUP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FRESHUP] SET DELAYED_DURABILITY = DISABLED 
GO
USE [FRESHUP]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = On;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = Primary;
GO
USE [FRESHUP]
GO
IF NOT EXISTS (SELECT name FROM sys.filegroups WHERE is_default=1 AND name = N'PRIMARY') ALTER DATABASE [FRESHUP] MODIFY FILEGROUP [PRIMARY] DEFAULT
GO





--SQL 2016 SP1 Ent fast auch Std/Ex







