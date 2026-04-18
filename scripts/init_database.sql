=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/


use master;
go

if exisits (select 1 from sys.databases where name = 'DataWarehouse')
begin  
  Alter Database DataWarehouse set SINGLE_USER with rollback immediate;
  drop Database DataWarehouse;
end;
go

-- Create the 'DataWarehouse' database  
create DATABASE dataWarehouse -- create database

alter DATABASE dataWarehouse
Modify Name = DataWarehouse

use DataWarehouse

Create Schema bronze;
go
Create Schema silver;
go
Create Schema gold;
go
