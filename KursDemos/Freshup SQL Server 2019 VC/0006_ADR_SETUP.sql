
DROP database IF EXISTS oldstyle;
DROP database IF EXISTS NewStyle;



CREATE DATABASE OldStyle;
GO
CREATE DATABASE NewStyle;
ALTER  DATABASE NewStyle SET ACCELERATED_DATABASE_RECOVERY = ON;
GO