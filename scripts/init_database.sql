*/
-----------------------------------------------
DataBase and Schema 
-----------------------------------------------
Script Purpose :
          This scrips creates 'DataWarehouse' database. First it checks weather database present in 
          the server if yes it deletes and re-creates the database.
          The Script also creates three types of schema - 'bronze', 'silver','gold'.

WARNING:
        By droping the database you will loose the datas in the table, please makesure
        you take the backup.
/*

USE Master ;
Go

-- Drop and recreate 'DataWarehouse' database.

IF EXISTS (SELECT 1 FROM sys.database where name='DataWarehouse')
BEGIN
ALTER DATABASE Datawarehouse SET SIGNLE_USER WITH ROLLBACK IMMEDIATE;
END;
GO

-- Create the 'DataWarehouse' database
Create database DataWarehouse;
Go

-- Create three Layers of schemas
Create Schema bronze;
Go
Create Schema silver;
Go
Create Schema gold;
Go






