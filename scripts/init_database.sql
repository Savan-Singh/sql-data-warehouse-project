/*
Script purporse:

Warning:

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
