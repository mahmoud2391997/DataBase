-- this is a comment
CREATE DATABASE PMDB;
GO 
USE PMDB;
GO
CREATE SCHEMA PM;--default schema dbo
GO
CREATE TABLE PM.Companies
(
CRNNO int primary key,
CompanyName varchar(50) not null, --varchar(n),nvarchar(n),char(n), nchar(n)
);
GO
CREATE TABLE PM.Managers
(
Id int not null,
Email varchar(100) not null, --varchar(n),nvarchar(n),char(n), nchar(n)
Primary key(Id)
);
GO
CREATE TABLE PM.Projects
(
PRJNO int primary key,
Title varchar(100) not null, --varchar(n),nvarchar(n),char(n), nchar(n)
ManagerId int foreign key references PM.Managers(Id) not null,
StartDate datetime2 not null,
InitialCost decimal(18,2)not null,--9999.99
Parked bit not null,
CRNNO int not null,
foreign key (CRNNO) references PM.Companies(CRNNO)
);
GO
CREATE TABLE PM.Technology
(
Id int not null,
Name varchar(100) not null,
Primary Key (Id)

)

GO
CREATE TABLE PM.ProjectTechnology
(
PRJNO int foreign key references PM.Projects not null,
TechnologyId int foreign key references PM.Technology(Id) not null,
Primary Key (PRJNO,TechnologyId)

)
GO
Create Database TestDB;
Go
Use TestDB
Go
CREATE TABLE SomeTable
(
Name varchar(25) not null,
);
Go
Alter Table SomeTable
Alter Column Name varchar(50);
Alter Table SomeTable
Add Col2 varchar(50) not null;
Alter Table SomeTable
Drop Column Col2;
Drop Table SomeTable;
Use master;
Go
Drop Database TestDb;
--Add Unique constraint
Alter Table Pm.Managers
Add constraint UN_Email UNIQUE(Email);
Alter Table PM.Projects
Add Constraint DFT_Parked
DEFAULT 0 For Parked;
--Set identity
Create Database TestDB2;
GO
Use TestDB2
GO
Create Table SomeTable
(
Id int primary key identity (1,1),
Name varchar(25) not null
)
