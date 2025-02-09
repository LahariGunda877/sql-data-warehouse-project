/*
=============================================================
Database and Schema Creation Script
=============================================================
Purpose:
    This script creates a new database named 'DataWarehouse'. 
    If 'DataWarehouse' already exists, it will be dropped and recreated. 
    The script also creates three schemas within the database: 'bronze', 'silver', and 'gold'.

NOTE:
    This script will delete the entire 'DataWarehouse' database if it already exists. 
    All data will be permanently lost. Ensure you have proper backups before executing this script.
*/


USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE; -- 
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
